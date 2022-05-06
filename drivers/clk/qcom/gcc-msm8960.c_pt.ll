; ModuleID = '/llk/IR/drivers/clk/qcom/gcc-msm8960.c_pt.bc'
source_filename = "../drivers/clk/qcom/gcc-msm8960.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.hfpll_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_hfpll = type { ptr, i32, %struct.clk_regmap, %struct.spinlock }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_gcc_msm8960__162_3676_gcc_msm8960_init1 = internal global ptr @gcc_msm8960_init, section ".initcall1.init", align 4
@gcc_msm8960_driver = internal global %struct.platform_driver { ptr @gcc_msm8960_probe, ptr @gcc_msm8960_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gcc_msm8960_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gcc_msm8960_exit = internal global ptr @gcc_msm8960_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description163 = internal constant [48 x i8] c"gcc_msm8960.description=QCOM GCC MSM8960 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [46 x i8] c"gcc_msm8960.file=drivers/clk/qcom/gcc-msm8960\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [27 x i8] c"gcc_msm8960.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias166 = internal constant [39 x i8] c"gcc_msm8960.alias=platform:gcc-msm8960\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"gcc-msm8960\00", align 1
@gcc_msm8960_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_msm8960_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,gcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gcc_apq8064_desc }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cxo_board\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cxo\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"pxo_board\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@gcc_apq8064_desc = internal constant %struct.qcom_cc_desc { ptr @gcc_apq8064_regmap_config, ptr @gcc_apq8064_clks, i32 308, ptr @gcc_apq8064_resets, i32 116, ptr null, i32 0, ptr null, i32 0 }, align 4
@hfpll1_8064_data = internal global %struct.hfpll_data { i32 12864, i32 12872, i32 12876, i32 12880, i32 0, i32 12884, i32 12868, i32 12892, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@hfpll1 = internal global %struct.clk_hfpll { ptr @hfpll1_data, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 }, ptr null, i32 0, i32 0, i8 0 }, %struct.spinlock zeroinitializer }, align 4
@hfpll_l2_8064_data = internal global %struct.hfpll_data { i32 13056, i32 13064, i32 13068, i32 13072, i32 0, i32 13076, i32 13060, i32 13084, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@hfpll_l2 = internal global %struct.clk_hfpll { ptr @hfpll_l2_data, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.268 }, ptr null, i32 0, i32 0, i8 0 }, %struct.spinlock zeroinitializer }, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"qcom-tsens\00", align 1
@gcc_apq8064_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 14464, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@gcc_apq8064_clks = internal global [308 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @adm0_clk, i64 12), ptr getelementptr (i8, ptr @adm0_pbus_clk, i64 12), ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pcie_a_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pcie_phy_ref_clk, i64 12), ptr getelementptr (i8, ptr @pcie_h_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @sfab_sata_s_h_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pmem_clk, i64 12), ptr getelementptr (i8, ptr @dma_bam_h_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @tsif_h_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @tsif_ref_src, i64 32), ptr getelementptr (i8, ptr @tsif_ref_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @rpm_msg_ram_h_clk, i64 12), ptr getelementptr (i8, ptr @pmic_arb0_h_clk, i64 12), ptr getelementptr (i8, ptr @pmic_arb1_h_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pmic_ssbi2_clk, i64 12), ptr getelementptr (i8, ptr @sdc1_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc2_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc3_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc4_h_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @sdc1_src, i64 32), ptr getelementptr (i8, ptr @sdc2_src, i64 32), ptr getelementptr (i8, ptr @sdc3_src, i64 32), ptr getelementptr (i8, ptr @sdc4_src, i64 32), ptr null, ptr getelementptr (i8, ptr @sdc1_clk, i64 12), ptr getelementptr (i8, ptr @sdc2_clk, i64 12), ptr getelementptr (i8, ptr @sdc3_clk, i64 12), ptr getelementptr (i8, ptr @sdc4_clk, i64 12), ptr null, ptr null, ptr getelementptr (i8, ptr @usb_hs1_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hs1_xcvr_src, i64 32), ptr getelementptr (i8, ptr @usb_hs1_xcvr_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_xcvr_fs_src, i64 32), ptr getelementptr (i8, ptr @usb_hsic_xcvr_fs_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @usb_hsic_system_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_fs1_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs1_xcvr_fs_src, i64 32), ptr getelementptr (i8, ptr @usb_fs1_xcvr_fs_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs1_system_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gsbi1_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_h_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gsbi1_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi1_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi2_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi3_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi4_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi5_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi6_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi7_uart_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gsbi1_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi1_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi2_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi3_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi4_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi5_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi6_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi7_qup_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_hsic_hsic_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_hsio_cal_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @sata_h_clk, i64 12), ptr getelementptr (i8, ptr @sata_clk_src, i64 32), ptr getelementptr (i8, ptr @sata_rxoob_clk, i64 12), ptr getelementptr (i8, ptr @sata_pmalive_clk, i64 12), ptr getelementptr (i8, ptr @sata_phy_ref_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gp0_src, i64 32), ptr getelementptr (i8, ptr @gp0_clk, i64 12), ptr getelementptr (i8, ptr @gp1_src, i64 32), ptr getelementptr (i8, ptr @gp1_clk, i64 12), ptr getelementptr (i8, ptr @gp2_src, i64 32), ptr getelementptr (i8, ptr @gp2_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @prng_src, i64 32), ptr getelementptr (i8, ptr @prng_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pll3, i64 32), ptr null, ptr @pll4_vote, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pll8, i64 32), ptr @pll8_vote, ptr getelementptr (i8, ptr @hfpll0, i64 8), ptr getelementptr (i8, ptr @hfpll1, i64 8), ptr null, ptr getelementptr (i8, ptr @hfpll_l2, i64 8), ptr null, ptr getelementptr (i8, ptr @pll14, i64 32), ptr @pll14_vote, ptr getelementptr (i8, ptr @usb_hs3_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hs3_xcvr_src, i64 32), ptr getelementptr (i8, ptr @usb_hs3_xcvr_clk, i64 12), ptr getelementptr (i8, ptr @usb_hs4_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hs4_xcvr_src, i64 32), ptr getelementptr (i8, ptr @usb_hs4_xcvr_clk, i64 12), ptr getelementptr (i8, ptr @sata_phy_cfg_clk, i64 12), ptr getelementptr (i8, ptr @sata_a_clk, i64 12), ptr getelementptr (i8, ptr @ce3_src, i64 32), ptr getelementptr (i8, ptr @ce3_core_clk, i64 12), ptr getelementptr (i8, ptr @ce3_h_clk, i64 12), ptr getelementptr (i8, ptr @hfpll2, i64 8), ptr getelementptr (i8, ptr @hfpll3, i64 8)], align 4
@gcc_apq8064_resets = internal constant [116 x %struct.qcom_reset_map] [%struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 8288, i8 6 }, %struct.qcom_reset_map { i32 8376, i8 2 }, %struct.qcom_reset_map { i32 8376, i8 1 }, %struct.qcom_reset_map { i32 8376, i8 0 }, %struct.qcom_reset_map { i32 8384, i8 7 }, %struct.qcom_reset_map { i32 8388, i8 7 }, %struct.qcom_reset_map { i32 8672, i8 7 }, %struct.qcom_reset_map { i32 8676, i8 7 }, %struct.qcom_reset_map { i32 8680, i8 7 }, %struct.qcom_reset_map { i32 8716, i8 4 }, %struct.qcom_reset_map { i32 8716, i8 3 }, %struct.qcom_reset_map { i32 8716, i8 2 }, %struct.qcom_reset_map { i32 8716, i8 1 }, %struct.qcom_reset_map { i32 8716, i8 0 }, %struct.qcom_reset_map { i32 8800, i8 5 }, %struct.qcom_reset_map { i32 8800, i8 4 }, %struct.qcom_reset_map { i32 8800, i8 3 }, %struct.qcom_reset_map { i32 8800, i8 2 }, %struct.qcom_reset_map { i32 8800, i8 1 }, %struct.qcom_reset_map { i32 8800, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 8920, i8 1 }, %struct.qcom_reset_map { i32 8920, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 9056, i8 7 }, %struct.qcom_reset_map { i32 9088, i8 7 }, %struct.qcom_reset_map { i32 9120, i8 7 }, %struct.qcom_reset_map { i32 9184, i8 7 }, %struct.qcom_reset_map { i32 9248, i8 7 }, %struct.qcom_reset_map { i32 9252, i8 7 }, %struct.qcom_reset_map { i32 9344, i8 7 }, %struct.qcom_reset_map { i32 9472, i8 7 }, %struct.qcom_reset_map { i32 9504, i8 7 }, %struct.qcom_reset_map { i32 9536, i8 7 }, %struct.qcom_reset_map { i32 9540, i8 7 }, %struct.qcom_reset_map { i32 9568, i8 7 }, %struct.qcom_reset_map { i32 9572, i8 7 }, %struct.qcom_reset_map { i32 9620, i8 1 }, %struct.qcom_reset_map { i32 9620, i8 0 }, %struct.qcom_reset_map { i32 9664, i8 7 }, %struct.qcom_reset_map { i32 9728, i8 7 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 9856, i8 7 }, %struct.qcom_reset_map { i32 9920, i8 7 }, %struct.qcom_reset_map { i32 9984, i8 7 }, %struct.qcom_reset_map { i32 10016, i8 7 }, %struct.qcom_reset_map { i32 10020, i8 7 }, %struct.qcom_reset_map { i32 10024, i8 7 }, %struct.qcom_reset_map { i32 10048, i8 7 }, %struct.qcom_reset_map { i32 10052, i8 7 }, %struct.qcom_reset_map { i32 10112, i8 7 }, %struct.qcom_reset_map { i32 10144, i8 7 }, %struct.qcom_reset_map { i32 10176, i8 7 }, %struct.qcom_reset_map { i32 10252, i8 12 }, %struct.qcom_reset_map { i32 10288, i8 0 }, %struct.qcom_reset_map { i32 10320, i8 0 }, %struct.qcom_reset_map { i32 10352, i8 0 }, %struct.qcom_reset_map { i32 10384, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 10512, i8 0 }, %struct.qcom_reset_map { i32 10548, i8 0 }, %struct.qcom_reset_map { i32 10612, i8 1 }, %struct.qcom_reset_map { i32 10612, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 10716, i8 0 }, %struct.qcom_reset_map { i32 10748, i8 0 }, %struct.qcom_reset_map { i32 10780, i8 0 }, %struct.qcom_reset_map { i32 10812, i8 0 }, %struct.qcom_reset_map { i32 10844, i8 0 }, %struct.qcom_reset_map { i32 10876, i8 0 }, %struct.qcom_reset_map { i32 10908, i8 0 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 11116, i8 0 }, %struct.qcom_reset_map { i32 11168, i8 7 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 11288, i8 0 }, %struct.qcom_reset_map { i32 11424, i8 7 }, %struct.qcom_reset_map { i32 11456, i8 12 }, %struct.qcom_reset_map { i32 11680, i8 7 }, %struct.qcom_reset_map { i32 11684, i8 0 }, %struct.qcom_reset_map { i32 11776, i8 7 }, %struct.qcom_reset_map { i32 11904, i8 12 }, %struct.qcom_reset_map { i32 13792, i8 0 }, %struct.qcom_reset_map { i32 14096, i8 0 }, %struct.qcom_reset_map { i32 14128, i8 0 }, %struct.qcom_reset_map { i32 14028, i8 7 }, %struct.qcom_reset_map { i32 8924, i8 6 }, %struct.qcom_reset_map { i32 8924, i8 5 }, %struct.qcom_reset_map { i32 8924, i8 4 }, %struct.qcom_reset_map { i32 8924, i8 3 }, %struct.qcom_reset_map { i32 8924, i8 2 }, %struct.qcom_reset_map { i32 8924, i8 0 }, %struct.qcom_reset_map { i32 14020, i8 7 }, %struct.qcom_reset_map { i32 14024, i8 1 }, %struct.qcom_reset_map { i32 14024, i8 0 }, %struct.qcom_reset_map { i32 11292, i8 0 }, %struct.qcom_reset_map { i32 14032, i8 7 }, %struct.qcom_reset_map { i32 11360, i8 7 }, %struct.qcom_reset_map { i32 11364, i8 0 }], align 4
@adm0_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 14, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 12416, i32 4, i8 0 } }, align 4
@adm0_pbus_clk = internal global %struct.clk_branch { i32 8712, i32 12252, i8 6, i8 13, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, ptr null, i32 12416, i32 8, i8 0 } }, align 4
@pcie_a_clk = internal global %struct.clk_branch { i32 0, i32 12224, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, ptr null, i32 8896, i32 16, i8 0 } }, align 4
@pcie_phy_ref_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.12 }, ptr null, i32 8912, i32 16, i8 0 } }, align 4
@pcie_h_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.14 }, ptr null, i32 8908, i32 16, i8 0 } }, align 4
@sfab_sata_s_h_clk = internal global %struct.clk_branch { i32 0, i32 12228, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, ptr null, i32 9344, i32 16, i8 0 } }, align 4
@pmem_clk = internal global %struct.clk_branch { i32 9632, i32 12232, i8 6, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.18 }, ptr null, i32 9632, i32 16, i8 0 } }, align 4
@dma_bam_h_clk = internal global %struct.clk_branch { i32 9664, i32 12232, i8 6, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.20 }, ptr null, i32 9664, i32 16, i8 0 } }, align 4
@tsif_h_clk = internal global %struct.clk_branch { i32 9984, i32 12244, i8 6, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, ptr null, i32 9984, i32 16, i8 0 } }, align 4
@tsif_ref_src = internal global %struct.clk_rcg { i32 10000, i32 9996, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_tsif_ref, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.24 }, ptr null, i32 10000, i32 2048, i8 0 } }, align 4
@tsif_ref_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, ptr null, i32 10000, i32 512, i8 0 } }, align 4
@rpm_msg_ram_h_clk = internal global %struct.clk_branch { i32 10208, i32 12248, i8 6, i8 12, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.30 }, ptr null, i32 12416, i32 64, i8 0 } }, align 4
@pmic_arb0_h_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 22, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.32 }, ptr null, i32 12416, i32 256, i8 0 } }, align 4
@pmic_arb1_h_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 21, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, ptr null, i32 12416, i32 512, i8 0 } }, align 4
@pmic_ssbi2_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 23, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.36 }, ptr null, i32 12416, i32 128, i8 0 } }, align 4
@sdc1_h_clk = internal global %struct.clk_branch { i32 10272, i32 12232, i8 6, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.38 }, ptr null, i32 10272, i32 16, i8 0 } }, align 4
@sdc2_h_clk = internal global %struct.clk_branch { i32 10304, i32 12232, i8 6, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.40 }, ptr null, i32 10304, i32 16, i8 0 } }, align 4
@sdc3_h_clk = internal global %struct.clk_branch { i32 10336, i32 12232, i8 6, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.42 }, ptr null, i32 10336, i32 16, i8 0 } }, align 4
@sdc4_h_clk = internal global %struct.clk_branch { i32 10368, i32 12232, i8 6, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.44 }, ptr null, i32 10368, i32 16, i8 0 } }, align 4
@sdc1_src = internal global %struct.clk_rcg { i32 10284, i32 10280, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_sdc, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.46 }, ptr null, i32 10284, i32 2048, i8 0 } }, align 4
@sdc2_src = internal global %struct.clk_rcg { i32 10316, i32 10312, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_sdc, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.48 }, ptr null, i32 10316, i32 2048, i8 0 } }, align 4
@sdc3_src = internal global %struct.clk_rcg { i32 10348, i32 10344, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_sdc, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.50 }, ptr null, i32 10348, i32 2048, i8 0 } }, align 4
@sdc4_src = internal global %struct.clk_rcg { i32 10380, i32 10376, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_sdc, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.52 }, ptr null, i32 10380, i32 2048, i8 0 } }, align 4
@sdc1_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, i32 10284, i32 512, i8 0 } }, align 4
@sdc2_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.58 }, ptr null, i32 10316, i32 512, i8 0 } }, align 4
@sdc3_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 10348, i32 512, i8 0 } }, align 4
@sdc4_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.64 }, ptr null, i32 10380, i32 512, i8 0 } }, align 4
@usb_hs1_h_clk = internal global %struct.clk_branch { i32 10496, i32 12232, i8 6, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.66 }, ptr null, i32 10496, i32 16, i8 0 } }, align 4
@usb_hs1_xcvr_src = internal global %struct.clk_rcg { i32 10508, i32 10504, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.68 }, ptr null, i32 10508, i32 2048, i8 0 } }, align 4
@usb_hs1_xcvr_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr null, i32 10508, i32 512, i8 0 } }, align 4
@usb_hsic_h_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 28, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, i32 10528, i32 16, i8 0 } }, align 4
@usb_hsic_xcvr_fs_src = internal global %struct.clk_rcg { i32 10536, i32 10532, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 10536, i32 2048, i8 0 } }, align 4
@usb_hsic_xcvr_fs_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 10536, i32 512, i8 0 } }, align 4
@usb_hsic_system_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 24, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.79 }, ptr null, i32 10540, i32 16, i8 0 } }, align 4
@usb_fs1_h_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 17, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.81 }, ptr null, i32 10592, i32 16, i8 0 } }, align 4
@usb_fs1_xcvr_fs_src = internal global %struct.clk_rcg { i32 10600, i32 10596, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 10600, i32 2048, i8 0 } }, align 4
@usb_fs1_xcvr_fs_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 10600, i32 512, i8 0 } }, align 4
@usb_fs1_system_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.87 }, ptr null, i32 10604, i32 16, i8 0 } }, align 4
@gsbi1_h_clk = internal global %struct.clk_branch { i32 10688, i32 12236, i8 6, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.89 }, ptr null, i32 10688, i32 16, i8 0 } }, align 4
@gsbi2_h_clk = internal global %struct.clk_branch { i32 10720, i32 12236, i8 6, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr null, i32 10720, i32 16, i8 0 } }, align 4
@gsbi3_h_clk = internal global %struct.clk_branch { i32 10752, i32 12236, i8 6, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, i32 10752, i32 16, i8 0 } }, align 4
@gsbi4_h_clk = internal global %struct.clk_branch { i32 10784, i32 12240, i8 6, i8 27, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.95 }, ptr null, i32 10784, i32 16, i8 0 } }, align 4
@gsbi5_h_clk = internal global %struct.clk_branch { i32 10816, i32 12240, i8 6, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.97 }, ptr null, i32 10816, i32 16, i8 0 } }, align 4
@gsbi6_h_clk = internal global %struct.clk_branch { i32 10848, i32 12240, i8 6, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, i32 10848, i32 16, i8 0 } }, align 4
@gsbi7_h_clk = internal global %struct.clk_branch { i32 10880, i32 12240, i8 6, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, i32 10880, i32 16, i8 0 } }, align 4
@gsbi1_uart_src = internal global %struct.clk_rcg { i32 10708, i32 10704, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.103 }, ptr null, i32 10708, i32 2048, i8 0 } }, align 4
@gsbi1_uart_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 }, ptr null, i32 10708, i32 512, i8 0 } }, align 4
@gsbi2_uart_src = internal global %struct.clk_rcg { i32 10740, i32 10736, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr null, i32 10740, i32 2048, i8 0 } }, align 4
@gsbi2_uart_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.111 }, ptr null, i32 10740, i32 512, i8 0 } }, align 4
@gsbi3_uart_src = internal global %struct.clk_rcg { i32 10772, i32 10768, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 10772, i32 2048, i8 0 } }, align 4
@gsbi3_uart_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, i32 10772, i32 512, i8 0 } }, align 4
@gsbi4_uart_src = internal global %struct.clk_rcg { i32 10804, i32 10800, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 }, ptr null, i32 10804, i32 2048, i8 0 } }, align 4
@gsbi4_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.121 }, ptr null, i32 10804, i32 512, i8 0 } }, align 4
@gsbi5_uart_src = internal global %struct.clk_rcg { i32 10836, i32 10832, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.123 }, ptr null, i32 10836, i32 2048, i8 0 } }, align 4
@gsbi5_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 22, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.126 }, ptr null, i32 10836, i32 512, i8 0 } }, align 4
@gsbi6_uart_src = internal global %struct.clk_rcg { i32 10868, i32 10864, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.128 }, ptr null, i32 10868, i32 2048, i8 0 } }, align 4
@gsbi6_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.131 }, ptr null, i32 10868, i32 512, i8 0 } }, align 4
@gsbi7_uart_src = internal global %struct.clk_rcg { i32 10900, i32 10896, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.133 }, ptr null, i32 10900, i32 2048, i8 0 } }, align 4
@gsbi7_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.136 }, ptr null, i32 10900, i32 512, i8 0 } }, align 4
@gsbi1_qup_src = internal global %struct.clk_rcg { i32 10700, i32 10696, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.138 }, ptr null, i32 10700, i32 2048, i8 0 } }, align 4
@gsbi1_qup_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.141 }, ptr null, i32 10700, i32 512, i8 0 } }, align 4
@gsbi2_qup_src = internal global %struct.clk_rcg { i32 10732, i32 10728, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.143 }, ptr null, i32 10732, i32 2048, i8 0 } }, align 4
@gsbi2_qup_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.146 }, ptr null, i32 10732, i32 512, i8 0 } }, align 4
@gsbi3_qup_src = internal global %struct.clk_rcg { i32 10764, i32 10760, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.148 }, ptr null, i32 10764, i32 2048, i8 0 } }, align 4
@gsbi3_qup_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.151 }, ptr null, i32 10764, i32 512, i8 0 } }, align 4
@gsbi4_qup_src = internal global %struct.clk_rcg { i32 10796, i32 10792, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 }, ptr null, i32 10796, i32 2048, i8 0 } }, align 4
@gsbi4_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 24, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.156 }, ptr null, i32 10796, i32 512, i8 0 } }, align 4
@gsbi5_qup_src = internal global %struct.clk_rcg { i32 10828, i32 10824, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 10828, i32 2048, i8 0 } }, align 4
@gsbi5_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.161 }, ptr null, i32 10828, i32 512, i8 0 } }, align 4
@gsbi6_qup_src = internal global %struct.clk_rcg { i32 10860, i32 10856, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 }, ptr null, i32 10860, i32 2048, i8 0 } }, align 4
@gsbi6_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.166 }, ptr null, i32 10860, i32 512, i8 0 } }, align 4
@gsbi7_qup_src = internal global %struct.clk_rcg { i32 10892, i32 10888, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.168 }, ptr null, i32 10892, i32 2048, i8 0 } }, align 4
@gsbi7_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.171 }, ptr null, i32 10892, i32 512, i8 0 } }, align 4
@usb_hsic_hsic_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 }, ptr null, i32 11076, i32 1, i8 0 } }, align 4
@usb_hsic_hsio_cal_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 }, ptr null, i32 11080, i32 1, i8 0 } }, align 4
@sata_h_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 27, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.179 }, ptr null, i32 11264, i32 16, i8 0 } }, align 4
@sata_clk_src = internal global %struct.clk_rcg { i32 11272, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 3, i8 4 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_pll3_map }, ptr @clk_tbl_sata_ref, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.181 }, ptr null, i32 11272, i32 128, i8 0 } }, align 4
@sata_rxoob_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, i32 11276, i32 16, i8 0 } }, align 4
@sata_pmalive_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.188 }, ptr null, i32 11280, i32 16, i8 0 } }, align 4
@sata_phy_ref_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 24, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.191 }, ptr null, i32 11284, i32 16, i8 0 } }, align 4
@gp0_src = internal global %struct.clk_rcg { i32 11556, i32 11520, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_cxo_map }, ptr @clk_tbl_gp, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.193 }, ptr null, i32 11556, i32 2048, i8 0 } }, align 4
@gp0_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.196 }, ptr null, i32 11556, i32 512, i8 0 } }, align 4
@gp1_src = internal global %struct.clk_rcg { i32 11588, i32 11584, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_cxo_map }, ptr @clk_tbl_gp, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.198 }, ptr null, i32 11588, i32 2048, i8 0 } }, align 4
@gp1_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.201 }, ptr null, i32 11588, i32 512, i8 0 } }, align 4
@gp2_src = internal global %struct.clk_rcg { i32 11620, i32 11616, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_cxo_map }, ptr @clk_tbl_gp, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.203 }, ptr null, i32 11620, i32 2048, i8 0 } }, align 4
@gp2_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.206 }, ptr null, i32 11620, i32 512, i8 0 } }, align 4
@prng_src = internal global %struct.clk_rcg { i32 11904, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 3, i8 4 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.208 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@prng_clk = internal global %struct.clk_branch { i32 0, i32 12248, i8 0, i8 10, i8 -128, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.211 }, ptr null, i32 12416, i32 1024, i8 0 } }, align 4
@pll3 = internal global %struct.clk_pll { i32 12644, i32 12648, i32 12652, i32 12660, i32 12640, i32 12664, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.213 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@pll4_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.217 }, ptr null, i32 13504, i32 16, i8 0 }, align 4
@pll8 = internal global %struct.clk_pll { i32 12612, i32 12616, i32 12620, i32 12628, i32 12608, i32 12632, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.220 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@pll8_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.222 }, ptr null, i32 13504, i32 256, i8 0 }, align 4
@hfpll0 = internal global %struct.clk_hfpll { ptr @hfpll0_data, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.225 }, ptr null, i32 0, i32 0, i8 0 }, %struct.spinlock zeroinitializer }, align 4
@pll14 = internal global %struct.clk_pll { i32 12740, i32 12744, i32 12748, i32 12756, i32 12736, i32 12760, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.228 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@pll14_vote = internal global %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.230 }, ptr null, i32 13504, i32 16384, i8 0 }, align 4
@usb_hs3_h_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 31, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.232 }, ptr null, i32 14080, i32 16, i8 0 } }, align 4
@usb_hs3_xcvr_src = internal global %struct.clk_rcg { i32 14092, i32 14088, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 }, ptr null, i32 14092, i32 2048, i8 0 } }, align 4
@usb_hs3_xcvr_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 30, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.237 }, ptr null, i32 14092, i32 512, i8 0 } }, align 4
@usb_hs4_h_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 }, ptr null, i32 14112, i32 16, i8 0 } }, align 4
@usb_hs4_xcvr_src = internal global %struct.clk_rcg { i32 14124, i32 14120, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 }, ptr null, i32 14124, i32 2048, i8 0 } }, align 4
@usb_hs4_xcvr_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.244 }, ptr null, i32 14124, i32 512, i8 0 } }, align 4
@sata_phy_cfg_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.246 }, ptr null, i32 11328, i32 16, i8 0 } }, align 4
@sata_a_clk = internal global %struct.clk_branch { i32 0, i32 12224, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.248 }, ptr null, i32 11296, i32 16, i8 0 } }, align 4
@ce3_src = internal global %struct.clk_rcg { i32 14016, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 3, i8 4 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_pll3_map }, ptr @clk_tbl_ce3, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.250 }, ptr null, i32 14016, i32 128, i8 0 } }, align 4
@ce3_core_clk = internal global %struct.clk_branch { i32 0, i32 12252, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 }, ptr null, i32 14028, i32 16, i8 0 } }, align 4
@ce3_h_clk = internal global %struct.clk_branch { i32 0, i32 12228, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.256 }, ptr null, i32 14020, i32 16, i8 0 } }, align 4
@hfpll2 = internal global %struct.clk_hfpll { ptr @hfpll2_data, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 }, ptr null, i32 0, i32 0, i8 0 }, %struct.spinlock zeroinitializer }, align 4
@hfpll3 = internal global %struct.clk_hfpll { ptr @hfpll3_data, i32 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.262 }, ptr null, i32 0, i32 0, i8 0 }, %struct.spinlock zeroinitializer }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"adm0_clk\00", align 1
@clk_branch_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.6, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"adm0_pbus_clk\00", align 1
@.compoundliteral.8 = internal global %struct.clk_init_data { ptr @.str.7, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"pcie_a_clk\00", align 1
@.compoundliteral.10 = internal global %struct.clk_init_data { ptr @.str.9, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"pcie_phy_ref_clk\00", align 1
@.compoundliteral.12 = internal global %struct.clk_init_data { ptr @.str.11, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c"pcie_h_clk\00", align 1
@.compoundliteral.14 = internal global %struct.clk_init_data { ptr @.str.13, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"sfab_sata_s_h_clk\00", align 1
@.compoundliteral.16 = internal global %struct.clk_init_data { ptr @.str.15, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"pmem_clk\00", align 1
@.compoundliteral.18 = internal global %struct.clk_init_data { ptr @.str.17, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"dma_bam_h_clk\00", align 1
@.compoundliteral.20 = internal global %struct.clk_init_data { ptr @.str.19, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"tsif_h_clk\00", align 1
@.compoundliteral.22 = internal global %struct.clk_init_data { ptr @.str.21, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@gcc_pxo_pll8_map = internal constant [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 3 }], align 1
@clk_tbl_tsif_ref = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 105000, i8 0, i8 1, i16 1, i16 256 }, %struct.freq_tbl zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"tsif_ref_src\00", align 1
@clk_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@gcc_pxo_pll8 = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.25], align 4
@.compoundliteral.24 = internal global %struct.clk_init_data { ptr @.str.23, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"pll8_vote\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"tsif_ref_clk\00", align 1
@.compoundliteral.27 = internal global [1 x ptr] [ptr @.str.23], align 4
@.compoundliteral.28 = internal global %struct.clk_init_data { ptr @.str.26, ptr @clk_branch_ops, ptr @.compoundliteral.27, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"rpm_msg_ram_h_clk\00", align 1
@.compoundliteral.30 = internal global %struct.clk_init_data { ptr @.str.29, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"pmic_arb0_h_clk\00", align 1
@.compoundliteral.32 = internal global %struct.clk_init_data { ptr @.str.31, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"pmic_arb1_h_clk\00", align 1
@.compoundliteral.34 = internal global %struct.clk_init_data { ptr @.str.33, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [15 x i8] c"pmic_ssbi2_clk\00", align 1
@.compoundliteral.36 = internal global %struct.clk_init_data { ptr @.str.35, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"sdc1_h_clk\00", align 1
@.compoundliteral.38 = internal global %struct.clk_init_data { ptr @.str.37, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"sdc2_h_clk\00", align 1
@.compoundliteral.40 = internal global %struct.clk_init_data { ptr @.str.39, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.41 = private unnamed_addr constant [11 x i8] c"sdc3_h_clk\00", align 1
@.compoundliteral.42 = internal global %struct.clk_init_data { ptr @.str.41, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.43 = private unnamed_addr constant [11 x i8] c"sdc4_h_clk\00", align 1
@.compoundliteral.44 = internal global %struct.clk_init_data { ptr @.str.43, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@clk_tbl_sdc = internal constant [11 x %struct.freq_tbl] [%struct.freq_tbl { i32 144000, i8 0, i8 3, i16 2, i16 125 }, %struct.freq_tbl { i32 400000, i8 1, i8 4, i16 1, i16 240 }, %struct.freq_tbl { i32 16000000, i8 1, i8 4, i16 1, i16 6 }, %struct.freq_tbl { i32 17070000, i8 1, i8 1, i16 2, i16 45 }, %struct.freq_tbl { i32 20210000, i8 1, i8 1, i16 1, i16 19 }, %struct.freq_tbl { i32 24000000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 48000000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 64000000, i8 1, i8 3, i16 1, i16 2 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 192000000, i8 1, i8 2, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"sdc1_src\00", align 1
@.compoundliteral.46 = internal global %struct.clk_init_data { ptr @.str.45, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [9 x i8] c"sdc2_src\00", align 1
@.compoundliteral.48 = internal global %struct.clk_init_data { ptr @.str.47, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [9 x i8] c"sdc3_src\00", align 1
@.compoundliteral.50 = internal global %struct.clk_init_data { ptr @.str.49, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"sdc4_src\00", align 1
@.compoundliteral.52 = internal global %struct.clk_init_data { ptr @.str.51, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.53 = private unnamed_addr constant [9 x i8] c"sdc1_clk\00", align 1
@.compoundliteral.54 = internal global [1 x ptr] [ptr @.str.45], align 4
@.compoundliteral.55 = internal global %struct.clk_init_data { ptr @.str.53, ptr @clk_branch_ops, ptr @.compoundliteral.54, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"sdc2_clk\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.47], align 4
@.compoundliteral.58 = internal global %struct.clk_init_data { ptr @.str.56, ptr @clk_branch_ops, ptr @.compoundliteral.57, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.59 = private unnamed_addr constant [9 x i8] c"sdc3_clk\00", align 1
@.compoundliteral.60 = internal global [1 x ptr] [ptr @.str.49], align 4
@.compoundliteral.61 = internal global %struct.clk_init_data { ptr @.str.59, ptr @clk_branch_ops, ptr @.compoundliteral.60, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.62 = private unnamed_addr constant [9 x i8] c"sdc4_clk\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.51], align 4
@.compoundliteral.64 = internal global %struct.clk_init_data { ptr @.str.62, ptr @clk_branch_ops, ptr @.compoundliteral.63, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.65 = private unnamed_addr constant [14 x i8] c"usb_hs1_h_clk\00", align 1
@.compoundliteral.66 = internal global %struct.clk_init_data { ptr @.str.65, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@clk_tbl_usb = internal constant [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 60000000, i8 1, i8 1, i16 5, i16 32 }, %struct.freq_tbl zeroinitializer], align 4
@.str.67 = private unnamed_addr constant [17 x i8] c"usb_hs1_xcvr_src\00", align 1
@.compoundliteral.68 = internal global %struct.clk_init_data { ptr @.str.67, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.69 = private unnamed_addr constant [17 x i8] c"usb_hs1_xcvr_clk\00", align 1
@.compoundliteral.70 = internal global [1 x ptr] [ptr @.str.67], align 4
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.69, ptr @clk_branch_ops, ptr @.compoundliteral.70, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.72 = private unnamed_addr constant [15 x i8] c"usb_hsic_h_clk\00", align 1
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.72, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.74 = private unnamed_addr constant [21 x i8] c"usb_hsic_xcvr_fs_src\00", align 1
@.compoundliteral.75 = internal global %struct.clk_init_data { ptr @.str.74, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.76 = private unnamed_addr constant [21 x i8] c"usb_hsic_xcvr_fs_clk\00", align 1
@usb_hsic_xcvr_fs_src_p = internal constant [1 x ptr] [ptr @.str.74], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.76, ptr @clk_branch_ops, ptr @usb_hsic_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.78 = private unnamed_addr constant [20 x i8] c"usb_hsic_system_clk\00", align 1
@.compoundliteral.79 = internal global %struct.clk_init_data { ptr @.str.78, ptr @clk_branch_ops, ptr @usb_hsic_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c"usb_fs1_h_clk\00", align 1
@.compoundliteral.81 = internal global %struct.clk_init_data { ptr @.str.80, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.82 = private unnamed_addr constant [20 x i8] c"usb_fs1_xcvr_fs_src\00", align 1
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.82, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.84 = private unnamed_addr constant [20 x i8] c"usb_fs1_xcvr_fs_clk\00", align 1
@usb_fs1_xcvr_fs_src_p = internal constant [1 x ptr] [ptr @.str.82], align 4
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.84, ptr @clk_branch_ops, ptr @usb_fs1_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.86 = private unnamed_addr constant [19 x i8] c"usb_fs1_system_clk\00", align 1
@.compoundliteral.87 = internal global %struct.clk_init_data { ptr @.str.86, ptr @clk_branch_ops, ptr @usb_fs1_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.88 = private unnamed_addr constant [12 x i8] c"gsbi1_h_clk\00", align 1
@.compoundliteral.89 = internal global %struct.clk_init_data { ptr @.str.88, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.90 = private unnamed_addr constant [12 x i8] c"gsbi2_h_clk\00", align 1
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.90, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"gsbi3_h_clk\00", align 1
@.compoundliteral.93 = internal global %struct.clk_init_data { ptr @.str.92, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"gsbi4_h_clk\00", align 1
@.compoundliteral.95 = internal global %struct.clk_init_data { ptr @.str.94, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.96 = private unnamed_addr constant [12 x i8] c"gsbi5_h_clk\00", align 1
@.compoundliteral.97 = internal global %struct.clk_init_data { ptr @.str.96, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.98 = private unnamed_addr constant [12 x i8] c"gsbi6_h_clk\00", align 1
@.compoundliteral.99 = internal global %struct.clk_init_data { ptr @.str.98, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.100 = private unnamed_addr constant [12 x i8] c"gsbi7_h_clk\00", align 1
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.100, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@clk_tbl_gsbi_uart = internal global [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 1843200, i8 1, i8 2, i16 6, i16 625 }, %struct.freq_tbl { i32 3686400, i8 1, i8 2, i16 12, i16 625 }, %struct.freq_tbl { i32 7372800, i8 1, i8 2, i16 24, i16 625 }, %struct.freq_tbl { i32 14745600, i8 1, i8 2, i16 48, i16 625 }, %struct.freq_tbl { i32 16000000, i8 1, i8 4, i16 1, i16 6 }, %struct.freq_tbl { i32 24000000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 32000000, i8 1, i8 4, i16 1, i16 3 }, %struct.freq_tbl { i32 40000000, i8 1, i8 1, i16 5, i16 48 }, %struct.freq_tbl { i32 46400000, i8 1, i8 1, i16 29, i16 240 }, %struct.freq_tbl { i32 48000000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 51200000, i8 1, i8 1, i16 2, i16 15 }, %struct.freq_tbl { i32 56000000, i8 1, i8 1, i16 7, i16 48 }, %struct.freq_tbl { i32 58982400, i8 1, i8 1, i16 96, i16 625 }, %struct.freq_tbl { i32 64000000, i8 1, i8 2, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], align 4
@.str.102 = private unnamed_addr constant [15 x i8] c"gsbi1_uart_src\00", align 1
@.compoundliteral.103 = internal global %struct.clk_init_data { ptr @.str.102, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.104 = private unnamed_addr constant [15 x i8] c"gsbi1_uart_clk\00", align 1
@.compoundliteral.105 = internal global [1 x ptr] [ptr @.str.102], align 4
@.compoundliteral.106 = internal global %struct.clk_init_data { ptr @.str.104, ptr @clk_branch_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.107 = private unnamed_addr constant [15 x i8] c"gsbi2_uart_src\00", align 1
@.compoundliteral.108 = internal global %struct.clk_init_data { ptr @.str.107, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.109 = private unnamed_addr constant [15 x i8] c"gsbi2_uart_clk\00", align 1
@.compoundliteral.110 = internal global [1 x ptr] [ptr @.str.107], align 4
@.compoundliteral.111 = internal global %struct.clk_init_data { ptr @.str.109, ptr @clk_branch_ops, ptr @.compoundliteral.110, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.112 = private unnamed_addr constant [15 x i8] c"gsbi3_uart_src\00", align 1
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.112, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.114 = private unnamed_addr constant [15 x i8] c"gsbi3_uart_clk\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.112], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @clk_branch_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.117 = private unnamed_addr constant [15 x i8] c"gsbi4_uart_src\00", align 1
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.117, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.119 = private unnamed_addr constant [15 x i8] c"gsbi4_uart_clk\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.117], align 4
@.compoundliteral.121 = internal global %struct.clk_init_data { ptr @.str.119, ptr @clk_branch_ops, ptr @.compoundliteral.120, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.122 = private unnamed_addr constant [15 x i8] c"gsbi5_uart_src\00", align 1
@.compoundliteral.123 = internal global %struct.clk_init_data { ptr @.str.122, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.124 = private unnamed_addr constant [15 x i8] c"gsbi5_uart_clk\00", align 1
@.compoundliteral.125 = internal global [1 x ptr] [ptr @.str.122], align 4
@.compoundliteral.126 = internal global %struct.clk_init_data { ptr @.str.124, ptr @clk_branch_ops, ptr @.compoundliteral.125, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.127 = private unnamed_addr constant [15 x i8] c"gsbi6_uart_src\00", align 1
@.compoundliteral.128 = internal global %struct.clk_init_data { ptr @.str.127, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.129 = private unnamed_addr constant [15 x i8] c"gsbi6_uart_clk\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.127], align 4
@.compoundliteral.131 = internal global %struct.clk_init_data { ptr @.str.129, ptr @clk_branch_ops, ptr @.compoundliteral.130, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.132 = private unnamed_addr constant [15 x i8] c"gsbi7_uart_src\00", align 1
@.compoundliteral.133 = internal global %struct.clk_init_data { ptr @.str.132, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.134 = private unnamed_addr constant [15 x i8] c"gsbi7_uart_clk\00", align 1
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.132], align 4
@.compoundliteral.136 = internal global %struct.clk_init_data { ptr @.str.134, ptr @clk_branch_ops, ptr @.compoundliteral.135, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_gsbi_qup = internal global [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 1100000, i8 0, i8 1, i16 2, i16 49 }, %struct.freq_tbl { i32 5400000, i8 0, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 10800000, i8 0, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 15060000, i8 1, i8 1, i16 2, i16 51 }, %struct.freq_tbl { i32 24000000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 25600000, i8 1, i8 1, i16 1, i16 15 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 51200000, i8 1, i8 1, i16 2, i16 15 }, %struct.freq_tbl zeroinitializer], align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"gsbi1_qup_src\00", align 1
@.compoundliteral.138 = internal global %struct.clk_init_data { ptr @.str.137, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.139 = private unnamed_addr constant [14 x i8] c"gsbi1_qup_clk\00", align 1
@.compoundliteral.140 = internal global [1 x ptr] [ptr @.str.137], align 4
@.compoundliteral.141 = internal global %struct.clk_init_data { ptr @.str.139, ptr @clk_branch_ops, ptr @.compoundliteral.140, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.142 = private unnamed_addr constant [14 x i8] c"gsbi2_qup_src\00", align 1
@.compoundliteral.143 = internal global %struct.clk_init_data { ptr @.str.142, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.144 = private unnamed_addr constant [14 x i8] c"gsbi2_qup_clk\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.142], align 4
@.compoundliteral.146 = internal global %struct.clk_init_data { ptr @.str.144, ptr @clk_branch_ops, ptr @.compoundliteral.145, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.147 = private unnamed_addr constant [14 x i8] c"gsbi3_qup_src\00", align 1
@.compoundliteral.148 = internal global %struct.clk_init_data { ptr @.str.147, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.149 = private unnamed_addr constant [14 x i8] c"gsbi3_qup_clk\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.147], align 4
@.compoundliteral.151 = internal global %struct.clk_init_data { ptr @.str.149, ptr @clk_branch_ops, ptr @.compoundliteral.150, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.152 = private unnamed_addr constant [14 x i8] c"gsbi4_qup_src\00", align 1
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.152, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.154 = private unnamed_addr constant [14 x i8] c"gsbi4_qup_clk\00", align 1
@.compoundliteral.155 = internal global [1 x ptr] [ptr @.str.152], align 4
@.compoundliteral.156 = internal global %struct.clk_init_data { ptr @.str.154, ptr @clk_branch_ops, ptr @.compoundliteral.155, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.157 = private unnamed_addr constant [14 x i8] c"gsbi5_qup_src\00", align 1
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.157, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.159 = private unnamed_addr constant [14 x i8] c"gsbi5_qup_clk\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.157], align 4
@.compoundliteral.161 = internal global %struct.clk_init_data { ptr @.str.159, ptr @clk_branch_ops, ptr @.compoundliteral.160, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.162 = private unnamed_addr constant [14 x i8] c"gsbi6_qup_src\00", align 1
@.compoundliteral.163 = internal global %struct.clk_init_data { ptr @.str.162, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.164 = private unnamed_addr constant [14 x i8] c"gsbi6_qup_clk\00", align 1
@.compoundliteral.165 = internal global [1 x ptr] [ptr @.str.162], align 4
@.compoundliteral.166 = internal global %struct.clk_init_data { ptr @.str.164, ptr @clk_branch_ops, ptr @.compoundliteral.165, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.167 = private unnamed_addr constant [14 x i8] c"gsbi7_qup_src\00", align 1
@.compoundliteral.168 = internal global %struct.clk_init_data { ptr @.str.167, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.169 = private unnamed_addr constant [14 x i8] c"gsbi7_qup_clk\00", align 1
@.compoundliteral.170 = internal global [1 x ptr] [ptr @.str.167], align 4
@.compoundliteral.171 = internal global %struct.clk_init_data { ptr @.str.169, ptr @clk_branch_ops, ptr @.compoundliteral.170, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.172 = private unnamed_addr constant [18 x i8] c"usb_hsic_hsic_clk\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"pll14_vote\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.173], align 4
@.compoundliteral.175 = internal global %struct.clk_init_data { ptr @.str.172, ptr @clk_branch_ops, ptr @.compoundliteral.174, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.176 = private unnamed_addr constant [22 x i8] c"usb_hsic_hsio_cal_clk\00", align 1
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.176, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.178 = private unnamed_addr constant [11 x i8] c"sata_h_clk\00", align 1
@.compoundliteral.179 = internal global %struct.clk_init_data { ptr @.str.178, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@gcc_pxo_pll8_pll3_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 3 }, %struct.parent_map { i8 2, i8 6 }], align 1
@clk_tbl_sata_ref = internal constant [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 1, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 12, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.180 = private unnamed_addr constant [13 x i8] c"sata_clk_src\00", align 1
@gcc_pxo_pll8_pll3 = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.182], align 4
@.compoundliteral.181 = internal global %struct.clk_init_data { ptr @.str.180, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8_pll3, ptr null, ptr null, i8 3, i32 1 }, align 4
@.str.182 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"sata_rxoob_clk\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @.str.180], align 4
@.compoundliteral.185 = internal global %struct.clk_init_data { ptr @.str.183, ptr @clk_branch_ops, ptr @.compoundliteral.184, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.186 = private unnamed_addr constant [17 x i8] c"sata_pmalive_clk\00", align 1
@.compoundliteral.187 = internal global [1 x ptr] [ptr @.str.180], align 4
@.compoundliteral.188 = internal global %struct.clk_init_data { ptr @.str.186, ptr @clk_branch_ops, ptr @.compoundliteral.187, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.189 = private unnamed_addr constant [17 x i8] c"sata_phy_ref_clk\00", align 1
@.compoundliteral.190 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.191 = internal global %struct.clk_init_data { ptr @.str.189, ptr @clk_branch_ops, ptr @.compoundliteral.190, ptr null, ptr null, i8 1, i32 0 }, align 4
@gcc_pxo_pll8_cxo_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 3 }, %struct.parent_map { i8 3, i8 5 }], align 1
@clk_tbl_gp = internal constant [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 9600000, i8 3, i8 2, i16 0, i16 0 }, %struct.freq_tbl { i32 13500000, i8 0, i8 2, i16 0, i16 0 }, %struct.freq_tbl { i32 19200000, i8 3, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 64000000, i8 1, i8 2, i16 1, i16 3 }, %struct.freq_tbl { i32 76800000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 128000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 192000000, i8 1, i8 2, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.192 = private unnamed_addr constant [8 x i8] c"gp0_src\00", align 1
@gcc_pxo_pll8_cxo = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.2], align 4
@.compoundliteral.193 = internal global %struct.clk_init_data { ptr @.str.192, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8_cxo, ptr null, ptr null, i8 3, i32 2 }, align 4
@.str.194 = private unnamed_addr constant [8 x i8] c"gp0_clk\00", align 1
@.compoundliteral.195 = internal global [1 x ptr] [ptr @.str.192], align 4
@.compoundliteral.196 = internal global %struct.clk_init_data { ptr @.str.194, ptr @clk_branch_ops, ptr @.compoundliteral.195, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.197 = private unnamed_addr constant [8 x i8] c"gp1_src\00", align 1
@.compoundliteral.198 = internal global %struct.clk_init_data { ptr @.str.197, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8_cxo, ptr null, ptr null, i8 3, i32 1 }, align 4
@.str.199 = private unnamed_addr constant [8 x i8] c"gp1_clk\00", align 1
@.compoundliteral.200 = internal global [1 x ptr] [ptr @.str.197], align 4
@.compoundliteral.201 = internal global %struct.clk_init_data { ptr @.str.199, ptr @clk_branch_ops, ptr @.compoundliteral.200, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.202 = private unnamed_addr constant [8 x i8] c"gp2_src\00", align 1
@.compoundliteral.203 = internal global %struct.clk_init_data { ptr @.str.202, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8_cxo, ptr null, ptr null, i8 3, i32 1 }, align 4
@.str.204 = private unnamed_addr constant [8 x i8] c"gp2_clk\00", align 1
@.compoundliteral.205 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.206 = internal global %struct.clk_init_data { ptr @.str.204, ptr @clk_branch_ops, ptr @.compoundliteral.205, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.207 = private unnamed_addr constant [9 x i8] c"prng_src\00", align 1
@.compoundliteral.208 = internal global %struct.clk_init_data { ptr @.str.207, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.209 = private unnamed_addr constant [9 x i8] c"prng_clk\00", align 1
@.compoundliteral.210 = internal global [1 x ptr] [ptr @.str.207], align 4
@.compoundliteral.211 = internal global %struct.clk_init_data { ptr @.str.209, ptr @clk_branch_ops, ptr @.compoundliteral.210, ptr null, ptr null, i8 1, i32 0 }, align 4
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.213 = internal global %struct.clk_init_data { ptr @.str.182, ptr @clk_pll_ops, ptr @.compoundliteral.212, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.214 = private unnamed_addr constant [10 x i8] c"pll4_vote\00", align 1
@clk_pll_vote_ops = external dso_local constant %struct.clk_ops, align 4
@.str.215 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.compoundliteral.216 = internal global [1 x ptr] [ptr @.str.215], align 4
@.compoundliteral.217 = internal global %struct.clk_init_data { ptr @.str.214, ptr @clk_pll_vote_ops, ptr @.compoundliteral.216, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.218 = private unnamed_addr constant [5 x i8] c"pll8\00", align 1
@.compoundliteral.219 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.220 = internal global %struct.clk_init_data { ptr @.str.218, ptr @clk_pll_ops, ptr @.compoundliteral.219, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.221 = internal global [1 x ptr] [ptr @.str.218], align 4
@.compoundliteral.222 = internal global %struct.clk_init_data { ptr @.str.25, ptr @clk_pll_vote_ops, ptr @.compoundliteral.221, ptr null, ptr null, i8 1, i32 0 }, align 4
@hfpll0_data = internal global %struct.hfpll_data { i32 12800, i32 12808, i32 12812, i32 12816, i32 0, i32 12820, i32 12804, i32 12828, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@.str.223 = private unnamed_addr constant [7 x i8] c"hfpll0\00", align 1
@clk_ops_hfpll = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.224 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.225 = internal global %struct.clk_init_data { ptr @.str.223, ptr @clk_ops_hfpll, ptr @.compoundliteral.224, ptr null, ptr null, i8 1, i32 8 }, align 4
@.str.226 = private unnamed_addr constant [6 x i8] c"pll14\00", align 1
@.compoundliteral.227 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.228 = internal global %struct.clk_init_data { ptr @.str.226, ptr @clk_pll_ops, ptr @.compoundliteral.227, ptr null, ptr null, i8 1, i32 0 }, align 4
@.compoundliteral.229 = internal global [1 x ptr] [ptr @.str.226], align 4
@.compoundliteral.230 = internal global %struct.clk_init_data { ptr @.str.173, ptr @clk_pll_vote_ops, ptr @.compoundliteral.229, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.231 = private unnamed_addr constant [14 x i8] c"usb_hs3_h_clk\00", align 1
@.compoundliteral.232 = internal global %struct.clk_init_data { ptr @.str.231, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.233 = private unnamed_addr constant [17 x i8] c"usb_hs3_xcvr_src\00", align 1
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.233, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.235 = private unnamed_addr constant [17 x i8] c"usb_hs3_xcvr_clk\00", align 1
@.compoundliteral.236 = internal global [1 x ptr] [ptr @.str.233], align 4
@.compoundliteral.237 = internal global %struct.clk_init_data { ptr @.str.235, ptr @clk_branch_ops, ptr @.compoundliteral.236, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.238 = private unnamed_addr constant [14 x i8] c"usb_hs4_h_clk\00", align 1
@.compoundliteral.239 = internal global %struct.clk_init_data { ptr @.str.238, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.240 = private unnamed_addr constant [17 x i8] c"usb_hs4_xcvr_src\00", align 1
@.compoundliteral.241 = internal global %struct.clk_init_data { ptr @.str.240, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.242 = private unnamed_addr constant [17 x i8] c"usb_hs4_xcvr_clk\00", align 1
@.compoundliteral.243 = internal global [1 x ptr] [ptr @.str.240], align 4
@.compoundliteral.244 = internal global %struct.clk_init_data { ptr @.str.242, ptr @clk_branch_ops, ptr @.compoundliteral.243, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.245 = private unnamed_addr constant [17 x i8] c"sata_phy_cfg_clk\00", align 1
@.compoundliteral.246 = internal global %struct.clk_init_data { ptr @.str.245, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.247 = private unnamed_addr constant [11 x i8] c"sata_a_clk\00", align 1
@.compoundliteral.248 = internal global %struct.clk_init_data { ptr @.str.247, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@clk_tbl_ce3 = internal global [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 48000000, i8 1, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 12, i16 0, i16 0 }, %struct.freq_tbl { i32 120000000, i8 2, i8 10, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.249 = private unnamed_addr constant [8 x i8] c"ce3_src\00", align 1
@.compoundliteral.250 = internal global %struct.clk_init_data { ptr @.str.249, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8_pll3, ptr null, ptr null, i8 3, i32 1 }, align 4
@.str.251 = private unnamed_addr constant [13 x i8] c"ce3_core_clk\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.249], align 4
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.251, ptr @clk_branch_ops, ptr @.compoundliteral.252, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.254 = private unnamed_addr constant [10 x i8] c"ce3_h_clk\00", align 1
@.compoundliteral.255 = internal global [1 x ptr] [ptr @.str.249], align 4
@.compoundliteral.256 = internal global %struct.clk_init_data { ptr @.str.254, ptr @clk_branch_ops, ptr @.compoundliteral.255, ptr null, ptr null, i8 1, i32 4 }, align 4
@hfpll2_data = internal global %struct.hfpll_data { i32 12928, i32 12936, i32 12940, i32 12944, i32 0, i32 12948, i32 12932, i32 12956, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@.str.257 = private unnamed_addr constant [7 x i8] c"hfpll2\00", align 1
@.compoundliteral.258 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.259 = internal global %struct.clk_init_data { ptr @.str.257, ptr @clk_ops_hfpll, ptr @.compoundliteral.258, ptr null, ptr null, i8 1, i32 8 }, align 4
@hfpll3_data = internal global %struct.hfpll_data { i32 12992, i32 13000, i32 13004, i32 13008, i32 0, i32 13012, i32 12996, i32 13020, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@.str.260 = private unnamed_addr constant [7 x i8] c"hfpll3\00", align 1
@.compoundliteral.261 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.262 = internal global %struct.clk_init_data { ptr @.str.260, ptr @clk_ops_hfpll, ptr @.compoundliteral.261, ptr null, ptr null, i8 1, i32 8 }, align 4
@hfpll1_data = internal global %struct.hfpll_data { i32 13056, i32 13064, i32 13068, i32 13072, i32 0, i32 13076, i32 13060, i32 13084, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@.str.263 = private unnamed_addr constant [7 x i8] c"hfpll1\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.263, ptr @clk_ops_hfpll, ptr @.compoundliteral.264, ptr null, ptr null, i8 1, i32 8 }, align 4
@hfpll_l2_data = internal global %struct.hfpll_data { i32 13312, i32 13320, i32 13324, i32 13328, i32 0, i32 13332, i32 13316, i32 13340, i8 0, i32 17350656, i32 2017838693, i32 0, i32 0, i32 0, i32 600000000, i32 1800000000 }, align 4
@.str.266 = private unnamed_addr constant [9 x i8] c"hfpll_l2\00", align 1
@.compoundliteral.267 = internal global [1 x ptr] [ptr @.str.4], align 4
@.compoundliteral.268 = internal global %struct.clk_init_data { ptr @.str.266, ptr @clk_ops_hfpll, ptr @.compoundliteral.267, ptr null, ptr null, i8 1, i32 8 }, align 4
@gcc_msm8960_desc = internal constant %struct.qcom_cc_desc { ptr @gcc_msm8960_regmap_config, ptr @gcc_msm8960_clks, i32 295, ptr @gcc_msm8960_resets, i32 100, ptr null, i32 0, ptr null, i32 0 }, align 4
@gcc_msm8960_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 13920, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@gcc_msm8960_clks = internal global [295 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @adm0_clk, i64 12), ptr getelementptr (i8, ptr @adm0_pbus_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pmem_clk, i64 12), ptr getelementptr (i8, ptr @dma_bam_h_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @tsif_h_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @tsif_ref_src, i64 32), ptr getelementptr (i8, ptr @tsif_ref_clk, i64 12), ptr getelementptr (i8, ptr @ce1_h_clk, i64 12), ptr getelementptr (i8, ptr @ce1_core_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @rpm_msg_ram_h_clk, i64 12), ptr getelementptr (i8, ptr @pmic_arb0_h_clk, i64 12), ptr getelementptr (i8, ptr @pmic_arb1_h_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pmic_ssbi2_clk, i64 12), ptr getelementptr (i8, ptr @sdc1_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc2_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc3_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc4_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc5_h_clk, i64 12), ptr getelementptr (i8, ptr @sdc1_src, i64 32), ptr getelementptr (i8, ptr @sdc2_src, i64 32), ptr getelementptr (i8, ptr @sdc3_src, i64 32), ptr getelementptr (i8, ptr @sdc4_src, i64 32), ptr getelementptr (i8, ptr @sdc5_src, i64 32), ptr getelementptr (i8, ptr @sdc1_clk, i64 12), ptr getelementptr (i8, ptr @sdc2_clk, i64 12), ptr getelementptr (i8, ptr @sdc3_clk, i64 12), ptr getelementptr (i8, ptr @sdc4_clk, i64 12), ptr getelementptr (i8, ptr @sdc5_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @usb_hs1_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hs1_xcvr_src, i64 32), ptr getelementptr (i8, ptr @usb_hs1_xcvr_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_xcvr_fs_src, i64 32), ptr getelementptr (i8, ptr @usb_hsic_xcvr_fs_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @usb_hsic_system_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_fs1_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs1_xcvr_fs_src, i64 32), ptr getelementptr (i8, ptr @usb_fs1_xcvr_fs_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs1_system_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs2_h_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs2_xcvr_fs_src, i64 32), ptr getelementptr (i8, ptr @usb_fs2_xcvr_fs_clk, i64 12), ptr getelementptr (i8, ptr @usb_fs2_system_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @gsbi1_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi8_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi9_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi10_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi11_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi12_h_clk, i64 12), ptr getelementptr (i8, ptr @gsbi1_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi1_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi2_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi3_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi4_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi5_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi6_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi7_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi8_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi8_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi9_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi9_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi10_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi10_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi11_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi11_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi12_uart_src, i64 32), ptr getelementptr (i8, ptr @gsbi12_uart_clk, i64 12), ptr getelementptr (i8, ptr @gsbi1_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi1_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi2_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi2_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi3_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi3_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi4_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi4_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi5_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi5_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi6_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi6_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi7_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi7_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi8_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi8_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi9_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi9_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi10_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi10_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi11_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi11_qup_clk, i64 12), ptr getelementptr (i8, ptr @gsbi12_qup_src, i64 32), ptr getelementptr (i8, ptr @gsbi12_qup_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @usb_hsic_hsic_clk, i64 12), ptr getelementptr (i8, ptr @usb_hsic_hsio_cal_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gp0_src, i64 32), ptr getelementptr (i8, ptr @gp0_clk, i64 12), ptr getelementptr (i8, ptr @gp1_src, i64 32), ptr getelementptr (i8, ptr @gp1_clk, i64 12), ptr getelementptr (i8, ptr @gp2_src, i64 32), ptr getelementptr (i8, ptr @gp2_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @prng_src, i64 32), ptr getelementptr (i8, ptr @prng_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pll3, i64 32), ptr null, ptr @pll4_vote, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @pll8, i64 32), ptr @pll8_vote, ptr getelementptr (i8, ptr @hfpll0, i64 8), ptr getelementptr (i8, ptr @hfpll1, i64 8), ptr null, ptr getelementptr (i8, ptr @hfpll_l2, i64 8), ptr null, ptr getelementptr (i8, ptr @pll14, i64 32), ptr @pll14_vote], align 4
@gcc_msm8960_resets = internal constant [100 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 8256, i8 7 }, %struct.qcom_reset_map { i32 8260, i8 7 }, %struct.qcom_reset_map { i32 8288, i8 6 }, %struct.qcom_reset_map { i32 8376, i8 2 }, %struct.qcom_reset_map { i32 8376, i8 1 }, %struct.qcom_reset_map { i32 8376, i8 0 }, %struct.qcom_reset_map { i32 8384, i8 7 }, %struct.qcom_reset_map { i32 8388, i8 7 }, %struct.qcom_reset_map { i32 8672, i8 7 }, %struct.qcom_reset_map { i32 8676, i8 7 }, %struct.qcom_reset_map { i32 8680, i8 7 }, %struct.qcom_reset_map { i32 8716, i8 4 }, %struct.qcom_reset_map { i32 8716, i8 3 }, %struct.qcom_reset_map { i32 8716, i8 2 }, %struct.qcom_reset_map { i32 8716, i8 1 }, %struct.qcom_reset_map { i32 8716, i8 0 }, %struct.qcom_reset_map { i32 8800, i8 5 }, %struct.qcom_reset_map { i32 8800, i8 4 }, %struct.qcom_reset_map { i32 8800, i8 3 }, %struct.qcom_reset_map { i32 8800, i8 2 }, %struct.qcom_reset_map { i32 8800, i8 1 }, %struct.qcom_reset_map { i32 8800, i8 0 }, %struct.qcom_reset_map { i32 8896, i8 7 }, %struct.qcom_reset_map { i32 8904, i8 7 }, %struct.qcom_reset_map { i32 8912, i8 7 }, %struct.qcom_reset_map { i32 8916, i8 1 }, %struct.qcom_reset_map { i32 8916, i8 0 }, %struct.qcom_reset_map { i32 9024, i8 7 }, %struct.qcom_reset_map { i32 9056, i8 7 }, %struct.qcom_reset_map { i32 9088, i8 7 }, %struct.qcom_reset_map { i32 9120, i8 7 }, %struct.qcom_reset_map { i32 9184, i8 7 }, %struct.qcom_reset_map { i32 9248, i8 7 }, %struct.qcom_reset_map { i32 9252, i8 7 }, %struct.qcom_reset_map { i32 9344, i8 7 }, %struct.qcom_reset_map { i32 9472, i8 7 }, %struct.qcom_reset_map { i32 9504, i8 7 }, %struct.qcom_reset_map { i32 9536, i8 7 }, %struct.qcom_reset_map { i32 9540, i8 7 }, %struct.qcom_reset_map { i32 9568, i8 7 }, %struct.qcom_reset_map { i32 9572, i8 7 }, %struct.qcom_reset_map { i32 9620, i8 1 }, %struct.qcom_reset_map { i32 9620, i8 0 }, %struct.qcom_reset_map { i32 9664, i8 7 }, %struct.qcom_reset_map { i32 9728, i8 7 }, %struct.qcom_reset_map { i32 9760, i8 7 }, %struct.qcom_reset_map { i32 9856, i8 7 }, %struct.qcom_reset_map { i32 9920, i8 7 }, %struct.qcom_reset_map { i32 9984, i8 7 }, %struct.qcom_reset_map { i32 10016, i8 7 }, %struct.qcom_reset_map { i32 10020, i8 7 }, %struct.qcom_reset_map { i32 10024, i8 7 }, %struct.qcom_reset_map { i32 10048, i8 7 }, %struct.qcom_reset_map { i32 10052, i8 7 }, %struct.qcom_reset_map { i32 10112, i8 7 }, %struct.qcom_reset_map { i32 10144, i8 7 }, %struct.qcom_reset_map { i32 10176, i8 7 }, %struct.qcom_reset_map { i32 10252, i8 12 }, %struct.qcom_reset_map { i32 10288, i8 0 }, %struct.qcom_reset_map { i32 10320, i8 0 }, %struct.qcom_reset_map { i32 10352, i8 0 }, %struct.qcom_reset_map { i32 10384, i8 0 }, %struct.qcom_reset_map { i32 10416, i8 0 }, %struct.qcom_reset_map { i32 10432, i8 7 }, %struct.qcom_reset_map { i32 10512, i8 0 }, %struct.qcom_reset_map { i32 10548, i8 0 }, %struct.qcom_reset_map { i32 10612, i8 1 }, %struct.qcom_reset_map { i32 10612, i8 0 }, %struct.qcom_reset_map { i32 10644, i8 1 }, %struct.qcom_reset_map { i32 10644, i8 0 }, %struct.qcom_reset_map { i32 10716, i8 0 }, %struct.qcom_reset_map { i32 10748, i8 0 }, %struct.qcom_reset_map { i32 10780, i8 0 }, %struct.qcom_reset_map { i32 10812, i8 0 }, %struct.qcom_reset_map { i32 10844, i8 0 }, %struct.qcom_reset_map { i32 10876, i8 0 }, %struct.qcom_reset_map { i32 10908, i8 0 }, %struct.qcom_reset_map { i32 10940, i8 0 }, %struct.qcom_reset_map { i32 10972, i8 0 }, %struct.qcom_reset_map { i32 11004, i8 0 }, %struct.qcom_reset_map { i32 11036, i8 0 }, %struct.qcom_reset_map { i32 11068, i8 0 }, %struct.qcom_reset_map { i32 11116, i8 0 }, %struct.qcom_reset_map { i32 11168, i8 7 }, %struct.qcom_reset_map { i32 11264, i8 7 }, %struct.qcom_reset_map { i32 11360, i8 7 }, %struct.qcom_reset_map { i32 11368, i8 7 }, %struct.qcom_reset_map { i32 11372, i8 7 }, %struct.qcom_reset_map { i32 11364, i8 0 }, %struct.qcom_reset_map { i32 11392, i8 7 }, %struct.qcom_reset_map { i32 11404, i8 7 }, %struct.qcom_reset_map { i32 11408, i8 7 }, %struct.qcom_reset_map { i32 11416, i8 7 }, %struct.qcom_reset_map { i32 11424, i8 7 }, %struct.qcom_reset_map { i32 11456, i8 12 }, %struct.qcom_reset_map { i32 11680, i8 7 }, %struct.qcom_reset_map { i32 11684, i8 0 }, %struct.qcom_reset_map { i32 11776, i8 7 }, %struct.qcom_reset_map { i32 11904, i8 12 }, %struct.qcom_reset_map { i32 13792, i8 0 }], align 4
@ce1_h_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.270 }, ptr null, i32 10016, i32 16, i8 0 } }, align 4
@ce1_core_clk = internal global %struct.clk_branch { i32 10020, i32 12244, i8 6, i8 27, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.272 }, ptr null, i32 10020, i32 16, i8 0 } }, align 4
@sdc5_h_clk = internal global %struct.clk_branch { i32 10400, i32 12232, i8 6, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.274 }, ptr null, i32 10400, i32 16, i8 0 } }, align 4
@sdc5_src = internal global %struct.clk_rcg { i32 10412, i32 10408, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_sdc, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.276 }, ptr null, i32 10412, i32 2048, i8 0 } }, align 4
@sdc5_clk = internal global %struct.clk_branch { i32 0, i32 12232, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.279 }, ptr null, i32 10412, i32 512, i8 0 } }, align 4
@usb_fs2_h_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.281 }, ptr null, i32 10624, i32 16, i8 0 } }, align 4
@usb_fs2_xcvr_fs_src = internal global %struct.clk_rcg { i32 10632, i32 10628, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_usb, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.283 }, ptr null, i32 10632, i32 2048, i8 0 } }, align 4
@usb_fs2_xcvr_fs_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.285 }, ptr null, i32 10632, i32 512, i8 0 } }, align 4
@usb_fs2_system_clk = internal global %struct.clk_branch { i32 0, i32 12236, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.287 }, ptr null, i32 10636, i32 16, i8 0 } }, align 4
@gsbi8_h_clk = internal global %struct.clk_branch { i32 10912, i32 12240, i8 6, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.289 }, ptr null, i32 10912, i32 16, i8 0 } }, align 4
@gsbi9_h_clk = internal global %struct.clk_branch { i32 10944, i32 12240, i8 6, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.291 }, ptr null, i32 10944, i32 16, i8 0 } }, align 4
@gsbi10_h_clk = internal global %struct.clk_branch { i32 10976, i32 12240, i8 6, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.293 }, ptr null, i32 10976, i32 16, i8 0 } }, align 4
@gsbi11_h_clk = internal global %struct.clk_branch { i32 11008, i32 12244, i8 6, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.295 }, ptr null, i32 11008, i32 16, i8 0 } }, align 4
@gsbi12_h_clk = internal global %struct.clk_branch { i32 11040, i32 12244, i8 6, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.297 }, ptr null, i32 11040, i32 16, i8 0 } }, align 4
@gsbi8_uart_src = internal global %struct.clk_rcg { i32 10932, i32 10928, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.299 }, ptr null, i32 10932, i32 2048, i8 0 } }, align 4
@gsbi8_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.302 }, ptr null, i32 10932, i32 512, i8 0 } }, align 4
@gsbi9_uart_src = internal global %struct.clk_rcg { i32 10964, i32 10960, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.304 }, ptr null, i32 10964, i32 2048, i8 0 } }, align 4
@gsbi9_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.307 }, ptr null, i32 10964, i32 512, i8 0 } }, align 4
@gsbi10_uart_src = internal global %struct.clk_rcg { i32 10996, i32 10992, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.309 }, ptr null, i32 10996, i32 2048, i8 0 } }, align 4
@gsbi10_uart_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.312 }, ptr null, i32 10996, i32 512, i8 0 } }, align 4
@gsbi11_uart_src = internal global %struct.clk_rcg { i32 11028, i32 11024, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.314 }, ptr null, i32 11028, i32 2048, i8 0 } }, align 4
@gsbi11_uart_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 17, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.317 }, ptr null, i32 11028, i32 512, i8 0 } }, align 4
@gsbi12_uart_src = internal global %struct.clk_rcg { i32 11060, i32 11056, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 16, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_uart, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.319 }, ptr null, i32 11060, i32 2048, i8 0 } }, align 4
@gsbi12_uart_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.322 }, ptr null, i32 11060, i32 512, i8 0 } }, align 4
@gsbi8_qup_src = internal global %struct.clk_rcg { i32 10924, i32 10920, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.324 }, ptr null, i32 10924, i32 2048, i8 0 } }, align 4
@gsbi8_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.327 }, ptr null, i32 10924, i32 512, i8 0 } }, align 4
@gsbi9_qup_src = internal global %struct.clk_rcg { i32 10956, i32 10952, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.329 }, ptr null, i32 10956, i32 2048, i8 0 } }, align 4
@gsbi9_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.332 }, ptr null, i32 10956, i32 512, i8 0 } }, align 4
@gsbi10_qup_src = internal global %struct.clk_rcg { i32 10988, i32 10984, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.334 }, ptr null, i32 10988, i32 2048, i8 0 } }, align 4
@gsbi10_qup_clk = internal global %struct.clk_branch { i32 0, i32 12240, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.337 }, ptr null, i32 10988, i32 512, i8 0 } }, align 4
@gsbi11_qup_src = internal global %struct.clk_rcg { i32 11020, i32 11016, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.339 }, ptr null, i32 11020, i32 2048, i8 0 } }, align 4
@gsbi11_qup_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.342 }, ptr null, i32 11020, i32 512, i8 0 } }, align 4
@gsbi12_qup_src = internal global %struct.clk_rcg { i32 11052, i32 11048, %struct.mn { i8 8, i8 7, i8 5, i8 16, i8 16, i8 8, i8 0 }, %struct.pre_div { i8 3, i8 2 }, %struct.src_sel { i8 0, ptr @gcc_pxo_pll8_map }, ptr @clk_tbl_gsbi_qup, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.344 }, ptr null, i32 11052, i32 2048, i8 0 } }, align 4
@gsbi12_qup_clk = internal global %struct.clk_branch { i32 0, i32 12244, i8 0, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.347 }, ptr null, i32 11052, i32 512, i8 0 } }, align 4
@.str.269 = private unnamed_addr constant [10 x i8] c"ce1_h_clk\00", align 1
@.compoundliteral.270 = internal global %struct.clk_init_data { ptr @.str.269, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.271 = private unnamed_addr constant [13 x i8] c"ce1_core_clk\00", align 1
@.compoundliteral.272 = internal global %struct.clk_init_data { ptr @.str.271, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.273 = private unnamed_addr constant [11 x i8] c"sdc5_h_clk\00", align 1
@.compoundliteral.274 = internal global %struct.clk_init_data { ptr @.str.273, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.275 = private unnamed_addr constant [9 x i8] c"sdc5_src\00", align 1
@.compoundliteral.276 = internal global %struct.clk_init_data { ptr @.str.275, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 0 }, align 4
@.str.277 = private unnamed_addr constant [9 x i8] c"sdc5_clk\00", align 1
@.compoundliteral.278 = internal global [1 x ptr] [ptr @.str.275], align 4
@.compoundliteral.279 = internal global %struct.clk_init_data { ptr @.str.277, ptr @clk_branch_ops, ptr @.compoundliteral.278, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.280 = private unnamed_addr constant [14 x i8] c"usb_fs2_h_clk\00", align 1
@.compoundliteral.281 = internal global %struct.clk_init_data { ptr @.str.280, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.282 = private unnamed_addr constant [20 x i8] c"usb_fs2_xcvr_fs_src\00", align 1
@.compoundliteral.283 = internal global %struct.clk_init_data { ptr @.str.282, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 1 }, align 4
@.str.284 = private unnamed_addr constant [20 x i8] c"usb_fs2_xcvr_fs_clk\00", align 1
@usb_fs2_xcvr_fs_src_p = internal constant [1 x ptr] [ptr @.str.282], align 4
@.compoundliteral.285 = internal global %struct.clk_init_data { ptr @.str.284, ptr @clk_branch_ops, ptr @usb_fs2_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.286 = private unnamed_addr constant [19 x i8] c"usb_fs2_system_clk\00", align 1
@.compoundliteral.287 = internal global %struct.clk_init_data { ptr @.str.286, ptr @clk_branch_ops, ptr @usb_fs2_xcvr_fs_src_p, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.288 = private unnamed_addr constant [12 x i8] c"gsbi8_h_clk\00", align 1
@.compoundliteral.289 = internal global %struct.clk_init_data { ptr @.str.288, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.290 = private unnamed_addr constant [12 x i8] c"gsbi9_h_clk\00", align 1
@.compoundliteral.291 = internal global %struct.clk_init_data { ptr @.str.290, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.292 = private unnamed_addr constant [13 x i8] c"gsbi10_h_clk\00", align 1
@.compoundliteral.293 = internal global %struct.clk_init_data { ptr @.str.292, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.294 = private unnamed_addr constant [13 x i8] c"gsbi11_h_clk\00", align 1
@.compoundliteral.295 = internal global %struct.clk_init_data { ptr @.str.294, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.296 = private unnamed_addr constant [13 x i8] c"gsbi12_h_clk\00", align 1
@.compoundliteral.297 = internal global %struct.clk_init_data { ptr @.str.296, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.298 = private unnamed_addr constant [15 x i8] c"gsbi8_uart_src\00", align 1
@.compoundliteral.299 = internal global %struct.clk_init_data { ptr @.str.298, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.300 = private unnamed_addr constant [15 x i8] c"gsbi8_uart_clk\00", align 1
@.compoundliteral.301 = internal global [1 x ptr] [ptr @.str.298], align 4
@.compoundliteral.302 = internal global %struct.clk_init_data { ptr @.str.300, ptr @clk_branch_ops, ptr @.compoundliteral.301, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.303 = private unnamed_addr constant [15 x i8] c"gsbi9_uart_src\00", align 1
@.compoundliteral.304 = internal global %struct.clk_init_data { ptr @.str.303, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.305 = private unnamed_addr constant [15 x i8] c"gsbi9_uart_clk\00", align 1
@.compoundliteral.306 = internal global [1 x ptr] [ptr @.str.303], align 4
@.compoundliteral.307 = internal global %struct.clk_init_data { ptr @.str.305, ptr @clk_branch_ops, ptr @.compoundliteral.306, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.308 = private unnamed_addr constant [16 x i8] c"gsbi10_uart_src\00", align 1
@.compoundliteral.309 = internal global %struct.clk_init_data { ptr @.str.308, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.310 = private unnamed_addr constant [16 x i8] c"gsbi10_uart_clk\00", align 1
@.compoundliteral.311 = internal global [1 x ptr] [ptr @.str.308], align 4
@.compoundliteral.312 = internal global %struct.clk_init_data { ptr @.str.310, ptr @clk_branch_ops, ptr @.compoundliteral.311, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.313 = private unnamed_addr constant [16 x i8] c"gsbi11_uart_src\00", align 1
@.compoundliteral.314 = internal global %struct.clk_init_data { ptr @.str.313, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.315 = private unnamed_addr constant [16 x i8] c"gsbi11_uart_clk\00", align 1
@.compoundliteral.316 = internal global [1 x ptr] [ptr @.str.313], align 4
@.compoundliteral.317 = internal global %struct.clk_init_data { ptr @.str.315, ptr @clk_branch_ops, ptr @.compoundliteral.316, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.318 = private unnamed_addr constant [16 x i8] c"gsbi12_uart_src\00", align 1
@.compoundliteral.319 = internal global %struct.clk_init_data { ptr @.str.318, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.320 = private unnamed_addr constant [16 x i8] c"gsbi12_uart_clk\00", align 1
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.318], align 4
@.compoundliteral.322 = internal global %struct.clk_init_data { ptr @.str.320, ptr @clk_branch_ops, ptr @.compoundliteral.321, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.323 = private unnamed_addr constant [14 x i8] c"gsbi8_qup_src\00", align 1
@.compoundliteral.324 = internal global %struct.clk_init_data { ptr @.str.323, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.325 = private unnamed_addr constant [14 x i8] c"gsbi8_qup_clk\00", align 1
@.compoundliteral.326 = internal global [1 x ptr] [ptr @.str.323], align 4
@.compoundliteral.327 = internal global %struct.clk_init_data { ptr @.str.325, ptr @clk_branch_ops, ptr @.compoundliteral.326, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.328 = private unnamed_addr constant [14 x i8] c"gsbi9_qup_src\00", align 1
@.compoundliteral.329 = internal global %struct.clk_init_data { ptr @.str.328, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.330 = private unnamed_addr constant [14 x i8] c"gsbi9_qup_clk\00", align 1
@.compoundliteral.331 = internal global [1 x ptr] [ptr @.str.328], align 4
@.compoundliteral.332 = internal global %struct.clk_init_data { ptr @.str.330, ptr @clk_branch_ops, ptr @.compoundliteral.331, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.333 = private unnamed_addr constant [15 x i8] c"gsbi10_qup_src\00", align 1
@.compoundliteral.334 = internal global %struct.clk_init_data { ptr @.str.333, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.335 = private unnamed_addr constant [15 x i8] c"gsbi10_qup_clk\00", align 1
@.compoundliteral.336 = internal global [1 x ptr] [ptr @.str.333], align 4
@.compoundliteral.337 = internal global %struct.clk_init_data { ptr @.str.335, ptr @clk_branch_ops, ptr @.compoundliteral.336, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.338 = private unnamed_addr constant [15 x i8] c"gsbi11_qup_src\00", align 1
@.compoundliteral.339 = internal global %struct.clk_init_data { ptr @.str.338, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.340 = private unnamed_addr constant [15 x i8] c"gsbi11_qup_clk\00", align 1
@.compoundliteral.341 = internal global [1 x ptr] [ptr @.str.338], align 4
@.compoundliteral.342 = internal global %struct.clk_init_data { ptr @.str.340, ptr @clk_branch_ops, ptr @.compoundliteral.341, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.343 = private unnamed_addr constant [15 x i8] c"gsbi12_qup_src\00", align 1
@.compoundliteral.344 = internal global %struct.clk_init_data { ptr @.str.343, ptr @clk_rcg_ops, ptr @gcc_pxo_pll8, ptr null, ptr null, i8 2, i32 2 }, align 4
@.str.345 = private unnamed_addr constant [15 x i8] c"gsbi12_qup_clk\00", align 1
@.compoundliteral.346 = internal global [1 x ptr] [ptr @.str.343], align 4
@.compoundliteral.347 = internal global %struct.clk_init_data { ptr @.str.345, ptr @clk_branch_ops, ptr @.compoundliteral.346, ptr null, ptr null, i8 1, i32 4 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_license165, ptr @__exitcall_gcc_msm8960_exit, ptr @__initcall__kmod_gcc_msm8960__162_3676_gcc_msm8960_init1, ptr @gcc_msm8960_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gcc_msm8960_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gcc_msm8960_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gcc_msm8960_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gcc_msm8960_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcc_msm8960_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_match_device(ptr noundef nonnull @gcc_msm8960_match_table, ptr noundef %3) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @qcom_cc_register_board_clk(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 19200000) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = tail call i32 @qcom_cc_register_board_clk(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 27000000) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @qcom_cc_probe(ptr noundef %0, ptr noundef %14) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, @gcc_apq8064_desc
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store ptr @hfpll1_8064_data, ptr @hfpll1, align 4
  store ptr @hfpll_l2_8064_data, ptr @hfpll_l2, align 4
  br label %21

21:                                               ; preds = %20, %17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #5
  %22 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %22, i8 0, i32 48, i1 false) #5, !annotation !8
  store ptr %3, ptr %2, align 8
  %23 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 1
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  store ptr @.str.5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %25, align 8
  %26 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false) #5
  %27 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #5
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = ptrtoint ptr %27 to i32
  br label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %27, ptr %32, align 8
  br label %33

33:                                               ; preds = %31, %29, %12, %9, %6, %1
  %34 = phi i32 [ %30, %29 ], [ 0, %31 ], [ -22, %1 ], [ %7, %6 ], [ %10, %9 ], [ %15, %12 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gcc_msm8960_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @platform_device_unregister(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_register_board_clk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
