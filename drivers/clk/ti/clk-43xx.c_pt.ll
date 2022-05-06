; ModuleID = '/llk/IR/drivers/clk/ti/clk-43xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-43xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }

@am4_l3s_tsc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_wkup_aon_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @am4_counter_32k_bit_data, i16 32, ptr @.str.4, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_wkup_clkctrl_regs = internal constant [10 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr @am4_gpio1_bit_data, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_gfx_l3_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l3_clkctrl_regs = internal constant [12 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l3s_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 440, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 456, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 464, ptr null, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 472, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 480, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 496, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 504, ptr @am4_usb_otg_ss0_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 512, ptr @am4_usb_otg_ss1_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_pruss_ocp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_l4ls_clkctrl_regs = internal constant [46 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.25, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.26, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @am4_gpio2_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @am4_gpio3_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @am4_gpio4_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr @am4_gpio5_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr @am4_gpio6_bit_data, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.27, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 168, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 240, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 272, ptr null, i16 32, ptr @.str.30, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.34, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr null, i16 32, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 352, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 360, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 368, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 376, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 384, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 408, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data { i16 416, ptr null, i16 32, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_emif_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.40, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_dss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 36, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_cpsw_125mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am4_clkctrl_data = dso_local local_unnamed_addr constant [14 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155475744, ptr @am4_l3s_tsc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476008, ptr @am4_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476000, ptr @am4_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155498784, ptr @am4_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499040, ptr @am4_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499296, ptr @am4_l4_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500064, ptr @am4_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500136, ptr @am4_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500832, ptr @am4_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501088, ptr @am4_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501856, ptr @am4_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502624, ptr @am4_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502880, ptr @am4_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am438x_clkctrl_data = dso_local local_unnamed_addr constant [13 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155475744, ptr @am4_l3s_tsc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476008, ptr @am4_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155476000, ptr @am4_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155498784, ptr @am4_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155499040, ptr @am4_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500064, ptr @am4_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500136, ptr @am4_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155500832, ptr @am4_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501088, ptr @am4_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155501856, ptr @am4_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502624, ptr @am4_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155502880, ptr @am4_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am43xx_compat_clks = external dso_local global [0 x %struct.ti_dt_clk], align 4
@am43xx_clks = internal global [12 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.43, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.44, ptr null, ptr null }, ptr @.str.3 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.45, ptr null, ptr null }, ptr @.str.46 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.47, ptr null, ptr null }, ptr @.str.48 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.49, ptr null, ptr null }, ptr @.str.50 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.51, ptr null, ptr null }, ptr @.str.52 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.53, ptr null, ptr null }, ptr @.str.54 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.55, ptr null, ptr null }, ptr @.str.56 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.57, ptr null, ptr null }, ptr @.str.4 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.58, ptr null, ptr null }, ptr @.str.59 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.60, ptr null, ptr null }, ptr @.str.61 }, %struct.ti_dt_clk zeroinitializer], align 4
@enable_init_clks = internal global [1 x ptr] [ptr @.str.62], align 4
@.str = private unnamed_addr constant [18 x i8] c"cpsw_cpts_rft_clk\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"dpll_core_m5_ck\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"adc_tsc_fck\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@am4_counter_32k_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_synctimer_32kclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"l4-wkup-aon-clkctrl:0008:8\00", align 1
@am4_synctimer_32kclk_parents = internal constant [2 x ptr] [ptr @.str.5, ptr null], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"mux_synctimer32k_ck\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"timer1_fck\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"wdt1_fck\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"dpll_per_m2_div4_wkupdm_ck\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"smartreflex0_fck\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"smartreflex1_fck\00", align 1
@am4_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio0_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio0_dbclk_parents = internal constant [2 x ptr] [ptr @.str.11, ptr null], section ".init.rodata", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"gpio0_dbclk_mux_ck\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"gfx_fck_div_ck\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"clkdiv32k_ick\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"l3_gclk\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"aes0_fck\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"l4hs_gclk\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"l3s_gclk\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mcasp0_fck\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"mcasp1_fck\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"mmc_clk\00", align 1
@am4_usb_otg_ss0_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_usb_otg_ss0_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_usb_otg_ss1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_usb_otg_ss0_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_usb_otg_ss0_refclk960m_parents = internal constant [2 x ptr] [ptr @.str.22, ptr null], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"dpll_per_clkdcoldo\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"pruss_ocp_gclk\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"l4ls_gclk\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"dcan0_fck\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"dcan1_fck\00", align 1
@am4_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am4_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @am4_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"func_12m_clk\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"dpll_per_m2_div4_ck\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"rng_fck\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"timer2_fck\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"timer3_fck\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"timer4_fck\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"timer5_fck\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"timer6_fck\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"timer7_fck\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"timer8_fck\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"timer9_fck\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"timer10_fck\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"timer11_fck\00", align 1
@am4_gpio1_dbclk_parents = internal constant [2 x ptr] [ptr @.str.14, ptr null], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [15 x i8] c"dpll_ddr_m2_ck\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"disp_clk\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"cpsw_125mhz_gclk\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"gpio0_dbclk\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"l4-wkup-clkctrl:0148:8\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"l4ls-clkctrl:0058:8\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"l4ls-clkctrl:0060:8\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"l4ls-clkctrl:0068:8\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"gpio4_dbclk\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"l4ls-clkctrl:0070:8\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"gpio5_dbclk\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"l4ls-clkctrl:0078:8\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"synctimer_32kclk\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"usb_otg_ss0_refclk960m\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"l3s-clkctrl:01f8:8\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"usb_otg_ss1_refclk960m\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"l3s-clkctrl:0200:8\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"l3-clkctrl:0000:0\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @am43xx_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @ti_clk_get_features() #2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @am43xx_clks, ptr @am43xx_compat_clks
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %5) #2
  %6 = tail call i32 @omap2_clk_disable_autoidle_all() #2
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 1) #2
  tail call void @ti_clk_add_aliases() #2
  %7 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #2
  %8 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #2
  %9 = tail call i32 @clk_set_parent(ptr noundef %7, ptr noundef %8) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

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
