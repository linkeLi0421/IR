; ModuleID = '/llk/IR/drivers/pinctrl/actions/pinctrl-s500.c_pt.bc'
source_filename = "../drivers/pinctrl/actions/pinctrl-s500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.owl_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.owl_pinmux_func = type { ptr, ptr, i32 }
%struct.owl_pingroup = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.owl_padinfo = type { i32, ptr, ptr }
%struct.owl_gpio_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.owl_pullctl = type { i32, i32, i32 }
%struct.owl_st = type { i32, i32, i32 }

@__initcall__kmod_pinctrl_s500__202_1716_s500_pinctrl_init3 = internal global ptr @s500_pinctrl_init, section ".initcall3.init", align 4
@s500_pinctrl_driver = internal global %struct.platform_driver { ptr @s500_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s500_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_s500_pinctrl_exit = internal global ptr @s500_pinctrl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author203 = internal constant [38 x i8] c"pinctrl_s500.author=Actions Semi Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [70 x i8] c"pinctrl_s500.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description205 = internal constant [62 x i8] c"pinctrl_s500.description=Actions Semi S500 SoC Pinctrl Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [55 x i8] c"pinctrl_s500.file=drivers/pinctrl/actions/pinctrl-s500\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [25 x i8] c"pinctrl_s500.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"pinctrl-s500\00", align 1
@s500_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@s500_pinctrl_data = internal global %struct.owl_pinctrl_soc_data { ptr @s500_pads, i32 135, ptr @s500_functions, i32 44, ptr @s500_groups, i32 93, ptr @s500_padinfo, i32 132, ptr @s500_gpio_ports, i32 5, ptr @s500_pad_pinconf_val2arg, ptr @s500_pad_pinconf_arg2val }, align 4
@s500_pads = internal constant [135 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 12, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.135, ptr null }], align 4
@s500_functions = internal constant [44 x %struct.owl_pinmux_func] [%struct.owl_pinmux_func { ptr @.str.136, ptr @nor_groups, i32 25 }, %struct.owl_pinmux_func { ptr @.str.137, ptr @eth_rmii_groups, i32 8 }, %struct.owl_pinmux_func { ptr @.str.138, ptr @eth_smii_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.139, ptr @spi0_groups, i32 6 }, %struct.owl_pinmux_func { ptr @.str.140, ptr @spi1_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.141, ptr @spi2_groups, i32 5 }, %struct.owl_pinmux_func { ptr @.str.142, ptr @spi3_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.143, ptr @sens0_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.144, ptr @sens1_groups, i32 13 }, %struct.owl_pinmux_func { ptr @.str.145, ptr @uart0_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.146, ptr @uart1_groups, i32 2 }, %struct.owl_pinmux_func { ptr @.str.147, ptr @uart2_groups, i32 16 }, %struct.owl_pinmux_func { ptr @.str.148, ptr @uart3_groups, i32 2 }, %struct.owl_pinmux_func { ptr @.str.149, ptr @uart4_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.150, ptr @uart5_groups, i32 8 }, %struct.owl_pinmux_func { ptr @.str.151, ptr @uart6_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.152, ptr @i2s0_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.153, ptr @i2s1_groups, i32 5 }, %struct.owl_pinmux_func { ptr @.str.154, ptr @pcm1_groups, i32 8 }, %struct.owl_pinmux_func { ptr @.str.155, ptr @pcm0_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.156, ptr @ks_groups, i32 7 }, %struct.owl_pinmux_func { ptr @.str.157, ptr @jtag_groups, i32 9 }, %struct.owl_pinmux_func { ptr @.str.158, ptr @pwm0_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.159, ptr @pwm1_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.160, ptr @pwm2_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.161, ptr @pwm3_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.162, ptr @pwm4_groups, i32 6 }, %struct.owl_pinmux_func { ptr @.str.163, ptr @pwm5_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.164, ptr @p0_groups, i32 2 }, %struct.owl_pinmux_func { ptr @.str.165, ptr @sd0_groups, i32 12 }, %struct.owl_pinmux_func { ptr @.str.166, ptr @sd1_groups, i32 8 }, %struct.owl_pinmux_func { ptr @.str.167, ptr @sd2_groups, i32 1 }, %struct.owl_pinmux_func { ptr @.str.168, ptr @i2c0_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.169, ptr @i2c1_groups, i32 1 }, %struct.owl_pinmux_func { ptr @.str.170, ptr @i2c3_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.171, ptr @dsi_groups, i32 7 }, %struct.owl_pinmux_func { ptr @.str.172, ptr @lvds_groups, i32 3 }, %struct.owl_pinmux_func { ptr @.str.173, ptr @usb30_groups, i32 1 }, %struct.owl_pinmux_func { ptr @.str.130, ptr @clko_25m_groups, i32 1 }, %struct.owl_pinmux_func { ptr @.str.174, ptr @mipi_csi_groups, i32 2 }, %struct.owl_pinmux_func { ptr @.str.175, ptr @nand_groups, i32 4 }, %struct.owl_pinmux_func { ptr @.str.176, ptr @spdif_groups, i32 1 }, %struct.owl_pinmux_func { ptr @.str.177, ptr @ts_groups, i32 2 }, %struct.owl_pinmux_func { ptr @.str.178, ptr @lcd0_groups, i32 8 }], align 4
@s500_groups = internal constant [93 x %struct.owl_pingroup] [%struct.owl_pingroup { ptr @.str.179, ptr @lcd0_d18_mfp_pads, i32 1, ptr @lcd0_d18_mfp_funcs, i32 5, i32 64, i32 23, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.204, ptr @rmii_crs_dv_mfp_pads, i32 1, ptr @rmii_crs_dv_mfp_funcs, i32 5, i32 64, i32 20, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.205, ptr @rmii_txd0_mfp_pads, i32 1, ptr @rmii_txd0_mfp_funcs, i32 5, i32 64, i32 16, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.206, ptr @rmii_txd1_mfp_pads, i32 1, ptr @rmii_txd1_mfp_funcs, i32 5, i32 64, i32 16, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.207, ptr @rmii_txen_mfp_pads, i32 1, ptr @rmii_txen_mfp_funcs, i32 4, i32 64, i32 13, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.208, ptr @rmii_rxen_mfp_pads, i32 1, ptr @rmii_rxen_mfp_funcs, i32 4, i32 64, i32 13, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.209, ptr @rmii_rxd1_mfp_pads, i32 1, ptr @rmii_rxd1_mfp_funcs, i32 5, i32 64, i32 8, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.210, ptr @rmii_rxd0_mfp_pads, i32 1, ptr @rmii_rxd0_mfp_funcs, i32 5, i32 64, i32 8, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.211, ptr @rmii_ref_clk_mfp_pads, i32 1, ptr @rmii_ref_clk_mfp_funcs, i32 5, i32 64, i32 6, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.180, ptr @i2s_d0_mfp_pads, i32 1, ptr @i2s_d0_mfp_funcs, i32 2, i32 64, i32 5, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.230, ptr @i2s_pcm1_mfp_pads, i32 2, ptr @i2s_pcm1_mfp_funcs, i32 3, i32 64, i32 3, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.181, ptr @i2s0_pcm0_mfp_pads, i32 1, ptr @i2s0_pcm0_mfp_funcs, i32 3, i32 64, i32 1, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.182, ptr @i2s1_pcm0_mfp_pads, i32 3, ptr @i2s1_pcm0_mfp_funcs, i32 3, i32 64, i32 1, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.183, ptr @i2s_d1_mfp_pads, i32 1, ptr @i2s_d1_mfp_funcs, i32 2, i32 64, i32 0, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.184, ptr @ks_in2_mfp_pads, i32 1, ptr @ks_in2_mfp_funcs, i32 8, i32 68, i32 29, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.185, ptr @ks_in1_mfp_pads, i32 1, ptr @ks_in1_mfp_funcs, i32 8, i32 68, i32 29, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.186, ptr @ks_in0_mfp_pads, i32 1, ptr @ks_in0_mfp_funcs, i32 8, i32 68, i32 29, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.187, ptr @ks_in3_mfp_pads, i32 1, ptr @ks_in3_mfp_funcs, i32 6, i32 68, i32 26, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.188, ptr @ks_out0_mfp_pads, i32 1, ptr @ks_out0_mfp_funcs, i32 7, i32 68, i32 26, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.189, ptr @ks_out1_mfp_pads, i32 1, ptr @ks_out1_mfp_funcs, i32 7, i32 68, i32 26, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.190, ptr @ks_out2_mfp_pads, i32 1, ptr @ks_out2_mfp_funcs, i32 6, i32 68, i32 23, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.238, ptr @lvds_o_pn_mfp_pads, i32 10, ptr @lvds_o_pn_mfp_funcs, i32 3, i32 68, i32 21, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.212, ptr @dsi_dn0_mfp_pads, i32 1, ptr @dsi_dn0_mfp_funcs, i32 3, i32 68, i32 19, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.213, ptr @dsi_dp2_mfp_pads, i32 1, ptr @dsi_dp2_mfp_funcs, i32 4, i32 68, i32 17, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.191, ptr @lcd0_d17_mfp_pads, i32 1, ptr @lcd0_d17_mfp_funcs, i32 5, i32 68, i32 14, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.234, ptr @dsi_dp3_mfp_pads, i32 1, ptr @dsi_dp3_mfp_funcs, i32 4, i32 68, i32 12, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.235, ptr @dsi_dn3_mfp_pads, i32 1, ptr @dsi_dn3_mfp_funcs, i32 4, i32 68, i32 10, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.214, ptr @dsi_dp0_mfp_pads, i32 1, ptr @dsi_dp0_mfp_funcs, i32 5, i32 68, i32 7, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.192, ptr @lvds_ee_pn_mfp_pads, i32 2, ptr @lvds_ee_pn_mfp_funcs, i32 4, i32 68, i32 5, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.193, ptr @spi0_i2c_pcm_mfp_pads, i32 2, ptr @spi0_i2c_pcm_mfp_funcs, i32 4, i32 68, i32 3, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.194, ptr @spi0_i2s_pcm_mfp_pads, i32 2, ptr @spi0_i2s_pcm_mfp_funcs, i32 5, i32 68, i32 0, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.236, ptr @dsi_dnp1_cp_mfp_pads, i32 3, ptr @dsi_dnp1_cp_mfp_funcs, i32 3, i32 72, i32 29, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.195, ptr @lvds_e_pn_mfp_pads, i32 8, ptr @lvds_e_pn_mfp_funcs, i32 3, i32 72, i32 27, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.215, ptr @dsi_dn2_mfp_pads, i32 1, ptr @dsi_dn2_mfp_funcs, i32 5, i32 72, i32 24, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.226, ptr @uart2_rtsb_mfp_pads, i32 1, ptr @uart2_rtsb_mfp_funcs, i32 2, i32 72, i32 23, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.227, ptr @uart2_ctsb_mfp_pads, i32 1, ptr @uart2_ctsb_mfp_funcs, i32 2, i32 72, i32 22, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.228, ptr @uart3_rtsb_mfp_pads, i32 1, ptr @uart3_rtsb_mfp_funcs, i32 2, i32 72, i32 21, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.229, ptr @uart3_ctsb_mfp_pads, i32 1, ptr @uart3_ctsb_mfp_funcs, i32 2, i32 72, i32 20, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.196, ptr @sd0_d0_mfp_pads, i32 1, ptr @sd0_d0_mfp_funcs, i32 6, i32 72, i32 17, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.197, ptr @sd0_d1_mfp_pads, i32 1, ptr @sd0_d1_mfp_funcs, i32 6, i32 72, i32 14, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.198, ptr @sd0_d2_d3_mfp_pads, i32 2, ptr @sd0_d2_d3_mfp_funcs, i32 6, i32 72, i32 11, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.199, ptr @sd1_d0_d3_mfp_pads, i32 4, ptr @sd1_d0_d3_mfp_funcs, i32 4, i32 72, i32 9, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.200, ptr @sd0_cmd_mfp_pads, i32 1, ptr @sd0_cmd_mfp_funcs, i32 4, i32 72, i32 7, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.231, ptr @sd0_clk_mfp_pads, i32 1, ptr @sd0_clk_mfp_funcs, i32 3, i32 72, i32 5, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.201, ptr @sd1_cmd_mfp_pads, i32 1, ptr @sd1_cmd_mfp_funcs, i32 2, i32 72, i32 3, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.216, ptr @uart0_rx_mfp_pads, i32 1, ptr @uart0_rx_mfp_funcs, i32 6, i32 72, i32 0, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.239, ptr @clko_25m_mfp_pads, i32 1, ptr @clko_25m_mfp_funcs, i32 2, i32 76, i32 30, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.220, ptr @csi_cn_cp_mfp_pads, i32 2, ptr @csi_cn_cp_mfp_funcs, i32 2, i32 76, i32 28, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.202, ptr @sens0_ckout_mfp_pads, i32 1, ptr @sens0_ckout_mfp_funcs, i32 4, i32 76, i32 22, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.217, ptr @uart0_tx_mfp_pads, i32 1, ptr @uart0_tx_mfp_funcs, i32 7, i32 76, i32 19, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.218, ptr @i2c0_mfp_pads, i32 2, ptr @i2c0_mfp_funcs, i32 5, i32 76, i32 16, i32 3, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.221, ptr @csi_dn_dp_mfp_pads, i32 8, ptr @csi_dn_dp_mfp_funcs, i32 2, i32 76, i32 14, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.203, ptr @sen0_pclk_mfp_pads, i32 1, ptr @sen0_pclk_mfp_funcs, i32 3, i32 76, i32 12, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.222, ptr @pcm1_in_mfp_pads, i32 1, ptr @pcm1_in_mfp_funcs, i32 4, i32 76, i32 10, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.223, ptr @pcm1_clk_mfp_pads, i32 1, ptr @pcm1_clk_mfp_funcs, i32 4, i32 76, i32 8, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.224, ptr @pcm1_sync_mfp_pads, i32 1, ptr @pcm1_sync_mfp_funcs, i32 4, i32 76, i32 6, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.225, ptr @pcm1_out_mfp_pads, i32 1, ptr @pcm1_out_mfp_funcs, i32 4, i32 76, i32 4, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.237, ptr @dnand_data_wr_mfp_pads, i32 10, ptr @dnand_data_wr_mfp_funcs, i32 2, i32 76, i32 3, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.219, ptr @dnand_acle_ce0_mfp_pads, i32 4, ptr @dnand_acle_ce0_mfp_funcs, i32 2, i32 76, i32 2, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.233, ptr @nand_ceb2_mfp_pads, i32 1, ptr @nand_ceb2_mfp_funcs, i32 2, i32 76, i32 0, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.232, ptr @nand_ceb3_mfp_pads, i32 1, ptr @nand_ceb3_mfp_funcs, i32 2, i32 76, i32 0, i32 2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.240, ptr @sirq_drv_pads, i32 3, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 28, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.241, ptr @rmii_txd01_txen_drv_pads, i32 3, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 22, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.242, ptr @rmii_rxer_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 20, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.243, ptr @rmii_crs_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 18, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.244, ptr @rmii_rxd10_drv_pads, i32 2, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 16, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.245, ptr @rmii_ref_clk_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 14, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.246, ptr @smi_mdc_mdio_drv_pads, i32 2, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 12, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.247, ptr @i2s_d0_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 10, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.248, ptr @i2s_bclk0_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 8, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.249, ptr @i2s3_drv_pads, i32 3, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 6, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.250, ptr @i2s13_drv_pads, i32 3, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 4, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.251, ptr @pcm1_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 2, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.252, ptr @ks_in_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 128, i32 0, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.253, ptr @ks_out_drv_pads, i32 3, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 30, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.254, ptr @lvds_all_drv_pads, i32 20, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 28, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.255, ptr @lcd_dsi_drv_pads, i32 6, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 26, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.256, ptr @dsi_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 24, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.257, ptr @sd0_d0_d3_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 22, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.258, ptr @sd1_d0_d3_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 20, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.259, ptr @sd0_cmd_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 18, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.260, ptr @sd0_clk_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 16, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.261, ptr @sd1_cmd_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 14, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.262, ptr @sd1_clk_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 12, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.263, ptr @spi0_all_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 132, i32 10, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.264, ptr @uart0_rx_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 30, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.265, ptr @uart0_tx_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 28, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.266, ptr @uart2_all_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 26, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.267, ptr @i2c0_all_drv_pads, i32 2, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 23, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.268, ptr @i2c12_all_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 21, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.269, ptr @sens0_pclk_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 18, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.270, ptr @sens0_ckout_drv_pads, i32 1, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 12, i32 2, i32 -1, i32 -1, i32 -1 }, %struct.owl_pingroup { ptr @.str.271, ptr @uart3_all_drv_pads, i32 4, ptr null, i32 0, i32 -1, i32 -1, i32 -1, i32 136, i32 2, i32 2, i32 -1, i32 -1, i32 -1 }], align 4
@s500_padinfo = internal constant [161 x %struct.owl_padinfo] [%struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo { i32 12, ptr @DNAND_DQS_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 13, ptr @DNAND_DQSN_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 14, ptr null, ptr @ETH_TXD0_st_conf }, %struct.owl_padinfo { i32 15, ptr null, ptr @ETH_TXD1_st_conf }, %struct.owl_padinfo { i32 16, ptr null, ptr @ETH_TXEN_st_conf }, %struct.owl_padinfo { i32 17, ptr @ETH_RXER_pullctl_conf, ptr @ETH_RXER_st_conf }, %struct.owl_padinfo { i32 18, ptr null, ptr @ETH_CRS_DV_st_conf }, %struct.owl_padinfo { i32 19, ptr null, ptr @ETH_RXD1_st_conf }, %struct.owl_padinfo { i32 20, ptr null, ptr @ETH_RXD0_st_conf }, %struct.owl_padinfo { i32 21, ptr null, ptr @ETH_REF_CLK_st_conf }, %struct.owl_padinfo { i32 22, ptr null, ptr null }, %struct.owl_padinfo { i32 23, ptr null, ptr null }, %struct.owl_padinfo { i32 24, ptr @SIRQ0_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 25, ptr @SIRQ1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 26, ptr @SIRQ2_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 27, ptr null, ptr null }, %struct.owl_padinfo { i32 28, ptr null, ptr @I2S_BCLK0_st_conf }, %struct.owl_padinfo { i32 29, ptr null, ptr @I2S_LRCLK0_st_conf }, %struct.owl_padinfo { i32 30, ptr null, ptr @I2S_MCLK0_st_conf }, %struct.owl_padinfo { i32 31, ptr null, ptr null }, %struct.owl_padinfo { i32 32, ptr null, ptr null }, %struct.owl_padinfo { i32 33, ptr null, ptr @I2S_LRCLK1_st_conf }, %struct.owl_padinfo { i32 34, ptr null, ptr @I2S_MCLK1_st_conf }, %struct.owl_padinfo { i32 35, ptr @KS_IN0_pullctl_conf, ptr @KS_IN0_st_conf }, %struct.owl_padinfo { i32 36, ptr @KS_IN1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 37, ptr @KS_IN2_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 38, ptr @KS_IN3_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 39, ptr @KS_OUT0_pullctl_conf, ptr @KS_OUT0_st_conf }, %struct.owl_padinfo { i32 40, ptr @KS_OUT1_pullctl_conf, ptr @KS_OUT1_st_conf }, %struct.owl_padinfo { i32 41, ptr @KS_OUT2_pullctl_conf, ptr @KS_OUT2_st_conf }, %struct.owl_padinfo { i32 42, ptr null, ptr null }, %struct.owl_padinfo { i32 43, ptr null, ptr null }, %struct.owl_padinfo { i32 44, ptr null, ptr null }, %struct.owl_padinfo { i32 45, ptr null, ptr null }, %struct.owl_padinfo { i32 46, ptr null, ptr null }, %struct.owl_padinfo { i32 47, ptr null, ptr null }, %struct.owl_padinfo { i32 48, ptr null, ptr null }, %struct.owl_padinfo { i32 49, ptr null, ptr null }, %struct.owl_padinfo { i32 50, ptr null, ptr @LVDS_OAP_st_conf }, %struct.owl_padinfo { i32 51, ptr null, ptr null }, %struct.owl_padinfo { i32 52, ptr null, ptr null }, %struct.owl_padinfo { i32 53, ptr null, ptr null }, %struct.owl_padinfo { i32 54, ptr null, ptr null }, %struct.owl_padinfo { i32 55, ptr null, ptr null }, %struct.owl_padinfo { i32 56, ptr null, ptr null }, %struct.owl_padinfo { i32 57, ptr null, ptr null }, %struct.owl_padinfo { i32 58, ptr null, ptr null }, %struct.owl_padinfo { i32 59, ptr null, ptr null }, %struct.owl_padinfo { i32 60, ptr null, ptr null }, %struct.owl_padinfo { i32 61, ptr null, ptr null }, %struct.owl_padinfo { i32 62, ptr null, ptr null }, %struct.owl_padinfo { i32 63, ptr @LCD0_D17_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 64, ptr null, ptr null }, %struct.owl_padinfo { i32 65, ptr @DSI_DN3_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 66, ptr @DSI_DP1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 67, ptr null, ptr null }, %struct.owl_padinfo { i32 68, ptr @DSI_CP_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 69, ptr @DSI_CN_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 70, ptr null, ptr @DSI_DP0_st_conf }, %struct.owl_padinfo { i32 71, ptr null, ptr @DSI_DN0_st_conf }, %struct.owl_padinfo { i32 72, ptr null, ptr @DSI_DP2_st_conf }, %struct.owl_padinfo { i32 73, ptr @DSI_DN2_pullctl_conf, ptr @DSI_DN2_st_conf }, %struct.owl_padinfo { i32 74, ptr @SD0_D0_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 75, ptr @SD0_D1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 76, ptr @SD0_D2_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 77, ptr @SD0_D3_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 78, ptr @SD1_D0_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 79, ptr @SD1_D1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 80, ptr @SD1_D2_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 81, ptr @SD1_D3_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 82, ptr @SD0_CMD_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 83, ptr @SD0_CLK_pullctl_conf, ptr @SD0_CLK_st_conf }, %struct.owl_padinfo { i32 84, ptr @SD1_CMD_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 85, ptr null, ptr null }, %struct.owl_padinfo { i32 86, ptr @SPI0_SCLK_pullctl_conf, ptr @SPI0_SCLK_st_conf }, %struct.owl_padinfo { i32 87, ptr null, ptr @SPI0_SS_st_conf }, %struct.owl_padinfo { i32 88, ptr null, ptr @SPI0_MISO_st_conf }, %struct.owl_padinfo { i32 89, ptr @SPI0_MOSI_pullctl_conf, ptr @SPI0_MOSI_st_conf }, %struct.owl_padinfo { i32 90, ptr @UART0_RX_pullctl_conf, ptr @UART0_RX_st_conf }, %struct.owl_padinfo { i32 91, ptr @UART0_TX_pullctl_conf, ptr @UART0_TX_st_conf }, %struct.owl_padinfo { i32 92, ptr @I2C0_SCLK_pullctl_conf, ptr @I2C0_SCLK_st_conf }, %struct.owl_padinfo { i32 93, ptr @I2C0_SDATA_pullctl_conf, ptr @I2C0_SDATA_st_conf }, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo { i32 95, ptr null, ptr @SENSOR0_PCLK_st_conf }, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo { i32 106, ptr null, ptr null }, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo { i32 108, ptr null, ptr null }, %struct.owl_padinfo { i32 109, ptr null, ptr null }, %struct.owl_padinfo { i32 110, ptr null, ptr null }, %struct.owl_padinfo { i32 111, ptr null, ptr null }, %struct.owl_padinfo { i32 112, ptr null, ptr null }, %struct.owl_padinfo { i32 113, ptr null, ptr null }, %struct.owl_padinfo { i32 114, ptr null, ptr @UART2_RX_st_conf }, %struct.owl_padinfo { i32 115, ptr null, ptr null }, %struct.owl_padinfo { i32 116, ptr null, ptr @UART2_RTSB_st_conf }, %struct.owl_padinfo { i32 117, ptr null, ptr @UART2_CTSB_st_conf }, %struct.owl_padinfo { i32 118, ptr null, ptr @UART3_RX_st_conf }, %struct.owl_padinfo { i32 119, ptr null, ptr null }, %struct.owl_padinfo { i32 120, ptr null, ptr @UART3_RTSB_st_conf }, %struct.owl_padinfo { i32 121, ptr null, ptr @UART3_CTSB_st_conf }, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo zeroinitializer, %struct.owl_padinfo { i32 124, ptr null, ptr @PCM1_IN_st_conf }, %struct.owl_padinfo { i32 125, ptr null, ptr @PCM1_CLK_st_conf }, %struct.owl_padinfo { i32 126, ptr @PCM1_SYNC_pullctl_conf, ptr @PCM1_SYNC_st_conf }, %struct.owl_padinfo { i32 127, ptr @PCM1_OUT_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 128, ptr @I2C1_SCLK_pullctl_conf, ptr @I2C1_SCLK_st_conf }, %struct.owl_padinfo { i32 129, ptr @I2C1_SDATA_pullctl_conf, ptr @I2C1_SDATA_st_conf }, %struct.owl_padinfo { i32 130, ptr @I2C2_SCLK_pullctl_conf, ptr @I2C2_SCLK_st_conf }, %struct.owl_padinfo { i32 131, ptr @I2C2_SDATA_pullctl_conf, ptr @I2C2_SDATA_st_conf }, %struct.owl_padinfo { i32 132, ptr null, ptr null }, %struct.owl_padinfo { i32 133, ptr null, ptr null }, %struct.owl_padinfo { i32 134, ptr null, ptr null }, %struct.owl_padinfo { i32 135, ptr null, ptr null }, %struct.owl_padinfo { i32 136, ptr null, ptr null }, %struct.owl_padinfo { i32 137, ptr null, ptr null }, %struct.owl_padinfo { i32 138, ptr null, ptr null }, %struct.owl_padinfo { i32 139, ptr null, ptr null }, %struct.owl_padinfo { i32 140, ptr null, ptr null }, %struct.owl_padinfo { i32 141, ptr null, ptr null }, %struct.owl_padinfo { i32 142, ptr @DNAND_D0_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 143, ptr @DNAND_D1_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 144, ptr @DNAND_D2_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 145, ptr @DNAND_D3_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 146, ptr @DNAND_D4_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 147, ptr @DNAND_D5_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 148, ptr @DNAND_D6_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 149, ptr @DNAND_D7_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 150, ptr null, ptr null }, %struct.owl_padinfo { i32 151, ptr null, ptr null }, %struct.owl_padinfo { i32 152, ptr @DNAND_RDBN_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 153, ptr null, ptr null }, %struct.owl_padinfo { i32 154, ptr null, ptr null }, %struct.owl_padinfo { i32 155, ptr @CLKO_25M_pullctl_conf, ptr null }, %struct.owl_padinfo { i32 156, ptr null, ptr null }, %struct.owl_padinfo { i32 157, ptr null, ptr null }, %struct.owl_padinfo { i32 158, ptr null, ptr null }, %struct.owl_padinfo { i32 159, ptr null, ptr null }, %struct.owl_padinfo { i32 160, ptr null, ptr null }], align 4
@s500_gpio_ports = internal constant [5 x %struct.owl_gpio_port] [%struct.owl_gpio_port { i32 0, i32 32, i32 0, i32 4, i32 8, i32 516, i32 520, i32 524, i32 560, i8 0 }, %struct.owl_gpio_port { i32 12, i32 32, i32 0, i32 4, i32 8, i32 504, i32 516, i32 520, i32 556, i8 1 }, %struct.owl_gpio_port { i32 24, i32 32, i32 0, i32 4, i32 8, i32 492, i32 512, i32 516, i32 552, i8 2 }, %struct.owl_gpio_port { i32 36, i32 32, i32 0, i32 4, i32 8, i32 480, i32 508, i32 512, i32 548, i8 3 }, %struct.owl_gpio_port { i32 48, i32 4, i32 0, i32 4, i32 8, i32 468, i32 504, i32 508, i32 544, i8 4 }], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dnand_dqs\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dnand_dqsn\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"eth_txd0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"eth_txd1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"eth_txen\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"eth_rxer\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"eth_crs_dv\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"eth_rxd1\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"eth_rxd0\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"eth_ref_clk\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"eth_mdc\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"eth_mdio\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"sirq0\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"sirq1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"sirq2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"i2s_d0\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"i2s_bclk0\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"i2s_lrclk0\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"i2s_mclk0\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"i2s_d1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"i2s_bclk1\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"i2s_lrclk1\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"i2s_mclk1\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ks_in0\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"ks_in1\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ks_in2\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ks_in3\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"ks_out0\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ks_out1\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ks_out2\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"lvds_oep\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"lvds_oen\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"lvds_odp\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"lvds_odn\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"lvds_ocp\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"lvds_ocn\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"lvds_obp\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"lvds_obn\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"lvds_oap\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"lvds_oan\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"lvds_eep\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"lvds_een\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"lvds_edp\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"lvds_edn\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"lvds_ecp\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"lvds_ecn\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"lvds_ebp\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"lvds_ebn\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"lvds_eap\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"lvds_ean\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"lcd0_d18\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"lcd0_d17\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"dsi_dp3\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"dsi_dn3\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"dsi_dp1\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"dsi_dn1\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"dsi_cp\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"dsi_cn\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"dsi_dp0\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"dsi_dn0\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"dsi_dp2\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"dsi_dn2\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"sd0_d0\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"sd0_d1\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"sd0_d2\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"sd0_d3\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"sd1_d0\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"sd1_d1\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"sd1_d2\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"sd1_d3\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"sd0_cmd\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"sd0_clk\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"sd1_cmd\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"sd1_clk\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"spi0_sclk\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"spi0_ss\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"spi0_miso\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"spi0_mosi\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"uart0_rx\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"uart0_tx\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"i2c0_sclk\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"i2c0_sdata\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"sensor0_pclk\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"sensor0_ckout\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"dnand_ale\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"dnand_cle\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"dnand_ceb0\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"dnand_ceb1\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"dnand_ceb2\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"dnand_ceb3\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"uart2_rx\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"uart2_tx\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"uart2_rtsb\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"uart2_ctsb\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"uart3_rx\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"uart3_tx\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"uart3_rtsb\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"uart3_ctsb\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"pcm1_in\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"pcm1_clk\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"pcm1_sync\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"pcm1_out\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"i2c1_sclk\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"i2c1_sdata\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"i2c2_sclk\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"i2c2_sdata\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"csi_dn0\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"csi_dp0\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"csi_dn1\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"csi_dp1\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"csi_dn2\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"csi_dp2\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"csi_dn3\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"csi_dp3\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"csi_cn\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"csi_cp\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"dnand_d0\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"dnand_d1\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"dnand_d2\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"dnand_d3\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"dnand_d4\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"dnand_d5\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"dnand_d6\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"dnand_d7\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"dnand_rb\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"dnand_rdb\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"dnand_rdbn\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"dnand_wrb\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"porb\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"clko_25m\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"bsel\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"pkg0\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"pkg1\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"pkg2\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"pkg3\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"nor\00", align 1
@nor_groups = internal constant [25 x ptr] [ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203], align 4
@.str.137 = private unnamed_addr constant [9 x i8] c"eth_rmii\00", align 1
@eth_rmii_groups = internal constant [8 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], align 4
@.str.138 = private unnamed_addr constant [9 x i8] c"eth_smii\00", align 1
@eth_smii_groups = internal constant [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.211], align 4
@.str.139 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@spi0_groups = internal constant [6 x ptr] [ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.193, ptr @.str.194, ptr @.str.215], align 4
@.str.140 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@spi1_groups = internal constant [3 x ptr] [ptr @.str.216, ptr @.str.217, ptr @.str.218], align 4
@.str.141 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@spi2_groups = internal constant [5 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.211, ptr @.str.219], align 4
@.str.142 = private unnamed_addr constant [5 x i8] c"spi3\00", align 1
@spi3_groups = internal constant [4 x ptr] [ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210], align 4
@.str.143 = private unnamed_addr constant [6 x i8] c"sens0\00", align 1
@sens0_groups = internal constant [4 x ptr] [ptr @.str.220, ptr @.str.202, ptr @.str.221, ptr @.str.203], align 4
@.str.144 = private unnamed_addr constant [6 x i8] c"sens1\00", align 1
@sens1_groups = internal constant [13 x ptr] [ptr @.str.179, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.202, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225], align 4
@.str.145 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@uart0_groups = internal constant [4 x ptr] [ptr @.str.226, ptr @.str.227, ptr @.str.216, ptr @.str.217], align 4
@.str.146 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_groups = internal constant [2 x ptr] [ptr @.str.198, ptr @.str.218], align 4
@.str.147 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@uart2_groups = internal constant [16 x ptr] [ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.226, ptr @.str.227, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.216, ptr @.str.217, ptr @.str.218], align 4
@.str.148 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@uart3_groups = internal constant [2 x ptr] [ptr @.str.228, ptr @.str.229], align 4
@.str.149 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@uart4_groups = internal constant [4 x ptr] [ptr @.str.204, ptr @.str.211, ptr @.str.222, ptr @.str.223], align 4
@.str.150 = private unnamed_addr constant [6 x i8] c"uart5\00", align 1
@uart5_groups = internal constant [8 x ptr] [ptr @.str.209, ptr @.str.210, ptr @.str.188, ptr @.str.190, ptr @.str.228, ptr @.str.229, ptr @.str.196, ptr @.str.197], align 4
@.str.151 = private unnamed_addr constant [6 x i8] c"uart6\00", align 1
@uart6_groups = internal constant [4 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.224, ptr @.str.225], align 4
@.str.152 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@i2s0_groups = internal constant [3 x ptr] [ptr @.str.180, ptr @.str.230, ptr @.str.181], align 4
@.str.153 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@i2s1_groups = internal constant [5 x ptr] [ptr @.str.182, ptr @.str.183, ptr @.str.194, ptr @.str.216, ptr @.str.217], align 4
@.str.154 = private unnamed_addr constant [5 x i8] c"pcm1\00", align 1
@pcm1_groups = internal constant [8 x ptr] [ptr @.str.230, ptr @.str.194, ptr @.str.216, ptr @.str.217, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225], align 4
@.str.155 = private unnamed_addr constant [5 x i8] c"pcm0\00", align 1
@pcm0_groups = internal constant [4 x ptr] [ptr @.str.181, ptr @.str.182, ptr @.str.193, ptr @.str.194], align 4
@.str.156 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@ks_groups = internal constant [7 x ptr] [ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], align 4
@.str.157 = private unnamed_addr constant [5 x i8] c"jtag\00", align 1
@jtag_groups = internal constant [9 x ptr] [ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.196, ptr @.str.198, ptr @.str.200, ptr @.str.231], align 4
@.str.158 = private unnamed_addr constant [5 x i8] c"pwm0\00", align 1
@pwm0_groups = internal constant [4 x ptr] [ptr @.str.184, ptr @.str.186, ptr @.str.207, ptr @.str.203], align 4
@.str.159 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@pwm1_groups = internal constant [4 x ptr] [ptr @.str.208, ptr @.str.185, ptr @.str.187, ptr @.str.202], align 4
@.str.160 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@pwm2_groups = internal constant [4 x ptr] [ptr @.str.179, ptr @.str.209, ptr @.str.188, ptr @.str.190], align 4
@.str.161 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@pwm3_groups = internal constant [3 x ptr] [ptr @.str.210, ptr @.str.189, ptr @.str.191], align 4
@.str.162 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@pwm4_groups = internal constant [6 x ptr] [ptr @.str.179, ptr @.str.204, ptr @.str.205, ptr @.str.186, ptr @.str.222, ptr @.str.232], align 4
@.str.163 = private unnamed_addr constant [5 x i8] c"pwm5\00", align 1
@pwm5_groups = internal constant [4 x ptr] [ptr @.str.206, ptr @.str.185, ptr @.str.223, ptr @.str.233], align 4
@.str.164 = private unnamed_addr constant [3 x i8] c"p0\00", align 1
@p0_groups = internal constant [2 x ptr] [ptr @.str.184, ptr @.str.186], align 4
@.str.165 = private unnamed_addr constant [4 x i8] c"sd0\00", align 1
@sd0_groups = internal constant [12 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.234, ptr @.str.214, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.231], align 4
@.str.166 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@sd1_groups = internal constant [8 x ptr] [ptr @.str.213, ptr @.str.191, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.215, ptr @.str.199, ptr @.str.201], align 4
@.str.167 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@sd2_groups = internal constant [1 x ptr] [ptr @.str.237], align 4
@.str.168 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@i2c0_groups = internal constant [3 x ptr] [ptr @.str.216, ptr @.str.217, ptr @.str.218], align 4
@.str.169 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@i2c1_groups = internal constant [1 x ptr] [ptr @.str.218], align 4
@.str.170 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@i2c3_groups = internal constant [3 x ptr] [ptr @.str.193, ptr @.str.224, ptr @.str.225], align 4
@.str.171 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@dsi_groups = internal constant [7 x ptr] [ptr @.str.212, ptr @.str.213, ptr @.str.234, ptr @.str.235, ptr @.str.214, ptr @.str.236, ptr @.str.215], align 4
@.str.172 = private unnamed_addr constant [5 x i8] c"lvds\00", align 1
@lvds_groups = internal constant [3 x ptr] [ptr @.str.238, ptr @.str.192, ptr @.str.195], align 4
@.str.173 = private unnamed_addr constant [6 x i8] c"usb30\00", align 1
@usb30_groups = internal constant [1 x ptr] [ptr @.str.185], align 4
@clko_25m_groups = internal constant [1 x ptr] [ptr @.str.239], align 4
@.str.174 = private unnamed_addr constant [9 x i8] c"mipi_csi\00", align 1
@mipi_csi_groups = internal constant [2 x ptr] [ptr @.str.220, ptr @.str.221], align 4
@.str.175 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@nand_groups = internal constant [4 x ptr] [ptr @.str.237, ptr @.str.219, ptr @.str.233, ptr @.str.232], align 4
@.str.176 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@spdif_groups = internal constant [1 x ptr] [ptr @.str.217], align 4
@.str.177 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@ts_groups = internal constant [2 x ptr] [ptr @.str.238, ptr @.str.192], align 4
@.str.178 = private unnamed_addr constant [5 x i8] c"lcd0\00", align 1
@lcd0_groups = internal constant [8 x ptr] [ptr @.str.179, ptr @.str.191, ptr @.str.238, ptr @.str.234, ptr @.str.235, ptr @.str.192, ptr @.str.236, ptr @.str.195], align 4
@.str.179 = private unnamed_addr constant [13 x i8] c"lcd0_d18_mfp\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"i2s_d0_mfp\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"i2s0_pcm0_mfp\00", align 1
@.str.182 = private unnamed_addr constant [14 x i8] c"i2s1_pcm0_mfp\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"i2s_d1_mfp\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"ks_in2_mfp\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"ks_in1_mfp\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"ks_in0_mfp\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"ks_in3_mfp\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"ks_out0_mfp\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"ks_out1_mfp\00", align 1
@.str.190 = private unnamed_addr constant [12 x i8] c"ks_out2_mfp\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"lcd0_d17_mfp\00", align 1
@.str.192 = private unnamed_addr constant [15 x i8] c"lvds_ee_pn_mfp\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"spi0_i2c_pcm_mfp\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"spi0_i2s_pcm_mfp\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"lvds_e_pn_mfp\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"sd0_d0_mfp\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"sd0_d1_mfp\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"sd0_d2_d3_mfp\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"sd1_d0_d3_mfp\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"sd0_cmd_mfp\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"sd1_cmd_mfp\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"sens0_ckout_mfp\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"sen0_pclk_mfp\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"rmii_crs_dv_mfp\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"rmii_txd0_mfp\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"rmii_txd1_mfp\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"rmii_txen_mfp\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"rmii_rxen_mfp\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"rmii_rxd1_mfp\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"rmii_rxd0_mfp\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"rmii_ref_clk_mfp\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"dsi_dn0_mfp\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"dsi_dp2_mfp\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"dsi_dp0_mfp\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"dsi_dn2_mfp\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"uart0_rx_mfp\00", align 1
@.str.217 = private unnamed_addr constant [13 x i8] c"uart0_tx_mfp\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"i2c0_mfp\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"dnand_acle_ce0_mfp\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"csi_cn_cp_mfp\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"csi_dn_dp_mfp\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"pcm1_in_mfp\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"pcm1_clk_mfp\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"pcm1_sync_mfp\00", align 1
@.str.225 = private unnamed_addr constant [13 x i8] c"pcm1_out_mfp\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"uart2_rtsb_mfp\00", align 1
@.str.227 = private unnamed_addr constant [15 x i8] c"uart2_ctsb_mfp\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"uart3_rtsb_mfp\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"uart3_ctsb_mfp\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"i2s_pcm1_mfp\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"sd0_clk_mfp\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"nand_ceb3_mfp\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"nand_ceb2_mfp\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"dsi_dp3_mfp\00", align 1
@.str.235 = private unnamed_addr constant [12 x i8] c"dsi_dn3_mfp\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"dsi_dnp1_cp_mfp\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c"dnand_data_wr_mfp\00", align 1
@.str.238 = private unnamed_addr constant [14 x i8] c"lvds_o_pn_mfp\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"clko_25m_mfp\00", align 1
@lcd0_d18_mfp_pads = internal global [1 x i32] [i32 62], align 4
@lcd0_d18_mfp_funcs = internal global [5 x i32] [i32 0, i32 8, i32 24, i32 26, i32 43], align 4
@rmii_crs_dv_mfp_pads = internal global [1 x i32] [i32 18], align 4
@rmii_crs_dv_mfp_funcs = internal global [5 x i32] [i32 1, i32 2, i32 5, i32 13, i32 26], align 4
@rmii_txd0_mfp_pads = internal global [1 x i32] [i32 14], align 4
@rmii_txd0_mfp_funcs = internal global [5 x i32] [i32 1, i32 2, i32 5, i32 15, i32 26], align 4
@rmii_txd1_mfp_pads = internal global [1 x i32] [i32 15], align 4
@rmii_txd1_mfp_funcs = internal global [5 x i32] [i32 1, i32 2, i32 5, i32 15, i32 27], align 4
@rmii_txen_mfp_pads = internal global [1 x i32] [i32 16], align 4
@rmii_txen_mfp_funcs = internal global [4 x i32] [i32 1, i32 11, i32 6, i32 22], align 4
@rmii_rxen_mfp_pads = internal global [1 x i32] [i32 17], align 4
@rmii_rxen_mfp_funcs = internal global [4 x i32] [i32 1, i32 11, i32 6, i32 23], align 4
@rmii_rxd1_mfp_pads = internal global [1 x i32] [i32 19], align 4
@rmii_rxd1_mfp_funcs = internal global [5 x i32] [i32 1, i32 11, i32 6, i32 24, i32 14], align 4
@rmii_rxd0_mfp_pads = internal global [1 x i32] [i32 20], align 4
@rmii_rxd0_mfp_funcs = internal global [5 x i32] [i32 1, i32 11, i32 6, i32 25, i32 14], align 4
@rmii_ref_clk_mfp_pads = internal global [1 x i32] [i32 21], align 4
@rmii_ref_clk_mfp_funcs = internal global [5 x i32] [i32 1, i32 13, i32 5, i32 44, i32 2], align 4
@i2s_d0_mfp_pads = internal global [1 x i32] [i32 27], align 4
@i2s_d0_mfp_funcs = internal global [2 x i32] [i32 16, i32 0], align 4
@i2s_pcm1_mfp_pads = internal global [2 x i32] [i32 29, i32 30], align 4
@i2s_pcm1_mfp_funcs = internal global [3 x i32] [i32 16, i32 0, i32 18], align 4
@i2s0_pcm0_mfp_pads = internal global [1 x i32] [i32 28], align 4
@i2s0_pcm0_mfp_funcs = internal global [3 x i32] [i32 16, i32 0, i32 19], align 4
@i2s1_pcm0_mfp_pads = internal global [3 x i32] [i32 32, i32 33, i32 34], align 4
@i2s1_pcm0_mfp_funcs = internal global [3 x i32] [i32 17, i32 0, i32 19], align 4
@i2s_d1_mfp_pads = internal global [1 x i32] [i32 31], align 4
@i2s_d1_mfp_funcs = internal global [2 x i32] [i32 17, i32 0], align 4
@ks_in2_mfp_pads = internal global [1 x i32] [i32 37], align 4
@ks_in2_mfp_funcs = internal global [8 x i32] [i32 20, i32 21, i32 0, i32 22, i32 22, i32 8, i32 22, i32 28], align 4
@ks_in1_mfp_pads = internal global [1 x i32] [i32 36], align 4
@ks_in1_mfp_funcs = internal global [8 x i32] [i32 20, i32 21, i32 0, i32 23, i32 27, i32 8, i32 23, i32 37], align 4
@ks_in0_mfp_pads = internal global [1 x i32] [i32 35], align 4
@ks_in0_mfp_funcs = internal global [8 x i32] [i32 20, i32 21, i32 0, i32 22, i32 26, i32 8, i32 26, i32 28], align 4
@ks_in3_mfp_pads = internal global [1 x i32] [i32 38], align 4
@ks_in3_mfp_funcs = internal global [6 x i32] [i32 20, i32 21, i32 0, i32 23, i32 44, i32 8], align 4
@ks_out0_mfp_pads = internal global [1 x i32] [i32 39], align 4
@ks_out0_mfp_funcs = internal global [7 x i32] [i32 20, i32 14, i32 0, i32 24, i32 44, i32 8, i32 29], align 4
@ks_out1_mfp_pads = internal global [1 x i32] [i32 40], align 4
@ks_out1_mfp_funcs = internal global [7 x i32] [i32 20, i32 21, i32 0, i32 25, i32 44, i32 8, i32 29], align 4
@ks_out2_mfp_pads = internal global [1 x i32] [i32 41], align 4
@ks_out2_mfp_funcs = internal global [6 x i32] [i32 29, i32 20, i32 0, i32 24, i32 14, i32 8], align 4
@lvds_o_pn_mfp_pads = internal global [10 x i32] [i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51], align 4
@lvds_o_pn_mfp_funcs = internal global [3 x i32] [i32 36, i32 42, i32 43], align 4
@dsi_dn0_mfp_pads = internal global [1 x i32] [i32 71], align 4
@dsi_dn0_mfp_funcs = internal global [3 x i32] [i32 35, i32 11, i32 3], align 4
@dsi_dp2_mfp_pads = internal global [1 x i32] [i32 72], align 4
@dsi_dp2_mfp_funcs = internal global [4 x i32] [i32 35, i32 11, i32 3, i32 30], align 4
@lcd0_d17_mfp_pads = internal global [1 x i32] [i32 63], align 4
@lcd0_d17_mfp_funcs = internal global [5 x i32] [i32 0, i32 29, i32 30, i32 25, i32 43], align 4
@dsi_dp3_mfp_pads = internal global [1 x i32] [i32 64], align 4
@dsi_dp3_mfp_funcs = internal global [4 x i32] [i32 35, i32 29, i32 30, i32 43], align 4
@dsi_dn3_mfp_pads = internal global [1 x i32] [i32 65], align 4
@dsi_dn3_mfp_funcs = internal global [4 x i32] [i32 35, i32 44, i32 30, i32 43], align 4
@dsi_dp0_mfp_pads = internal global [1 x i32] [i32 70], align 4
@dsi_dp0_mfp_funcs = internal global [5 x i32] [i32 35, i32 44, i32 29, i32 11, i32 3], align 4
@lvds_ee_pn_mfp_pads = internal global [2 x i32] [i32 52, i32 53], align 4
@lvds_ee_pn_mfp_funcs = internal global [4 x i32] [i32 36, i32 0, i32 42, i32 43], align 4
@spi0_i2c_pcm_mfp_pads = internal global [2 x i32] [i32 86, i32 89], align 4
@spi0_i2c_pcm_mfp_funcs = internal global [4 x i32] [i32 3, i32 0, i32 34, i32 19], align 4
@spi0_i2s_pcm_mfp_pads = internal global [2 x i32] [i32 87, i32 88], align 4
@spi0_i2s_pcm_mfp_funcs = internal global [5 x i32] [i32 3, i32 0, i32 17, i32 18, i32 19], align 4
@dsi_dnp1_cp_mfp_pads = internal global [3 x i32] [i32 66, i32 68, i32 69], align 4
@dsi_dnp1_cp_mfp_funcs = internal global [3 x i32] [i32 35, i32 30, i32 43], align 4
@lvds_e_pn_mfp_pads = internal global [8 x i32] [i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61], align 4
@lvds_e_pn_mfp_funcs = internal global [3 x i32] [i32 36, i32 0, i32 43], align 4
@dsi_dn2_mfp_pads = internal global [1 x i32] [i32 73], align 4
@dsi_dn2_mfp_funcs = internal global [5 x i32] [i32 35, i32 44, i32 30, i32 11, i32 3], align 4
@uart2_rtsb_mfp_pads = internal global [1 x i32] [i32 116], align 4
@uart2_rtsb_mfp_funcs = internal global [2 x i32] [i32 11, i32 9], align 4
@uart2_ctsb_mfp_pads = internal global [1 x i32] [i32 117], align 4
@uart2_ctsb_mfp_funcs = internal global [2 x i32] [i32 11, i32 9], align 4
@uart3_rtsb_mfp_pads = internal global [1 x i32] [i32 120], align 4
@uart3_rtsb_mfp_funcs = internal global [2 x i32] [i32 12, i32 14], align 4
@uart3_ctsb_mfp_pads = internal global [1 x i32] [i32 121], align 4
@uart3_ctsb_mfp_funcs = internal global [2 x i32] [i32 12, i32 14], align 4
@sd0_d0_mfp_pads = internal global [1 x i32] [i32 74], align 4
@sd0_d0_mfp_funcs = internal global [6 x i32] [i32 29, i32 0, i32 44, i32 21, i32 11, i32 14], align 4
@sd0_d1_mfp_pads = internal global [1 x i32] [i32 75], align 4
@sd0_d1_mfp_funcs = internal global [6 x i32] [i32 29, i32 0, i32 44, i32 44, i32 11, i32 14], align 4
@sd0_d2_d3_mfp_pads = internal global [2 x i32] [i32 76, i32 77], align 4
@sd0_d2_d3_mfp_funcs = internal global [6 x i32] [i32 29, i32 0, i32 44, i32 21, i32 11, i32 10], align 4
@sd1_d0_d3_mfp_pads = internal global [4 x i32] [i32 78, i32 79, i32 80, i32 81], align 4
@sd1_d0_d3_mfp_funcs = internal global [4 x i32] [i32 29, i32 0, i32 44, i32 30], align 4
@sd0_cmd_mfp_pads = internal global [1 x i32] [i32 82], align 4
@sd0_cmd_mfp_funcs = internal global [4 x i32] [i32 29, i32 0, i32 44, i32 21], align 4
@sd0_clk_mfp_pads = internal global [1 x i32] [i32 83], align 4
@sd0_clk_mfp_funcs = internal global [3 x i32] [i32 29, i32 44, i32 21], align 4
@sd1_cmd_mfp_pads = internal global [1 x i32] [i32 84], align 4
@sd1_cmd_mfp_funcs = internal global [2 x i32] [i32 30, i32 0], align 4
@uart0_rx_mfp_pads = internal global [1 x i32] [i32 90], align 4
@uart0_rx_mfp_funcs = internal global [6 x i32] [i32 9, i32 11, i32 4, i32 32, i32 18, i32 17], align 4
@clko_25m_mfp_pads = internal global [1 x i32] [i32 155], align 4
@clko_25m_mfp_funcs = internal global [2 x i32] [i32 44, i32 38], align 4
@csi_cn_cp_mfp_pads = internal global [2 x i32] [i32 136, i32 137], align 4
@csi_cn_cp_mfp_funcs = internal global [2 x i32] [i32 39, i32 7], align 4
@sens0_ckout_mfp_pads = internal global [1 x i32] [i32 106], align 4
@sens0_ckout_mfp_funcs = internal global [4 x i32] [i32 7, i32 0, i32 8, i32 23], align 4
@uart0_tx_mfp_pads = internal global [1 x i32] [i32 91], align 4
@uart0_tx_mfp_funcs = internal global [7 x i32] [i32 9, i32 11, i32 4, i32 32, i32 41, i32 18, i32 17], align 4
@i2c0_mfp_pads = internal global [2 x i32] [i32 92, i32 93], align 4
@i2c0_mfp_funcs = internal global [5 x i32] [i32 32, i32 11, i32 33, i32 10, i32 4], align 4
@csi_dn_dp_mfp_pads = internal global [8 x i32] [i32 132, i32 134, i32 138, i32 140, i32 133, i32 135, i32 139, i32 141], align 4
@csi_dn_dp_mfp_funcs = internal global [2 x i32] [i32 39, i32 7], align 4
@sen0_pclk_mfp_pads = internal global [1 x i32] [i32 95], align 4
@sen0_pclk_mfp_funcs = internal global [3 x i32] [i32 7, i32 0, i32 22], align 4
@pcm1_in_mfp_pads = internal global [1 x i32] [i32 124], align 4
@pcm1_in_mfp_funcs = internal global [4 x i32] [i32 18, i32 8, i32 13, i32 26], align 4
@pcm1_clk_mfp_pads = internal global [1 x i32] [i32 125], align 4
@pcm1_clk_mfp_funcs = internal global [4 x i32] [i32 18, i32 8, i32 13, i32 27], align 4
@pcm1_sync_mfp_pads = internal global [1 x i32] [i32 126], align 4
@pcm1_sync_mfp_funcs = internal global [4 x i32] [i32 18, i32 8, i32 15, i32 34], align 4
@pcm1_out_mfp_pads = internal global [1 x i32] [i32 127], align 4
@pcm1_out_mfp_funcs = internal global [4 x i32] [i32 18, i32 8, i32 15, i32 34], align 4
@dnand_data_wr_mfp_pads = internal global [10 x i32] [i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 151, i32 152], align 4
@dnand_data_wr_mfp_funcs = internal global [2 x i32] [i32 40, i32 31], align 4
@dnand_acle_ce0_mfp_pads = internal global [4 x i32] [i32 108, i32 109, i32 110, i32 111], align 4
@dnand_acle_ce0_mfp_funcs = internal global [2 x i32] [i32 40, i32 5], align 4
@nand_ceb2_mfp_pads = internal global [1 x i32] [i32 112], align 4
@nand_ceb2_mfp_funcs = internal global [2 x i32] [i32 40, i32 27], align 4
@nand_ceb3_mfp_pads = internal global [1 x i32] [i32 113], align 4
@nand_ceb3_mfp_funcs = internal global [2 x i32] [i32 40, i32 26], align 4
@.str.240 = private unnamed_addr constant [9 x i8] c"sirq_drv\00", align 1
@sirq_drv_pads = internal global [3 x i32] [i32 24, i32 25, i32 26], align 4
@.str.241 = private unnamed_addr constant [20 x i8] c"rmii_txd01_txen_drv\00", align 1
@rmii_txd01_txen_drv_pads = internal global [3 x i32] [i32 14, i32 15, i32 16], align 4
@.str.242 = private unnamed_addr constant [14 x i8] c"rmii_rxer_drv\00", align 1
@rmii_rxer_drv_pads = internal global [1 x i32] [i32 17], align 4
@.str.243 = private unnamed_addr constant [13 x i8] c"rmii_crs_drv\00", align 1
@rmii_crs_drv_pads = internal global [1 x i32] [i32 18], align 4
@.str.244 = private unnamed_addr constant [15 x i8] c"rmii_rxd10_drv\00", align 1
@rmii_rxd10_drv_pads = internal global [2 x i32] [i32 20, i32 19], align 4
@.str.245 = private unnamed_addr constant [17 x i8] c"rmii_ref_clk_drv\00", align 1
@rmii_ref_clk_drv_pads = internal global [1 x i32] [i32 21], align 4
@.str.246 = private unnamed_addr constant [17 x i8] c"smi_mdc_mdio_drv\00", align 1
@smi_mdc_mdio_drv_pads = internal global [2 x i32] [i32 22, i32 23], align 4
@.str.247 = private unnamed_addr constant [11 x i8] c"i2s_d0_drv\00", align 1
@i2s_d0_drv_pads = internal global [1 x i32] [i32 27], align 4
@.str.248 = private unnamed_addr constant [14 x i8] c"i2s_bclk0_drv\00", align 1
@i2s_bclk0_drv_pads = internal global [1 x i32] [i32 28], align 4
@.str.249 = private unnamed_addr constant [9 x i8] c"i2s3_drv\00", align 1
@i2s3_drv_pads = internal global [3 x i32] [i32 29, i32 30, i32 31], align 4
@.str.250 = private unnamed_addr constant [10 x i8] c"i2s13_drv\00", align 1
@i2s13_drv_pads = internal global [3 x i32] [i32 32, i32 33, i32 34], align 4
@.str.251 = private unnamed_addr constant [9 x i8] c"pcm1_drv\00", align 1
@pcm1_drv_pads = internal global [4 x i32] [i32 124, i32 125, i32 126, i32 127], align 4
@.str.252 = private unnamed_addr constant [10 x i8] c"ks_in_drv\00", align 1
@ks_in_drv_pads = internal global [4 x i32] [i32 35, i32 36, i32 37, i32 38], align 4
@.str.253 = private unnamed_addr constant [11 x i8] c"ks_out_drv\00", align 1
@ks_out_drv_pads = internal global [3 x i32] [i32 39, i32 40, i32 41], align 4
@.str.254 = private unnamed_addr constant [13 x i8] c"lvds_all_drv\00", align 1
@lvds_all_drv_pads = internal global [20 x i32] [i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61], align 4
@.str.255 = private unnamed_addr constant [12 x i8] c"lcd_dsi_drv\00", align 1
@lcd_dsi_drv_pads = internal global [6 x i32] [i32 64, i32 65, i32 66, i32 67, i32 68, i32 69], align 4
@.str.256 = private unnamed_addr constant [8 x i8] c"dsi_drv\00", align 1
@dsi_drv_pads = internal global [4 x i32] [i32 70, i32 71, i32 72, i32 73], align 4
@.str.257 = private unnamed_addr constant [14 x i8] c"sd0_d0_d3_drv\00", align 1
@sd0_d0_d3_drv_pads = internal global [4 x i32] [i32 74, i32 75, i32 76, i32 77], align 4
@.str.258 = private unnamed_addr constant [14 x i8] c"sd1_d0_d3_drv\00", align 1
@sd1_d0_d3_drv_pads = internal global [4 x i32] [i32 78, i32 79, i32 80, i32 81], align 4
@.str.259 = private unnamed_addr constant [12 x i8] c"sd0_cmd_drv\00", align 1
@sd0_cmd_drv_pads = internal global [1 x i32] [i32 82], align 4
@.str.260 = private unnamed_addr constant [12 x i8] c"sd0_clk_drv\00", align 1
@sd0_clk_drv_pads = internal global [1 x i32] [i32 83], align 4
@.str.261 = private unnamed_addr constant [12 x i8] c"sd1_cmd_drv\00", align 1
@sd1_cmd_drv_pads = internal global [1 x i32] [i32 84], align 4
@.str.262 = private unnamed_addr constant [12 x i8] c"sd1_clk_drv\00", align 1
@sd1_clk_drv_pads = internal global [1 x i32] [i32 85], align 4
@.str.263 = private unnamed_addr constant [13 x i8] c"spi0_all_drv\00", align 1
@spi0_all_drv_pads = internal global [4 x i32] [i32 86, i32 87, i32 88, i32 89], align 4
@.str.264 = private unnamed_addr constant [13 x i8] c"uart0_rx_drv\00", align 1
@uart0_rx_drv_pads = internal global [1 x i32] [i32 90], align 4
@.str.265 = private unnamed_addr constant [13 x i8] c"uart0_tx_drv\00", align 1
@uart0_tx_drv_pads = internal global [1 x i32] [i32 91], align 4
@.str.266 = private unnamed_addr constant [14 x i8] c"uart2_all_drv\00", align 1
@uart2_all_drv_pads = internal global [4 x i32] [i32 114, i32 115, i32 116, i32 117], align 4
@.str.267 = private unnamed_addr constant [13 x i8] c"i2c0_all_drv\00", align 1
@i2c0_all_drv_pads = internal global [2 x i32] [i32 92, i32 93], align 4
@.str.268 = private unnamed_addr constant [14 x i8] c"i2c12_all_drv\00", align 1
@i2c12_all_drv_pads = internal global [4 x i32] [i32 128, i32 129, i32 130, i32 131], align 4
@.str.269 = private unnamed_addr constant [15 x i8] c"sens0_pclk_drv\00", align 1
@sens0_pclk_drv_pads = internal global [1 x i32] [i32 95], align 4
@.str.270 = private unnamed_addr constant [16 x i8] c"sens0_ckout_drv\00", align 1
@sens0_ckout_drv_pads = internal global [1 x i32] [i32 106], align 4
@.str.271 = private unnamed_addr constant [14 x i8] c"uart3_all_drv\00", align 1
@uart3_all_drv_pads = internal global [4 x i32] [i32 118, i32 119, i32 120, i32 121], align 4
@DNAND_DQS_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 3, i32 2 }, align 4
@DNAND_DQSN_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 5, i32 2 }, align 4
@ETH_TXD0_st_conf = internal global %struct.owl_st { i32 108, i32 20, i32 1 }, align 4
@ETH_TXD1_st_conf = internal global %struct.owl_st { i32 112, i32 17, i32 1 }, align 4
@ETH_TXEN_st_conf = internal global %struct.owl_st { i32 108, i32 21, i32 1 }, align 4
@ETH_RXER_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 16, i32 1 }, align 4
@ETH_RXER_st_conf = internal global %struct.owl_st { i32 112, i32 18, i32 1 }, align 4
@ETH_CRS_DV_st_conf = internal global %struct.owl_st { i32 112, i32 19, i32 1 }, align 4
@ETH_RXD1_st_conf = internal global %struct.owl_st { i32 112, i32 20, i32 1 }, align 4
@ETH_RXD0_st_conf = internal global %struct.owl_st { i32 112, i32 21, i32 1 }, align 4
@ETH_REF_CLK_st_conf = internal global %struct.owl_st { i32 108, i32 22, i32 1 }, align 4
@SIRQ0_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 14, i32 2 }, align 4
@SIRQ1_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 12, i32 2 }, align 4
@SIRQ2_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 10, i32 2 }, align 4
@I2S_BCLK0_st_conf = internal global %struct.owl_st { i32 112, i32 1, i32 1 }, align 4
@I2S_LRCLK0_st_conf = internal global %struct.owl_st { i32 112, i32 29, i32 1 }, align 4
@I2S_MCLK0_st_conf = internal global %struct.owl_st { i32 112, i32 0, i32 1 }, align 4
@I2S_LRCLK1_st_conf = internal global %struct.owl_st { i32 108, i32 19, i32 1 }, align 4
@I2S_MCLK1_st_conf = internal global %struct.owl_st { i32 108, i32 23, i32 1 }, align 4
@KS_IN0_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 7, i32 1 }, align 4
@KS_IN0_st_conf = internal global %struct.owl_st { i32 108, i32 11, i32 1 }, align 4
@KS_IN1_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 6, i32 1 }, align 4
@KS_IN2_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 5, i32 1 }, align 4
@KS_IN3_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 4, i32 1 }, align 4
@KS_OUT0_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 2, i32 1 }, align 4
@KS_OUT0_st_conf = internal global %struct.owl_st { i32 108, i32 6, i32 1 }, align 4
@KS_OUT1_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 1, i32 1 }, align 4
@KS_OUT1_st_conf = internal global %struct.owl_st { i32 108, i32 5, i32 1 }, align 4
@KS_OUT2_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 28, i32 1 }, align 4
@KS_OUT2_st_conf = internal global %struct.owl_st { i32 108, i32 4, i32 1 }, align 4
@LVDS_OAP_st_conf = internal global %struct.owl_st { i32 112, i32 12, i32 1 }, align 4
@LCD0_D17_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 27, i32 1 }, align 4
@DSI_DN3_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 26, i32 1 }, align 4
@DSI_DP1_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 0, i32 1 }, align 4
@DSI_CP_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 31, i32 1 }, align 4
@DSI_CN_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 30, i32 1 }, align 4
@DSI_DP0_st_conf = internal global %struct.owl_st { i32 108, i32 16, i32 1 }, align 4
@DSI_DN0_st_conf = internal global %struct.owl_st { i32 108, i32 15, i32 1 }, align 4
@DSI_DP2_st_conf = internal global %struct.owl_st { i32 112, i32 31, i32 1 }, align 4
@DSI_DN2_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 28, i32 1 }, align 4
@DSI_DN2_st_conf = internal global %struct.owl_st { i32 112, i32 30, i32 1 }, align 4
@SD0_D0_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 17, i32 1 }, align 4
@SD0_D1_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 16, i32 1 }, align 4
@SD0_D2_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 15, i32 1 }, align 4
@SD0_D3_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 14, i32 1 }, align 4
@SD1_D0_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 6, i32 1 }, align 4
@SD1_D1_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 5, i32 1 }, align 4
@SD1_D2_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 4, i32 1 }, align 4
@SD1_D3_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 3, i32 1 }, align 4
@SD0_CMD_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 13, i32 1 }, align 4
@SD0_CLK_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 12, i32 1 }, align 4
@SD0_CLK_st_conf = internal global %struct.owl_st { i32 108, i32 12, i32 1 }, align 4
@SD1_CMD_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 11, i32 1 }, align 4
@SPI0_SCLK_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 12, i32 1 }, align 4
@SPI0_SCLK_st_conf = internal global %struct.owl_st { i32 108, i32 13, i32 1 }, align 4
@SPI0_SS_st_conf = internal global %struct.owl_st { i32 112, i32 2, i32 1 }, align 4
@SPI0_MISO_st_conf = internal global %struct.owl_st { i32 112, i32 3, i32 1 }, align 4
@SPI0_MOSI_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 11, i32 1 }, align 4
@SPI0_MOSI_st_conf = internal global %struct.owl_st { i32 112, i32 4, i32 1 }, align 4
@UART0_RX_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 2, i32 1 }, align 4
@UART0_RX_st_conf = internal global %struct.owl_st { i32 108, i32 29, i32 1 }, align 4
@UART0_TX_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 1, i32 1 }, align 4
@UART0_TX_st_conf = internal global %struct.owl_st { i32 108, i32 14, i32 1 }, align 4
@I2C0_SCLK_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 8, i32 1 }, align 4
@I2C0_SCLK_st_conf = internal global %struct.owl_st { i32 108, i32 7, i32 1 }, align 4
@I2C0_SDATA_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 9, i32 1 }, align 4
@I2C0_SDATA_st_conf = internal global %struct.owl_st { i32 108, i32 30, i32 1 }, align 4
@SENSOR0_PCLK_st_conf = internal global %struct.owl_st { i32 108, i32 9, i32 1 }, align 4
@UART2_RX_st_conf = internal global %struct.owl_st { i32 112, i32 22, i32 1 }, align 4
@UART2_RTSB_st_conf = internal global %struct.owl_st { i32 112, i32 24, i32 1 }, align 4
@UART2_CTSB_st_conf = internal global %struct.owl_st { i32 112, i32 23, i32 1 }, align 4
@UART3_RX_st_conf = internal global %struct.owl_st { i32 112, i32 25, i32 1 }, align 4
@UART3_RTSB_st_conf = internal global %struct.owl_st { i32 112, i32 26, i32 1 }, align 4
@UART3_CTSB_st_conf = internal global %struct.owl_st { i32 112, i32 27, i32 1 }, align 4
@PCM1_IN_st_conf = internal global %struct.owl_st { i32 112, i32 10, i32 1 }, align 4
@PCM1_CLK_st_conf = internal global %struct.owl_st { i32 112, i32 11, i32 1 }, align 4
@PCM1_SYNC_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 30, i32 1 }, align 4
@PCM1_SYNC_st_conf = internal global %struct.owl_st { i32 112, i32 9, i32 1 }, align 4
@PCM1_OUT_pullctl_conf = internal global %struct.owl_pullctl { i32 96, i32 29, i32 1 }, align 4
@I2C1_SCLK_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 9, i32 1 }, align 4
@I2C1_SCLK_st_conf = internal global %struct.owl_st { i32 112, i32 8, i32 1 }, align 4
@I2C1_SDATA_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 10, i32 1 }, align 4
@I2C1_SDATA_st_conf = internal global %struct.owl_st { i32 112, i32 7, i32 1 }, align 4
@I2C2_SCLK_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 7, i32 1 }, align 4
@I2C2_SCLK_st_conf = internal global %struct.owl_st { i32 112, i32 6, i32 1 }, align 4
@I2C2_SDATA_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 8, i32 1 }, align 4
@I2C2_SDATA_st_conf = internal global %struct.owl_st { i32 112, i32 5, i32 1 }, align 4
@DNAND_D0_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D1_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D2_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D3_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D4_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D5_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D6_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_D7_pullctl_conf = internal global %struct.owl_pullctl { i32 104, i32 2, i32 1 }, align 4
@DNAND_RDBN_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 25, i32 1 }, align 4
@CLKO_25M_pullctl_conf = internal global %struct.owl_pullctl { i32 100, i32 0, i32 1 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description205, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__exitcall_s500_pinctrl_exit, ptr @__initcall__kmod_pinctrl_s500__202_1716_s500_pinctrl_init3, ptr @s500_pinctrl_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @s500_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s500_pinctrl_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @s500_pinctrl_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s500_pinctrl_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s500_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @owl_pinctrl_probe(ptr noundef %0, ptr noundef nonnull @s500_pinctrl_data) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s500_pad_pinconf_val2arg(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef %2) #3 {
  switch i32 %1, label %11 [
    i32 3, label %6
    i32 5, label %4
    i32 14, label %5
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = phi i32 [ 1, %4 ], [ 1, %5 ], [ 0, %3 ]
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %8, %7
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i32 [ -95, %3 ], [ 0, %6 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s500_pad_pinconf_arg2val(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef %2) #3 {
  switch i32 %1, label %11 [
    i32 3, label %9
    i32 5, label %4
    i32 14, label %5
  ]

4:                                                ; preds = %3
  br label %9

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %4, %3
  %10 = phi i32 [ 1, %4 ], [ %8, %5 ], [ 0, %3 ]
  store i32 %10, ptr %2, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ -95, %3 ], [ 0, %9 ]
  ret i32 %12
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
