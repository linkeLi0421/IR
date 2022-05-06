; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos5260.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5260.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }

@__of_table_exynos5260_clk_aud = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-aud\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_aud_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_disp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-disp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_disp_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_egl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-egl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_egl_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_fsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-fsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_fsys_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_g2d = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-g2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_g2d_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_g3d = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-g3d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_g3d_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_gscl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-gscl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_gscl_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_isp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-isp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_isp_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_kfc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-kfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_kfc_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_mfc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-mfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_mfc_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_mif = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-mif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_mif_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_peri = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_peri_init }, section "__clk_of_table", align 4
@__of_table_exynos5260_clk_top = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-clock-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_clk_top_init }, section "__clk_of_table", align 4
@aud_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @aud_mux_clks, i32 3, ptr @aud_div_clks, i32 4, ptr @aud_gate_clks, i32 8, ptr null, i32 0, ptr null, i32 0, i32 16, ptr null, i32 0, ptr @aud_clk_regs, i32 7, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@aud_mux_clks = internal constant [3 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 3, ptr @.str, ptr @mout_aud_pll_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.1, ptr @mout_sclk_aud_i2s_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.2, ptr @mout_sclk_aud_pcm_p, i8 2, i32 128, i32 512, i8 8, i8 1, i8 0 }], section ".init.rodata", align 4
@aud_div_clks = internal constant [4 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 4, ptr @.str.7, ptr @.str, i32 0, i32 1536, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 7, ptr @.str.8, ptr @.str.1, i32 0, i32 1540, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 6, ptr @.str.9, ptr @.str.2, i32 0, i32 1540, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.10, ptr @.str, i32 0, i32 1540, i8 12, i8 4, i8 0, ptr null }], section ".init.rodata", align 4
@aud_gate_clks = internal constant [8 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 15, ptr @.str.11, ptr @.str.8, i32 4, i32 2560, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.12, ptr @.str.9, i32 4, i32 2560, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.13, ptr @.str.10, i32 4, i32 2560, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.14, ptr @.str.7, i32 0, i32 2816, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.15, ptr @.str.7, i32 0, i32 2816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.16, ptr @.str.7, i32 0, i32 2816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.17, ptr @.str.7, i32 0, i32 2816, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.18, ptr @.str.7, i32 0, i32 2816, i8 4, i8 0 }], section ".init.rodata", align 4
@aud_clk_regs = internal constant [7 x i32] [i32 512, i32 1536, i32 1540, i32 2048, i32 2304, i32 2560, i32 2816], section ".init.rodata", align 4
@.str = private unnamed_addr constant [18 x i8] c"mout_aud_pll_user\00", align 1
@mout_aud_pll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.4], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"mout_sclk_aud_i2s\00", align 1
@mout_sclk_aud_i2s_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.5], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mout_sclk_aud_pcm\00", align 1
@mout_sclk_aud_pcm_p = internal constant [2 x ptr] [ptr @.str, ptr @.str.6], section ".init.rodata", align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"fout_aud_pll\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ioclk_i2s_cdclk\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ioclk_pcm_extclk\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dout_aclk_aud_131\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"dout_sclk_aud_i2s\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"dout_sclk_aud_pcm\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"dout_sclk_aud_uart\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"sclk_aud_i2s\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"sclk_aud_pcm\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"sclk_aud_uart\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"clk_sramc\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"clk_dmac\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"clk_i2s\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"clk_pcm\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"clk_aud_uart\00", align 1
@disp_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @disp_mux_clks, i32 17, ptr @disp_div_clks, i32 3, ptr @disp_gate_clks, i32 15, ptr null, i32 0, ptr null, i32 0, i32 36, ptr null, i32 0, ptr @disp_clk_regs, i32 12, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@disp_mux_clks = internal constant [17 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 17, ptr @.str.19, ptr @mout_aclk_disp_333_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 16, ptr @.str.20, ptr @mout_sclk_disp_pixel_user_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 15, ptr @.str.21, ptr @mout_aclk_disp_222_user_p, i8 2, i32 128, i32 512, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 14, ptr @.str.22, ptr @mout_phyclk_dptx_phy_ch0_txd_clk_user_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 13, ptr @.str.23, ptr @mout_phyclk_dptx_phy_ch1_txd_clk_user_p, i8 2, i32 128, i32 512, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 12, ptr @.str.24, ptr @mout_phyclk_dptx_phy_ch2_txd_clk_user_p, i8 2, i32 128, i32 512, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 11, ptr @.str.25, ptr @mout_phyclk_dptx_phy_ch3_txd_clk_user_p, i8 2, i32 128, i32 512, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 10, ptr @.str.26, ptr @mout_phyclk_dptx_phy_clk_div2_user_p, i8 2, i32 128, i32 516, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.27, ptr @mout_phyclk_dptx_phy_o_ref_clk_24m_user_p, i8 2, i32 128, i32 516, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 8, ptr @.str.28, ptr @mout_phyclk_mipi_dphy_4l_m_txbyte_clkhs_p, i8 2, i32 128, i32 516, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 7, ptr @.str.29, ptr @mout_phyclk_hdmi_link_o_tmds_clkhi_user_p, i8 2, i32 128, i32 516, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 6, ptr @.str.30, ptr @mout_phyclk_hdmi_phy_pixel_clko_user_p, i8 2, i32 128, i32 516, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 5, ptr @.str.31, ptr @mout_phyclk_hdmi_phy_ref_clko_user_p, i8 2, i32 128, i32 516, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.32, ptr @mout_phyclk_hdmi_phy_tmds_clko_user_p, i8 2, i32 128, i32 516, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.33, ptr @mout_phyclk_mipi_dphy_4lmrxclk_esc0_user_p, i8 2, i32 128, i32 520, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.34, ptr @mout_sclk_hdmi_pixel_p, i8 2, i32 128, i32 520, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.35, ptr @mout_sclk_hdmi_spdif_p, i8 4, i32 128, i32 528, i8 4, i8 2, i8 0 }], section ".init.rodata", align 4
@disp_div_clks = internal constant [3 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 20, ptr @.str.54, ptr @.str.21, i32 0, i32 1536, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 19, ptr @.str.55, ptr @.str.20, i32 0, i32 1536, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 18, ptr @.str.56, ptr @.str.34, i32 0, i32 1536, i8 16, i8 4, i8 0, ptr null }], section ".init.rodata", align 4
@disp_gate_clks = internal constant [15 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 35, ptr @.str.57, ptr @.str.30, i32 4, i32 2560, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 34, ptr @.str.58, ptr @.str.56, i32 4, i32 2560, i8 29, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.59, ptr @.str.21, i32 0, i32 2816, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 32, ptr @.str.60, ptr @.str.21, i32 0, i32 2816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 31, ptr @.str.61, ptr @.str.21, i32 0, i32 2816, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 30, ptr @.str.62, ptr @.str.21, i32 0, i32 2816, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 29, ptr @.str.63, ptr @.str.21, i32 0, i32 2816, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 28, ptr @.str.64, ptr @.str.21, i32 0, i32 2816, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.65, ptr @.str.21, i32 0, i32 2816, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.66, ptr @.str.21, i32 0, i32 2816, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.67, ptr @.str.21, i32 8, i32 2816, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.68, ptr @.str.21, i32 8, i32 2816, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.69, ptr @.str.21, i32 0, i32 2816, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.70, ptr @.str.21, i32 0, i32 2816, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.71, ptr @.str.21, i32 0, i32 2816, i8 25, i8 0 }], section ".init.rodata", align 4
@disp_clk_regs = internal constant [12 x i32] [i32 512, i32 516, i32 520, i32 524, i32 528, i32 1536, i32 2048, i32 2304, i32 2560, i32 2564, i32 2816, i32 2820], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"mout_aclk_disp_333_user\00", align 1
@mout_aclk_disp_333_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.36], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"mout_sclk_disp_pixel_user\00", align 1
@mout_sclk_disp_pixel_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.37], section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"mout_aclk_disp_222_user\00", align 1
@mout_aclk_disp_222_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.38], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"mout_phyclk_dptx_phy_ch0_txd_clk_user\00", align 1
@mout_phyclk_dptx_phy_ch0_txd_clk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.39], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [38 x i8] c"mout_phyclk_dptx_phy_ch1_txd_clk_user\00", align 1
@mout_phyclk_dptx_phy_ch1_txd_clk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.40], section ".init.rodata", align 4
@.str.24 = private unnamed_addr constant [38 x i8] c"mout_phyclk_dptx_phy_ch2_txd_clk_user\00", align 1
@mout_phyclk_dptx_phy_ch2_txd_clk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.41], section ".init.rodata", align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"mout_phyclk_dptx_phy_ch3_txd_clk_user\00", align 1
@mout_phyclk_dptx_phy_ch3_txd_clk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.42], section ".init.rodata", align 4
@.str.26 = private unnamed_addr constant [35 x i8] c"mout_phyclk_dptx_phy_clk_div2_user\00", align 1
@mout_phyclk_dptx_phy_clk_div2_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.43], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [40 x i8] c"mout_phyclk_dptx_phy_o_ref_clk_24m_user\00", align 1
@mout_phyclk_dptx_phy_o_ref_clk_24m_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.44], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [40 x i8] c"mout_phyclk_mipi_dphy_4l_m_txbyte_clkhs\00", align 1
@mout_phyclk_mipi_dphy_4l_m_txbyte_clkhs_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.45], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"mout_phyclk_hdmi_link_o_tmds_clkhi_user\00", align 1
@mout_phyclk_hdmi_link_o_tmds_clkhi_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.46], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [37 x i8] c"mout_phyclk_hdmi_phy_pixel_clko_user\00", align 1
@mout_phyclk_hdmi_phy_pixel_clko_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.47], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [35 x i8] c"mout_phyclk_hdmi_phy_ref_clko_user\00", align 1
@mout_phyclk_hdmi_phy_ref_clko_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.48], section ".init.rodata", align 4
@.str.32 = private unnamed_addr constant [36 x i8] c"mout_phyclk_hdmi_phy_tmds_clko_user\00", align 1
@mout_phyclk_hdmi_phy_tmds_clko_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.49], section ".init.rodata", align 4
@.str.33 = private unnamed_addr constant [41 x i8] c"mout_phyclk_mipi_dphy_4lmrxclk_esc0_user\00", align 1
@mout_phyclk_mipi_dphy_4lmrxclk_esc0_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.50], section ".init.rodata", align 4
@.str.34 = private unnamed_addr constant [21 x i8] c"mout_sclk_hdmi_pixel\00", align 1
@mout_sclk_hdmi_pixel_p = internal constant [2 x ptr] [ptr @.str.20, ptr @.str.21], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [21 x i8] c"mout_sclk_hdmi_spdif\00", align 1
@mout_sclk_hdmi_spdif_p = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.51, ptr @.str.52, ptr @.str.53], section ".init.rodata", align 4
@.str.36 = private unnamed_addr constant [19 x i8] c"dout_aclk_disp_333\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"dout_sclk_disp_pixel\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"dout_aclk_disp_222\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"phyclk_dptx_phy_ch0_txd_clk\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"phyclk_dptx_phy_ch1_txd_clk\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"phyclk_dptx_phy_ch2_txd_clk\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"phyclk_dptx_phy_ch3_txd_clk\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"phyclk_dptx_phy_clk_div2\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"phyclk_dptx_phy_o_ref_clk_24m\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"phyclk_mipi_dphy_4l_m_txbyte_clkhs\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"phyclk_hdmi_link_o_tmds_clkhi\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"phyclk_hdmi_phy_pixel_clko\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"phyclk_hdmi_phy_ref_clko\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"phyclk_hdmi_phy_tmds_clko\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"phyclk_mipi_dphy_4l_m_rxclkesc0\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"ioclk_spdif_extclk\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"dout_aclk_peri_aud\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"phyclk_hdmi_phy_ref_cko\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"dout_pclk_disp_111\00", align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"dout_sclk_fimd1_extclkpll\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"dout_sclk_hdmi_phy_pixel_clki\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"sclk_hdmi_link_i_pixel\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"sclk_hdmi_phy_pixel_clki\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"clk_dptx_link\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"clk_dptx_phy\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"clk_dsim1\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"clk_fimd1\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"clk_hdmi\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"clk_hdmiphy\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"clk_mipi_dphy\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"clk_mixer\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"clk_pixel_disp\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"clk_pixel_mixer\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"clk_smmu3_fimd1m0\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"clk_smmu3_fimd1m1\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"clk_smmu3_tv\00", align 1
@egl_cmu = internal constant %struct.samsung_cmu_info { ptr @egl_pll_clks, i32 1, ptr @egl_mux_clks, i32 2, ptr @egl_div_clks, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 12, ptr null, i32 0, ptr @egl_clk_regs, i32 11, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@egl_pll_clks = internal constant [1 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str.72, ptr @.str.3, i32 64, i32 256, i32 0, i32 19, ptr @pll2550_24mhz_tbl }], section ".init.rodata", align 4
@egl_mux_clks = internal constant [2 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 4, ptr @.str.73, ptr @mout_egl_pll_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.74, ptr @mout_egl_b_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }], section ".init.rodata", align 4
@egl_div_clks = internal constant [7 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 11, ptr @.str.76, ptr @.str.74, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 10, ptr @.str.77, ptr @.str.76, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 9, ptr @.str.78, ptr @.str.77, i32 0, i32 1536, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 8, ptr @.str.79, ptr @.str.80, i32 0, i32 1536, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 7, ptr @.str.80, ptr @.str.77, i32 0, i32 1536, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 6, ptr @.str.81, ptr @.str.80, i32 0, i32 1536, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.82, ptr @.str.74, i32 0, i32 1536, i8 24, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@egl_clk_regs = internal constant [11 x i32] [i32 0, i32 256, i32 260, i32 268, i32 512, i32 768, i32 1536, i32 1540, i32 2048, i32 2304, i32 2560], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [13 x i8] c"fout_egl_pll\00", align 1
@pll2550_24mhz_tbl = internal constant [27 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 1700000000, i32 6, i32 425, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1500000000, i32 4, i32 250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1400000000, i32 3, i32 175, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1300000000, i32 6, i32 325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1200000000, i32 4, i32 400, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1100000000, i32 3, i32 275, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 3, i32 250, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 933000000, i32 4, i32 311, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 900000000, i32 4, i32 300, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 3, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 733000000, i32 12, i32 733, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 700000000, i32 3, i32 175, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 667000000, i32 12, i32 667, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 633000000, i32 4, i32 211, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 620000000, i32 3, i32 310, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 4, i32 400, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 543000000, i32 4, i32 362, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 533000000, i32 6, i32 533, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 500000000, i32 3, i32 250, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 450000000, i32 4, i32 300, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 350000000, i32 3, i32 175, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 4, i32 400, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 160000000, i32 3, i32 160, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@.str.73 = private unnamed_addr constant [13 x i8] c"mout_egl_pll\00", align 1
@mout_egl_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.72], section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [11 x i8] c"mout_egl_b\00", align 1
@mout_egl_b_p = internal constant [2 x ptr] [ptr @.str.73, ptr @.str.75], section ".init.rodata", align 4
@.str.75 = private unnamed_addr constant [13 x i8] c"dout_bus_pll\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"dout_egl1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"dout_egl2\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"dout_aclk_egl\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"dout_pclk_egl\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"dout_egl_atclk\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"dout_egl_pclk_dbg\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"dout_egl_pll\00", align 1
@fsys_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @fsys_mux_clks, i32 5, ptr null, i32 0, ptr @fsys_gate_clks, i32 13, ptr null, i32 0, ptr null, i32 0, i32 19, ptr null, i32 0, ptr @fsys_clk_regs, i32 9, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@fsys_mux_clks = internal constant [5 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 5, ptr @.str.83, ptr @mout_phyclk_usbdrd30_phyclock_user_p, i8 2, i32 128, i32 516, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.84, ptr @mout_phyclk_usbdrd30_pipe_pclk_user_p, i8 2, i32 128, i32 516, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.85, ptr @mout_phyclk_usbhost20_clk48mohci_user_p, i8 2, i32 128, i32 516, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.86, ptr @mout_phyclk_usbhost20_freeclk_user_p, i8 2, i32 128, i32 516, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.87, ptr @mout_phyclk_usbhost20_phyclk_user_p, i8 2, i32 128, i32 516, i8 16, i8 1, i8 0 }], section ".init.rodata", align 4
@fsys_gate_clks = internal constant [13 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 18, ptr @.str.93, ptr @.str.83, i32 0, i32 2560, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.94, ptr @.str.83, i32 0, i32 2560, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.95, ptr @.str.96, i32 0, i32 2816, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.97, ptr @.str.96, i32 0, i32 2816, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.98, ptr @.str.96, i32 0, i32 2816, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.99, ptr @.str.96, i32 0, i32 2816, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.100, ptr @.str.96, i32 0, i32 2816, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.101, ptr @.str.96, i32 0, i32 2816, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.102, ptr @.str.96, i32 0, i32 2816, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.103, ptr @.str.96, i32 0, i32 2816, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 6, ptr @.str.104, ptr @.str.96, i32 0, i32 2816, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.105, ptr @.str.96, i32 0, i32 2820, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.106, ptr @.str.96, i32 0, i32 2824, i8 12, i8 0 }], section ".init.rodata", align 4
@fsys_clk_regs = internal constant [9 x i32] [i32 512, i32 516, i32 2048, i32 2052, i32 2056, i32 2560, i32 2816, i32 2820, i32 2824], section ".init.rodata", align 4
@.str.83 = private unnamed_addr constant [35 x i8] c"mout_phyclk_usbdrd30_phyclock_user\00", align 1
@mout_phyclk_usbdrd30_phyclock_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.88], section ".init.rodata", align 4
@.str.84 = private unnamed_addr constant [36 x i8] c"mout_phyclk_usbdrd30_pipe_pclk_user\00", align 1
@mout_phyclk_usbdrd30_pipe_pclk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.89], section ".init.rodata", align 4
@.str.85 = private unnamed_addr constant [38 x i8] c"mout_phyclk_usbhost20_clk48mohci_user\00", align 1
@mout_phyclk_usbhost20_clk48mohci_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.90], section ".init.rodata", align 4
@.str.86 = private unnamed_addr constant [35 x i8] c"mout_phyclk_usbhost20_freeclk_user\00", align 1
@mout_phyclk_usbhost20_freeclk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.91], section ".init.rodata", align 4
@.str.87 = private unnamed_addr constant [34 x i8] c"mout_phyclk_usbhost20_phyclk_user\00", align 1
@mout_phyclk_usbhost20_phyclk_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.92], section ".init.rodata", align 4
@.str.88 = private unnamed_addr constant [32 x i8] c"phyclk_usbdrd30_udrd30_phyclock\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"phyclk_usbdrd30_udrd30_pipe_pclk\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"phyclk_usbhost20_phy_clk48mohci\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"phyclk_usbhost20_phy_freeclk\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"phyclk_usbhost20_phy_phyclock\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"phyclk_usbhost20_phyclock\00", align 1
@.str.94 = private unnamed_addr constant [34 x i8] c"phyclk_usbdrd30_udrd30_phyclock_g\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"clk_mmc0\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"dout_aclk_fsys_200\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"clk_mmc1\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"clk_mmc2\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"clk_pdma\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"clk_sromc\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"clk_usbdrd30\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"clk_usbhost20\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"clk_usblink\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"clk_tsi\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"clk_rtic\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"clk_smmu_rtic\00", align 1
@g2d_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @g2d_mux_clks, i32 1, ptr @g2d_div_clks, i32 1, ptr @g2d_gate_clks, i32 10, ptr null, i32 0, ptr null, i32 0, i32 13, ptr null, i32 0, ptr @g2d_clk_regs, i32 22, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@g2d_mux_clks = internal constant [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1, ptr @.str.107, ptr @mout_aclk_g2d_333_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@g2d_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 2, ptr @.str.109, ptr @.str.107, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@g2d_gate_clks = internal constant [10 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 6, ptr @.str.110, ptr @.str.107, i32 0, i32 2816, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 5, ptr @.str.111, ptr @.str.107, i32 0, i32 2816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 4, ptr @.str.112, ptr @.str.107, i32 0, i32 2816, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 3, ptr @.str.113, ptr @.str.107, i32 0, i32 2816, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.114, ptr @.str.107, i32 0, i32 2820, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.115, ptr @.str.107, i32 0, i32 2824, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.116, ptr @.str.107, i32 0, i32 2828, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.117, ptr @.str.107, i32 0, i32 2832, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.118, ptr @.str.107, i32 0, i32 2836, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.119, ptr @.str.107, i32 0, i32 2840, i8 15, i8 0 }], section ".init.rodata", align 4
@g2d_clk_regs = internal constant [22 x i32] [i32 512, i32 1024, i32 1536, i32 2048, i32 2052, i32 2056, i32 2060, i32 2064, i32 2068, i32 2072, i32 2304, i32 2308, i32 2312, i32 2316, i32 2320, i32 2816, i32 2820, i32 2824, i32 2828, i32 2832, i32 2836, i32 2840], section ".init.rodata", align 4
@.str.107 = private unnamed_addr constant [23 x i8] c"mout_aclk_g2d_333_user\00", align 1
@mout_aclk_g2d_333_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.108], section ".init.rodata", align 4
@.str.108 = private unnamed_addr constant [18 x i8] c"dout_aclk_g2d_333\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"dout_pclk_g2d_83\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"clk_g2d\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"clk_jpeg\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"clk_mdma\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"clk_smmu3_jpeg\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"clk_sss\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"clk_slim_sss\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"clk_smmu_slim_sss\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"clk_smmu_sss\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"clk_smmu_mdma\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"clk_smmu3_g2d\00", align 1
@g3d_cmu = internal constant %struct.samsung_cmu_info { ptr @g3d_pll_clks, i32 1, ptr @g3d_mux_clks, i32 1, ptr @g3d_div_clks, i32 2, ptr @g3d_gate_clks, i32 2, ptr null, i32 0, ptr null, i32 0, i32 7, ptr null, i32 0, ptr @g3d_clk_regs, i32 11, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@g3d_pll_clks = internal constant [1 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str.120, ptr @.str.3, i32 64, i32 256, i32 0, i32 4, ptr @pll2550_24mhz_tbl }], section ".init.rodata", align 4
@g3d_mux_clks = internal constant [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 2, ptr @.str.121, ptr @mout_g3d_pll_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@g3d_div_clks = internal constant [2 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 3, ptr @.str.122, ptr @.str.123, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 4, ptr @.str.123, ptr @.str.121, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@g3d_gate_clks = internal constant [2 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 6, ptr @.str.124, ptr @.str.123, i32 0, i32 2816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 5, ptr @.str.125, ptr @.str.123, i32 0, i32 2816, i8 3, i8 0 }], section ".init.rodata", align 4
@g3d_clk_regs = internal constant [11 x i32] [i32 0, i32 256, i32 260, i32 268, i32 512, i32 1536, i32 1540, i32 2048, i32 2304, i32 2560, i32 2816], section ".init.rodata", align 4
@.str.120 = private unnamed_addr constant [13 x i8] c"fout_g3d_pll\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"mout_g3d_pll\00", align 1
@mout_g3d_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.120], section ".init.rodata", align 4
@.str.122 = private unnamed_addr constant [14 x i8] c"dout_pclk_g3d\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"dout_aclk_g3d\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"clk_g3d\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"clk_g3d_hpm\00", align 1
@gscl_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @gscl_mux_clks, i32 4, ptr @gscl_div_clks, i32 2, ptr @gscl_gate_clks, i32 20, ptr null, i32 0, ptr null, i32 0, i32 27, ptr null, i32 0, ptr @gscl_clk_regs, i32 22, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@gscl_mux_clks = internal constant [4 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 4, ptr @.str.126, ptr @mout_aclk_gscl_333_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.127, ptr @mout_aclk_m2m_400_user_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.128, ptr @mout_aclk_gscl_fimc_user_p, i8 2, i32 128, i32 512, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.129, ptr @mout_aclk_csis_p, i8 2, i32 128, i32 512, i8 24, i8 1, i8 0 }], section ".init.rodata", align 4
@gscl_div_clks = internal constant [2 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 6, ptr @.str.133, ptr @.str.127, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.132, ptr @.str.127, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@gscl_gate_clks = internal constant [20 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 26, ptr @.str.134, ptr @.str.132, i32 4, i32 2564, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.135, ptr @.str.132, i32 4, i32 2564, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.136, ptr @.str.126, i32 0, i32 2816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.137, ptr @.str.126, i32 0, i32 2816, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.138, ptr @.str.126, i32 0, i32 2816, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.139, ptr @.str.126, i32 0, i32 2816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.140, ptr @.str.126, i32 0, i32 2816, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.141, ptr @.str.126, i32 0, i32 2816, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.142, ptr @.str.128, i32 0, i32 2820, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.143, ptr @.str.128, i32 0, i32 2820, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.144, ptr @.str.128, i32 0, i32 2820, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.145, ptr @.str.128, i32 0, i32 2820, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.146, ptr @.str.128, i32 0, i32 2820, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.147, ptr @.str.128, i32 0, i32 2820, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.148, ptr @.str.128, i32 0, i32 2820, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.149, ptr @.str.128, i32 0, i32 2820, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.150, ptr @.str.126, i32 0, i32 2824, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.151, ptr @.str.126, i32 0, i32 2828, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.152, ptr @.str.127, i32 0, i32 2832, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.153, ptr @.str.127, i32 0, i32 2836, i8 20, i8 0 }], section ".init.rodata", align 4
@gscl_clk_regs = internal constant [22 x i32] [i32 512, i32 1536, i32 2048, i32 2052, i32 2056, i32 2060, i32 2064, i32 2068, i32 2304, i32 2308, i32 2312, i32 2316, i32 2320, i32 2324, i32 2560, i32 2564, i32 2816, i32 2820, i32 2824, i32 2828, i32 2832, i32 2836], section ".init.rodata", align 4
@.str.126 = private unnamed_addr constant [24 x i8] c"mout_aclk_gscl_333_user\00", align 1
@mout_aclk_gscl_333_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.130], section ".init.rodata", align 4
@.str.127 = private unnamed_addr constant [23 x i8] c"mout_aclk_m2m_400_user\00", align 1
@mout_aclk_m2m_400_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.131], section ".init.rodata", align 4
@.str.128 = private unnamed_addr constant [25 x i8] c"mout_aclk_gscl_fimc_user\00", align 1
@mout_aclk_gscl_fimc_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.131], section ".init.rodata", align 4
@.str.129 = private unnamed_addr constant [15 x i8] c"mout_aclk_csis\00", align 1
@mout_aclk_csis_p = internal constant [2 x ptr] [ptr @.str.132, ptr @.str.128], section ".init.rodata", align 4
@.str.130 = private unnamed_addr constant [19 x i8] c"dout_aclk_gscl_333\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"dout_aclk_gscl_400\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"dout_aclk_csis_200\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"dout_pclk_m2m_100\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"sclk_csis0_wrap\00", align 1
@.str.135 = private unnamed_addr constant [16 x i8] c"sclk_csis1_wrap\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"clk_gscl0\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"clk_gscl1\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"clk_mscl0\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"clk_mscl1\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"clk_pixel_gscl0\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"clk_pixel_gscl1\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"clk_smmu3_lite_a\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"clk_smmu3_lite_b\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"clk_smmu3_lite_d\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"clk_csis0\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"clk_csis1\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"clk_fimc_lite_a\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"clk_fimc_lite_b\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"clk_fimc_lite_d\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"clk_smmu3_gscl0\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"clk_smmu3_gscl1\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"clk_smmu3_mscl0\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"clk_smmu3_mscl1\00", align 1
@isp_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @isp_mux_clks, i32 2, ptr @isp_div_clks, i32 5, ptr @isp_gate_clks, i32 26, ptr null, i32 0, ptr null, i32 0, i32 34, ptr null, i32 0, ptr @isp_clk_regs, i32 10, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@isp_mux_clks = internal constant [2 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 2, ptr @.str.154, ptr @mout_isp_266_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.155, ptr @mout_isp_400_user_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }], section ".init.rodata", align 4
@isp_div_clks = internal constant [5 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 7, ptr @.str.158, ptr @.str.159, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 6, ptr @.str.160, ptr @.str.159, i32 0, i32 1536, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.161, ptr @.str.159, i32 0, i32 1536, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 4, ptr @.str.162, ptr @.str.159, i32 0, i32 1536, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 3, ptr @.str.163, ptr @.str.159, i32 0, i32 1536, i8 20, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@isp_gate_clks = internal constant [26 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 8, ptr @.str.164, ptr @.str.165, i32 0, i32 2816, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 30, ptr @.str.166, ptr @.str.165, i32 0, i32 2820, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 29, ptr @.str.167, ptr @.str.165, i32 0, i32 2820, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 28, ptr @.str.168, ptr @.str.165, i32 0, i32 2820, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.169, ptr @.str.165, i32 0, i32 2820, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.170, ptr @.str.165, i32 0, i32 2820, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.171, ptr @.str.165, i32 0, i32 2820, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.172, ptr @.str.165, i32 0, i32 2820, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.173, ptr @.str.165, i32 0, i32 2820, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.174, ptr @.str.165, i32 0, i32 2820, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.175, ptr @.str.165, i32 0, i32 2820, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.176, ptr @.str.165, i32 0, i32 2820, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.177, ptr @.str.165, i32 0, i32 2820, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.178, ptr @.str.165, i32 0, i32 2820, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.179, ptr @.str.165, i32 0, i32 2820, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.180, ptr @.str.165, i32 0, i32 2820, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.181, ptr @.str.165, i32 0, i32 2820, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.182, ptr @.str.165, i32 0, i32 2820, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.183, ptr @.str.165, i32 0, i32 2820, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.184, ptr @.str.165, i32 0, i32 2820, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.185, ptr @.str.165, i32 0, i32 2820, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.186, ptr @.str.165, i32 0, i32 2820, i8 31, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.187, ptr @.str.165, i32 0, i32 2820, i8 30, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.188, ptr @.str.3, i32 4, i32 2560, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 32, ptr @.str.189, ptr @.str.3, i32 4, i32 2560, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 31, ptr @.str.190, ptr @.str.3, i32 4, i32 2560, i8 9, i8 0 }], section ".init.rodata", align 4
@isp_clk_regs = internal constant [10 x i32] [i32 512, i32 516, i32 1536, i32 2048, i32 2052, i32 2304, i32 2308, i32 2560, i32 2816, i32 2820], section ".init.rodata", align 4
@.str.154 = private unnamed_addr constant [18 x i8] c"mout_isp_266_user\00", align 1
@mout_isp_266_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.156], section ".init.rodata", align 4
@.str.155 = private unnamed_addr constant [18 x i8] c"mout_isp_400_user\00", align 1
@mout_isp_400_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.157], section ".init.rodata", align 4
@.str.156 = private unnamed_addr constant [19 x i8] c"dout_aclk_isp1_266\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"dout_aclk_isp1_400\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"dout_pclk_isp_66\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"mout_kfc\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"dout_pclk_isp_133\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"dout_ca5_atclkin\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"dout_ca5_pclkdbg\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"dout_sclk_mpwm\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"clk_isp_gic\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"mout_aclk_isp1_266\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"clk_isp_ca5\00", align 1
@.str.167 = private unnamed_addr constant [17 x i8] c"clk_isp_fimc_drc\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"clk_isp_fimc_fd\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"clk_isp_fimc\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"clk_isp_fimc_scalerc\00", align 1
@.str.171 = private unnamed_addr constant [21 x i8] c"clk_isp_fimc_scalerp\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"clk_isp_i2c0\00", align 1
@.str.173 = private unnamed_addr constant [13 x i8] c"clk_isp_i2c1\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"clk_isp_mcuctl\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"clk_isp_mpwm\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"clk_isp_mtcadc\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"clk_isp_pwm\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"clk_smmu_drc\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"clk_smmu_fd\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"clk_smmu_isp\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"clk_smmu_ispcx\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"clk_isp_smmu_scalerc\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"clk_isp_smmu_scalerp\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"clk_isp_spi0\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"clk_isp_spi1\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"clk_isp_wdt\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"clk_isp_uart\00", align 1
@.str.188 = private unnamed_addr constant [18 x i8] c"sclk_isp_uart_ext\00", align 1
@.str.189 = private unnamed_addr constant [18 x i8] c"sclk_isp_spi1_ext\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"sclk_isp_spi0_ext\00", align 1
@kfc_cmu = internal constant %struct.samsung_cmu_info { ptr @kfc_pll_clks, i32 1, ptr @kfc_mux_clks, i32 2, ptr @kfc_div_clks, i32 7, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 11, ptr null, i32 0, ptr @kfc_clk_regs, i32 12, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@kfc_pll_clks = internal constant [1 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str.191, ptr @.str.3, i32 64, i32 256, i32 0, i32 19, ptr @pll2550_24mhz_tbl }], section ".init.rodata", align 4
@kfc_mux_clks = internal constant [2 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 2, ptr @.str.192, ptr @mout_kfc_pll_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.159, ptr @mout_kfc_p, i8 2, i32 128, i32 520, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@kfc_div_clks = internal constant [7 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 10, ptr @.str.194, ptr @.str.159, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 9, ptr @.str.195, ptr @.str.194, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 8, ptr @.str.196, ptr @.str.195, i32 0, i32 1536, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 7, ptr @.str.197, ptr @.str.195, i32 0, i32 1536, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 6, ptr @.str.198, ptr @.str.195, i32 0, i32 1536, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.199, ptr @.str.195, i32 0, i32 1536, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 4, ptr @.str.200, ptr @.str.159, i32 0, i32 1536, i8 24, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@kfc_clk_regs = internal constant [12 x i32] [i32 0, i32 256, i32 260, i32 268, i32 512, i32 520, i32 1536, i32 1540, i32 2048, i32 2304, i32 2560, i32 2816], section ".init.rodata", align 4
@.str.191 = private unnamed_addr constant [13 x i8] c"fout_kfc_pll\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"mout_kfc_pll\00", align 1
@mout_kfc_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.191], section ".init.rodata", align 4
@mout_kfc_p = internal constant [2 x ptr] [ptr @.str.192, ptr @.str.193], section ".init.rodata", align 4
@.str.193 = private unnamed_addr constant [15 x i8] c"dout_media_pll\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"dout_kfc1\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"dout_kfc2\00", align 1
@.str.196 = private unnamed_addr constant [15 x i8] c"dout_kfc_atclk\00", align 1
@.str.197 = private unnamed_addr constant [18 x i8] c"dout_kfc_pclk_dbg\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"dout_aclk_kfc\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"dout_pclk_kfc\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"dout_kfc_pll\00", align 1
@mfc_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @mfc_mux_clks, i32 1, ptr @mfc_div_clks, i32 1, ptr @mfc_gate_clks, i32 3, ptr null, i32 0, ptr null, i32 0, i32 6, ptr null, i32 0, ptr @mfc_clk_regs, i32 8, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@mfc_mux_clks = internal constant [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1, ptr @.str.201, ptr @mout_aclk_mfc_333_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@mfc_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 2, ptr @.str.203, ptr @.str.201, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@mfc_gate_clks = internal constant [3 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 3, ptr @.str.204, ptr @.str.201, i32 0, i32 2816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 5, ptr @.str.205, ptr @.str.201, i32 0, i32 2820, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 4, ptr @.str.206, ptr @.str.201, i32 0, i32 2820, i8 7, i8 0 }], section ".init.rodata", align 4
@mfc_clk_regs = internal constant [8 x i32] [i32 512, i32 1536, i32 2048, i32 2052, i32 2304, i32 2308, i32 2816, i32 2820], section ".init.rodata", align 4
@.str.201 = private unnamed_addr constant [23 x i8] c"mout_aclk_mfc_333_user\00", align 1
@mout_aclk_mfc_333_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.202], section ".init.rodata", align 4
@.str.202 = private unnamed_addr constant [18 x i8] c"dout_aclk_mfc_333\00", align 1
@.str.203 = private unnamed_addr constant [17 x i8] c"dout_pclk_mfc_83\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"clk_mfc\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"clk_smmu2_mfcm0\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"clk_smmu2_mfcm1\00", align 1
@mif_cmu = internal constant %struct.samsung_cmu_info { ptr @mif_pll_clks, i32 3, ptr @mif_mux_clks, i32 7, ptr @mif_div_clks, i32 8, ptr @mif_gate_clks, i32 9, ptr null, i32 0, ptr null, i32 0, i32 28, ptr null, i32 0, ptr @mif_clk_regs, i32 31, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@mif_pll_clks = internal constant [3 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str.207, ptr @.str.3, i32 64, i32 256, i32 0, i32 19, ptr @pll2550_24mhz_tbl }, %struct.samsung_pll_clock { i32 3, ptr @.str.208, ptr @.str.3, i32 64, i32 272, i32 4, i32 19, ptr @pll2550_24mhz_tbl }, %struct.samsung_pll_clock { i32 2, ptr @.str.209, ptr @.str.3, i32 64, i32 288, i32 8, i32 19, ptr @pll2550_24mhz_tbl }], section ".init.rodata", align 4
@mif_mux_clks = internal constant [7 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 10, ptr @.str.210, ptr @mout_mem_pll_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.211, ptr @mout_bus_pll_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 8, ptr @.str.212, ptr @mout_media_pll_p, i8 2, i32 128, i32 512, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 7, ptr @.str.213, ptr @mout_mif_drex_p, i8 2, i32 128, i32 512, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 6, ptr @.str.214, ptr @mout_clkm_phy_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 5, ptr @.str.215, ptr @mout_mif_drex2x_p, i8 2, i32 128, i32 512, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.216, ptr @mout_clk2x_phy_p, i8 2, i32 128, i32 512, i8 24, i8 1, i8 0 }], section ".init.rodata", align 4
@mif_div_clks = internal constant [8 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 18, ptr @.str.193, ptr @.str.212, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 17, ptr @.str.217, ptr @.str.210, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 16, ptr @.str.75, ptr @.str.211, i32 0, i32 1536, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 15, ptr @.str.218, ptr @.str.214, i32 0, i32 1536, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 14, ptr @.str.219, ptr @.str.216, i32 0, i32 1536, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 13, ptr @.str.220, ptr @.str.219, i32 0, i32 1536, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 12, ptr @.str.221, ptr @.str.75, i32 0, i32 1536, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 11, ptr @.str.222, ptr @.str.75, i32 0, i32 1536, i8 28, i8 4, i8 0, ptr null }], section ".init.rodata", align 4
@mif_gate_clks = internal constant [9 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 20, ptr @.str.223, ptr @.str.219, i32 8, i32 2816, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.224, ptr @.str.219, i32 8, i32 2816, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.225, ptr @.str.222, i32 8, i32 2820, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.226, ptr @.str.222, i32 8, i32 2824, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.227, ptr @.str.220, i32 8, i32 2828, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.228, ptr @.str.220, i32 8, i32 2832, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.229, ptr @.str.221, i32 8, i32 2836, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.230, ptr @.str.218, i32 12, i32 2560, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.231, ptr @.str.218, i32 12, i32 2560, i8 1, i8 0 }], section ".init.rodata", align 4
@mif_clk_regs = internal constant [31 x i32] [i32 0, i32 4, i32 8, i32 256, i32 260, i32 268, i32 272, i32 276, i32 284, i32 288, i32 292, i32 300, i32 512, i32 1536, i32 1540, i32 2048, i32 2052, i32 2056, i32 2060, i32 2304, i32 2308, i32 2312, i32 2316, i32 2320, i32 2560, i32 2816, i32 2820, i32 2824, i32 2828, i32 2832, i32 2836], section ".init.rodata", align 4
@.str.207 = private unnamed_addr constant [13 x i8] c"fout_mem_pll\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"fout_bus_pll\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"fout_media_pll\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"mout_mem_pll\00", align 1
@mout_mem_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.207], section ".init.rodata", align 4
@.str.211 = private unnamed_addr constant [13 x i8] c"mout_bus_pll\00", align 1
@mout_bus_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.208], section ".init.rodata", align 4
@.str.212 = private unnamed_addr constant [15 x i8] c"mout_media_pll\00", align 1
@mout_media_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.209], section ".init.rodata", align 4
@.str.213 = private unnamed_addr constant [14 x i8] c"mout_mif_drex\00", align 1
@mout_mif_drex_p = internal constant [2 x ptr] [ptr @.str.217, ptr @.str.75], section ".init.rodata", align 4
@.str.214 = private unnamed_addr constant [14 x i8] c"mout_clkm_phy\00", align 1
@mout_clkm_phy_p = internal constant [2 x ptr] [ptr @.str.213, ptr @.str.193], section ".init.rodata", align 4
@.str.215 = private unnamed_addr constant [16 x i8] c"mout_mif_drex2x\00", align 1
@mout_mif_drex2x_p = internal constant [2 x ptr] [ptr @.str.217, ptr @.str.75], section ".init.rodata", align 4
@.str.216 = private unnamed_addr constant [15 x i8] c"mout_clk2x_phy\00", align 1
@mout_clk2x_phy_p = internal constant [2 x ptr] [ptr @.str.215, ptr @.str.193], section ".init.rodata", align 4
@.str.217 = private unnamed_addr constant [13 x i8] c"dout_mem_pll\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"dout_clkm_phy\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"dout_clk2x_phy\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"dout_aclk_mif_466\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"dout_aclk_bus_200\00", align 1
@.str.222 = private unnamed_addr constant [18 x i8] c"dout_aclk_bus_100\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"clk_lpddr3phy_wrap0\00", align 1
@.str.224 = private unnamed_addr constant [20 x i8] c"clk_lpddr3phy_wrap1\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"clk_monocnt\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"clk_mif_rtc\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"clk_drex1\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"clk_drex0\00", align 1
@.str.229 = private unnamed_addr constant [11 x i8] c"clk_intmem\00", align 1
@.str.230 = private unnamed_addr constant [23 x i8] c"sclk_lpddr3phy_wrap_u0\00", align 1
@.str.231 = private unnamed_addr constant [23 x i8] c"sclk_lpddr3phy_wrap_u1\00", align 1
@peri_cmu = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @peri_mux_clks, i32 3, ptr @peri_div_clks, i32 2, ptr @peri_gate_clks, i32 61, ptr null, i32 0, ptr null, i32 0, i32 67, ptr null, i32 0, ptr @peri_clk_regs, i32 26, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@peri_mux_clks = internal constant [3 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 3, ptr @.str.232, ptr @mout_sclk_pcm_p, i8 4, i32 128, i32 516, i8 4, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.233, ptr @mout_sclk_i2scod_p, i8 4, i32 128, i32 516, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 1, ptr @.str.234, ptr @mout_sclk_spdif_p, i8 4, i32 128, i32 516, i8 20, i8 2, i8 0 }], section ".init.rodata", align 4
@peri_div_clks = internal constant [2 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 5, ptr @.str.235, ptr @.str.232, i32 0, i32 1536, i8 0, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 4, ptr @.str.236, ptr @.str.233, i32 0, i32 1536, i8 8, i8 6, i8 0, ptr null }], section ".init.rodata", align 4
@peri_gate_clks = internal constant [61 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 66, ptr @.str.237, ptr @.str.235, i32 4, i32 2560, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 65, ptr @.str.238, ptr @.str.236, i32 4, i32 2560, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 64, ptr @.str.239, ptr @.str.240, i32 4, i32 2560, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 63, ptr @.str.241, ptr @.str.240, i32 4, i32 2560, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 62, ptr @.str.242, ptr @.str.243, i32 4, i32 2560, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 61, ptr @.str.244, ptr @.str.245, i32 4, i32 2560, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 60, ptr @.str.246, ptr @.str.247, i32 4, i32 2560, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 59, ptr @.str.248, ptr @.str.249, i32 4, i32 2560, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 58, ptr @.str.250, ptr @.str.251, i32 4, i32 2560, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.252, ptr @.str.253, i32 0, i32 2816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.254, ptr @.str.253, i32 0, i32 2816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.255, ptr @.str.253, i32 0, i32 2816, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.256, ptr @.str.253, i32 0, i32 2816, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.257, ptr @.str.253, i32 0, i32 2816, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.258, ptr @.str.253, i32 0, i32 2816, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.259, ptr @.str.253, i32 0, i32 2816, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.260, ptr @.str.253, i32 0, i32 2816, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.261, ptr @.str.253, i32 0, i32 2816, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.262, ptr @.str.253, i32 0, i32 2816, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.263, ptr @.str.253, i32 0, i32 2816, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.264, ptr @.str.253, i32 0, i32 2816, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.265, ptr @.str.253, i32 0, i32 2816, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.266, ptr @.str.253, i32 0, i32 2816, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.267, ptr @.str.253, i32 0, i32 2816, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.268, ptr @.str.253, i32 0, i32 2816, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 10, ptr @.str.269, ptr @.str.253, i32 0, i32 2816, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 9, ptr @.str.270, ptr @.str.253, i32 0, i32 2816, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 8, ptr @.str.271, ptr @.str.253, i32 0, i32 2816, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.272, ptr @.str.253, i32 0, i32 2816, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 6, ptr @.str.273, ptr @.str.253, i32 0, i32 2816, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 41, ptr @.str.274, ptr @.str.253, i32 0, i32 2824, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 40, ptr @.str.275, ptr @.str.253, i32 0, i32 2824, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 39, ptr @.str.276, ptr @.str.253, i32 0, i32 2824, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 38, ptr @.str.277, ptr @.str.253, i32 0, i32 2824, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 37, ptr @.str.278, ptr @.str.253, i32 0, i32 2824, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 36, ptr @.str.279, ptr @.str.253, i32 0, i32 2824, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 35, ptr @.str.280, ptr @.str.253, i32 0, i32 2824, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 34, ptr @.str.281, ptr @.str.253, i32 0, i32 2824, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.282, ptr @.str.253, i32 0, i32 2824, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 32, ptr @.str.283, ptr @.str.253, i32 0, i32 2824, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 31, ptr @.str.284, ptr @.str.253, i32 0, i32 2824, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 30, ptr @.str.285, ptr @.str.253, i32 0, i32 2824, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 29, ptr @.str.286, ptr @.str.253, i32 0, i32 2824, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 28, ptr @.str.287, ptr @.str.253, i32 0, i32 2824, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.288, ptr @.str.253, i32 0, i32 2824, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 42, ptr @.str.289, ptr @.str.253, i32 0, i32 2828, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 43, ptr @.str.290, ptr @.str.253, i32 0, i32 2832, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 44, ptr @.str.291, ptr @.str.253, i32 0, i32 2836, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 45, ptr @.str.292, ptr @.str.253, i32 0, i32 2840, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 46, ptr @.str.293, ptr @.str.253, i32 0, i32 2848, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 57, ptr @.str.294, ptr @.str.253, i32 0, i32 2852, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 56, ptr @.str.295, ptr @.str.253, i32 0, i32 2852, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 55, ptr @.str.296, ptr @.str.253, i32 0, i32 2852, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 54, ptr @.str.297, ptr @.str.253, i32 0, i32 2852, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 53, ptr @.str.298, ptr @.str.253, i32 0, i32 2852, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 52, ptr @.str.299, ptr @.str.253, i32 0, i32 2852, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 51, ptr @.str.300, ptr @.str.253, i32 0, i32 2852, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 50, ptr @.str.301, ptr @.str.253, i32 0, i32 2852, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 49, ptr @.str.302, ptr @.str.253, i32 0, i32 2852, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 48, ptr @.str.303, ptr @.str.253, i32 0, i32 2852, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 47, ptr @.str.304, ptr @.str.253, i32 0, i32 2852, i8 20, i8 0 }], section ".init.rodata", align 4
@peri_clk_regs = internal constant [26 x i32] [i32 512, i32 516, i32 1536, i32 2048, i32 2052, i32 2056, i32 2060, i32 2064, i32 2068, i32 2072, i32 2076, i32 2080, i32 2084, i32 2088, i32 2560, i32 2564, i32 2816, i32 2820, i32 2824, i32 2828, i32 2832, i32 2836, i32 2840, i32 2844, i32 2848, i32 2852], section ".init.rodata", align 4
@.str.232 = private unnamed_addr constant [14 x i8] c"mout_sclk_pcm\00", align 1
@mout_sclk_pcm_p = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.3, ptr @.str.52, ptr @.str.53], section ".init.rodata", align 4
@.str.233 = private unnamed_addr constant [17 x i8] c"mout_sclk_i2scod\00", align 1
@mout_sclk_i2scod_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.3, ptr @.str.52, ptr @.str.53], section ".init.rodata", align 4
@.str.234 = private unnamed_addr constant [16 x i8] c"mout_sclk_spdif\00", align 1
@mout_sclk_spdif_p = internal constant [4 x ptr] [ptr @.str.51, ptr @.str.3, ptr @.str.52, ptr @.str.53], section ".init.rodata", align 4
@.str.235 = private unnamed_addr constant [9 x i8] c"dout_pcm\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"dout_i2s\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"sclk_pcm1\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"sclk_i2s\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@.str.240 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi0_b\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.str.243 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi1_b\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"sclk_spi2\00", align 1
@.str.245 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi2_b\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@.str.247 = private unnamed_addr constant [21 x i8] c"dout_sclk_peri_uart0\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@.str.249 = private unnamed_addr constant [21 x i8] c"dout_sclk_peri_uart1\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@.str.251 = private unnamed_addr constant [21 x i8] c"dout_sclk_peri_uart2\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"clk_abb\00", align 1
@.str.253 = private unnamed_addr constant [18 x i8] c"dout_aclk_peri_66\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"clk_efuse_writer\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"clk_hdmicec\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"clk_i2c10\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"clk_i2c11\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"clk_i2c8\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"clk_i2c9\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"clk_i2c4\00", align 1
@.str.261 = private unnamed_addr constant [9 x i8] c"clk_i2c5\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"clk_i2c6\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"clk_i2c7\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"clk_i2chdmi\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"clk_peri_i2s\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"clk_mct\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"clk_peri_pcm\00", align 1
@.str.268 = private unnamed_addr constant [10 x i8] c"clk_hsic0\00", align 1
@.str.269 = private unnamed_addr constant [10 x i8] c"clk_hsic1\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"clk_hsic2\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"clk_hsic3\00", align 1
@.str.272 = private unnamed_addr constant [12 x i8] c"clk_wdt_egl\00", align 1
@.str.273 = private unnamed_addr constant [12 x i8] c"clk_wdt_kfc\00", align 1
@.str.274 = private unnamed_addr constant [10 x i8] c"clk_uart4\00", align 1
@.str.275 = private unnamed_addr constant [8 x i8] c"clk_pwm\00", align 1
@.str.276 = private unnamed_addr constant [10 x i8] c"clk_spdif\00", align 1
@.str.277 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.278 = private unnamed_addr constant [9 x i8] c"clk_spi1\00", align 1
@.str.279 = private unnamed_addr constant [9 x i8] c"clk_spi2\00", align 1
@.str.280 = private unnamed_addr constant [9 x i8] c"clk_tmu0\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"clk_tmu1\00", align 1
@.str.282 = private unnamed_addr constant [9 x i8] c"clk_tmu2\00", align 1
@.str.283 = private unnamed_addr constant [9 x i8] c"clk_tmu3\00", align 1
@.str.284 = private unnamed_addr constant [9 x i8] c"clk_tmu4\00", align 1
@.str.285 = private unnamed_addr constant [8 x i8] c"clk_adc\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"clk_uart1\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.289 = private unnamed_addr constant [11 x i8] c"clk_chipid\00", align 1
@.str.290 = private unnamed_addr constant [13 x i8] c"clk_provkey0\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"clk_provkey1\00", align 1
@.str.292 = private unnamed_addr constant [11 x i8] c"clk_seckey\00", align 1
@.str.293 = private unnamed_addr constant [12 x i8] c"clk_top_rtc\00", align 1
@.str.294 = private unnamed_addr constant [10 x i8] c"clk_tzpc0\00", align 1
@.str.295 = private unnamed_addr constant [10 x i8] c"clk_tzpc1\00", align 1
@.str.296 = private unnamed_addr constant [10 x i8] c"clk_tzpc2\00", align 1
@.str.297 = private unnamed_addr constant [10 x i8] c"clk_tzpc3\00", align 1
@.str.298 = private unnamed_addr constant [10 x i8] c"clk_tzpc4\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"clk_tzpc5\00", align 1
@.str.300 = private unnamed_addr constant [10 x i8] c"clk_tzpc6\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c"clk_tzpc7\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"clk_tzpc8\00", align 1
@.str.303 = private unnamed_addr constant [10 x i8] c"clk_tzpc9\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"clk_tzpc10\00", align 1
@top_cmu = internal constant %struct.samsung_cmu_info { ptr @top_pll_clks, i32 2, ptr @top_mux_clks, i32 53, ptr @top_div_clks, i32 49, ptr @top_gate_clks, i32 4, ptr @fixed_rate_clks, i32 16, ptr null, i32 0, i32 125, ptr null, i32 0, ptr @top_clk_regs, i32 37, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@top_pll_clks = internal constant [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str.305, ptr @.str.3, i32 64, i32 256, i32 0, i32 19, ptr @pll2550_24mhz_tbl }, %struct.samsung_pll_clock { i32 2, ptr @.str.4, ptr @.str.3, i32 64, i32 272, i32 4, i32 21, ptr @pll2650_24mhz_tbl }], section ".init.rodata", align 4
@top_mux_clks = internal constant [53 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 8, ptr @.str.306, ptr @mout_mediatop_pll_user_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 7, ptr @.str.307, ptr @mout_memtop_pll_user_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 6, ptr @.str.308, ptr @mout_bustop_pll_user_p, i8 2, i32 128, i32 512, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 5, ptr @.str.309, ptr @mout_disp_pll_p, i8 2, i32 128, i32 512, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.310, ptr @mout_aud_pll_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.311, ptr @mout_audtop_pll_user_p, i8 2, i32 128, i32 512, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.312, ptr @mout_disp_disp_333_p, i8 2, i32 128, i32 540, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 10, ptr @.str.313, ptr @mout_aclk_disp_333_p, i8 2, i32 128, i32 540, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 11, ptr @.str.314, ptr @mout_disp_disp_222_p, i8 2, i32 128, i32 540, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 12, ptr @.str.315, ptr @mout_aclk_disp_222_p, i8 2, i32 128, i32 540, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 14, ptr @.str.316, ptr @mout_sclk_disp_pixel_p, i8 2, i32 128, i32 544, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 13, ptr @.str.317, ptr @mout_disp_media_pixel_p, i8 2, i32 128, i32 544, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 17, ptr @.str.318, ptr @mout_sclk_peri_spi_clk_p, i8 2, i32 128, i32 556, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 16, ptr @.str.319, ptr @mout_sclk_peri_spi_clk_p, i8 2, i32 128, i32 556, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 15, ptr @.str.320, ptr @mout_sclk_peri_spi_clk_p, i8 2, i32 128, i32 556, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 20, ptr @.str.321, ptr @mout_sclk_peri_uart_uclk_p, i8 2, i32 128, i32 556, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 19, ptr @.str.322, ptr @mout_sclk_peri_uart_uclk_p, i8 2, i32 128, i32 556, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 18, ptr @.str.323, ptr @mout_sclk_peri_uart_uclk_p, i8 2, i32 128, i32 556, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 28, ptr @.str.324, ptr @mout_bus_bustop_400_p, i8 2, i32 128, i32 548, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 27, ptr @.str.325, ptr @mout_bus_bustop_100_p, i8 2, i32 128, i32 548, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 26, ptr @.str.326, ptr @mout_bus_bustop_100_p, i8 2, i32 128, i32 548, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 25, ptr @.str.327, ptr @mout_bus_bustop_400_p, i8 2, i32 128, i32 548, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 24, ptr @.str.328, ptr @mout_bus_bustop_400_p, i8 2, i32 128, i32 548, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 23, ptr @.str.329, ptr @mout_bus_bustop_100_p, i8 2, i32 128, i32 548, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 22, ptr @.str.330, ptr @mout_bus_bustop_400_p, i8 2, i32 128, i32 548, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 21, ptr @.str.331, ptr @mout_bus_bustop_100_p, i8 2, i32 128, i32 548, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 29, ptr @.str.332, ptr @mout_sclk_fsys_usb_p, i8 2, i32 128, i32 560, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 32, ptr @.str.333, ptr @mout_sclk_fsys_mmc_sdclkin_a_p, i8 2, i32 128, i32 560, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 35, ptr @.str.334, ptr @mout_sclk_fsys_mmc2_sdclkin_b_p, i8 2, i32 128, i32 560, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 31, ptr @.str.335, ptr @mout_sclk_fsys_mmc_sdclkin_a_p, i8 2, i32 128, i32 560, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 34, ptr @.str.336, ptr @mout_sclk_fsys_mmc1_sdclkin_b_p, i8 2, i32 128, i32 560, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 30, ptr @.str.337, ptr @mout_sclk_fsys_mmc_sdclkin_a_p, i8 2, i32 128, i32 560, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 33, ptr @.str.338, ptr @mout_sclk_fsys_mmc0_sdclkin_b_p, i8 2, i32 128, i32 560, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 39, ptr @.str.339, ptr @mout_isp1_media_400_p, i8 2, i32 128, i32 532, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 38, ptr @.str.340, ptr @mout_aclk_isp1_400_p, i8 2, i32 128, i32 532, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 37, ptr @.str.341, ptr @mout_isp1_media_266_p, i8 2, i32 128, i32 532, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 36, ptr @.str.165, ptr @mout_aclk_isp1_266_p, i8 2, i32 128, i32 532, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 40, ptr @.str.342, ptr @mout_sclk_isp_spi_p, i8 2, i32 128, i32 536, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 41, ptr @.str.343, ptr @mout_sclk_isp_spi_p, i8 2, i32 128, i32 536, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 42, ptr @.str.344, ptr @mout_sclk_isp_uart_p, i8 2, i32 128, i32 536, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 45, ptr @.str.345, ptr @mout_sclk_isp_sensor_p, i8 2, i32 128, i32 536, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 44, ptr @.str.346, ptr @mout_sclk_isp_sensor_p, i8 2, i32 128, i32 536, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 43, ptr @.str.347, ptr @mout_sclk_isp_sensor_p, i8 2, i32 128, i32 536, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 47, ptr @.str.348, ptr @mout_mfc_bustop_333_p, i8 2, i32 128, i32 516, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 46, ptr @.str.349, ptr @mout_aclk_mfc_333_p, i8 2, i32 128, i32 516, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 49, ptr @.str.350, ptr @mout_g2d_bustop_333_p, i8 2, i32 128, i32 520, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 48, ptr @.str.351, ptr @mout_aclk_g2d_333_p, i8 2, i32 128, i32 520, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 55, ptr @.str.352, ptr @mout_m2m_mediatop_400_p, i8 2, i32 128, i32 524, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 54, ptr @.str.353, ptr @mout_aclk_gscl_400_p, i8 2, i32 128, i32 524, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 53, ptr @.str.354, ptr @mout_gscl_bustop_333_p, i8 2, i32 128, i32 524, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 52, ptr @.str.355, ptr @mout_aclk_gscl_333_p, i8 2, i32 128, i32 524, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 51, ptr @.str.356, ptr @mout_gscl_bustop_fimc_p, i8 2, i32 128, i32 524, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 50, ptr @.str.357, ptr @mout_aclk_gscl_fimc_p, i8 2, i32 128, i32 524, i8 20, i8 1, i8 0 }], section ".init.rodata", align 4
@top_div_clks = internal constant [49 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 57, ptr @.str.108, ptr @.str.351, i32 0, i32 1536, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 56, ptr @.str.202, ptr @.str.349, i32 0, i32 1536, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 63, ptr @.str.130, ptr @.str.355, i32 0, i32 1540, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 62, ptr @.str.131, ptr @.str.353, i32 0, i32 1540, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 61, ptr @.str.358, ptr @.str.357, i32 0, i32 1540, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 60, ptr @.str.359, ptr @.str.357, i32 0, i32 1540, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 59, ptr @.str.360, ptr @.str.353, i32 0, i32 1540, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 58, ptr @.str.361, ptr @.str.357, i32 0, i32 1540, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 67, ptr @.str.156, ptr @.str.165, i32 0, i32 1544, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 66, ptr @.str.157, ptr @.str.340, i32 0, i32 1544, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 65, ptr @.str.362, ptr @.str.342, i32 0, i32 1544, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 64, ptr @.str.363, ptr @.str.362, i32 0, i32 1544, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 70, ptr @.str.364, ptr @.str.343, i32 0, i32 1548, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 69, ptr @.str.365, ptr @.str.364, i32 0, i32 1548, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 68, ptr @.str.366, ptr @.str.344, i32 0, i32 1548, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 73, ptr @.str.367, ptr @.str.359, i32 0, i32 1548, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 72, ptr @.str.368, ptr @.str.360, i32 0, i32 1548, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 71, ptr @.str.369, ptr @.str.361, i32 0, i32 1548, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 74, ptr @.str.370, ptr @.str.308, i32 0, i32 1580, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 77, ptr @.str.36, ptr @.str.313, i32 0, i32 1552, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 76, ptr @.str.38, ptr @.str.315, i32 0, i32 1552, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 75, ptr @.str.37, ptr @.str.316, i32 0, i32 1552, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 85, ptr @.str.371, ptr @.str.324, i32 0, i32 1556, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 84, ptr @.str.372, ptr @.str.325, i32 0, i32 1556, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 83, ptr @.str.373, ptr @.str.327, i32 0, i32 1556, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 82, ptr @.str.374, ptr @.str.326, i32 0, i32 1556, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 81, ptr @.str.375, ptr @.str.328, i32 0, i32 1556, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 80, ptr @.str.376, ptr @.str.329, i32 0, i32 1556, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 79, ptr @.str.377, ptr @.str.330, i32 0, i32 1556, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 78, ptr @.str.378, ptr @.str.331, i32 0, i32 1556, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 89, ptr @.str.379, ptr @.str.320, i32 0, i32 1560, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 88, ptr @.str.240, ptr @.str.379, i32 0, i32 1560, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 87, ptr @.str.380, ptr @.str.319, i32 0, i32 1560, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 86, ptr @.str.243, ptr @.str.380, i32 0, i32 1560, i8 20, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 94, ptr @.str.381, ptr @.str.318, i32 0, i32 1564, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 93, ptr @.str.245, ptr @.str.381, i32 0, i32 1564, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 92, ptr @.str.249, ptr @.str.321, i32 0, i32 1564, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 91, ptr @.str.251, ptr @.str.322, i32 0, i32 1564, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 90, ptr @.str.247, ptr @.str.323, i32 0, i32 1564, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 96, ptr @.str.253, ptr @.str.308, i32 0, i32 1568, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 95, ptr @.str.52, ptr @.str.311, i32 0, i32 1568, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 100, ptr @.str.96, ptr @.str.308, i32 0, i32 1572, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 99, ptr @.str.382, ptr @.str.332, i32 0, i32 1572, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 98, ptr @.str.383, ptr @.str.338, i32 0, i32 1572, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 97, ptr @.str.384, ptr @.str.383, i32 0, i32 1572, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 104, ptr @.str.385, ptr @.str.336, i32 0, i32 1576, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 103, ptr @.str.386, ptr @.str.385, i32 0, i32 1576, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 102, ptr @.str.387, ptr @.str.334, i32 0, i32 1576, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 101, ptr @.str.388, ptr @.str.387, i32 0, i32 1576, i8 16, i8 8, i8 0, ptr null }], section ".init.rodata", align 4
@top_gate_clks = internal constant [4 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 108, ptr @.str.389, ptr @.str.384, i32 4, i32 2560, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 107, ptr @.str.390, ptr @.str.386, i32 4, i32 2560, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 106, ptr @.str.391, ptr @.str.388, i32 4, i32 2560, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 105, ptr @.str.392, ptr @.str.37, i32 12, i32 2048, i8 10, i8 0 }], section ".init.rodata", align 4
@fixed_rate_clks = internal constant [16 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 109, ptr @.str.42, ptr null, i32 0, i32 270000000 }, %struct.samsung_fixed_rate_clock { i32 110, ptr @.str.41, ptr null, i32 0, i32 270000000 }, %struct.samsung_fixed_rate_clock { i32 111, ptr @.str.40, ptr null, i32 0, i32 270000000 }, %struct.samsung_fixed_rate_clock { i32 112, ptr @.str.39, ptr null, i32 0, i32 270000000 }, %struct.samsung_fixed_rate_clock { i32 113, ptr @.str.49, ptr null, i32 0, i32 250000000 }, %struct.samsung_fixed_rate_clock { i32 114, ptr @.str.47, ptr null, i32 0, i32 1660000000 }, %struct.samsung_fixed_rate_clock { i32 115, ptr @.str.46, ptr null, i32 0, i32 125000000 }, %struct.samsung_fixed_rate_clock { i32 116, ptr @.str.45, ptr null, i32 0, i32 187500000 }, %struct.samsung_fixed_rate_clock { i32 117, ptr @.str.44, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 118, ptr @.str.43, ptr null, i32 0, i32 135000000 }, %struct.samsung_fixed_rate_clock { i32 119, ptr @.str.50, ptr null, i32 0, i32 20000000 }, %struct.samsung_fixed_rate_clock { i32 120, ptr @.str.92, ptr null, i32 0, i32 60000000 }, %struct.samsung_fixed_rate_clock { i32 121, ptr @.str.91, ptr null, i32 0, i32 60000000 }, %struct.samsung_fixed_rate_clock { i32 122, ptr @.str.90, ptr null, i32 0, i32 48000000 }, %struct.samsung_fixed_rate_clock { i32 123, ptr @.str.89, ptr null, i32 0, i32 125000000 }, %struct.samsung_fixed_rate_clock { i32 124, ptr @.str.88, ptr null, i32 0, i32 60000000 }], section ".init.rodata", align 4
@top_clk_regs = internal constant [37 x i32] [i32 0, i32 4, i32 256, i32 260, i32 264, i32 272, i32 276, i32 280, i32 284, i32 512, i32 516, i32 520, i32 524, i32 532, i32 536, i32 540, i32 544, i32 548, i32 552, i32 556, i32 560, i32 1536, i32 1540, i32 1544, i32 1548, i32 1552, i32 1556, i32 1560, i32 1564, i32 1568, i32 1572, i32 1576, i32 1580, i32 1584, i32 2048, i32 2560, i32 2816], section ".init.rodata", align 4
@.str.305 = private unnamed_addr constant [14 x i8] c"fout_disp_pll\00", align 1
@pll2650_24mhz_tbl = internal constant [18 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1200000000, i32 2, i32 100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 3, i32 250, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 3, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 2, i32 100, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 532000000, i32 3, i32 266, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 480000000, i32 2, i32 160, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 432000000, i32 2, i32 144, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 394073128, i32 7, i32 459, i32 2, i32 49282, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 333000000, i32 2, i32 111, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 2, i32 100, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 166000000, i32 3, i32 166, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 133000000, i32 3, i32 266, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 3, i32 200, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 66000000, i32 2, i32 176, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@.str.306 = private unnamed_addr constant [23 x i8] c"mout_mediatop_pll_user\00", align 1
@mout_mediatop_pll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.193], section ".init.rodata", align 4
@.str.307 = private unnamed_addr constant [21 x i8] c"mout_memtop_pll_user\00", align 1
@mout_memtop_pll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.217], section ".init.rodata", align 4
@.str.308 = private unnamed_addr constant [21 x i8] c"mout_bustop_pll_user\00", align 1
@mout_bustop_pll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.75], section ".init.rodata", align 4
@.str.309 = private unnamed_addr constant [14 x i8] c"mout_disp_pll\00", align 1
@mout_disp_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.305], section ".init.rodata", align 4
@.str.310 = private unnamed_addr constant [13 x i8] c"mout_aud_pll\00", align 1
@mout_aud_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.4], section ".init.rodata", align 4
@.str.311 = private unnamed_addr constant [21 x i8] c"mout_audtop_pll_user\00", align 1
@mout_audtop_pll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.310], section ".init.rodata", align 4
@.str.312 = private unnamed_addr constant [19 x i8] c"mout_disp_disp_333\00", align 1
@mout_disp_disp_333_p = internal constant [2 x ptr] [ptr @.str.309, ptr @.str.308], section ".init.rodata", align 4
@.str.313 = private unnamed_addr constant [19 x i8] c"mout_aclk_disp_333\00", align 1
@mout_aclk_disp_333_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.312], section ".init.rodata", align 4
@.str.314 = private unnamed_addr constant [19 x i8] c"mout_disp_disp_222\00", align 1
@mout_disp_disp_222_p = internal constant [2 x ptr] [ptr @.str.309, ptr @.str.308], section ".init.rodata", align 4
@.str.315 = private unnamed_addr constant [19 x i8] c"mout_aclk_disp_222\00", align 1
@mout_aclk_disp_222_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.314], section ".init.rodata", align 4
@.str.316 = private unnamed_addr constant [21 x i8] c"mout_sclk_disp_pixel\00", align 1
@mout_sclk_disp_pixel_p = internal constant [2 x ptr] [ptr @.str.309, ptr @.str.317], section ".init.rodata", align 4
@.str.317 = private unnamed_addr constant [22 x i8] c"mout_disp_media_pixel\00", align 1
@mout_disp_media_pixel_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.308], section ".init.rodata", align 4
@.str.318 = private unnamed_addr constant [24 x i8] c"mout_sclk_peri_spi2_clk\00", align 1
@mout_sclk_peri_spi_clk_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.319 = private unnamed_addr constant [24 x i8] c"mout_sclk_peri_spi1_clk\00", align 1
@.str.320 = private unnamed_addr constant [24 x i8] c"mout_sclk_peri_spi0_clk\00", align 1
@.str.321 = private unnamed_addr constant [26 x i8] c"mout_sclk_peri_uart1_uclk\00", align 1
@mout_sclk_peri_uart_uclk_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.322 = private unnamed_addr constant [26 x i8] c"mout_sclk_peri_uart2_uclk\00", align 1
@.str.323 = private unnamed_addr constant [26 x i8] c"mout_sclk_peri_uart0_uclk\00", align 1
@.str.324 = private unnamed_addr constant [21 x i8] c"mout_bus1_bustop_400\00", align 1
@mout_bus_bustop_400_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.307], section ".init.rodata", align 4
@.str.325 = private unnamed_addr constant [21 x i8] c"mout_bus1_bustop_100\00", align 1
@mout_bus_bustop_100_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.307], section ".init.rodata", align 4
@.str.326 = private unnamed_addr constant [21 x i8] c"mout_bus2_bustop_100\00", align 1
@.str.327 = private unnamed_addr constant [21 x i8] c"mout_bus2_bustop_400\00", align 1
@.str.328 = private unnamed_addr constant [21 x i8] c"mout_bus3_bustop_400\00", align 1
@.str.329 = private unnamed_addr constant [21 x i8] c"mout_bus3_bustop_100\00", align 1
@.str.330 = private unnamed_addr constant [21 x i8] c"mout_bus4_bustop_400\00", align 1
@.str.331 = private unnamed_addr constant [21 x i8] c"mout_bus4_bustop_100\00", align 1
@.str.332 = private unnamed_addr constant [19 x i8] c"mout_sclk_fsys_usb\00", align 1
@mout_sclk_fsys_usb_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.333 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc2_sdclkin_a\00", align 1
@mout_sclk_fsys_mmc_sdclkin_a_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.334 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc2_sdclkin_b\00", align 1
@mout_sclk_fsys_mmc2_sdclkin_b_p = internal constant [2 x ptr] [ptr @.str.333, ptr @.str.306], section ".init.rodata", align 4
@.str.335 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc1_sdclkin_a\00", align 1
@.str.336 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc1_sdclkin_b\00", align 1
@mout_sclk_fsys_mmc1_sdclkin_b_p = internal constant [2 x ptr] [ptr @.str.335, ptr @.str.306], section ".init.rodata", align 4
@.str.337 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc0_sdclkin_a\00", align 1
@.str.338 = private unnamed_addr constant [30 x i8] c"mout_sclk_fsys_mmc0_sdclkin_b\00", align 1
@mout_sclk_fsys_mmc0_sdclkin_b_p = internal constant [2 x ptr] [ptr @.str.337, ptr @.str.306], section ".init.rodata", align 4
@.str.339 = private unnamed_addr constant [20 x i8] c"mout_isp1_media_400\00", align 1
@mout_isp1_media_400_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.309], section ".init.rodata", align 4
@.str.340 = private unnamed_addr constant [19 x i8] c"mout_aclk_isp1_400\00", align 1
@mout_aclk_isp1_400_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.339], section ".init.rodata", align 4
@.str.341 = private unnamed_addr constant [20 x i8] c"mout_isp1_media_266\00", align 1
@mout_isp1_media_266_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.307], section ".init.rodata", align 4
@mout_aclk_isp1_266_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.341], section ".init.rodata", align 4
@.str.342 = private unnamed_addr constant [20 x i8] c"mout_sclk_isp1_spi0\00", align 1
@mout_sclk_isp_spi_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.343 = private unnamed_addr constant [20 x i8] c"mout_sclk_isp1_spi1\00", align 1
@.str.344 = private unnamed_addr constant [20 x i8] c"mout_sclk_isp1_uart\00", align 1
@mout_sclk_isp_uart_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.345 = private unnamed_addr constant [23 x i8] c"mout_sclk_isp1_sensor0\00", align 1
@mout_sclk_isp_sensor_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.308], section ".init.rodata", align 4
@.str.346 = private unnamed_addr constant [23 x i8] c"mout_sclk_isp1_sensor1\00", align 1
@.str.347 = private unnamed_addr constant [23 x i8] c"mout_sclk_isp1_sensor2\00", align 1
@.str.348 = private unnamed_addr constant [20 x i8] c"mout_mfc_bustop_333\00", align 1
@mout_mfc_bustop_333_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.309], section ".init.rodata", align 4
@.str.349 = private unnamed_addr constant [18 x i8] c"mout_aclk_mfc_333\00", align 1
@mout_aclk_mfc_333_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.348], section ".init.rodata", align 4
@.str.350 = private unnamed_addr constant [20 x i8] c"mout_g2d_bustop_333\00", align 1
@mout_g2d_bustop_333_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.309], section ".init.rodata", align 4
@.str.351 = private unnamed_addr constant [18 x i8] c"mout_aclk_g2d_333\00", align 1
@mout_aclk_g2d_333_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.350], section ".init.rodata", align 4
@.str.352 = private unnamed_addr constant [22 x i8] c"mout_m2m_mediatop_400\00", align 1
@mout_m2m_mediatop_400_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.309], section ".init.rodata", align 4
@.str.353 = private unnamed_addr constant [19 x i8] c"mout_aclk_gscl_400\00", align 1
@mout_aclk_gscl_400_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.352], section ".init.rodata", align 4
@.str.354 = private unnamed_addr constant [21 x i8] c"mout_gscl_bustop_333\00", align 1
@mout_gscl_bustop_333_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.309], section ".init.rodata", align 4
@.str.355 = private unnamed_addr constant [19 x i8] c"mout_aclk_gscl_333\00", align 1
@mout_aclk_gscl_333_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.354], section ".init.rodata", align 4
@.str.356 = private unnamed_addr constant [22 x i8] c"mout_gscl_bustop_fimc\00", align 1
@mout_gscl_bustop_fimc_p = internal constant [2 x ptr] [ptr @.str.308, ptr @.str.309], section ".init.rodata", align 4
@.str.357 = private unnamed_addr constant [20 x i8] c"mout_aclk_gscl_fimc\00", align 1
@mout_aclk_gscl_fimc_p = internal constant [2 x ptr] [ptr @.str.306, ptr @.str.356], section ".init.rodata", align 4
@.str.358 = private unnamed_addr constant [20 x i8] c"dout_aclk_gscl_fimc\00", align 1
@.str.359 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor0_a\00", align 1
@.str.360 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor1_a\00", align 1
@.str.361 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor2_a\00", align 1
@.str.362 = private unnamed_addr constant [22 x i8] c"dout_sclk_isp1_spi0_a\00", align 1
@.str.363 = private unnamed_addr constant [22 x i8] c"dout_sclk_isp1_spi0_b\00", align 1
@.str.364 = private unnamed_addr constant [22 x i8] c"dout_sclk_isp1_spi1_a\00", align 1
@.str.365 = private unnamed_addr constant [22 x i8] c"dout_sclk_isp1_spi1_b\00", align 1
@.str.366 = private unnamed_addr constant [20 x i8] c"dout_sclk_isp1_uart\00", align 1
@.str.367 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor0_b\00", align 1
@.str.368 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor1_b\00", align 1
@.str.369 = private unnamed_addr constant [25 x i8] c"dout_sclk_isp1_sensor2_b\00", align 1
@.str.370 = private unnamed_addr constant [24 x i8] c"dout_sclk_hpm_targetclk\00", align 1
@.str.371 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus1_400\00", align 1
@.str.372 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus1_100\00", align 1
@.str.373 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus2_400\00", align 1
@.str.374 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus2_100\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus3_400\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus3_100\00", align 1
@.str.377 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus4_400\00", align 1
@.str.378 = private unnamed_addr constant [19 x i8] c"dout_aclk_bus4_100\00", align 1
@.str.379 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi0_a\00", align 1
@.str.380 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi1_a\00", align 1
@.str.381 = private unnamed_addr constant [22 x i8] c"dout_sclk_peri_spi2_a\00", align 1
@.str.382 = private unnamed_addr constant [36 x i8] c"dout_sclk_fsys_usbdrd30_suspend_clk\00", align 1
@.str.383 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc0_sdclkin_a\00", align 1
@.str.384 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc0_sdclkin_b\00", align 1
@.str.385 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc1_sdclkin_a\00", align 1
@.str.386 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc1_sdclkin_b\00", align 1
@.str.387 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc2_sdclkin_a\00", align 1
@.str.388 = private unnamed_addr constant [30 x i8] c"dout_sclk_fsys_mmc2_sdclkin_b\00", align 1
@.str.389 = private unnamed_addr constant [23 x i8] c"sclk_fsys_mmc0_sdclkin\00", align 1
@.str.390 = private unnamed_addr constant [23 x i8] c"sclk_fsys_mmc1_sdclkin\00", align 1
@.str.391 = private unnamed_addr constant [23 x i8] c"sclk_fsys_mmc2_sdclkin\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"sclk_disp_pixel\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__of_table_exynos5260_clk_aud, ptr @__of_table_exynos5260_clk_disp, ptr @__of_table_exynos5260_clk_egl, ptr @__of_table_exynos5260_clk_fsys, ptr @__of_table_exynos5260_clk_g2d, ptr @__of_table_exynos5260_clk_g3d, ptr @__of_table_exynos5260_clk_gscl, ptr @__of_table_exynos5260_clk_isp, ptr @__of_table_exynos5260_clk_kfc, ptr @__of_table_exynos5260_clk_mfc, ptr @__of_table_exynos5260_clk_mif, ptr @__of_table_exynos5260_clk_peri, ptr @__of_table_exynos5260_clk_top], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_aud_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @aud_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_disp_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @disp_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_egl_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @egl_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_fsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @fsys_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_g2d_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @g2d_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_g3d_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @g3d_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_gscl_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @gscl_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_isp_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @isp_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_kfc_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @kfc_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_mfc_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @mfc_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_mif_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @mif_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_peri_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @peri_cmu) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5260_clk_top_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @top_cmu) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_cmu_register_one(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
