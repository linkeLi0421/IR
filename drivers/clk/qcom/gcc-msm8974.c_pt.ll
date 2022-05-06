; ModuleID = '/llk/IR/drivers/clk/qcom/gcc-msm8974.c_pt.bc'
source_filename = "../drivers/clk/qcom/gcc-msm8974.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_rcg2 = type { i32, i8, i8, i8, ptr, ptr, %struct.clk_regmap, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.gdsc = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i16, ptr, ptr, i32, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, [1 x %struct.cpumask], ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.5 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.5 = type { %struct.mutex }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_gcc_msm8974__162_2900_gcc_msm8974_init1 = internal global ptr @gcc_msm8974_init, section ".initcall1.init", align 4
@gcc_msm8974_driver = internal global %struct.platform_driver { ptr @gcc_msm8974_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gcc_msm8974_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gcc_msm8974_exit = internal global ptr @gcc_msm8974_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description163 = internal constant [48 x i8] c"gcc_msm8974.description=QCOM GCC MSM8974 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [46 x i8] c"gcc_msm8974.file=drivers/clk/qcom/gcc-msm8974\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [27 x i8] c"gcc_msm8974.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias166 = internal constant [39 x i8] c"gcc_msm8974.alias=platform:gcc-msm8974\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"gcc-msm8974\00", align 1
@gcc_msm8974_match_table = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-msm8226\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_msm8226_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-msm8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_msm8974_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-msm8974pro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_msm8974_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-msm8974pro-ac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_msm8974_desc }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"qcom,gcc-msm8974\00", align 1
@gcc_msm8226_desc = internal constant %struct.qcom_cc_desc { ptr @gcc_msm8226_regmap_config, ptr @gcc_msm8226_clocks, i32 271, ptr @gcc_msm8226_resets, i32 11, ptr @gcc_msm8226_gdscs, i32 1, ptr null, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"xo_board\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@gcc_msm8974_desc = internal constant %struct.qcom_cc_desc { ptr @gcc_msm8974_regmap_config, ptr @gcc_msm8974_clocks, i32 306, ptr @gcc_msm8974_resets, i32 78, ptr @gcc_msm8974_gdscs, i32 1, ptr null, i32 0 }, align 4
@gcc_msm8226_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 6784, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@gcc_msm8226_clocks = internal global [271 x ptr] [ptr getelementptr (i8, ptr @gpll0, i64 32), ptr @gpll0_vote, ptr getelementptr (i8, ptr @config_noc_clk_src, i64 16), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @periph_noc_clk_src, i64 16), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @system_noc_clk_src, i64 16), ptr getelementptr (i8, ptr @gpll1, i64 32), ptr @gpll1_vote, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @blsp1_qup1_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup1_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup3_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup3_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup4_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup4_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup5_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup5_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup6_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup6_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart3_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart4_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart5_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart6_apps_clk_src, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @ce1_clk_src, i64 16), ptr null, ptr getelementptr (i8, ptr @gp1_clk_src, i64 16), ptr getelementptr (i8, ptr @gp2_clk_src, i64 16), ptr getelementptr (i8, ptr @gp3_clk_src, i64 16), ptr getelementptr (i8, ptr @pdm2_clk_src, i64 16), ptr null, ptr null, ptr getelementptr (i8, ptr @sdcc1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc3_apps_clk_src, i64 16), ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_hs_system_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_io_cal_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_system_clk_src, i64 16), ptr getelementptr (i8, ptr @gcc_bam_dma_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_qup1_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup1_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup3_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup3_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup4_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup4_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup5_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup5_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup6_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup6_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_uart1_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart2_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart3_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart4_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart5_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart6_apps_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_boot_rom_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_axi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_gp1_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp2_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp3_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_lpass_q6_axi_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_mss_cfg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_mss_q6_bimc_axi_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_pdm2_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pdm_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pdm_xo4_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_prng_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_sdcc1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc1_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_sdcc2_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc2_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_sdcc3_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc3_apps_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_usb2a_phy_sleep_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_usb_hs_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_usb_hs_system_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_io_cal_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_usb_hsic_system_clk, i64 12)], align 4
@gcc_msm8226_resets = internal constant [11 x %struct.qcom_reset_map] [%struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 1024, i8 0 }, %struct.qcom_reset_map { i32 1152, i8 0 }, %struct.qcom_reset_map { i32 1192, i8 0 }], align 4
@gcc_msm8226_gdscs = internal global [1 x ptr] [ptr @usb_hs_hsic_gdsc], align 4
@gpll0 = internal global %struct.clk_pll { i32 4, i32 8, i32 12, i32 20, i32 0, i32 28, i8 17, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.5 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@gpll0_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 5248, i32 1, i8 0 }, align 4
@config_noc_clk_src = internal global %struct.clk_rcg2 { i32 336, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@periph_noc_clk_src = internal global %struct.clk_rcg2 { i32 400, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@system_noc_clk_src = internal global %struct.clk_rcg2 { i32 288, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gpll1 = internal global %struct.clk_pll { i32 68, i32 72, i32 76, i32 84, i32 64, i32 92, i8 17, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@gpll1_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, ptr null, i32 5248, i32 2, i8 0 }, align 4
@blsp1_qup1_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 1632, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup1_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 1612, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup2_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 1760, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.26 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup2_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 1740, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup3_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 1888, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup3_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 1868, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup4_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2016, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup4_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 1996, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup5_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2144, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup5_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2124, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup6_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2272, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_qup6_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2252, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart1_apps_clk_src = internal global %struct.clk_rcg2 { i32 1676, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart2_apps_clk_src = internal global %struct.clk_rcg2 { i32 1804, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart3_apps_clk_src = internal global %struct.clk_rcg2 { i32 1932, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart4_apps_clk_src = internal global %struct.clk_rcg2 { i32 2060, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart5_apps_clk_src = internal global %struct.clk_rcg2 { i32 2188, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.54 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp1_uart6_apps_clk_src = internal global %struct.clk_rcg2 { i32 2316, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.56 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@ce1_clk_src = internal global %struct.clk_rcg2 { i32 4176, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_ce1_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gp1_clk_src = internal global %struct.clk_rcg2 { i32 6404, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.60 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gp2_clk_src = internal global %struct.clk_rcg2 { i32 6468, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.62 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gp3_clk_src = internal global %struct.clk_rcg2 { i32 6532, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_gp_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@pdm2_clk_src = internal global %struct.clk_rcg2 { i32 3280, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_pdm2_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@sdcc1_apps_clk_src = internal global %struct.clk_rcg2 { i32 1232, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_sdcc1_4_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @sdcc1_apps_clk_src_init }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@sdcc2_apps_clk_src = internal global %struct.clk_rcg2 { i32 1296, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_sdcc1_4_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@sdcc3_apps_clk_src = internal global %struct.clk_rcg2 { i32 1360, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_sdcc1_4_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@usb_hs_system_clk_src = internal global %struct.clk_rcg2 { i32 1168, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_usb_hs_system_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@usb_hsic_clk_src = internal global %struct.clk_rcg2 { i32 1088, i8 0, i8 5, i8 0, ptr @usb_hsic_clk_src_map, ptr @ftbl_gcc_usb_hsic_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.76 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@usb_hsic_io_cal_clk_src = internal global %struct.clk_rcg2 { i32 1112, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_usb_hsic_io_cal_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.78 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@usb_hsic_system_clk_src = internal global %struct.clk_rcg2 { i32 1052, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_usb_hsic_system_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gcc_bam_dma_ahb_clk = internal global %struct.clk_branch { i32 0, i32 3396, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 5252, i32 4096, i8 0 } }, align 4
@gcc_blsp1_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1476, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.86 }, ptr null, i32 5252, i32 131072, i8 0 } }, align 4
@gcc_blsp1_qup1_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 1608, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, ptr null, i32 1608, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup1_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 1604, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.92 }, ptr null, i32 1604, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup2_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 1736, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, ptr null, i32 1736, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup2_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 1732, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.98 }, ptr null, i32 1732, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup3_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 1864, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, i32 1864, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup3_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 1860, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.104 }, ptr null, i32 1860, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup4_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 1992, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.107 }, ptr null, i32 1992, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup4_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 1988, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr null, i32 1988, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup5_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2120, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 2120, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup5_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2116, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, i32 2116, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup6_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2248, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.119 }, ptr null, i32 2248, i32 1, i8 0 } }, align 4
@gcc_blsp1_qup6_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2244, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, i32 2244, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart1_apps_clk = internal global %struct.clk_branch { i32 0, i32 1668, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.125 }, ptr null, i32 1668, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart2_apps_clk = internal global %struct.clk_branch { i32 0, i32 1796, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 }, ptr null, i32 1796, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart3_apps_clk = internal global %struct.clk_branch { i32 0, i32 1924, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, ptr null, i32 1924, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart4_apps_clk = internal global %struct.clk_branch { i32 0, i32 2052, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.134 }, ptr null, i32 2052, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart5_apps_clk = internal global %struct.clk_branch { i32 0, i32 2180, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, i32 2180, i32 1, i8 0 } }, align 4
@gcc_blsp1_uart6_apps_clk = internal global %struct.clk_branch { i32 0, i32 2308, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, i32 2308, i32 1, i8 0 } }, align 4
@gcc_boot_rom_ahb_clk = internal global %struct.clk_branch { i32 0, i32 3588, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, i32 5252, i32 1024, i8 0 } }, align 4
@gcc_ce1_ahb_clk = internal global %struct.clk_branch { i32 0, i32 4172, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, ptr null, i32 5252, i32 8, i8 0 } }, align 4
@gcc_ce1_axi_clk = internal global %struct.clk_branch { i32 0, i32 4168, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.149 }, ptr null, i32 5252, i32 16, i8 0 } }, align 4
@gcc_ce1_clk = internal global %struct.clk_branch { i32 0, i32 4176, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.152 }, ptr null, i32 5252, i32 32, i8 0 } }, align 4
@gcc_gp1_clk = internal global %struct.clk_branch { i32 0, i32 6400, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, i32 6400, i32 1, i8 0 } }, align 4
@gcc_gp2_clk = internal global %struct.clk_branch { i32 0, i32 6464, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 6464, i32 1, i8 0 } }, align 4
@gcc_gp3_clk = internal global %struct.clk_branch { i32 0, i32 6528, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr null, i32 6528, i32 1, i8 0 } }, align 4
@gcc_lpass_q6_axi_clk = internal global %struct.clk_branch { i32 0, i32 4544, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.164 }, ptr null, i32 4544, i32 1, i8 0 } }, align 4
@gcc_mss_cfg_ahb_clk = internal global %struct.clk_branch { i32 0, i32 640, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.167 }, ptr null, i32 640, i32 1, i8 0 } }, align 4
@gcc_mss_q6_bimc_axi_clk = internal global %struct.clk_branch { i32 0, i32 644, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, ptr null, i32 644, i32 1, i8 0 } }, align 4
@gcc_pdm2_clk = internal global %struct.clk_branch { i32 0, i32 3276, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.173 }, ptr null, i32 3276, i32 1, i8 0 } }, align 4
@gcc_pdm_ahb_clk = internal global %struct.clk_branch { i32 0, i32 3268, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.176 }, ptr null, i32 3268, i32 1, i8 0 } }, align 4
@gcc_pdm_xo4_clk = internal global %struct.clk_branch { i32 0, i32 3272, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.179 }, ptr null, i32 3272, i32 1, i8 0 } }, align 4
@gcc_prng_ahb_clk = internal global %struct.clk_branch { i32 0, i32 3332, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 }, ptr null, i32 5252, i32 8192, i8 0 } }, align 4
@gcc_sdcc1_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1224, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, i32 1224, i32 1, i8 0 } }, align 4
@gcc_sdcc1_apps_clk = internal global %struct.clk_branch { i32 0, i32 1220, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 }, ptr null, i32 1220, i32 1, i8 0 } }, align 4
@gcc_sdcc2_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1288, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.191 }, ptr null, i32 1288, i32 1, i8 0 } }, align 4
@gcc_sdcc2_apps_clk = internal global %struct.clk_branch { i32 0, i32 1284, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.194 }, ptr null, i32 1284, i32 1, i8 0 } }, align 4
@gcc_sdcc3_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1352, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 }, ptr null, i32 1352, i32 1, i8 0 } }, align 4
@gcc_sdcc3_apps_clk = internal global %struct.clk_branch { i32 0, i32 1348, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 }, ptr null, i32 1348, i32 1, i8 0 } }, align 4
@gcc_usb2a_phy_sleep_clk = internal global %struct.clk_branch { i32 0, i32 1196, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.204 }, ptr null, i32 1196, i32 1, i8 0 } }, align 4
@gcc_usb_hs_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1160, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.207 }, ptr null, i32 1160, i32 1, i8 0 } }, align 4
@gcc_usb_hs_system_clk = internal global %struct.clk_branch { i32 0, i32 1156, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.210 }, ptr null, i32 1156, i32 1, i8 0 } }, align 4
@gcc_usb_hsic_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1032, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.213 }, ptr null, i32 1032, i32 1, i8 0 } }, align 4
@gcc_usb_hsic_clk = internal global %struct.clk_branch { i32 0, i32 1040, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.216 }, ptr null, i32 1040, i32 1, i8 0 } }, align 4
@gcc_usb_hsic_io_cal_clk = internal global %struct.clk_branch { i32 0, i32 1044, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.219 }, ptr null, i32 1044, i32 1, i8 0 } }, align 4
@gcc_usb_hsic_system_clk = internal global %struct.clk_branch { i32 0, i32 1036, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.222 }, ptr null, i32 1036, i32 1, i8 0 } }, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"gpll0\00", align 1
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.5 = internal global %struct.clk_init_data { ptr @.str.4, ptr @clk_pll_ops, ptr @.compoundliteral, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"gpll0_vote\00", align 1
@clk_pll_vote_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.7 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.8 = internal global %struct.clk_init_data { ptr @.str.6, ptr @clk_pll_vote_ops, ptr @.compoundliteral.7, ptr null, ptr null, i8 1, i32 0 }, align 4
@gcc_xo_gpll0_map = internal constant [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }], align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"config_noc_clk_src\00", align 1
@clk_rcg2_ops = external dso_local constant %struct.clk_ops, align 4
@gcc_xo_gpll0 = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.6], align 4
@.compoundliteral.10 = internal global %struct.clk_init_data { ptr @.str.9, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"periph_noc_clk_src\00", align 1
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"system_noc_clk_src\00", align 1
@.compoundliteral.14 = internal global %struct.clk_init_data { ptr @.str.13, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"gpll1\00", align 1
@.compoundliteral.16 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.17 = internal global %struct.clk_init_data { ptr @.str.15, ptr @clk_pll_ops, ptr @.compoundliteral.16, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"gpll1_vote\00", align 1
@.compoundliteral.19 = internal global [1 x ptr] [ptr @.str.15], align 4
@.compoundliteral.20 = internal global %struct.clk_init_data { ptr @.str.18, ptr @clk_pll_vote_ops, ptr @.compoundliteral.19, ptr null, ptr null, i8 1, i32 0 }, align 4
@ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk = internal constant [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 37500000, i8 1, i8 31, i16 0, i16 0 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"blsp1_qup1_i2c_apps_clk_src\00", align 1
@.compoundliteral.22 = internal global %struct.clk_init_data { ptr @.str.21, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk = internal constant [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 960000, i8 0, i8 19, i16 1, i16 2 }, %struct.freq_tbl { i32 4800000, i8 0, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 9600000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 15000000, i8 1, i8 19, i16 1, i16 4 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 25000000, i8 1, i8 23, i16 1, i16 2 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [28 x i8] c"blsp1_qup1_spi_apps_clk_src\00", align 1
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"blsp1_qup2_i2c_apps_clk_src\00", align 1
@.compoundliteral.26 = internal global %struct.clk_init_data { ptr @.str.25, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.27 = private unnamed_addr constant [28 x i8] c"blsp1_qup2_spi_apps_clk_src\00", align 1
@.compoundliteral.28 = internal global %struct.clk_init_data { ptr @.str.27, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.29 = private unnamed_addr constant [28 x i8] c"blsp1_qup3_i2c_apps_clk_src\00", align 1
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.29, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [28 x i8] c"blsp1_qup3_spi_apps_clk_src\00", align 1
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.31, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.33 = private unnamed_addr constant [28 x i8] c"blsp1_qup4_i2c_apps_clk_src\00", align 1
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.33, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [28 x i8] c"blsp1_qup4_spi_apps_clk_src\00", align 1
@.compoundliteral.36 = internal global %struct.clk_init_data { ptr @.str.35, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.37 = private unnamed_addr constant [28 x i8] c"blsp1_qup5_i2c_apps_clk_src\00", align 1
@.compoundliteral.38 = internal global %struct.clk_init_data { ptr @.str.37, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [28 x i8] c"blsp1_qup5_spi_apps_clk_src\00", align 1
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.39, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [28 x i8] c"blsp1_qup6_i2c_apps_clk_src\00", align 1
@.compoundliteral.42 = internal global %struct.clk_init_data { ptr @.str.41, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [28 x i8] c"blsp1_qup6_spi_apps_clk_src\00", align 1
@.compoundliteral.44 = internal global %struct.clk_init_data { ptr @.str.43, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_blsp1_2_uart1_6_apps_clk = internal constant [16 x %struct.freq_tbl] [%struct.freq_tbl { i32 3686400, i8 1, i8 1, i16 96, i16 15625 }, %struct.freq_tbl { i32 7372800, i8 1, i8 1, i16 192, i16 15625 }, %struct.freq_tbl { i32 14745600, i8 1, i8 1, i16 384, i16 15625 }, %struct.freq_tbl { i32 16000000, i8 1, i8 9, i16 2, i16 15 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 24000000, i8 1, i8 9, i16 1, i16 5 }, %struct.freq_tbl { i32 32000000, i8 1, i8 1, i16 4, i16 75 }, %struct.freq_tbl { i32 40000000, i8 1, i8 29, i16 0, i16 0 }, %struct.freq_tbl { i32 46400000, i8 1, i8 1, i16 29, i16 375 }, %struct.freq_tbl { i32 48000000, i8 1, i8 24, i16 0, i16 0 }, %struct.freq_tbl { i32 51200000, i8 1, i8 1, i16 32, i16 375 }, %struct.freq_tbl { i32 56000000, i8 1, i8 1, i16 7, i16 75 }, %struct.freq_tbl { i32 58982400, i8 1, i8 1, i16 1536, i16 15625 }, %struct.freq_tbl { i32 60000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl { i32 63160000, i8 1, i8 18, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [25 x i8] c"blsp1_uart1_apps_clk_src\00", align 1
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.45, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [25 x i8] c"blsp1_uart2_apps_clk_src\00", align 1
@.compoundliteral.48 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [25 x i8] c"blsp1_uart3_apps_clk_src\00", align 1
@.compoundliteral.50 = internal global %struct.clk_init_data { ptr @.str.49, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.51 = private unnamed_addr constant [25 x i8] c"blsp1_uart4_apps_clk_src\00", align 1
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.51, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [25 x i8] c"blsp1_uart5_apps_clk_src\00", align 1
@.compoundliteral.54 = internal global %struct.clk_init_data { ptr @.str.53, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [25 x i8] c"blsp1_uart6_apps_clk_src\00", align 1
@.compoundliteral.56 = internal global %struct.clk_init_data { ptr @.str.55, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_ce1_clk = internal constant [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 1, i8 15, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 150000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.57 = private unnamed_addr constant [12 x i8] c"ce1_clk_src\00", align 1
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.57, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_gp_clk = internal constant [9 x %struct.freq_tbl] [%struct.freq_tbl { i32 4800000, i8 0, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 6000000, i8 1, i8 19, i16 1, i16 10 }, %struct.freq_tbl { i32 6750000, i8 1, i8 1, i16 1, i16 89 }, %struct.freq_tbl { i32 8000000, i8 1, i8 29, i16 1, i16 5 }, %struct.freq_tbl { i32 9600000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 16000000, i8 1, i8 1, i16 2, i16 75 }, %struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 24000000, i8 1, i8 9, i16 1, i16 5 }, %struct.freq_tbl zeroinitializer], align 4
@.str.59 = private unnamed_addr constant [12 x i8] c"gp1_clk_src\00", align 1
@.compoundliteral.60 = internal global %struct.clk_init_data { ptr @.str.59, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [12 x i8] c"gp2_clk_src\00", align 1
@.compoundliteral.62 = internal global %struct.clk_init_data { ptr @.str.61, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.63 = private unnamed_addr constant [12 x i8] c"gp3_clk_src\00", align 1
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.63, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_pdm2_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 60000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.65 = private unnamed_addr constant [13 x i8] c"pdm2_clk_src\00", align 1
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.65, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_sdcc1_4_apps_clk = internal constant [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 144000, i8 0, i8 31, i16 3, i16 25 }, %struct.freq_tbl { i32 400000, i8 0, i8 23, i16 1, i16 4 }, %struct.freq_tbl { i32 20000000, i8 1, i8 29, i16 1, i16 2 }, %struct.freq_tbl { i32 25000000, i8 1, i8 23, i16 1, i16 2 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@sdcc1_apps_clk_src_init = internal global %struct.clk_init_data { ptr @.str.67, ptr @clk_rcg2_floor_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.67 = private unnamed_addr constant [19 x i8] c"sdcc1_apps_clk_src\00", align 1
@clk_rcg2_floor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.68 = private unnamed_addr constant [19 x i8] c"sdcc2_apps_clk_src\00", align 1
@.compoundliteral.69 = internal global %struct.clk_init_data { ptr @.str.68, ptr @clk_rcg2_floor_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.70 = private unnamed_addr constant [19 x i8] c"sdcc3_apps_clk_src\00", align 1
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.70, ptr @clk_rcg2_floor_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_usb_hs_system_clk = internal constant [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 60000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 1, i8 15, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.72 = private unnamed_addr constant [22 x i8] c"usb_hs_system_clk_src\00", align 1
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.72, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@usb_hsic_clk_src_map = internal constant [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 2, i8 4 }], align 1
@ftbl_gcc_usb_hsic_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 480000000, i8 2, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.74 = private unnamed_addr constant [17 x i8] c"usb_hsic_clk_src\00", align 1
@.compoundliteral.75 = internal global [2 x ptr] [ptr @.str.3, ptr @.str.18], align 4
@.compoundliteral.76 = internal global %struct.clk_init_data { ptr @.str.74, ptr @clk_rcg2_ops, ptr @.compoundliteral.75, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_usb_hsic_io_cal_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 9600000, i8 0, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.77 = private unnamed_addr constant [24 x i8] c"usb_hsic_io_cal_clk_src\00", align 1
@.compoundliteral.78 = internal global %struct.clk_init_data { ptr @.str.77, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 1, i32 0 }, align 4
@ftbl_gcc_usb_hsic_system_clk = internal constant [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 60000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 1, i8 15, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.79 = private unnamed_addr constant [24 x i8] c"usb_hsic_system_clk_src\00", align 1
@.compoundliteral.80 = internal global %struct.clk_init_data { ptr @.str.79, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.81 = private unnamed_addr constant [20 x i8] c"gcc_bam_dma_ahb_clk\00", align 1
@clk_branch2_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.81, ptr @clk_branch2_ops, ptr @.compoundliteral.82, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.84 = private unnamed_addr constant [18 x i8] c"gcc_blsp1_ahb_clk\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.86 = internal global %struct.clk_init_data { ptr @.str.84, ptr @clk_branch2_ops, ptr @.compoundliteral.85, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.87 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup1_i2c_apps_clk\00", align 1
@.compoundliteral.88 = internal global [1 x ptr] [ptr @.str.21], align 4
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.87, ptr @clk_branch2_ops, ptr @.compoundliteral.88, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.90 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup1_spi_apps_clk\00", align 1
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.23], align 4
@.compoundliteral.92 = internal global %struct.clk_init_data { ptr @.str.90, ptr @clk_branch2_ops, ptr @.compoundliteral.91, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.93 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup2_i2c_apps_clk\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.95 = internal global %struct.clk_init_data { ptr @.str.93, ptr @clk_branch2_ops, ptr @.compoundliteral.94, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.96 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup2_spi_apps_clk\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.27], align 4
@.compoundliteral.98 = internal global %struct.clk_init_data { ptr @.str.96, ptr @clk_branch2_ops, ptr @.compoundliteral.97, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.99 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup3_i2c_apps_clk\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @.str.29], align 4
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.99, ptr @clk_branch2_ops, ptr @.compoundliteral.100, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.102 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup3_spi_apps_clk\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.31], align 4
@.compoundliteral.104 = internal global %struct.clk_init_data { ptr @.str.102, ptr @clk_branch2_ops, ptr @.compoundliteral.103, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.105 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup4_i2c_apps_clk\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.33], align 4
@.compoundliteral.107 = internal global %struct.clk_init_data { ptr @.str.105, ptr @clk_branch2_ops, ptr @.compoundliteral.106, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.108 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup4_spi_apps_clk\00", align 1
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.35], align 4
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.108, ptr @clk_branch2_ops, ptr @.compoundliteral.109, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.111 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup5_i2c_apps_clk\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.37], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @clk_branch2_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.114 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup5_spi_apps_clk\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.39], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @clk_branch2_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.117 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup6_i2c_apps_clk\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.41], align 4
@.compoundliteral.119 = internal global %struct.clk_init_data { ptr @.str.117, ptr @clk_branch2_ops, ptr @.compoundliteral.118, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.120 = private unnamed_addr constant [28 x i8] c"gcc_blsp1_qup6_spi_apps_clk\00", align 1
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.43], align 4
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.120, ptr @clk_branch2_ops, ptr @.compoundliteral.121, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.123 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart1_apps_clk\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.125 = internal global %struct.clk_init_data { ptr @.str.123, ptr @clk_branch2_ops, ptr @.compoundliteral.124, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.126 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart2_apps_clk\00", align 1
@.compoundliteral.127 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.126, ptr @clk_branch2_ops, ptr @.compoundliteral.127, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.129 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart3_apps_clk\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.131 = internal global %struct.clk_init_data { ptr @.str.129, ptr @clk_branch2_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.132 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart4_apps_clk\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.51], align 4
@.compoundliteral.134 = internal global %struct.clk_init_data { ptr @.str.132, ptr @clk_branch2_ops, ptr @.compoundliteral.133, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.135 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart5_apps_clk\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.53], align 4
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.135, ptr @clk_branch2_ops, ptr @.compoundliteral.136, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.138 = private unnamed_addr constant [25 x i8] c"gcc_blsp1_uart6_apps_clk\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.55], align 4
@.compoundliteral.140 = internal global %struct.clk_init_data { ptr @.str.138, ptr @clk_branch2_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.141 = private unnamed_addr constant [21 x i8] c"gcc_boot_rom_ahb_clk\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.143 = internal global %struct.clk_init_data { ptr @.str.141, ptr @clk_branch2_ops, ptr @.compoundliteral.142, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.144 = private unnamed_addr constant [16 x i8] c"gcc_ce1_ahb_clk\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.146 = internal global %struct.clk_init_data { ptr @.str.144, ptr @clk_branch2_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.147 = private unnamed_addr constant [16 x i8] c"gcc_ce1_axi_clk\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.149 = internal global %struct.clk_init_data { ptr @.str.147, ptr @clk_branch2_ops, ptr @.compoundliteral.148, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.150 = private unnamed_addr constant [12 x i8] c"gcc_ce1_clk\00", align 1
@.compoundliteral.151 = internal global [1 x ptr] [ptr @.str.57], align 4
@.compoundliteral.152 = internal global %struct.clk_init_data { ptr @.str.150, ptr @clk_branch2_ops, ptr @.compoundliteral.151, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.153 = private unnamed_addr constant [12 x i8] c"gcc_gp1_clk\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.59], align 4
@.compoundliteral.155 = internal global %struct.clk_init_data { ptr @.str.153, ptr @clk_branch2_ops, ptr @.compoundliteral.154, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.156 = private unnamed_addr constant [12 x i8] c"gcc_gp2_clk\00", align 1
@.compoundliteral.157 = internal global [1 x ptr] [ptr @.str.61], align 4
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.156, ptr @clk_branch2_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.159 = private unnamed_addr constant [12 x i8] c"gcc_gp3_clk\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.63], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @clk_branch2_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.162 = private unnamed_addr constant [21 x i8] c"gcc_lpass_q6_axi_clk\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.164 = internal global %struct.clk_init_data { ptr @.str.162, ptr @clk_branch2_ops, ptr @.compoundliteral.163, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.165 = private unnamed_addr constant [20 x i8] c"gcc_mss_cfg_ahb_clk\00", align 1
@.compoundliteral.166 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.167 = internal global %struct.clk_init_data { ptr @.str.165, ptr @clk_branch2_ops, ptr @.compoundliteral.166, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.168 = private unnamed_addr constant [24 x i8] c"gcc_mss_q6_bimc_axi_clk\00", align 1
@.compoundliteral.169 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.170 = internal global %struct.clk_init_data { ptr @.str.168, ptr @clk_branch2_ops, ptr @.compoundliteral.169, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.171 = private unnamed_addr constant [13 x i8] c"gcc_pdm2_clk\00", align 1
@.compoundliteral.172 = internal global [1 x ptr] [ptr @.str.65], align 4
@.compoundliteral.173 = internal global %struct.clk_init_data { ptr @.str.171, ptr @clk_branch2_ops, ptr @.compoundliteral.172, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.174 = private unnamed_addr constant [16 x i8] c"gcc_pdm_ahb_clk\00", align 1
@.compoundliteral.175 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.176 = internal global %struct.clk_init_data { ptr @.str.174, ptr @clk_branch2_ops, ptr @.compoundliteral.175, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.177 = private unnamed_addr constant [16 x i8] c"gcc_pdm_xo4_clk\00", align 1
@.compoundliteral.178 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.179 = internal global %struct.clk_init_data { ptr @.str.177, ptr @clk_branch2_ops, ptr @.compoundliteral.178, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.180 = private unnamed_addr constant [17 x i8] c"gcc_prng_ahb_clk\00", align 1
@.compoundliteral.181 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.182 = internal global %struct.clk_init_data { ptr @.str.180, ptr @clk_branch2_ops, ptr @.compoundliteral.181, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.183 = private unnamed_addr constant [18 x i8] c"gcc_sdcc1_ahb_clk\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.185 = internal global %struct.clk_init_data { ptr @.str.183, ptr @clk_branch2_ops, ptr @.compoundliteral.184, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.186 = private unnamed_addr constant [19 x i8] c"gcc_sdcc1_apps_clk\00", align 1
@.compoundliteral.187 = internal global [1 x ptr] [ptr @.str.67], align 4
@.compoundliteral.188 = internal global %struct.clk_init_data { ptr @.str.186, ptr @clk_branch2_ops, ptr @.compoundliteral.187, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.189 = private unnamed_addr constant [18 x i8] c"gcc_sdcc2_ahb_clk\00", align 1
@.compoundliteral.190 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.191 = internal global %struct.clk_init_data { ptr @.str.189, ptr @clk_branch2_ops, ptr @.compoundliteral.190, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.192 = private unnamed_addr constant [19 x i8] c"gcc_sdcc2_apps_clk\00", align 1
@.compoundliteral.193 = internal global [1 x ptr] [ptr @.str.68], align 4
@.compoundliteral.194 = internal global %struct.clk_init_data { ptr @.str.192, ptr @clk_branch2_ops, ptr @.compoundliteral.193, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.195 = private unnamed_addr constant [18 x i8] c"gcc_sdcc3_ahb_clk\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.195, ptr @clk_branch2_ops, ptr @.compoundliteral.196, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.198 = private unnamed_addr constant [19 x i8] c"gcc_sdcc3_apps_clk\00", align 1
@.compoundliteral.199 = internal global [1 x ptr] [ptr @.str.70], align 4
@.compoundliteral.200 = internal global %struct.clk_init_data { ptr @.str.198, ptr @clk_branch2_ops, ptr @.compoundliteral.199, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.201 = private unnamed_addr constant [24 x i8] c"gcc_usb2a_phy_sleep_clk\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"sleep_clk_src\00", align 1
@.compoundliteral.203 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.204 = internal global %struct.clk_init_data { ptr @.str.201, ptr @clk_branch2_ops, ptr @.compoundliteral.203, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.205 = private unnamed_addr constant [19 x i8] c"gcc_usb_hs_ahb_clk\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.207 = internal global %struct.clk_init_data { ptr @.str.205, ptr @clk_branch2_ops, ptr @.compoundliteral.206, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.208 = private unnamed_addr constant [22 x i8] c"gcc_usb_hs_system_clk\00", align 1
@.compoundliteral.209 = internal global [1 x ptr] [ptr @.str.72], align 4
@.compoundliteral.210 = internal global %struct.clk_init_data { ptr @.str.208, ptr @clk_branch2_ops, ptr @.compoundliteral.209, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.211 = private unnamed_addr constant [21 x i8] c"gcc_usb_hsic_ahb_clk\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.213 = internal global %struct.clk_init_data { ptr @.str.211, ptr @clk_branch2_ops, ptr @.compoundliteral.212, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.214 = private unnamed_addr constant [17 x i8] c"gcc_usb_hsic_clk\00", align 1
@.compoundliteral.215 = internal global [1 x ptr] [ptr @.str.74], align 4
@.compoundliteral.216 = internal global %struct.clk_init_data { ptr @.str.214, ptr @clk_branch2_ops, ptr @.compoundliteral.215, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.217 = private unnamed_addr constant [24 x i8] c"gcc_usb_hsic_io_cal_clk\00", align 1
@.compoundliteral.218 = internal global [1 x ptr] [ptr @.str.77], align 4
@.compoundliteral.219 = internal global %struct.clk_init_data { ptr @.str.217, ptr @clk_branch2_ops, ptr @.compoundliteral.218, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.220 = private unnamed_addr constant [24 x i8] c"gcc_usb_hsic_system_clk\00", align 1
@.compoundliteral.221 = internal global [1 x ptr] [ptr @.str.79], align 4
@.compoundliteral.222 = internal global %struct.clk_init_data { ptr @.str.220, ptr @clk_branch2_ops, ptr @.compoundliteral.221, ptr null, ptr null, i8 1, i32 4 }, align 4
@usb_hs_hsic_gdsc = internal global %struct.gdsc { %struct.generic_pm_domain { %struct.device zeroinitializer, %struct.dev_pm_domain zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, %struct.work_struct zeroinitializer, ptr null, i8 0, ptr @.str.223, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, [1 x %struct.cpumask] zeroinitializer, ptr null, ptr null, %struct.raw_notifier_head zeroinitializer, ptr null, ptr null, ptr null, %struct.gpd_dev_ops zeroinitializer, i64 0, i64 0, i8 0, i8 0, i8 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i64 0, i64 0, ptr null, %union.anon.5 zeroinitializer }, ptr null, ptr null, i32 1028, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i8 5, i16 0, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null }, align 8
@.str.223 = private unnamed_addr constant [12 x i8] c"usb_hs_hsic\00", align 1
@ftbl_gcc_ce1_clk_msm8226 = internal constant [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@ftbl_gcc_gp_clk_msm8226 = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 19200000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@gcc_xo_gpll0_gpll4 = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.6, ptr @.str.224], align 4
@ftbl_gcc_sdcc1_apps_clk_pro = internal constant [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 144000, i8 0, i8 31, i16 3, i16 25 }, %struct.freq_tbl { i32 400000, i8 0, i8 23, i16 1, i16 4 }, %struct.freq_tbl { i32 20000000, i8 1, i8 29, i16 1, i16 2 }, %struct.freq_tbl { i32 25000000, i8 1, i8 23, i16 1, i16 2 }, %struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 192000000, i8 3, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 384000000, i8 3, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@gcc_xo_gpll0_gpll4_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 1 }, %struct.parent_map { i8 3, i8 5 }], align 1
@gpll4 = internal global %struct.clk_pll { i32 7620, i32 7624, i32 7628, i32 7636, i32 7616, i32 7644, i8 17, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.227 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@gpll4_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.381 }, ptr null, i32 5248, i32 16, i8 0 }, align 4
@gcc_sdcc1_cdccal_sleep_clk = internal global %struct.clk_branch { i32 0, i32 1252, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.384 }, ptr null, i32 1252, i32 1, i8 0 } }, align 4
@gcc_sdcc1_cdccal_ff_clk = internal global %struct.clk_branch { i32 0, i32 1256, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.387 }, ptr null, i32 1256, i32 1, i8 0 } }, align 4
@.str.224 = private unnamed_addr constant [11 x i8] c"gpll4_vote\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"gpll4\00", align 1
@.compoundliteral.226 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.227 = internal global %struct.clk_init_data { ptr @.str.225, ptr @clk_pll_ops, ptr @.compoundliteral.226, ptr null, ptr null, i8 1, i32 0 }, align 4
@usb30_master_clk_src = internal global %struct.clk_rcg2 { i32 980, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_usb30_master_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.230 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup1_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2464, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.232 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup1_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2444, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup2_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2592, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.236 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup2_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2572, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.238 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup3_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2720, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.240 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup3_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2700, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.242 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup4_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2848, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.244 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup4_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2828, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.246 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup5_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 2976, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.248 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup5_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 2956, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.250 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup6_i2c_apps_clk_src = internal global %struct.clk_rcg2 { i32 3104, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_i2c_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.252 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_qup6_spi_apps_clk_src = internal global %struct.clk_rcg2 { i32 3084, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_qup1_6_spi_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.254 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart1_apps_clk_src = internal global %struct.clk_rcg2 { i32 2508, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.256 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart2_apps_clk_src = internal global %struct.clk_rcg2 { i32 2636, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.258 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart3_apps_clk_src = internal global %struct.clk_rcg2 { i32 2764, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.260 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart4_apps_clk_src = internal global %struct.clk_rcg2 { i32 2892, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.262 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart5_apps_clk_src = internal global %struct.clk_rcg2 { i32 3020, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.264 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@blsp2_uart6_apps_clk_src = internal global %struct.clk_rcg2 { i32 3148, i8 16, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_blsp1_2_uart1_6_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.266 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@ce2_clk_src = internal global %struct.clk_rcg2 { i32 4240, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_ce2_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@sdcc4_apps_clk_src = internal global %struct.clk_rcg2 { i32 1424, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_sdcc1_4_apps_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@tsif_ref_clk_src = internal global %struct.clk_rcg2 { i32 3472, i8 8, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_tsif_ref_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.272 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@usb30_mock_utmi_clk_src = internal global %struct.clk_rcg2 { i32 1000, i8 0, i8 5, i8 0, ptr @gcc_xo_gpll0_map, ptr @ftbl_gcc_usb30_mock_utmi_clk, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.274 }, ptr null, i32 0, i32 0, i8 0 }, i8 0 }, align 4
@gcc_blsp2_ahb_clk = internal global %struct.clk_branch { i32 0, i32 2372, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.277 }, ptr null, i32 5252, i32 32768, i8 0 } }, align 4
@gcc_blsp2_qup1_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2440, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.280 }, ptr null, i32 2440, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup1_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2436, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.283 }, ptr null, i32 2436, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup2_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2568, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.286 }, ptr null, i32 2568, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup2_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2564, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.289 }, ptr null, i32 2564, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup3_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2696, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.292 }, ptr null, i32 2696, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup3_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2692, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.295 }, ptr null, i32 2692, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup4_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2824, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.298 }, ptr null, i32 2824, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup4_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2820, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.301 }, ptr null, i32 2820, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup5_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 2952, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.304 }, ptr null, i32 2952, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup5_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 2948, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.307 }, ptr null, i32 2948, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup6_i2c_apps_clk = internal global %struct.clk_branch { i32 0, i32 3080, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.310 }, ptr null, i32 3080, i32 1, i8 0 } }, align 4
@gcc_blsp2_qup6_spi_apps_clk = internal global %struct.clk_branch { i32 0, i32 3076, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.313 }, ptr null, i32 3076, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart1_apps_clk = internal global %struct.clk_branch { i32 0, i32 2500, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.316 }, ptr null, i32 2500, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart2_apps_clk = internal global %struct.clk_branch { i32 0, i32 2628, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.319 }, ptr null, i32 2628, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart3_apps_clk = internal global %struct.clk_branch { i32 0, i32 2756, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.322 }, ptr null, i32 2756, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart4_apps_clk = internal global %struct.clk_branch { i32 0, i32 2884, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.325 }, ptr null, i32 2884, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart5_apps_clk = internal global %struct.clk_branch { i32 0, i32 3012, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.328 }, ptr null, i32 3012, i32 1, i8 0 } }, align 4
@gcc_blsp2_uart6_apps_clk = internal global %struct.clk_branch { i32 0, i32 3140, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.331 }, ptr null, i32 3140, i32 1, i8 0 } }, align 4
@gcc_ce2_ahb_clk = internal global %struct.clk_branch { i32 0, i32 4236, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.334 }, ptr null, i32 5252, i32 1, i8 0 } }, align 4
@gcc_ce2_axi_clk = internal global %struct.clk_branch { i32 0, i32 4232, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.337 }, ptr null, i32 5252, i32 2, i8 0 } }, align 4
@gcc_ce2_clk = internal global %struct.clk_branch { i32 0, i32 4240, i8 0, i8 0, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.340 }, ptr null, i32 5252, i32 4, i8 0 } }, align 4
@gcc_mmss_noc_cfg_ahb_clk = internal global %struct.clk_branch { i32 0, i32 588, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.343 }, ptr null, i32 588, i32 1, i8 0 } }, align 4
@gcc_ocmem_noc_cfg_ahb_clk = internal global %struct.clk_branch { i32 0, i32 584, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.346 }, ptr null, i32 584, i32 1, i8 0 } }, align 4
@gcc_sdcc4_ahb_clk = internal global %struct.clk_branch { i32 0, i32 1416, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.349 }, ptr null, i32 1416, i32 1, i8 0 } }, align 4
@gcc_sdcc4_apps_clk = internal global %struct.clk_branch { i32 0, i32 1412, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.352 }, ptr null, i32 1412, i32 1, i8 0 } }, align 4
@gcc_sys_noc_usb3_axi_clk = internal global %struct.clk_branch { i32 0, i32 264, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.355 }, ptr null, i32 264, i32 1, i8 0 } }, align 4
@gcc_tsif_ahb_clk = internal global %struct.clk_branch { i32 0, i32 3460, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.358 }, ptr null, i32 3460, i32 1, i8 0 } }, align 4
@gcc_tsif_ref_clk = internal global %struct.clk_branch { i32 0, i32 3464, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.361 }, ptr null, i32 3464, i32 1, i8 0 } }, align 4
@gcc_usb2b_phy_sleep_clk = internal global %struct.clk_branch { i32 0, i32 1204, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.364 }, ptr null, i32 1204, i32 1, i8 0 } }, align 4
@gcc_usb30_master_clk = internal global %struct.clk_branch { i32 0, i32 968, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.367 }, ptr null, i32 968, i32 1, i8 0 } }, align 4
@gcc_usb30_mock_utmi_clk = internal global %struct.clk_branch { i32 0, i32 976, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.370 }, ptr null, i32 976, i32 1, i8 0 } }, align 4
@gcc_usb30_sleep_clk = internal global %struct.clk_branch { i32 0, i32 972, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.373 }, ptr null, i32 972, i32 1, i8 0 } }, align 4
@gcc_usb_hsic_io_cal_sleep_clk = internal global %struct.clk_branch { i32 0, i32 1048, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.376 }, ptr null, i32 1048, i32 1, i8 0 } }, align 4
@gcc_mmss_gpll0_clk_src = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.379 }, ptr null, i32 5252, i32 67108864, i8 0 }, align 4
@gcc_msm8974_clocks = internal global <{ [273 x ptr], [33 x ptr] }> <{ [273 x ptr] [ptr getelementptr (i8, ptr @gpll0, i64 32), ptr @gpll0_vote, ptr getelementptr (i8, ptr @config_noc_clk_src, i64 16), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @periph_noc_clk_src, i64 16), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @system_noc_clk_src, i64 16), ptr getelementptr (i8, ptr @gpll1, i64 32), ptr @gpll1_vote, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb30_master_clk_src, i64 16), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @blsp1_qup1_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup1_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup2_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup3_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup3_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup4_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup4_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup5_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup5_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup6_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_qup6_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart3_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart4_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart5_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp1_uart6_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup1_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup1_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup2_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup2_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup3_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup3_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup4_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup4_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup5_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup5_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup6_i2c_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_qup6_spi_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart3_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart4_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart5_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @blsp2_uart6_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @ce1_clk_src, i64 16), ptr getelementptr (i8, ptr @ce2_clk_src, i64 16), ptr getelementptr (i8, ptr @gp1_clk_src, i64 16), ptr getelementptr (i8, ptr @gp2_clk_src, i64 16), ptr getelementptr (i8, ptr @gp3_clk_src, i64 16), ptr getelementptr (i8, ptr @pdm2_clk_src, i64 16), ptr null, ptr null, ptr getelementptr (i8, ptr @sdcc1_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc2_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc3_apps_clk_src, i64 16), ptr getelementptr (i8, ptr @sdcc4_apps_clk_src, i64 16), ptr null, ptr null, ptr getelementptr (i8, ptr @tsif_ref_clk_src, i64 16), ptr getelementptr (i8, ptr @usb30_mock_utmi_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hs_system_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_io_cal_clk_src, i64 16), ptr getelementptr (i8, ptr @usb_hsic_system_clk_src, i64 16), ptr getelementptr (i8, ptr @gcc_bam_dma_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_qup1_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup1_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup2_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup3_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup3_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup4_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup4_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup5_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup5_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup6_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_qup6_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp1_uart1_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart2_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart3_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart4_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart5_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp1_uart6_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_qup1_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup1_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup2_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup2_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup3_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup3_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup4_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup4_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup5_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup5_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup6_i2c_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_qup6_spi_apps_clk, i64 12), ptr getelementptr (i8, ptr @gcc_blsp2_uart1_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_uart2_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_uart3_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_uart4_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_uart5_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_blsp2_uart6_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_boot_rom_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_axi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce1_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce2_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce2_axi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ce2_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_gp1_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp2_clk, i64 12), ptr getelementptr (i8, ptr @gcc_gp3_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_lpass_q6_axi_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_mmss_noc_cfg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_ocmem_noc_cfg_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_mss_cfg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_mss_q6_bimc_axi_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_pdm2_clk, i64 12), ptr getelementptr (i8, ptr @gcc_pdm_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_prng_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_sdcc1_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc1_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_sdcc2_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc2_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_sdcc3_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc3_apps_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_sdcc4_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_sdcc4_apps_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_sys_noc_usb3_axi_clk, i64 12), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gcc_tsif_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_tsif_ref_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb2a_phy_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb2b_phy_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb30_master_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb30_mock_utmi_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb30_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hs_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gcc_usb_hs_system_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_io_cal_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_io_cal_sleep_clk, i64 12), ptr getelementptr (i8, ptr @gcc_usb_hsic_system_clk, i64 12), ptr null, ptr @gcc_mmss_gpll0_clk_src], [33 x ptr] zeroinitializer }>, align 4
@ftbl_gcc_usb30_master_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 125000000, i8 1, i8 1, i16 5, i16 24 }, %struct.freq_tbl zeroinitializer], align 4
@.str.229 = private unnamed_addr constant [21 x i8] c"usb30_master_clk_src\00", align 1
@.compoundliteral.230 = internal global %struct.clk_init_data { ptr @.str.229, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.231 = private unnamed_addr constant [28 x i8] c"blsp2_qup1_i2c_apps_clk_src\00", align 1
@.compoundliteral.232 = internal global %struct.clk_init_data { ptr @.str.231, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.233 = private unnamed_addr constant [28 x i8] c"blsp2_qup1_spi_apps_clk_src\00", align 1
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.233, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.235 = private unnamed_addr constant [28 x i8] c"blsp2_qup2_i2c_apps_clk_src\00", align 1
@.compoundliteral.236 = internal global %struct.clk_init_data { ptr @.str.235, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.237 = private unnamed_addr constant [28 x i8] c"blsp2_qup2_spi_apps_clk_src\00", align 1
@.compoundliteral.238 = internal global %struct.clk_init_data { ptr @.str.237, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.239 = private unnamed_addr constant [28 x i8] c"blsp2_qup3_i2c_apps_clk_src\00", align 1
@.compoundliteral.240 = internal global %struct.clk_init_data { ptr @.str.239, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.241 = private unnamed_addr constant [28 x i8] c"blsp2_qup3_spi_apps_clk_src\00", align 1
@.compoundliteral.242 = internal global %struct.clk_init_data { ptr @.str.241, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.243 = private unnamed_addr constant [28 x i8] c"blsp2_qup4_i2c_apps_clk_src\00", align 1
@.compoundliteral.244 = internal global %struct.clk_init_data { ptr @.str.243, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.245 = private unnamed_addr constant [28 x i8] c"blsp2_qup4_spi_apps_clk_src\00", align 1
@.compoundliteral.246 = internal global %struct.clk_init_data { ptr @.str.245, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.247 = private unnamed_addr constant [28 x i8] c"blsp2_qup5_i2c_apps_clk_src\00", align 1
@.compoundliteral.248 = internal global %struct.clk_init_data { ptr @.str.247, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.249 = private unnamed_addr constant [28 x i8] c"blsp2_qup5_spi_apps_clk_src\00", align 1
@.compoundliteral.250 = internal global %struct.clk_init_data { ptr @.str.249, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.251 = private unnamed_addr constant [28 x i8] c"blsp2_qup6_i2c_apps_clk_src\00", align 1
@.compoundliteral.252 = internal global %struct.clk_init_data { ptr @.str.251, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.253 = private unnamed_addr constant [28 x i8] c"blsp2_qup6_spi_apps_clk_src\00", align 1
@.compoundliteral.254 = internal global %struct.clk_init_data { ptr @.str.253, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.255 = private unnamed_addr constant [25 x i8] c"blsp2_uart1_apps_clk_src\00", align 1
@.compoundliteral.256 = internal global %struct.clk_init_data { ptr @.str.255, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.257 = private unnamed_addr constant [25 x i8] c"blsp2_uart2_apps_clk_src\00", align 1
@.compoundliteral.258 = internal global %struct.clk_init_data { ptr @.str.257, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.259 = private unnamed_addr constant [25 x i8] c"blsp2_uart3_apps_clk_src\00", align 1
@.compoundliteral.260 = internal global %struct.clk_init_data { ptr @.str.259, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.261 = private unnamed_addr constant [25 x i8] c"blsp2_uart4_apps_clk_src\00", align 1
@.compoundliteral.262 = internal global %struct.clk_init_data { ptr @.str.261, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.263 = private unnamed_addr constant [25 x i8] c"blsp2_uart5_apps_clk_src\00", align 1
@.compoundliteral.264 = internal global %struct.clk_init_data { ptr @.str.263, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.265 = private unnamed_addr constant [25 x i8] c"blsp2_uart6_apps_clk_src\00", align 1
@.compoundliteral.266 = internal global %struct.clk_init_data { ptr @.str.265, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_ce2_clk = internal constant [5 x %struct.freq_tbl] [%struct.freq_tbl { i32 50000000, i8 1, i8 23, i16 0, i16 0 }, %struct.freq_tbl { i32 75000000, i8 1, i8 15, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 150000000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.267 = private unnamed_addr constant [12 x i8] c"ce2_clk_src\00", align 1
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.267, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.269 = private unnamed_addr constant [19 x i8] c"sdcc4_apps_clk_src\00", align 1
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.269, ptr @clk_rcg2_floor_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_tsif_ref_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 105000, i8 0, i8 3, i16 1, i16 91 }, %struct.freq_tbl zeroinitializer], align 4
@.str.271 = private unnamed_addr constant [17 x i8] c"tsif_ref_clk_src\00", align 1
@.compoundliteral.272 = internal global %struct.clk_init_data { ptr @.str.271, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@ftbl_gcc_usb30_mock_utmi_clk = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 60000000, i8 1, i8 19, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.273 = private unnamed_addr constant [24 x i8] c"usb30_mock_utmi_clk_src\00", align 1
@.compoundliteral.274 = internal global %struct.clk_init_data { ptr @.str.273, ptr @clk_rcg2_ops, ptr @gcc_xo_gpll0, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.275 = private unnamed_addr constant [18 x i8] c"gcc_blsp2_ahb_clk\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.277 = internal global %struct.clk_init_data { ptr @.str.275, ptr @clk_branch2_ops, ptr @.compoundliteral.276, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.278 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup1_i2c_apps_clk\00", align 1
@.compoundliteral.279 = internal global [1 x ptr] [ptr @.str.231], align 4
@.compoundliteral.280 = internal global %struct.clk_init_data { ptr @.str.278, ptr @clk_branch2_ops, ptr @.compoundliteral.279, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.281 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup1_spi_apps_clk\00", align 1
@.compoundliteral.282 = internal global [1 x ptr] [ptr @.str.233], align 4
@.compoundliteral.283 = internal global %struct.clk_init_data { ptr @.str.281, ptr @clk_branch2_ops, ptr @.compoundliteral.282, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.284 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup2_i2c_apps_clk\00", align 1
@.compoundliteral.285 = internal global [1 x ptr] [ptr @.str.235], align 4
@.compoundliteral.286 = internal global %struct.clk_init_data { ptr @.str.284, ptr @clk_branch2_ops, ptr @.compoundliteral.285, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.287 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup2_spi_apps_clk\00", align 1
@.compoundliteral.288 = internal global [1 x ptr] [ptr @.str.237], align 4
@.compoundliteral.289 = internal global %struct.clk_init_data { ptr @.str.287, ptr @clk_branch2_ops, ptr @.compoundliteral.288, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.290 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup3_i2c_apps_clk\00", align 1
@.compoundliteral.291 = internal global [1 x ptr] [ptr @.str.239], align 4
@.compoundliteral.292 = internal global %struct.clk_init_data { ptr @.str.290, ptr @clk_branch2_ops, ptr @.compoundliteral.291, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.293 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup3_spi_apps_clk\00", align 1
@.compoundliteral.294 = internal global [1 x ptr] [ptr @.str.241], align 4
@.compoundliteral.295 = internal global %struct.clk_init_data { ptr @.str.293, ptr @clk_branch2_ops, ptr @.compoundliteral.294, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.296 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup4_i2c_apps_clk\00", align 1
@.compoundliteral.297 = internal global [1 x ptr] [ptr @.str.243], align 4
@.compoundliteral.298 = internal global %struct.clk_init_data { ptr @.str.296, ptr @clk_branch2_ops, ptr @.compoundliteral.297, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.299 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup4_spi_apps_clk\00", align 1
@.compoundliteral.300 = internal global [1 x ptr] [ptr @.str.245], align 4
@.compoundliteral.301 = internal global %struct.clk_init_data { ptr @.str.299, ptr @clk_branch2_ops, ptr @.compoundliteral.300, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.302 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup5_i2c_apps_clk\00", align 1
@.compoundliteral.303 = internal global [1 x ptr] [ptr @.str.247], align 4
@.compoundliteral.304 = internal global %struct.clk_init_data { ptr @.str.302, ptr @clk_branch2_ops, ptr @.compoundliteral.303, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.305 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup5_spi_apps_clk\00", align 1
@.compoundliteral.306 = internal global [1 x ptr] [ptr @.str.249], align 4
@.compoundliteral.307 = internal global %struct.clk_init_data { ptr @.str.305, ptr @clk_branch2_ops, ptr @.compoundliteral.306, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.308 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup6_i2c_apps_clk\00", align 1
@.compoundliteral.309 = internal global [1 x ptr] [ptr @.str.251], align 4
@.compoundliteral.310 = internal global %struct.clk_init_data { ptr @.str.308, ptr @clk_branch2_ops, ptr @.compoundliteral.309, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.311 = private unnamed_addr constant [28 x i8] c"gcc_blsp2_qup6_spi_apps_clk\00", align 1
@.compoundliteral.312 = internal global [1 x ptr] [ptr @.str.253], align 4
@.compoundliteral.313 = internal global %struct.clk_init_data { ptr @.str.311, ptr @clk_branch2_ops, ptr @.compoundliteral.312, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.314 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart1_apps_clk\00", align 1
@.compoundliteral.315 = internal global [1 x ptr] [ptr @.str.255], align 4
@.compoundliteral.316 = internal global %struct.clk_init_data { ptr @.str.314, ptr @clk_branch2_ops, ptr @.compoundliteral.315, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.317 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart2_apps_clk\00", align 1
@.compoundliteral.318 = internal global [1 x ptr] [ptr @.str.257], align 4
@.compoundliteral.319 = internal global %struct.clk_init_data { ptr @.str.317, ptr @clk_branch2_ops, ptr @.compoundliteral.318, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.320 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart3_apps_clk\00", align 1
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.259], align 4
@.compoundliteral.322 = internal global %struct.clk_init_data { ptr @.str.320, ptr @clk_branch2_ops, ptr @.compoundliteral.321, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.323 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart4_apps_clk\00", align 1
@.compoundliteral.324 = internal global [1 x ptr] [ptr @.str.261], align 4
@.compoundliteral.325 = internal global %struct.clk_init_data { ptr @.str.323, ptr @clk_branch2_ops, ptr @.compoundliteral.324, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.326 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart5_apps_clk\00", align 1
@.compoundliteral.327 = internal global [1 x ptr] [ptr @.str.263], align 4
@.compoundliteral.328 = internal global %struct.clk_init_data { ptr @.str.326, ptr @clk_branch2_ops, ptr @.compoundliteral.327, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.329 = private unnamed_addr constant [25 x i8] c"gcc_blsp2_uart6_apps_clk\00", align 1
@.compoundliteral.330 = internal global [1 x ptr] [ptr @.str.265], align 4
@.compoundliteral.331 = internal global %struct.clk_init_data { ptr @.str.329, ptr @clk_branch2_ops, ptr @.compoundliteral.330, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.332 = private unnamed_addr constant [16 x i8] c"gcc_ce2_ahb_clk\00", align 1
@.compoundliteral.333 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.334 = internal global %struct.clk_init_data { ptr @.str.332, ptr @clk_branch2_ops, ptr @.compoundliteral.333, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.335 = private unnamed_addr constant [16 x i8] c"gcc_ce2_axi_clk\00", align 1
@.compoundliteral.336 = internal global [1 x ptr] [ptr @.str.13], align 4
@.compoundliteral.337 = internal global %struct.clk_init_data { ptr @.str.335, ptr @clk_branch2_ops, ptr @.compoundliteral.336, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.338 = private unnamed_addr constant [12 x i8] c"gcc_ce2_clk\00", align 1
@.compoundliteral.339 = internal global [1 x ptr] [ptr @.str.267], align 4
@.compoundliteral.340 = internal global %struct.clk_init_data { ptr @.str.338, ptr @clk_branch2_ops, ptr @.compoundliteral.339, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.341 = private unnamed_addr constant [25 x i8] c"gcc_mmss_noc_cfg_ahb_clk\00", align 1
@.compoundliteral.342 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.343 = internal global %struct.clk_init_data { ptr @.str.341, ptr @clk_branch2_ops, ptr @.compoundliteral.342, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.344 = private unnamed_addr constant [26 x i8] c"gcc_ocmem_noc_cfg_ahb_clk\00", align 1
@.compoundliteral.345 = internal global [1 x ptr] [ptr @.str.9], align 4
@.compoundliteral.346 = internal global %struct.clk_init_data { ptr @.str.344, ptr @clk_branch2_ops, ptr @.compoundliteral.345, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.347 = private unnamed_addr constant [18 x i8] c"gcc_sdcc4_ahb_clk\00", align 1
@.compoundliteral.348 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.349 = internal global %struct.clk_init_data { ptr @.str.347, ptr @clk_branch2_ops, ptr @.compoundliteral.348, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.350 = private unnamed_addr constant [19 x i8] c"gcc_sdcc4_apps_clk\00", align 1
@.compoundliteral.351 = internal global [1 x ptr] [ptr @.str.269], align 4
@.compoundliteral.352 = internal global %struct.clk_init_data { ptr @.str.350, ptr @clk_branch2_ops, ptr @.compoundliteral.351, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.353 = private unnamed_addr constant [25 x i8] c"gcc_sys_noc_usb3_axi_clk\00", align 1
@.compoundliteral.354 = internal global [1 x ptr] [ptr @.str.229], align 4
@.compoundliteral.355 = internal global %struct.clk_init_data { ptr @.str.353, ptr @clk_branch2_ops, ptr @.compoundliteral.354, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.356 = private unnamed_addr constant [17 x i8] c"gcc_tsif_ahb_clk\00", align 1
@.compoundliteral.357 = internal global [1 x ptr] [ptr @.str.11], align 4
@.compoundliteral.358 = internal global %struct.clk_init_data { ptr @.str.356, ptr @clk_branch2_ops, ptr @.compoundliteral.357, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.359 = private unnamed_addr constant [17 x i8] c"gcc_tsif_ref_clk\00", align 1
@.compoundliteral.360 = internal global [1 x ptr] [ptr @.str.271], align 4
@.compoundliteral.361 = internal global %struct.clk_init_data { ptr @.str.359, ptr @clk_branch2_ops, ptr @.compoundliteral.360, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.362 = private unnamed_addr constant [24 x i8] c"gcc_usb2b_phy_sleep_clk\00", align 1
@.compoundliteral.363 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.364 = internal global %struct.clk_init_data { ptr @.str.362, ptr @clk_branch2_ops, ptr @.compoundliteral.363, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.365 = private unnamed_addr constant [21 x i8] c"gcc_usb30_master_clk\00", align 1
@.compoundliteral.366 = internal global [1 x ptr] [ptr @.str.229], align 4
@.compoundliteral.367 = internal global %struct.clk_init_data { ptr @.str.365, ptr @clk_branch2_ops, ptr @.compoundliteral.366, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.368 = private unnamed_addr constant [24 x i8] c"gcc_usb30_mock_utmi_clk\00", align 1
@.compoundliteral.369 = internal global [1 x ptr] [ptr @.str.273], align 4
@.compoundliteral.370 = internal global %struct.clk_init_data { ptr @.str.368, ptr @clk_branch2_ops, ptr @.compoundliteral.369, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.371 = private unnamed_addr constant [20 x i8] c"gcc_usb30_sleep_clk\00", align 1
@.compoundliteral.372 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.373 = internal global %struct.clk_init_data { ptr @.str.371, ptr @clk_branch2_ops, ptr @.compoundliteral.372, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.374 = private unnamed_addr constant [30 x i8] c"gcc_usb_hsic_io_cal_sleep_clk\00", align 1
@.compoundliteral.375 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.376 = internal global %struct.clk_init_data { ptr @.str.374, ptr @clk_branch2_ops, ptr @.compoundliteral.375, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.377 = private unnamed_addr constant [16 x i8] c"mmss_gpll0_vote\00", align 1
@clk_branch_simple_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.378 = internal global [1 x ptr] [ptr @.str.6], align 4
@.compoundliteral.379 = internal global %struct.clk_init_data { ptr @.str.377, ptr @clk_branch_simple_ops, ptr @.compoundliteral.378, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.380 = internal global [1 x ptr] [ptr @.str.225], align 4
@.compoundliteral.381 = internal global %struct.clk_init_data { ptr @.str.224, ptr @clk_pll_vote_ops, ptr @.compoundliteral.380, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.382 = private unnamed_addr constant [27 x i8] c"gcc_sdcc1_cdccal_sleep_clk\00", align 1
@.compoundliteral.383 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.384 = internal global %struct.clk_init_data { ptr @.str.382, ptr @clk_branch2_ops, ptr @.compoundliteral.383, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.385 = private unnamed_addr constant [24 x i8] c"gcc_sdcc1_cdccal_ff_clk\00", align 1
@.compoundliteral.386 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.387 = internal global %struct.clk_init_data { ptr @.str.385, ptr @clk_branch2_ops, ptr @.compoundliteral.386, ptr null, ptr null, i8 1, i32 0 }, align 4
@gcc_msm8974_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 8128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@gcc_msm8974_resets = internal constant [78 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 256, i8 0 }, %struct.qcom_reset_map { i32 320, i8 0 }, %struct.qcom_reset_map { i32 384, i8 0 }, %struct.qcom_reset_map { i32 512, i8 0 }, %struct.qcom_reset_map { i32 576, i8 0 }, %struct.qcom_reset_map { i32 768, i8 0 }, %struct.qcom_reset_map { i32 960, i8 0 }, %struct.qcom_reset_map { i32 1020, i8 0 }, %struct.qcom_reset_map { i32 1024, i8 0 }, %struct.qcom_reset_map { i32 1152, i8 0 }, %struct.qcom_reset_map { i32 1192, i8 0 }, %struct.qcom_reset_map { i32 1200, i8 0 }, %struct.qcom_reset_map { i32 1216, i8 0 }, %struct.qcom_reset_map { i32 1280, i8 0 }, %struct.qcom_reset_map { i32 1344, i8 0 }, %struct.qcom_reset_map { i32 1408, i8 0 }, %struct.qcom_reset_map { i32 1472, i8 0 }, %struct.qcom_reset_map { i32 1600, i8 0 }, %struct.qcom_reset_map { i32 1664, i8 0 }, %struct.qcom_reset_map { i32 1728, i8 0 }, %struct.qcom_reset_map { i32 1792, i8 0 }, %struct.qcom_reset_map { i32 1856, i8 0 }, %struct.qcom_reset_map { i32 1920, i8 0 }, %struct.qcom_reset_map { i32 1984, i8 0 }, %struct.qcom_reset_map { i32 2048, i8 0 }, %struct.qcom_reset_map { i32 2112, i8 0 }, %struct.qcom_reset_map { i32 2176, i8 0 }, %struct.qcom_reset_map { i32 2240, i8 0 }, %struct.qcom_reset_map { i32 2304, i8 0 }, %struct.qcom_reset_map { i32 2368, i8 0 }, %struct.qcom_reset_map { i32 2432, i8 0 }, %struct.qcom_reset_map { i32 2496, i8 0 }, %struct.qcom_reset_map { i32 2560, i8 0 }, %struct.qcom_reset_map { i32 2624, i8 0 }, %struct.qcom_reset_map { i32 2688, i8 0 }, %struct.qcom_reset_map { i32 2752, i8 0 }, %struct.qcom_reset_map { i32 2816, i8 0 }, %struct.qcom_reset_map { i32 2880, i8 0 }, %struct.qcom_reset_map { i32 2944, i8 0 }, %struct.qcom_reset_map { i32 3008, i8 0 }, %struct.qcom_reset_map { i32 3072, i8 0 }, %struct.qcom_reset_map { i32 3136, i8 0 }, %struct.qcom_reset_map { i32 3264, i8 0 }, %struct.qcom_reset_map { i32 3392, i8 0 }, %struct.qcom_reset_map { i32 3456, i8 0 }, %struct.qcom_reset_map { i32 3520, i8 0 }, %struct.qcom_reset_map { i32 3584, i8 0 }, %struct.qcom_reset_map { i32 3648, i8 0 }, %struct.qcom_reset_map { i32 3712, i8 0 }, %struct.qcom_reset_map { i32 3776, i8 0 }, %struct.qcom_reset_map { i32 3904, i8 0 }, %struct.qcom_reset_map { i32 4032, i8 0 }, %struct.qcom_reset_map { i32 4096, i8 0 }, %struct.qcom_reset_map { i32 4160, i8 0 }, %struct.qcom_reset_map { i32 4224, i8 0 }, %struct.qcom_reset_map { i32 4352, i8 0 }, %struct.qcom_reset_map { i32 3780, i8 2 }, %struct.qcom_reset_map { i32 3780, i8 1 }, %struct.qcom_reset_map { i32 4672, i8 0 }, %struct.qcom_reset_map { i32 4680, i8 0 }, %struct.qcom_reset_map { i32 4736, i8 0 }, %struct.qcom_reset_map { i32 4744, i8 0 }, %struct.qcom_reset_map { i32 4752, i8 0 }, %struct.qcom_reset_map { i32 4760, i8 0 }, %struct.qcom_reset_map { i32 4768, i8 0 }, %struct.qcom_reset_map { i32 4800, i8 0 }, %struct.qcom_reset_map { i32 4808, i8 0 }, %struct.qcom_reset_map { i32 4816, i8 0 }, %struct.qcom_reset_map { i32 4824, i8 0 }, %struct.qcom_reset_map { i32 4832, i8 0 }, %struct.qcom_reset_map { i32 4840, i8 0 }, %struct.qcom_reset_map { i32 4848, i8 0 }, %struct.qcom_reset_map { i32 4864, i8 0 }, %struct.qcom_reset_map { i32 4992, i8 0 }, %struct.qcom_reset_map { i32 5760, i8 0 }, %struct.qcom_reset_map { i32 5824, i8 0 }, %struct.qcom_reset_map { i32 5888, i8 0 }, %struct.qcom_reset_map { i32 5952, i8 0 }], align 4
@gcc_msm8974_gdscs = internal global [1 x ptr] [ptr @usb_hs_hsic_gdsc], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_license165, ptr @__exitcall_gcc_msm8974_exit, ptr @__initcall__kmod_gcc_msm8974__162_2900_gcc_msm8974_init1, ptr @gcc_msm8974_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gcc_msm8974_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gcc_msm8974_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gcc_msm8974_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gcc_msm8974_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcc_msm8974_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @gcc_msm8974_match_table, ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.1) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @gcc_msm8226_desc
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr @ftbl_gcc_ce1_clk_msm8226, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @ce1_clk_src, i32 0, i32 5), align 4
  store ptr @ftbl_gcc_gp_clk_msm8226, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @gp1_clk_src, i32 0, i32 5), align 4
  store ptr @ftbl_gcc_gp_clk_msm8226, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @gp2_clk_src, i32 0, i32 5), align 4
  store ptr @ftbl_gcc_gp_clk_msm8226, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @gp3_clk_src, i32 0, i32 5), align 4
  br label %16

15:                                               ; preds = %10
  store ptr @gcc_xo_gpll0_gpll4, ptr getelementptr inbounds (%struct.clk_init_data, ptr @sdcc1_apps_clk_src_init, i32 0, i32 2), align 4
  store i8 3, ptr getelementptr inbounds (%struct.clk_init_data, ptr @sdcc1_apps_clk_src_init, i32 0, i32 5), align 4
  store ptr @ftbl_gcc_sdcc1_apps_clk_pro, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @sdcc1_apps_clk_src, i32 0, i32 5), align 4
  store ptr @gcc_xo_gpll0_gpll4_map, ptr getelementptr inbounds (%struct.clk_rcg2, ptr @sdcc1_apps_clk_src, i32 0, i32 4), align 4
  store ptr getelementptr inbounds (%struct.clk_pll, ptr @gpll4, i32 0, i32 10), ptr getelementptr inbounds (<{ [273 x ptr], [33 x ptr] }>, ptr @gcc_msm8974_clocks, i32 0, i32 1, i32 29), align 4
  store ptr @gpll4_vote, ptr getelementptr inbounds (<{ [273 x ptr], [33 x ptr] }>, ptr @gcc_msm8974_clocks, i32 0, i32 1, i32 30), align 4
  store ptr getelementptr inbounds (%struct.clk_branch, ptr @gcc_sdcc1_cdccal_sleep_clk, i32 0, i32 5), ptr getelementptr inbounds (<{ [273 x ptr], [33 x ptr] }>, ptr @gcc_msm8974_clocks, i32 0, i32 1, i32 31), align 4
  store ptr getelementptr inbounds (%struct.clk_branch, ptr @gcc_sdcc1_cdccal_ff_clk, i32 0, i32 5), ptr getelementptr inbounds (<{ [273 x ptr], [33 x ptr] }>, ptr @gcc_msm8974_clocks, i32 0, i32 1, i32 32), align 4
  br label %16

16:                                               ; preds = %15, %14, %5
  %17 = tail call i32 @qcom_cc_register_board_clk(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 19200000) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = tail call i32 @qcom_cc_register_sleep_clk(ptr noundef %2) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 @qcom_cc_probe(ptr noundef %0, ptr noundef nonnull @gcc_msm8974_desc) #3
  br label %24

24:                                               ; preds = %22, %19, %16, %1
  %25 = phi i32 [ %23, %22 ], [ -19, %1 ], [ %17, %16 ], [ %20, %19 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_register_board_clk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_register_sleep_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
