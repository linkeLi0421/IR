; ModuleID = '/llk/IR/drivers/pinctrl/freescale/pinctrl-imx53.c_pt.bc'
source_filename = "../drivers/pinctrl/freescale/pinctrl-imx53.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_pinctrl_soc_info = type { ptr, i32, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }

@__initcall__kmod_pinctrl_imx53__202_475_imx53_pinctrl_init3 = internal global ptr @imx53_pinctrl_init, section ".initcall3.init", align 4
@imx53_pinctrl_driver = internal global %struct.platform_driver { ptr @imx53_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @imx53_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"imx53-pinctrl\00", align 1
@imx53_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-iomuxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@imx53_pinctrl_info = internal constant %struct.imx_pinctrl_soc_info { ptr @imx53_pinctrl_pads, i32 210, i32 0, ptr @.str.1, i32 0, i8 0, i8 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx53_pinctrl_pads = internal constant [210 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.135, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.136, ptr null }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.137, ptr null }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.138, ptr null }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.139, ptr null }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.140, ptr null }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.141, ptr null }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.142, ptr null }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.143, ptr null }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.144, ptr null }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.145, ptr null }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.146, ptr null }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.147, ptr null }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.148, ptr null }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.149, ptr null }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.150, ptr null }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.151, ptr null }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.152, ptr null }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.153, ptr null }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.154, ptr null }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.155, ptr null }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.156, ptr null }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.157, ptr null }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.158, ptr null }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.159, ptr null }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.160, ptr null }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.161, ptr null }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.162, ptr null }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.163, ptr null }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.164, ptr null }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.165, ptr null }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.166, ptr null }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.167, ptr null }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.168, ptr null }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.169, ptr null }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.170, ptr null }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.171, ptr null }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.172, ptr null }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.173, ptr null }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.174, ptr null }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.175, ptr null }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.176, ptr null }, %struct.pinctrl_pin_desc { i32 175, ptr @.str.177, ptr null }, %struct.pinctrl_pin_desc { i32 176, ptr @.str.178, ptr null }, %struct.pinctrl_pin_desc { i32 177, ptr @.str.179, ptr null }, %struct.pinctrl_pin_desc { i32 178, ptr @.str.180, ptr null }, %struct.pinctrl_pin_desc { i32 179, ptr @.str.181, ptr null }, %struct.pinctrl_pin_desc { i32 180, ptr @.str.182, ptr null }, %struct.pinctrl_pin_desc { i32 181, ptr @.str.183, ptr null }, %struct.pinctrl_pin_desc { i32 182, ptr @.str.184, ptr null }, %struct.pinctrl_pin_desc { i32 183, ptr @.str.185, ptr null }, %struct.pinctrl_pin_desc { i32 184, ptr @.str.186, ptr null }, %struct.pinctrl_pin_desc { i32 185, ptr @.str.187, ptr null }, %struct.pinctrl_pin_desc { i32 186, ptr @.str.188, ptr null }, %struct.pinctrl_pin_desc { i32 187, ptr @.str.189, ptr null }, %struct.pinctrl_pin_desc { i32 188, ptr @.str.190, ptr null }, %struct.pinctrl_pin_desc { i32 189, ptr @.str.191, ptr null }, %struct.pinctrl_pin_desc { i32 190, ptr @.str.192, ptr null }, %struct.pinctrl_pin_desc { i32 191, ptr @.str.193, ptr null }, %struct.pinctrl_pin_desc { i32 192, ptr @.str.194, ptr null }, %struct.pinctrl_pin_desc { i32 193, ptr @.str.195, ptr null }, %struct.pinctrl_pin_desc { i32 194, ptr @.str.196, ptr null }, %struct.pinctrl_pin_desc { i32 195, ptr @.str.197, ptr null }, %struct.pinctrl_pin_desc { i32 196, ptr @.str.198, ptr null }, %struct.pinctrl_pin_desc { i32 197, ptr @.str.199, ptr null }, %struct.pinctrl_pin_desc { i32 198, ptr @.str.200, ptr null }, %struct.pinctrl_pin_desc { i32 199, ptr @.str.201, ptr null }, %struct.pinctrl_pin_desc { i32 200, ptr @.str.202, ptr null }, %struct.pinctrl_pin_desc { i32 201, ptr @.str.203, ptr null }, %struct.pinctrl_pin_desc { i32 202, ptr @.str.204, ptr null }, %struct.pinctrl_pin_desc { i32 203, ptr @.str.205, ptr null }, %struct.pinctrl_pin_desc { i32 204, ptr @.str.206, ptr null }, %struct.pinctrl_pin_desc { i32 205, ptr @.str.207, ptr null }, %struct.pinctrl_pin_desc { i32 206, ptr @.str.208, ptr null }, %struct.pinctrl_pin_desc { i32 207, ptr @.str.209, ptr null }, %struct.pinctrl_pin_desc { i32 208, ptr @.str.210, ptr null }, %struct.pinctrl_pin_desc { i32 209, ptr @.str.211, ptr null }], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"fsl,imx53-iomuxc-gpr\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE0\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE1\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE2\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE3\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE4\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE5\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE6\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE7\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_19\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_COL0\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_ROW0\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_COL1\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_ROW1\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_COL2\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_ROW2\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_COL3\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_ROW3\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_COL4\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"MX53_PAD_KEY_ROW4\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"MX53_PAD_DI0_DISP_CLK\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"MX53_PAD_DI0_PIN15\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"MX53_PAD_DI0_PIN2\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"MX53_PAD_DI0_PIN3\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"MX53_PAD_DI0_PIN4\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT0\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT1\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT2\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT3\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT4\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT5\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT6\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT7\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT8\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"MX53_PAD_DISP0_DAT9\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT10\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT11\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT12\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT13\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT14\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT15\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT16\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT17\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT18\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT19\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT20\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT21\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT22\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"MX53_PAD_DISP0_DAT23\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"MX53_PAD_CSI0_PIXCLK\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_MCLK\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"MX53_PAD_CSI0_DATA_EN\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_VSYNC\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT4\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT5\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT6\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT7\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT8\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"MX53_PAD_CSI0_DAT9\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT10\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT11\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT12\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT13\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT14\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT15\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT16\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT17\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT18\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"MX53_PAD_CSI0_DAT19\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A25\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_EB2\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D16\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D17\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D18\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D19\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D20\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D21\00", align 1
@.str.78 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D22\00", align 1
@.str.79 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D23\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_EB3\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D24\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D25\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D26\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D27\00", align 1
@.str.85 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D28\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D29\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D30\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_D31\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A24\00", align 1
@.str.90 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A23\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A22\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A21\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A20\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A19\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A18\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A17\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_A16\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_CS0\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_CS1\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"MX53_PAD_EIM_OE\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"MX53_PAD_EIM_RW\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_LBA\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_EB0\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_EB1\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA0\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA1\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA2\00", align 1
@.str.108 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA3\00", align 1
@.str.109 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA4\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA5\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA6\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA7\00", align 1
@.str.113 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA8\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"MX53_PAD_EIM_DA9\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA10\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA11\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA12\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA13\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA14\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_DA15\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"MX53_PAD_NANDF_WE_B\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"MX53_PAD_NANDF_RE_B\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"MX53_PAD_EIM_WAIT\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"MX53_PAD_RESERVE8\00", align 1
@.str.125 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS1_TX3_P\00", align 1
@.str.126 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS1_TX2_P\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS1_CLK_P\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS1_TX1_P\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS1_TX0_P\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS0_TX3_P\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS0_CLK_P\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS0_TX2_P\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS0_TX1_P\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"MX53_PAD_LVDS0_TX0_P\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_10\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_11\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_12\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_13\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_14\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_CLE\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_ALE\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"MX53_PAD_NANDF_WP_B\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_RB0\00", align 1
@.str.144 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_CS0\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_CS1\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_CS2\00", align 1
@.str.147 = private unnamed_addr constant [19 x i8] c"MX53_PAD_NANDF_CS3\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"MX53_PAD_FEC_MDIO\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"MX53_PAD_FEC_REF_CLK\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"MX53_PAD_FEC_RX_ER\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"MX53_PAD_FEC_CRS_DV\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"MX53_PAD_FEC_RXD1\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"MX53_PAD_FEC_RXD0\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"MX53_PAD_FEC_TX_EN\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"MX53_PAD_FEC_TXD1\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"MX53_PAD_FEC_TXD0\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"MX53_PAD_FEC_MDC\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_DIOW\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DMACK\00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DMARQ\00", align 1
@.str.161 = private unnamed_addr constant [24 x i8] c"MX53_PAD_PATA_BUFFER_EN\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_INTRQ\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_DIOR\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c"MX53_PAD_PATA_RESET_B\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_IORDY\00", align 1
@.str.166 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_DA_0\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_DA_1\00", align 1
@.str.168 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_DA_2\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_CS_0\00", align 1
@.str.170 = private unnamed_addr constant [19 x i8] c"MX53_PAD_PATA_CS_1\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA0\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA1\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA2\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA3\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA4\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA5\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA6\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA7\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA8\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"MX53_PAD_PATA_DATA9\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA10\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA11\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA12\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA13\00", align 1
@.str.185 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA14\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"MX53_PAD_PATA_DATA15\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD1_DATA0\00", align 1
@.str.188 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD1_DATA1\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"MX53_PAD_SD1_CMD\00", align 1
@.str.190 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD1_DATA2\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"MX53_PAD_SD1_CLK\00", align 1
@.str.192 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD1_DATA3\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"MX53_PAD_SD2_CLK\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"MX53_PAD_SD2_CMD\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD2_DATA3\00", align 1
@.str.196 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD2_DATA2\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD2_DATA1\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"MX53_PAD_SD2_DATA0\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_0\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_1\00", align 1
@.str.201 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_9\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_3\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_6\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_2\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_4\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_5\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_7\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"MX53_PAD_GPIO_8\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_16\00", align 1
@.str.210 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_17\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"MX53_PAD_GPIO_18\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_imx53__202_475_imx53_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @imx53_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx53_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx53_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @imx_pinctrl_probe(ptr noundef %0, ptr noundef nonnull @imx53_pinctrl_info) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

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
