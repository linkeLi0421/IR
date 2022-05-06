; ModuleID = '/llk/IR/drivers/pinctrl/mediatek/pinctrl-mt7629.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-mt7629.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_pin_soc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i8, i8, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_reg_calc = type { ptr, i32 }
%struct.mtk_pin_desc = type { i32, ptr, %struct.mtk_eint_desc, i8, ptr }
%struct.mtk_eint_desc = type { i16, i16 }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.mtk_pin_field_calc = type { i16, i16, i8, i32, i8, i8, i8, i8, i8 }

@__initcall__kmod_pinctrl_mt7629__206_450_mt7629_pinctrl_init3 = internal global ptr @mt7629_pinctrl_init, section ".initcall3.init", align 4
@mt7629_pinctrl_driver = internal global %struct.platform_driver { ptr @mt7629_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7629_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"mt7629-pinctrl\00", align 1
@mt7629_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mt7629_data = internal global %struct.mtk_pin_soc { ptr @mt7629_reg_cals, ptr @mt7629_pins, i32 79, ptr @mt7629_groups, i32 42, ptr @mt7629_functions, i32 10, ptr null, ptr @mt7629_eint_hw, i8 0, i8 1, ptr @mtk_default_register_base_names, i32 1, ptr null, ptr null, i32 0, ptr @mtk_pinconf_bias_disable_set_rev1, ptr @mtk_pinconf_bias_disable_get_rev1, ptr @mtk_pinconf_bias_set_rev1, ptr @mtk_pinconf_bias_get_rev1, ptr null, ptr null, ptr @mtk_pinconf_drive_set_rev1, ptr @mtk_pinconf_drive_get_rev1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mt7629_reg_cals = internal constant [19 x %struct.mtk_pin_reg_calc] [%struct.mtk_pin_reg_calc { ptr @mt7629_pin_mode_range, i32 1 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_dir_range, i32 1 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_di_range, i32 1 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_do_range, i32 1 }, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_smt_range, i32 7 }, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_tdsel_range, i32 7 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_rdsel_range, i32 7 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_drv_range, i32 7 }, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc zeroinitializer, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_ies_range, i32 7 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_pullen_range, i32 7 }, %struct.mtk_pin_reg_calc { ptr @mt7629_pin_pullsel_range, i32 7 }], align 4
@mt7629_pins = internal constant [79 x %struct.mtk_pin_desc] [%struct.mtk_pin_desc { i32 0, ptr @.str.1, %struct.mtk_eint_desc { i16 0, i16 53 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 1, ptr @.str.2, %struct.mtk_eint_desc { i16 0, i16 54 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 2, ptr @.str.3, %struct.mtk_eint_desc { i16 0, i16 55 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 3, ptr @.str.4, %struct.mtk_eint_desc { i16 0, i16 56 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 4, ptr @.str.5, %struct.mtk_eint_desc { i16 0, i16 57 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 5, ptr @.str.6, %struct.mtk_eint_desc { i16 0, i16 58 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 6, ptr @.str.7, %struct.mtk_eint_desc { i16 0, i16 59 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 7, ptr @.str.8, %struct.mtk_eint_desc { i16 0, i16 60 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 8, ptr @.str.9, %struct.mtk_eint_desc { i16 0, i16 61 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 9, ptr @.str.10, %struct.mtk_eint_desc { i16 0, i16 9 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 10, ptr @.str.11, %struct.mtk_eint_desc { i16 0, i16 10 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 11, ptr @.str.12, %struct.mtk_eint_desc { i16 0, i16 11 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 12, ptr @.str.13, %struct.mtk_eint_desc { i16 0, i16 12 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 13, ptr @.str.14, %struct.mtk_eint_desc { i16 0, i16 13 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 14, ptr @.str.15, %struct.mtk_eint_desc { i16 0, i16 14 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 15, ptr @.str.16, %struct.mtk_eint_desc { i16 0, i16 15 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 16, ptr @.str.17, %struct.mtk_eint_desc { i16 0, i16 16 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 17, ptr @.str.18, %struct.mtk_eint_desc { i16 0, i16 17 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 18, ptr @.str.19, %struct.mtk_eint_desc { i16 0, i16 18 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 19, ptr @.str.20, %struct.mtk_eint_desc { i16 0, i16 19 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 20, ptr @.str.21, %struct.mtk_eint_desc { i16 0, i16 20 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 21, ptr @.str.22, %struct.mtk_eint_desc { i16 0, i16 21 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 22, ptr @.str.23, %struct.mtk_eint_desc { i16 0, i16 22 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 23, ptr @.str.24, %struct.mtk_eint_desc { i16 0, i16 23 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 24, ptr @.str.25, %struct.mtk_eint_desc { i16 0, i16 24 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 25, ptr @.str.26, %struct.mtk_eint_desc { i16 0, i16 25 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 26, ptr @.str.27, %struct.mtk_eint_desc { i16 0, i16 26 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 27, ptr @.str.28, %struct.mtk_eint_desc { i16 0, i16 27 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 28, ptr @.str.29, %struct.mtk_eint_desc { i16 0, i16 28 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 29, ptr @.str.30, %struct.mtk_eint_desc { i16 0, i16 29 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 30, ptr @.str.31, %struct.mtk_eint_desc { i16 0, i16 30 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 31, ptr @.str.32, %struct.mtk_eint_desc { i16 0, i16 31 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 32, ptr @.str.33, %struct.mtk_eint_desc { i16 0, i16 32 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 33, ptr @.str.34, %struct.mtk_eint_desc { i16 0, i16 33 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 34, ptr @.str.35, %struct.mtk_eint_desc { i16 0, i16 34 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 35, ptr @.str.36, %struct.mtk_eint_desc { i16 0, i16 35 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 36, ptr @.str.37, %struct.mtk_eint_desc { i16 0, i16 36 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 37, ptr @.str.38, %struct.mtk_eint_desc { i16 0, i16 37 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 38, ptr @.str.39, %struct.mtk_eint_desc { i16 0, i16 38 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 39, ptr @.str.40, %struct.mtk_eint_desc { i16 0, i16 39 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 40, ptr @.str.41, %struct.mtk_eint_desc { i16 0, i16 40 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 41, ptr @.str.42, %struct.mtk_eint_desc { i16 0, i16 41 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 42, ptr @.str.43, %struct.mtk_eint_desc { i16 0, i16 42 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 43, ptr @.str.44, %struct.mtk_eint_desc { i16 0, i16 43 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 44, ptr @.str.45, %struct.mtk_eint_desc { i16 0, i16 44 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 45, ptr @.str.46, %struct.mtk_eint_desc { i16 0, i16 45 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 46, ptr @.str.47, %struct.mtk_eint_desc { i16 0, i16 46 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 47, ptr @.str.48, %struct.mtk_eint_desc { i16 0, i16 47 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 48, ptr @.str.49, %struct.mtk_eint_desc { i16 0, i16 48 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 49, ptr @.str.50, %struct.mtk_eint_desc { i16 0, i16 49 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 50, ptr @.str.51, %struct.mtk_eint_desc { i16 0, i16 50 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 51, ptr @.str.52, %struct.mtk_eint_desc { i16 0, i16 51 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 52, ptr @.str.53, %struct.mtk_eint_desc { i16 0, i16 52 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 53, ptr @.str.54, %struct.mtk_eint_desc zeroinitializer, i8 2, ptr null }, %struct.mtk_pin_desc { i32 54, ptr @.str.55, %struct.mtk_eint_desc { i16 0, i16 1 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 55, ptr @.str.56, %struct.mtk_eint_desc { i16 0, i16 2 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 56, ptr @.str.57, %struct.mtk_eint_desc { i16 0, i16 3 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 57, ptr @.str.58, %struct.mtk_eint_desc { i16 0, i16 4 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 58, ptr @.str.59, %struct.mtk_eint_desc { i16 0, i16 5 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 59, ptr @.str.60, %struct.mtk_eint_desc { i16 0, i16 6 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 60, ptr @.str.61, %struct.mtk_eint_desc { i16 0, i16 7 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 61, ptr @.str.62, %struct.mtk_eint_desc { i16 0, i16 8 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 62, ptr @.str.63, %struct.mtk_eint_desc { i16 0, i16 62 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 63, ptr @.str.64, %struct.mtk_eint_desc { i16 0, i16 63 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 64, ptr @.str.65, %struct.mtk_eint_desc { i16 0, i16 64 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 65, ptr @.str.66, %struct.mtk_eint_desc { i16 0, i16 65 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 66, ptr @.str.67, %struct.mtk_eint_desc { i16 0, i16 66 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 67, ptr @.str.68, %struct.mtk_eint_desc { i16 0, i16 67 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 68, ptr @.str.69, %struct.mtk_eint_desc { i16 0, i16 68 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 69, ptr @.str.70, %struct.mtk_eint_desc { i16 0, i16 69 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 70, ptr @.str.71, %struct.mtk_eint_desc { i16 0, i16 70 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 71, ptr @.str.72, %struct.mtk_eint_desc { i16 0, i16 71 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 72, ptr @.str.73, %struct.mtk_eint_desc { i16 0, i16 72 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 73, ptr @.str.74, %struct.mtk_eint_desc { i16 0, i16 73 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 74, ptr @.str.75, %struct.mtk_eint_desc { i16 0, i16 74 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 75, ptr @.str.76, %struct.mtk_eint_desc { i16 0, i16 75 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 76, ptr @.str.77, %struct.mtk_eint_desc { i16 0, i16 76 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 77, ptr @.str.78, %struct.mtk_eint_desc { i16 0, i16 77 }, i8 2, ptr null }, %struct.mtk_pin_desc { i32 78, ptr @.str.79, %struct.mtk_eint_desc { i16 0, i16 78 }, i8 2, ptr null }], align 4
@mt7629_groups = internal constant [42 x %struct.group_desc] [%struct.group_desc { ptr @.str.80, ptr @mt7629_ephy_leds_pins, i32 7, ptr @mt7629_ephy_leds_funcs }, %struct.group_desc { ptr @.str.81, ptr @mt7629_ephy_led0_pins, i32 1, ptr @mt7629_ephy_led0_funcs }, %struct.group_desc { ptr @.str.82, ptr @mt7629_ephy_led1_pins, i32 1, ptr @mt7629_ephy_led1_funcs }, %struct.group_desc { ptr @.str.83, ptr @mt7629_ephy_led2_pins, i32 1, ptr @mt7629_ephy_led2_funcs }, %struct.group_desc { ptr @.str.84, ptr @mt7629_ephy_led3_pins, i32 1, ptr @mt7629_ephy_led3_funcs }, %struct.group_desc { ptr @.str.85, ptr @mt7629_ephy_led4_pins, i32 1, ptr @mt7629_ephy_led4_funcs }, %struct.group_desc { ptr @.str.86, ptr @mt7629_wf2g_led_pins, i32 1, ptr @mt7629_wf2g_led_funcs }, %struct.group_desc { ptr @.str.87, ptr @mt7629_wf5g_led_pins, i32 1, ptr @mt7629_wf5g_led_funcs }, %struct.group_desc { ptr @.str.88, ptr @mt7629_watchdog_pins, i32 1, ptr @mt7629_watchdog_funcs }, %struct.group_desc { ptr @.str.89, ptr @mt7629_gphy_leds_0_pins, i32 3, ptr @mt7629_gphy_leds_0_funcs }, %struct.group_desc { ptr @.str.90, ptr @mt7629_gphy_led1_0_pins, i32 1, ptr @mt7629_gphy_led1_0_funcs }, %struct.group_desc { ptr @.str.91, ptr @mt7629_gphy_led2_0_pins, i32 1, ptr @mt7629_gphy_led2_0_funcs }, %struct.group_desc { ptr @.str.92, ptr @mt7629_gphy_led3_0_pins, i32 1, ptr @mt7629_gphy_led3_0_funcs }, %struct.group_desc { ptr @.str.93, ptr @mt7629_gphy_leds_1_pins, i32 3, ptr @mt7629_gphy_leds_1_funcs }, %struct.group_desc { ptr @.str.94, ptr @mt7629_gphy_led1_1_pins, i32 1, ptr @mt7629_gphy_led1_1_funcs }, %struct.group_desc { ptr @.str.95, ptr @mt7629_gphy_led2_1_pins, i32 1, ptr @mt7629_gphy_led2_1_funcs }, %struct.group_desc { ptr @.str.96, ptr @mt7629_gphy_led3_1_pins, i32 1, ptr @mt7629_gphy_led3_1_funcs }, %struct.group_desc { ptr @.str.97, ptr @mt7629_i2c_0_pins, i32 2, ptr @mt7629_i2c_0_funcs }, %struct.group_desc { ptr @.str.98, ptr @mt7629_i2c_1_pins, i32 2, ptr @mt7629_i2c_1_funcs }, %struct.group_desc { ptr @.str.99, ptr @mt7629_spi_0_pins, i32 4, ptr @mt7629_spi_0_funcs }, %struct.group_desc { ptr @.str.100, ptr @mt7629_spi_1_pins, i32 4, ptr @mt7629_spi_1_funcs }, %struct.group_desc { ptr @.str.101, ptr @mt7629_spi_wp_pins, i32 1, ptr @mt7629_spi_wp_funcs }, %struct.group_desc { ptr @.str.102, ptr @mt7629_spi_hold_pins, i32 1, ptr @mt7629_spi_hold_funcs }, %struct.group_desc { ptr @.str.103, ptr @mt7629_uart1_0_txd_rxd_pins, i32 2, ptr @mt7629_uart1_0_txd_rxd_funcs }, %struct.group_desc { ptr @.str.104, ptr @mt7629_uart1_1_txd_rxd_pins, i32 2, ptr @mt7629_uart1_1_txd_rxd_funcs }, %struct.group_desc { ptr @.str.105, ptr @mt7629_uart2_0_txd_rxd_pins, i32 2, ptr @mt7629_uart2_0_txd_rxd_funcs }, %struct.group_desc { ptr @.str.106, ptr @mt7629_uart2_1_txd_rxd_pins, i32 2, ptr @mt7629_uart2_1_txd_rxd_funcs }, %struct.group_desc { ptr @.str.107, ptr @mt7629_uart1_0_cts_rts_pins, i32 2, ptr @mt7629_uart1_0_cts_rts_funcs }, %struct.group_desc { ptr @.str.108, ptr @mt7629_uart1_1_cts_rts_pins, i32 2, ptr @mt7629_uart1_1_cts_rts_funcs }, %struct.group_desc { ptr @.str.109, ptr @mt7629_uart2_0_cts_rts_pins, i32 2, ptr @mt7629_uart2_0_cts_rts_funcs }, %struct.group_desc { ptr @.str.110, ptr @mt7629_uart2_1_cts_rts_pins, i32 2, ptr @mt7629_uart2_1_cts_rts_funcs }, %struct.group_desc { ptr @.str.111, ptr @mt7629_uart0_txd_rxd_pins, i32 2, ptr @mt7629_uart0_txd_rxd_funcs }, %struct.group_desc { ptr @.str.112, ptr @mt7629_mdc_mdio_pins, i32 2, ptr @mt7629_mdc_mdio_funcs }, %struct.group_desc { ptr @.str.113, ptr @mt7629_pcie_pereset_pins, i32 1, ptr @mt7629_pcie_pereset_funcs }, %struct.group_desc { ptr @.str.114, ptr @mt7629_pcie_wake_pins, i32 1, ptr @mt7629_pcie_wake_funcs }, %struct.group_desc { ptr @.str.115, ptr @mt7629_pcie_clkreq_pins, i32 1, ptr @mt7629_pcie_clkreq_funcs }, %struct.group_desc { ptr @.str.116, ptr @mt7629_pwm_0_pins, i32 1, ptr @mt7629_pwm_0_funcs }, %struct.group_desc { ptr @.str.117, ptr @mt7629_pwm_1_pins, i32 1, ptr @mt7629_pwm_1_funcs }, %struct.group_desc { ptr @.str.118, ptr @mt7629_wf0_5g_pins, i32 11, ptr @mt7629_wf0_5g_funcs }, %struct.group_desc { ptr @.str.119, ptr @mt7629_wf0_2g_pins, i32 9, ptr @mt7629_wf0_2g_funcs }, %struct.group_desc { ptr @.str.120, ptr @mt7629_snfi_pins, i32 6, ptr @mt7629_snfi_funcs }, %struct.group_desc { ptr @.str.121, ptr @mt7629_snor_pins, i32 6, ptr @mt7629_snor_funcs }], align 4
@mt7629_functions = internal constant [10 x %struct.function_desc] [%struct.function_desc { ptr @.str.122, ptr @mt7629_ethernet_groups, i32 1, ptr null }, %struct.function_desc { ptr @.str.123, ptr @mt7629_i2c_groups, i32 2, ptr null }, %struct.function_desc { ptr @.str.124, ptr @mt7629_led_groups, i32 16, ptr null }, %struct.function_desc { ptr @.str.125, ptr @mt7629_pcie_groups, i32 3, ptr null }, %struct.function_desc { ptr @.str.126, ptr @mt7629_pwm_groups, i32 2, ptr null }, %struct.function_desc { ptr @.str.127, ptr @mt7629_spi_groups, i32 4, ptr null }, %struct.function_desc { ptr @.str.128, ptr @mt7629_uart_groups, i32 9, ptr null }, %struct.function_desc { ptr @.str.88, ptr @mt7629_wdt_groups, i32 1, ptr null }, %struct.function_desc { ptr @.str.129, ptr @mt7629_wifi_groups, i32 2, ptr null }, %struct.function_desc { ptr @.str.130, ptr @mt7629_flash_groups, i32 2, ptr null }], align 4
@mt7629_eint_hw = internal constant %struct.mtk_eint_hw { i8 7, i8 7, i32 79, i32 16 }, align 4
@mtk_default_register_base_names = internal constant [1 x ptr] [ptr @.str.131], align 4
@mt7629_pin_mode_range = internal constant [1 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 78, i8 0, i32 768, i8 16, i8 0, i8 4, i8 32, i8 0 }], align 4
@mt7629_pin_dir_range = internal constant [1 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 78, i8 0, i32 0, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_di_range = internal constant [1 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 78, i8 0, i32 512, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_do_range = internal constant [1 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 78, i8 0, i32 256, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_smt_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 4352, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 8448, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 12544, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 16640, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 20736, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 24832, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 28928, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_tdsel_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 4608, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 8704, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 12800, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 16896, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 20992, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 25088, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 29184, i8 16, i8 0, i8 4, i8 32, i8 0 }], align 4
@mt7629_pin_rdsel_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 4864, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 8960, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 13056, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 17152, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 21248, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 25344, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 29440, i8 16, i8 0, i8 4, i8 32, i8 0 }], align 4
@mt7629_pin_drv_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 5632, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 9728, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 13824, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 17920, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 22016, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 26112, i8 16, i8 0, i8 4, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 30208, i8 16, i8 0, i8 4, i8 32, i8 0 }], align 4
@mt7629_pin_ies_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 4096, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 8192, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 12288, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 16384, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 20480, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 24576, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 28672, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_pullen_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 5120, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 9216, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 13312, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 17408, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 21504, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 25600, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 29696, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@mt7629_pin_pullsel_range = internal constant [7 x %struct.mtk_pin_field_calc] [%struct.mtk_pin_field_calc { i16 0, i16 10, i8 0, i32 5376, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 11, i16 18, i8 0, i32 9472, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 19, i16 32, i8 0, i32 13568, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 33, i16 48, i8 0, i32 17664, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 49, i16 50, i8 0, i32 21760, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 51, i16 69, i8 0, i32 25856, i8 16, i8 0, i8 1, i8 32, i8 0 }, %struct.mtk_pin_field_calc { i16 70, i16 78, i8 0, i32 29952, i8 16, i8 0, i8 1, i8 32, i8 0 }], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"TOP_5G_CLK\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"TOP_5G_DATA\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB2\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB3\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB4\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB5\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"WF0_5G_HB6\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"XO_REQ\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"TOP_RST_N\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"SYS_WATCHDOG\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"EPHY_LED0_N_JTDO\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"EPHY_LED1_N_JTDI\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"EPHY_LED2_N_JTMS\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"EPHY_LED3_N_JTCLK\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"EPHY_LED4_N_JTRST_N\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"WF2G_LED_N\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"WF5G_LED_N\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"I2C_SDA\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"I2C_SCL\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"GPIO_9\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"GPIO_10\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"GPIO_11\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"GPIO_12\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"UART1_TXD\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"UART1_RXD\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"UART1_CTS\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"UART1_RTS\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"UART2_TXD\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"UART2_RXD\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"UART2_CTS\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"UART2_RTS\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"MDI_TP_P1\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"MDI_TN_P1\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"MDI_RP_P1\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"MDI_RN_P1\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"MDI_RP_P2\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"MDI_RN_P2\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"MDI_TP_P2\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"MDI_TN_P2\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"MDI_TP_P3\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"MDI_TN_P3\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"MDI_RP_P3\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"MDI_RN_P3\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"MDI_RP_P4\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"MDI_RN_P4\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"MDI_TP_P4\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"MDI_TN_P4\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"SMI_MDC\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"SMI_MDIO\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"PCIE_PERESET_N\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"PWM_0\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"GPIO_0\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"GPIO_1\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"GPIO_2\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"GPIO_3\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"GPIO_4\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"GPIO_5\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"GPIO_6\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"GPIO_7\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"GPIO_8\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"SPI_CLK\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"SPI_CS\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"SPI_MOSI\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"SPI_MISO\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"SPI_WP\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"SPI_HOLD\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"UART0_TXD\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"UART0_RXD\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"TOP_2G_CLK\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"TOP_2G_DATA\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB0\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB1\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB2\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB3\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB4\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB5\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"WF0_2G_HB6\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"ephy_leds\00", align 1
@mt7629_ephy_leds_pins = internal global [7 x i32] [i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18], align 4
@mt7629_ephy_leds_funcs = internal global [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"ephy_led0\00", align 1
@mt7629_ephy_led0_pins = internal global [1 x i32] [i32 12], align 4
@mt7629_ephy_led0_funcs = internal global [1 x i32] [i32 1], align 4
@.str.82 = private unnamed_addr constant [10 x i8] c"ephy_led1\00", align 1
@mt7629_ephy_led1_pins = internal global [1 x i32] [i32 13], align 4
@mt7629_ephy_led1_funcs = internal global [1 x i32] [i32 1], align 4
@.str.83 = private unnamed_addr constant [10 x i8] c"ephy_led2\00", align 1
@mt7629_ephy_led2_pins = internal global [1 x i32] [i32 14], align 4
@mt7629_ephy_led2_funcs = internal global [1 x i32] [i32 1], align 4
@.str.84 = private unnamed_addr constant [10 x i8] c"ephy_led3\00", align 1
@mt7629_ephy_led3_pins = internal global [1 x i32] [i32 15], align 4
@mt7629_ephy_led3_funcs = internal global [1 x i32] [i32 1], align 4
@.str.85 = private unnamed_addr constant [10 x i8] c"ephy_led4\00", align 1
@mt7629_ephy_led4_pins = internal global [1 x i32] [i32 16], align 4
@mt7629_ephy_led4_funcs = internal global [1 x i32] [i32 1], align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"wf2g_led\00", align 1
@mt7629_wf2g_led_pins = internal global [1 x i32] [i32 17], align 4
@mt7629_wf2g_led_funcs = internal global [1 x i32] [i32 1], align 4
@.str.87 = private unnamed_addr constant [9 x i8] c"wf5g_led\00", align 1
@mt7629_wf5g_led_pins = internal global [1 x i32] [i32 18], align 4
@mt7629_wf5g_led_funcs = internal global [1 x i32] [i32 1], align 4
@.str.88 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@mt7629_watchdog_pins = internal global [1 x i32] [i32 11], align 4
@mt7629_watchdog_funcs = internal global [1 x i32] [i32 1], align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"gphy_leds_0\00", align 1
@mt7629_gphy_leds_0_pins = internal global [3 x i32] [i32 21, i32 22, i32 23], align 4
@mt7629_gphy_leds_0_funcs = internal global [3 x i32] [i32 2, i32 2, i32 2], align 4
@.str.90 = private unnamed_addr constant [12 x i8] c"gphy_led1_0\00", align 1
@mt7629_gphy_led1_0_pins = internal global [1 x i32] [i32 21], align 4
@mt7629_gphy_led1_0_funcs = internal global [1 x i32] [i32 2], align 4
@.str.91 = private unnamed_addr constant [12 x i8] c"gphy_led2_0\00", align 1
@mt7629_gphy_led2_0_pins = internal global [1 x i32] [i32 22], align 4
@mt7629_gphy_led2_0_funcs = internal global [1 x i32] [i32 2], align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"gphy_led3_0\00", align 1
@mt7629_gphy_led3_0_pins = internal global [1 x i32] [i32 23], align 4
@mt7629_gphy_led3_0_funcs = internal global [1 x i32] [i32 2], align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"gphy_leds_1\00", align 1
@mt7629_gphy_leds_1_pins = internal global [3 x i32] [i32 57, i32 58, i32 59], align 4
@mt7629_gphy_leds_1_funcs = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"gphy_led1_1\00", align 1
@mt7629_gphy_led1_1_pins = internal global [1 x i32] [i32 57], align 4
@mt7629_gphy_led1_1_funcs = internal global [1 x i32] [i32 1], align 4
@.str.95 = private unnamed_addr constant [12 x i8] c"gphy_led2_1\00", align 1
@mt7629_gphy_led2_1_pins = internal global [1 x i32] [i32 58], align 4
@mt7629_gphy_led2_1_funcs = internal global [1 x i32] [i32 1], align 4
@.str.96 = private unnamed_addr constant [12 x i8] c"gphy_led3_1\00", align 1
@mt7629_gphy_led3_1_pins = internal global [1 x i32] [i32 59], align 4
@mt7629_gphy_led3_1_funcs = internal global [1 x i32] [i32 1], align 4
@.str.97 = private unnamed_addr constant [6 x i8] c"i2c_0\00", align 1
@mt7629_i2c_0_pins = internal global [2 x i32] [i32 19, i32 20], align 4
@mt7629_i2c_0_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.98 = private unnamed_addr constant [6 x i8] c"i2c_1\00", align 1
@mt7629_i2c_1_pins = internal global [2 x i32] [i32 53, i32 54], align 4
@mt7629_i2c_1_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.99 = private unnamed_addr constant [6 x i8] c"spi_0\00", align 1
@mt7629_spi_0_pins = internal global [4 x i32] [i32 21, i32 22, i32 23, i32 24], align 4
@mt7629_spi_0_funcs = internal global [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 4
@.str.100 = private unnamed_addr constant [6 x i8] c"spi_1\00", align 1
@mt7629_spi_1_pins = internal global [4 x i32] [i32 62, i32 63, i32 64, i32 65], align 4
@mt7629_spi_1_funcs = internal global [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"spi_wp\00", align 1
@mt7629_spi_wp_pins = internal global [1 x i32] [i32 66], align 4
@mt7629_spi_wp_funcs = internal global [1 x i32] [i32 1], align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"spi_hold\00", align 1
@mt7629_spi_hold_pins = internal global [1 x i32] [i32 67], align 4
@mt7629_spi_hold_funcs = internal global [1 x i32] [i32 1], align 4
@.str.103 = private unnamed_addr constant [16 x i8] c"uart1_0_txd_rxd\00", align 1
@mt7629_uart1_0_txd_rxd_pins = internal global [2 x i32] [i32 25, i32 26], align 4
@mt7629_uart1_0_txd_rxd_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.104 = private unnamed_addr constant [16 x i8] c"uart1_1_txd_rxd\00", align 1
@mt7629_uart1_1_txd_rxd_pins = internal global [2 x i32] [i32 53, i32 54], align 4
@mt7629_uart1_1_txd_rxd_funcs = internal global [2 x i32] [i32 2, i32 2], align 4
@.str.105 = private unnamed_addr constant [16 x i8] c"uart2_0_txd_rxd\00", align 1
@mt7629_uart2_0_txd_rxd_pins = internal global [2 x i32] [i32 29, i32 30], align 4
@mt7629_uart2_0_txd_rxd_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.106 = private unnamed_addr constant [16 x i8] c"uart2_1_txd_rxd\00", align 1
@mt7629_uart2_1_txd_rxd_pins = internal global [2 x i32] [i32 57, i32 58], align 4
@mt7629_uart2_1_txd_rxd_funcs = internal global [2 x i32] [i32 2, i32 2], align 4
@.str.107 = private unnamed_addr constant [16 x i8] c"uart1_0_cts_rts\00", align 1
@mt7629_uart1_0_cts_rts_pins = internal global [2 x i32] [i32 27, i32 28], align 4
@mt7629_uart1_0_cts_rts_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.108 = private unnamed_addr constant [16 x i8] c"uart1_1_cts_rts\00", align 1
@mt7629_uart1_1_cts_rts_pins = internal global [2 x i32] [i32 55, i32 56], align 4
@mt7629_uart1_1_cts_rts_funcs = internal global [2 x i32] [i32 2, i32 2], align 4
@.str.109 = private unnamed_addr constant [16 x i8] c"uart2_0_cts_rts\00", align 1
@mt7629_uart2_0_cts_rts_pins = internal global [2 x i32] [i32 31, i32 32], align 4
@mt7629_uart2_0_cts_rts_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.110 = private unnamed_addr constant [16 x i8] c"uart2_1_cts_rts\00", align 1
@mt7629_uart2_1_cts_rts_pins = internal global [2 x i32] [i32 59, i32 60], align 4
@mt7629_uart2_1_cts_rts_funcs = internal global [2 x i32] [i32 2, i32 2], align 4
@.str.111 = private unnamed_addr constant [14 x i8] c"uart0_txd_rxd\00", align 1
@mt7629_uart0_txd_rxd_pins = internal global [2 x i32] [i32 68, i32 69], align 4
@mt7629_uart0_txd_rxd_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.112 = private unnamed_addr constant [9 x i8] c"mdc_mdio\00", align 1
@mt7629_mdc_mdio_pins = internal global [2 x i32] [i32 49, i32 50], align 4
@mt7629_mdc_mdio_funcs = internal global [2 x i32] [i32 1, i32 1], align 4
@.str.113 = private unnamed_addr constant [13 x i8] c"pcie_pereset\00", align 1
@mt7629_pcie_pereset_pins = internal global [1 x i32] [i32 51], align 4
@mt7629_pcie_pereset_funcs = internal global [1 x i32] [i32 1], align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"pcie_wake\00", align 1
@mt7629_pcie_wake_pins = internal global [1 x i32] [i32 55], align 4
@mt7629_pcie_wake_funcs = internal global [1 x i32] [i32 1], align 4
@.str.115 = private unnamed_addr constant [12 x i8] c"pcie_clkreq\00", align 1
@mt7629_pcie_clkreq_pins = internal global [1 x i32] [i32 56], align 4
@mt7629_pcie_clkreq_funcs = internal global [1 x i32] [i32 1], align 4
@.str.116 = private unnamed_addr constant [6 x i8] c"pwm_0\00", align 1
@mt7629_pwm_0_pins = internal global [1 x i32] [i32 52], align 4
@mt7629_pwm_0_funcs = internal global [1 x i32] [i32 1], align 4
@.str.117 = private unnamed_addr constant [6 x i8] c"pwm_1\00", align 1
@mt7629_pwm_1_pins = internal global [1 x i32] [i32 61], align 4
@mt7629_pwm_1_funcs = internal global [1 x i32] [i32 2], align 4
@.str.118 = private unnamed_addr constant [7 x i8] c"wf0_5g\00", align 1
@mt7629_wf0_5g_pins = internal global [11 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@mt7629_wf0_5g_funcs = internal global [11 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.119 = private unnamed_addr constant [7 x i8] c"wf0_2g\00", align 1
@mt7629_wf0_2g_pins = internal global [9 x i32] [i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78], align 4
@mt7629_wf0_2g_funcs = internal global [8 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.120 = private unnamed_addr constant [5 x i8] c"snfi\00", align 1
@mt7629_snfi_pins = internal global [6 x i32] [i32 62, i32 63, i32 64, i32 65, i32 66, i32 67], align 4
@mt7629_snfi_funcs = internal global [6 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@.str.121 = private unnamed_addr constant [8 x i8] c"spi_nor\00", align 1
@mt7629_snor_pins = internal global [6 x i32] [i32 62, i32 63, i32 64, i32 65, i32 66, i32 67], align 4
@mt7629_snor_funcs = internal global [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.122 = private unnamed_addr constant [4 x i8] c"eth\00", align 1
@mt7629_ethernet_groups = internal global [1 x ptr] [ptr @.str.112], align 4
@.str.123 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@mt7629_i2c_groups = internal global [2 x ptr] [ptr @.str.97, ptr @.str.98], align 4
@.str.124 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@mt7629_led_groups = internal global [16 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], align 4
@.str.125 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@mt7629_pcie_groups = internal global [3 x ptr] [ptr @.str.113, ptr @.str.114, ptr @.str.115], align 4
@.str.126 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@mt7629_pwm_groups = internal global [2 x ptr] [ptr @.str.116, ptr @.str.117], align 4
@.str.127 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@mt7629_spi_groups = internal global [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], align 4
@.str.128 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@mt7629_uart_groups = internal global [9 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], align 4
@mt7629_wdt_groups = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.129 = private unnamed_addr constant [5 x i8] c"wifi\00", align 1
@mt7629_wifi_groups = internal global [2 x ptr] [ptr @.str.118, ptr @.str.119], align 4
@.str.130 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@mt7629_flash_groups = internal global [2 x ptr] [ptr @.str.120, ptr @.str.121], align 4
@.str.131 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_mt7629__206_450_mt7629_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mt7629_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7629_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt7629_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @mtk_moore_pinctrl_probe(ptr noundef %0, ptr noundef nonnull @mt7629_data) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_moore_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_bias_disable_set_rev1(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_bias_disable_get_rev1(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_bias_set_rev1(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_bias_get_rev1(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_drive_set_rev1(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pinconf_drive_get_rev1(ptr noundef, ptr noundef, ptr noundef) #1

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
