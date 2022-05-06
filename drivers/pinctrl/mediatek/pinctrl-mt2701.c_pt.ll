; ModuleID = '/llk/IR/drivers/pinctrl/mediatek/pinctrl-mt2701.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-mt2701.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pinctrl_devdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, %struct.mtk_eint_hw, ptr, i32, i32, i32 }
%struct.mtk_eint_hw = type { i8, i8, i32, i32 }
%struct.mtk_desc_pin = type { %struct.pinctrl_pin_desc, %struct.mtk_desc_eint, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.mtk_desc_eint = type { i8, i8 }
%struct.mtk_drv_group_desc = type { i8, i8, i8, i8, i8 }
%struct.mtk_pin_drv_grp = type { i16, i16, i8, i8 }
%struct.mtk_desc_function = type { ptr, i8 }
%struct.mtk_pin_spec_pupd_set_samereg = type { i16, i16, i8, i8, i8 }
%struct.mtk_pin_ies_smt_set = type { i16, i16, i16, i8 }
%struct.mtk_spec_pinmux_set = type { i16, i16, i8 }

@__initcall__kmod_pinctrl_mt2701__202_562_mtk_pinctrl_init3 = internal global ptr @mtk_pinctrl_init, section ".initcall3.init", align 4
@mtk_pinctrl_driver = internal global %struct.platform_driver { ptr @mt2701_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt2701_pctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_eint_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [24 x i8] c"mediatek-mt2701-pinctrl\00", align 1
@mt2701_pctrl_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@mtk_eint_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@mt2701_pinctrl_data = internal constant %struct.mtk_pinctrl_devdata { ptr @mtk_pins_mt2701, i32 280, ptr @mt2701_drv_grp, i32 3, ptr @mt2701_pin_drv, i32 182, ptr @mt2701_spec_pull_set, ptr @mt2701_ies_smt_set, ptr @mt2701_spec_pinmux_set, ptr @mt2701_spec_dir_set, i32 0, i32 0, i32 0, i32 336, i32 640, i32 0, i32 1280, i32 1584, i32 1888, i16 280, i16 280, i8 4, i8 31, i8 4, %struct.mtk_eint_hw { i8 6, i8 6, i32 169, i32 16 }, ptr null, i32 15, i32 5, i32 4 }, align 4
@mtk_pins_mt2701 = internal constant [280 x %struct.mtk_desc_pin] [%struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -108 }, ptr @.compoundliteral }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 1, ptr @.str.5, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -107 }, ptr @.compoundliteral.7 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 2, ptr @.str.8, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -106 }, ptr @.compoundliteral.10 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 3, ptr @.str.11, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -105 }, ptr @.compoundliteral.14 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 4, ptr @.str.15, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -104 }, ptr @.compoundliteral.18 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 5, ptr @.str.19, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -103 }, ptr @.compoundliteral.23 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 6, ptr @.str.24, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -102 }, ptr @.compoundliteral.29 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 7, ptr @.str.30, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -101 }, ptr @.compoundliteral.35 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 8, ptr @.str.36, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -100 }, ptr @.compoundliteral.41 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 9, ptr @.str.38, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -99 }, ptr @.compoundliteral.46 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 10, ptr @.str.47, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -98 }, ptr @.compoundliteral.49 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 11, ptr @.str.50, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -97 }, ptr @.compoundliteral.52 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 12, ptr @.str.53, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -96 }, ptr @.compoundliteral.55 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 13, ptr @.str.56, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -95 }, ptr @.compoundliteral.58 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 14, ptr @.str.59, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -94 }, ptr @.compoundliteral.64 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 15, ptr @.str.61, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -93 }, ptr @.compoundliteral.67 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 16, ptr @.str.68, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -92 }, ptr @.compoundliteral.72 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 17, ptr @.str.73, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -91 }, ptr @.compoundliteral.77 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 18, ptr @.str.78, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -90 }, ptr @.compoundliteral.85 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 19, ptr @.str.86, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -89 }, ptr @.compoundliteral.92 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 20, ptr @.str.70, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.100 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 21, ptr @.str.96, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.105 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 22, ptr @.str.106, ptr null }, %struct.mtk_desc_eint zeroinitializer, ptr @.compoundliteral.113 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 23, ptr @.str.114, ptr null }, %struct.mtk_desc_eint { i8 0, i8 1 }, ptr @.compoundliteral.120 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 24, ptr @.str.121, ptr null }, %struct.mtk_desc_eint { i8 0, i8 2 }, ptr @.compoundliteral.127 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 25, ptr @.str.128, ptr null }, %struct.mtk_desc_eint { i8 0, i8 3 }, ptr @.compoundliteral.133 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 26, ptr @.str.134, ptr null }, %struct.mtk_desc_eint { i8 0, i8 4 }, ptr @.compoundliteral.143 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 27, ptr @.str.144, ptr null }, %struct.mtk_desc_eint { i8 0, i8 5 }, ptr @.compoundliteral.152 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 28, ptr @.str.153, ptr null }, %struct.mtk_desc_eint { i8 0, i8 6 }, ptr @.compoundliteral.160 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 29, ptr @.str.161, ptr null }, %struct.mtk_desc_eint { i8 0, i8 7 }, ptr @.compoundliteral.169 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 30, ptr @.str.170, ptr null }, %struct.mtk_desc_eint { i8 0, i8 12 }, ptr @.compoundliteral.172 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 31, ptr @.str.173, ptr null }, %struct.mtk_desc_eint { i8 0, i8 13 }, ptr @.compoundliteral.175 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 32, ptr @.str.176, ptr null }, %struct.mtk_desc_eint { i8 0, i8 14 }, ptr @.compoundliteral.180 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 33, ptr @.str.181, ptr null }, %struct.mtk_desc_eint { i8 0, i8 15 }, ptr @.compoundliteral.187 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 34, ptr @.str.188, ptr null }, %struct.mtk_desc_eint { i8 0, i8 16 }, ptr @.compoundliteral.193 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 35, ptr @.str.194, ptr null }, %struct.mtk_desc_eint { i8 0, i8 17 }, ptr @.compoundliteral.198 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 36, ptr @.str.199, ptr null }, %struct.mtk_desc_eint { i8 0, i8 18 }, ptr @.compoundliteral.203 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 37, ptr @.str.204, ptr null }, %struct.mtk_desc_eint { i8 0, i8 19 }, ptr @.compoundliteral.208 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 38, ptr @.str.209, ptr null }, %struct.mtk_desc_eint { i8 0, i8 20 }, ptr @.compoundliteral.213 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 39, ptr @.str.214, ptr null }, %struct.mtk_desc_eint { i8 0, i8 21 }, ptr @.compoundliteral.217 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 40, ptr @.str.218, ptr null }, %struct.mtk_desc_eint { i8 0, i8 22 }, ptr @.compoundliteral.222 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 41, ptr @.str.223, ptr null }, %struct.mtk_desc_eint { i8 0, i8 23 }, ptr @.compoundliteral.226 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 42, ptr @.str.227, ptr null }, %struct.mtk_desc_eint { i8 0, i8 24 }, ptr @.compoundliteral.230 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 43, ptr @.str.231, ptr null }, %struct.mtk_desc_eint { i8 0, i8 25 }, ptr @.compoundliteral.234 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 44, ptr @.str.235, ptr null }, %struct.mtk_desc_eint { i8 0, i8 26 }, ptr @.compoundliteral.237 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 45, ptr @.str.238, ptr null }, %struct.mtk_desc_eint { i8 0, i8 27 }, ptr @.compoundliteral.240 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 46, ptr @.str.241, ptr null }, %struct.mtk_desc_eint { i8 0, i8 28 }, ptr @.compoundliteral.243 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 47, ptr @.str.244, ptr null }, %struct.mtk_desc_eint { i8 0, i8 29 }, ptr @.compoundliteral.246 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 48, ptr @.str.247, ptr null }, %struct.mtk_desc_eint { i8 0, i8 30 }, ptr @.compoundliteral.249 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 49, ptr @.str.250, ptr null }, %struct.mtk_desc_eint { i8 0, i8 31 }, ptr @.compoundliteral.255 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 50, ptr @.str.256, ptr null }, %struct.mtk_desc_eint { i8 0, i8 32 }, ptr @.compoundliteral.259 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 51, ptr @.str.260, ptr null }, %struct.mtk_desc_eint { i8 0, i8 33 }, ptr @.compoundliteral.263 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 52, ptr @.str.264, ptr null }, %struct.mtk_desc_eint { i8 0, i8 34 }, ptr @.compoundliteral.267 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 53, ptr @.str.268, ptr null }, %struct.mtk_desc_eint { i8 0, i8 35 }, ptr @.compoundliteral.275 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 54, ptr @.str.276, ptr null }, %struct.mtk_desc_eint { i8 0, i8 36 }, ptr @.compoundliteral.281 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 55, ptr @.str.282, ptr null }, %struct.mtk_desc_eint { i8 0, i8 37 }, ptr @.compoundliteral.288 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 56, ptr @.str.284, ptr null }, %struct.mtk_desc_eint { i8 0, i8 38 }, ptr @.compoundliteral.292 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 57, ptr @.str.293, ptr null }, %struct.mtk_desc_eint { i8 0, i8 39 }, ptr @.compoundliteral.295 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 58, ptr @.str.296, ptr null }, %struct.mtk_desc_eint { i8 0, i8 40 }, ptr @.compoundliteral.298 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 59, ptr @.str.299, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.301 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 60, ptr @.str.302, ptr null }, %struct.mtk_desc_eint { i8 0, i8 41 }, ptr @.compoundliteral.305 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 61, ptr @.str.306, ptr null }, %struct.mtk_desc_eint { i8 0, i8 42 }, ptr @.compoundliteral.309 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 62, ptr @.str.310, ptr null }, %struct.mtk_desc_eint { i8 0, i8 43 }, ptr @.compoundliteral.314 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 63, ptr @.str.315, ptr null }, %struct.mtk_desc_eint { i8 0, i8 44 }, ptr @.compoundliteral.318 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 64, ptr @.str.319, ptr null }, %struct.mtk_desc_eint { i8 0, i8 45 }, ptr @.compoundliteral.322 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 65, ptr @.str.323, ptr null }, %struct.mtk_desc_eint { i8 0, i8 46 }, ptr @.compoundliteral.326 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 66, ptr @.str.327, ptr null }, %struct.mtk_desc_eint { i8 0, i8 47 }, ptr @.compoundliteral.331 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 67, ptr @.str.332, ptr null }, %struct.mtk_desc_eint { i8 0, i8 48 }, ptr @.compoundliteral.335 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 68, ptr @.str.336, ptr null }, %struct.mtk_desc_eint { i8 0, i8 49 }, ptr @.compoundliteral.339 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 69, ptr @.str.340, ptr null }, %struct.mtk_desc_eint { i8 0, i8 50 }, ptr @.compoundliteral.343 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 70, ptr @.str.344, ptr null }, %struct.mtk_desc_eint { i8 0, i8 51 }, ptr @.compoundliteral.347 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 71, ptr @.str.348, ptr null }, %struct.mtk_desc_eint { i8 0, i8 52 }, ptr @.compoundliteral.351 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 72, ptr @.str.352, ptr null }, %struct.mtk_desc_eint { i8 0, i8 53 }, ptr @.compoundliteral.358 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 73, ptr @.str.359, ptr null }, %struct.mtk_desc_eint { i8 0, i8 54 }, ptr @.compoundliteral.363 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 74, ptr @.str.364, ptr null }, %struct.mtk_desc_eint { i8 0, i8 55 }, ptr @.compoundliteral.368 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 75, ptr @.str.369, ptr null }, %struct.mtk_desc_eint { i8 0, i8 56 }, ptr @.compoundliteral.371 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 76, ptr @.str.372, ptr null }, %struct.mtk_desc_eint { i8 0, i8 57 }, ptr @.compoundliteral.374 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 77, ptr @.str.375, ptr null }, %struct.mtk_desc_eint { i8 0, i8 58 }, ptr @.compoundliteral.377 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 78, ptr @.str.378, ptr null }, %struct.mtk_desc_eint { i8 0, i8 59 }, ptr @.compoundliteral.380 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 79, ptr @.str.381, ptr null }, %struct.mtk_desc_eint { i8 0, i8 60 }, ptr @.compoundliteral.384 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 80, ptr @.str.383, ptr null }, %struct.mtk_desc_eint { i8 0, i8 61 }, ptr @.compoundliteral.386 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 81, ptr @.str.387, ptr null }, %struct.mtk_desc_eint { i8 0, i8 62 }, ptr @.compoundliteral.390 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 82, ptr @.str.389, ptr null }, %struct.mtk_desc_eint { i8 0, i8 63 }, ptr @.compoundliteral.392 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 83, ptr @.str.393, ptr null }, %struct.mtk_desc_eint { i8 0, i8 64 }, ptr @.compoundliteral.397 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 84, ptr @.str.398, ptr null }, %struct.mtk_desc_eint { i8 0, i8 65 }, ptr @.compoundliteral.401 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 85, ptr @.str.402, ptr null }, %struct.mtk_desc_eint { i8 0, i8 66 }, ptr @.compoundliteral.405 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 86, ptr @.str.406, ptr null }, %struct.mtk_desc_eint { i8 0, i8 67 }, ptr @.compoundliteral.409 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 87, ptr @.str.410, ptr null }, %struct.mtk_desc_eint { i8 0, i8 68 }, ptr @.compoundliteral.413 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 88, ptr @.str.414, ptr null }, %struct.mtk_desc_eint { i8 0, i8 71 }, ptr @.compoundliteral.416 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 89, ptr @.str.417, ptr null }, %struct.mtk_desc_eint { i8 0, i8 72 }, ptr @.compoundliteral.419 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 90, ptr @.str.420, ptr null }, %struct.mtk_desc_eint { i8 0, i8 73 }, ptr @.compoundliteral.424 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 91, ptr @.str.425, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.427 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 92, ptr @.str.428, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.430 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 93, ptr @.str.431, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.433 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 94, ptr @.str.434, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.436 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 95, ptr @.str.437, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.439 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 96, ptr @.str.440, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.442 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 97, ptr @.str.443, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.445 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 98, ptr @.str.446, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.448 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 99, ptr @.str.449, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.451 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 100, ptr @.str.452, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.454 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 101, ptr @.str.455, ptr null }, %struct.mtk_desc_eint { i8 0, i8 74 }, ptr @.compoundliteral.459 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 102, ptr @.str.460, ptr null }, %struct.mtk_desc_eint { i8 0, i8 75 }, ptr @.compoundliteral.464 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 103, ptr @.str.462, ptr null }, %struct.mtk_desc_eint { i8 0, i8 76 }, ptr @.compoundliteral.466 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 104, ptr @.str.467, ptr null }, %struct.mtk_desc_eint { i8 0, i8 77 }, ptr @.compoundliteral.470 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 105, ptr @.str.471, ptr null }, %struct.mtk_desc_eint { i8 0, i8 78 }, ptr @.compoundliteral.474 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 106, ptr @.str.475, ptr null }, %struct.mtk_desc_eint { i8 0, i8 79 }, ptr @.compoundliteral.478 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 107, ptr @.str.479, ptr null }, %struct.mtk_desc_eint { i8 0, i8 80 }, ptr @.compoundliteral.482 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 108, ptr @.str.483, ptr null }, %struct.mtk_desc_eint { i8 0, i8 81 }, ptr @.compoundliteral.486 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 109, ptr @.str.487, ptr null }, %struct.mtk_desc_eint { i8 0, i8 82 }, ptr @.compoundliteral.490 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 110, ptr @.str.491, ptr null }, %struct.mtk_desc_eint { i8 0, i8 83 }, ptr @.compoundliteral.494 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 111, ptr @.str.495, ptr null }, %struct.mtk_desc_eint { i8 0, i8 84 }, ptr @.compoundliteral.498 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 112, ptr @.str.499, ptr null }, %struct.mtk_desc_eint { i8 0, i8 85 }, ptr @.compoundliteral.502 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 113, ptr @.str.503, ptr null }, %struct.mtk_desc_eint { i8 0, i8 86 }, ptr @.compoundliteral.506 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 114, ptr @.str.507, ptr null }, %struct.mtk_desc_eint { i8 0, i8 87 }, ptr @.compoundliteral.510 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 115, ptr @.str.511, ptr null }, %struct.mtk_desc_eint { i8 0, i8 88 }, ptr @.compoundliteral.514 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 116, ptr @.str.515, ptr null }, %struct.mtk_desc_eint { i8 0, i8 89 }, ptr @.compoundliteral.518 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 117, ptr @.str.519, ptr null }, %struct.mtk_desc_eint { i8 0, i8 90 }, ptr @.compoundliteral.522 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 118, ptr @.str.523, ptr null }, %struct.mtk_desc_eint { i8 0, i8 91 }, ptr @.compoundliteral.526 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 119, ptr @.str.527, ptr null }, %struct.mtk_desc_eint { i8 0, i8 92 }, ptr @.compoundliteral.530 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 120, ptr @.str.531, ptr null }, %struct.mtk_desc_eint { i8 0, i8 93 }, ptr @.compoundliteral.534 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 121, ptr @.str.535, ptr null }, %struct.mtk_desc_eint { i8 0, i8 94 }, ptr @.compoundliteral.538 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 122, ptr @.str.539, ptr null }, %struct.mtk_desc_eint { i8 0, i8 95 }, ptr @.compoundliteral.541 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 123, ptr @.str.542, ptr null }, %struct.mtk_desc_eint { i8 0, i8 96 }, ptr @.compoundliteral.544 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 124, ptr @.str.545, ptr null }, %struct.mtk_desc_eint { i8 0, i8 97 }, ptr @.compoundliteral.547 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 125, ptr @.str.548, ptr null }, %struct.mtk_desc_eint { i8 0, i8 98 }, ptr @.compoundliteral.551 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 126, ptr @.str.552, ptr null }, %struct.mtk_desc_eint { i8 0, i8 99 }, ptr @.compoundliteral.556 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 127, ptr @.str.557, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.559 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 128, ptr @.str.560, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.562 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 129, ptr @.str.563, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.565 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 130, ptr @.str.566, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.568 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 131, ptr @.str.569, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.571 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 132, ptr @.str.572, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.574 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 133, ptr @.str.575, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.577 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 134, ptr @.str.578, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.580 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 135, ptr @.str.581, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.583 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 136, ptr @.str.584, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.586 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 137, ptr @.str.587, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.589 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 138, ptr @.str.590, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.592 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 139, ptr @.str.593, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.595 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 140, ptr @.str.596, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.598 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 141, ptr @.str.599, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.601 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 142, ptr @.str.602, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.604 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 143, ptr @.str.605, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.607 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 144, ptr @.str.608, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.610 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 145, ptr @.str.611, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.613 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 146, ptr @.str.614, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.616 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 147, ptr @.str.617, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.619 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 148, ptr @.str.620, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.622 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 149, ptr @.str.623, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.625 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 150, ptr @.str.626, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.628 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 151, ptr @.str.629, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.631 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 152, ptr @.str.632, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.634 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 153, ptr @.str.635, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.637 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 154, ptr @.str.638, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.640 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 155, ptr @.str.641, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.643 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 156, ptr @.str.644, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.646 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 157, ptr @.str.647, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.649 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 158, ptr @.str.650, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.652 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 159, ptr @.str.653, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.655 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 160, ptr @.str.656, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.658 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 161, ptr @.str.659, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.661 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 162, ptr @.str.662, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.664 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 163, ptr @.str.665, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.667 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 164, ptr @.str.668, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.670 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 165, ptr @.str.671, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.673 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 166, ptr @.str.674, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.676 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 167, ptr @.str.677, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.679 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 168, ptr @.str.680, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.682 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 169, ptr @.str.683, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.685 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 170, ptr @.str.686, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.688 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 171, ptr @.str.689, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.691 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 172, ptr @.str.692, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.694 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 173, ptr @.str.695, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.697 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 174, ptr @.str.698, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.700 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 175, ptr @.str.701, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.703 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 176, ptr @.str.704, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.706 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 177, ptr @.str.707, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.709 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 178, ptr @.str.710, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.712 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 179, ptr @.str.713, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.715 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 180, ptr @.str.716, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.718 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 181, ptr @.str.719, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.721 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 182, ptr @.str.722, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.724 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 183, ptr @.str.725, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.727 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 184, ptr @.str.728, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.730 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 185, ptr @.str.731, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.733 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 186, ptr @.str.734, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.736 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 187, ptr @.str.737, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.739 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 188, ptr @.str.740, ptr null }, %struct.mtk_desc_eint { i8 0, i8 100 }, ptr @.compoundliteral.742 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 189, ptr @.str.743, ptr null }, %struct.mtk_desc_eint { i8 0, i8 101 }, ptr @.compoundliteral.746 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 190, ptr @.str.747, ptr null }, %struct.mtk_desc_eint { i8 0, i8 102 }, ptr @.compoundliteral.749 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 191, ptr @.str.750, ptr null }, %struct.mtk_desc_eint { i8 0, i8 103 }, ptr @.compoundliteral.752 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 192, ptr @.str.753, ptr null }, %struct.mtk_desc_eint { i8 0, i8 104 }, ptr @.compoundliteral.755 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 193, ptr @.str.756, ptr null }, %struct.mtk_desc_eint { i8 0, i8 105 }, ptr @.compoundliteral.758 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 194, ptr @.str.759, ptr null }, %struct.mtk_desc_eint { i8 0, i8 106 }, ptr @.compoundliteral.762 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 195, ptr @.str.763, ptr null }, %struct.mtk_desc_eint { i8 0, i8 107 }, ptr @.compoundliteral.765 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 196, ptr @.str.766, ptr null }, %struct.mtk_desc_eint { i8 0, i8 108 }, ptr @.compoundliteral.768 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 197, ptr @.str.769, ptr null }, %struct.mtk_desc_eint { i8 0, i8 109 }, ptr @.compoundliteral.771 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 198, ptr @.str.772, ptr null }, %struct.mtk_desc_eint { i8 0, i8 110 }, ptr @.compoundliteral.774 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 199, ptr @.str.775, ptr null }, %struct.mtk_desc_eint { i8 0, i8 111 }, ptr @.compoundliteral.779 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 200, ptr @.str.780, ptr null }, %struct.mtk_desc_eint { i8 0, i8 112 }, ptr @.compoundliteral.784 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 201, ptr @.str.290, ptr null }, %struct.mtk_desc_eint { i8 0, i8 113 }, ptr @.compoundliteral.788 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 202, ptr @.str.278, ptr null }, %struct.mtk_desc_eint { i8 0, i8 114 }, ptr @.compoundliteral.790 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 203, ptr @.str.354, ptr null }, %struct.mtk_desc_eint { i8 0, i8 115 }, ptr @.compoundliteral.794 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 204, ptr @.str.273, ptr null }, %struct.mtk_desc_eint { i8 0, i8 116 }, ptr @.compoundliteral.799 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 205, ptr @.str.286, ptr null }, %struct.mtk_desc_eint { i8 0, i8 117 }, ptr @.compoundliteral.804 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 206, ptr @.str.423, ptr null }, %struct.mtk_desc_eint { i8 0, i8 118 }, ptr @.compoundliteral.809 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 207, ptr @.str.550, ptr null }, %struct.mtk_desc_eint { i8 0, i8 119 }, ptr @.compoundliteral.814 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 208, ptr @.str.815, ptr null }, %struct.mtk_desc_eint { i8 0, i8 120 }, ptr @.compoundliteral.818 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 209, ptr @.str.819, ptr null }, %struct.mtk_desc_eint { i8 0, i8 121 }, ptr @.compoundliteral.822 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 210, ptr @.str.823, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.825 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 211, ptr @.str.826, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.828 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 212, ptr @.str.829, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.831 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 213, ptr @.str.832, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.834 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 214, ptr @.str.835, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.837 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 215, ptr @.str.838, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.840 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 216, ptr @.str.841, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.843 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 217, ptr @.str.844, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.846 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 218, ptr @.str.847, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.849 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 219, ptr @.str.850, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.852 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 220, ptr @.str.853, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.855 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 221, ptr @.str.856, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.858 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 222, ptr @.str.859, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.861 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 223, ptr @.str.862, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.864 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 224, ptr @.str.865, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.867 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 225, ptr @.str.868, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.870 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 226, ptr @.str.871, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.873 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 227, ptr @.str.874, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.876 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 228, ptr @.str.877, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.879 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 229, ptr @.str.880, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.882 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 230, ptr @.str.883, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.885 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 231, ptr @.str.886, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.888 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 232, ptr @.str.889, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.891 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 233, ptr @.str.892, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.894 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 234, ptr @.str.895, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.897 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 235, ptr @.str.898, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.900 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 236, ptr @.str.901, ptr null }, %struct.mtk_desc_eint { i8 0, i8 122 }, ptr @.compoundliteral.904 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 237, ptr @.str.905, ptr null }, %struct.mtk_desc_eint { i8 0, i8 123 }, ptr @.compoundliteral.907 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 238, ptr @.str.908, ptr null }, %struct.mtk_desc_eint { i8 0, i8 124 }, ptr @.compoundliteral.910 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 239, ptr @.str.911, ptr null }, %struct.mtk_desc_eint { i8 0, i8 125 }, ptr @.compoundliteral.913 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 240, ptr @.str.914, ptr null }, %struct.mtk_desc_eint { i8 0, i8 126 }, ptr @.compoundliteral.916 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 241, ptr @.str.917, ptr null }, %struct.mtk_desc_eint { i8 0, i8 127 }, ptr @.compoundliteral.919 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 242, ptr @.str.920, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -128 }, ptr @.compoundliteral.925 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 243, ptr @.str.926, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -127 }, ptr @.compoundliteral.929 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 244, ptr @.str.930, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -126 }, ptr @.compoundliteral.932 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 245, ptr @.str.933, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -125 }, ptr @.compoundliteral.935 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 246, ptr @.str.936, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -124 }, ptr @.compoundliteral.938 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 247, ptr @.str.939, ptr null }, %struct.mtk_desc_eint { i8 0, i8 69 }, ptr @.compoundliteral.942 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 248, ptr @.str.943, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -123 }, ptr @.compoundliteral.945 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 249, ptr @.str.946, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -122 }, ptr @.compoundliteral.948 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 250, ptr @.str.949, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -121 }, ptr @.compoundliteral.953 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 251, ptr @.str.954, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -120 }, ptr @.compoundliteral.957 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 252, ptr @.str.958, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -119 }, ptr @.compoundliteral.962 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 253, ptr @.str.963, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -118 }, ptr @.compoundliteral.966 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 254, ptr @.str.967, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -117 }, ptr @.compoundliteral.971 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 255, ptr @.str.972, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -116 }, ptr @.compoundliteral.975 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 256, ptr @.str.976, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -115 }, ptr @.compoundliteral.979 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 257, ptr @.str.980, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -114 }, ptr @.compoundliteral.983 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 258, ptr @.str.984, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -113 }, ptr @.compoundliteral.987 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 259, ptr @.str.988, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -112 }, ptr @.compoundliteral.991 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 260, ptr @.str.992, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -111 }, ptr @.compoundliteral.995 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 261, ptr @.str.996, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -110 }, ptr @.compoundliteral.999 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 262, ptr @.str.1000, ptr null }, %struct.mtk_desc_eint { i8 0, i8 8 }, ptr @.compoundliteral.1002 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 263, ptr @.str.1003, ptr null }, %struct.mtk_desc_eint { i8 0, i8 9 }, ptr @.compoundliteral.1005 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 264, ptr @.str.1006, ptr null }, %struct.mtk_desc_eint { i8 0, i8 10 }, ptr @.compoundliteral.1008 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 265, ptr @.str.1009, ptr null }, %struct.mtk_desc_eint { i8 0, i8 11 }, ptr @.compoundliteral.1011 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 266, ptr @.str.1012, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1014 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 267, ptr @.str.1015, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1017 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 268, ptr @.str.1018, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1020 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 269, ptr @.str.1021, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1023 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 270, ptr @.str.1024, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1026 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 271, ptr @.str.1027, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1029 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 272, ptr @.str.1030, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1032 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 273, ptr @.str.1033, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -88 }, ptr @.compoundliteral.1035 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 274, ptr @.str.1036, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1038 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 275, ptr @.str.1039, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1041 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 276, ptr @.str.1042, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1044 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 277, ptr @.str.1045, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1047 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 278, ptr @.str.1048, ptr null }, %struct.mtk_desc_eint { i8 0, i8 -109 }, ptr @.compoundliteral.1050 }, %struct.mtk_desc_pin { %struct.pinctrl_pin_desc { i32 279, ptr @.str.1051, ptr null }, %struct.mtk_desc_eint { i8 -1, i8 -1 }, ptr @.compoundliteral.1053 }], align 4
@mt2701_drv_grp = internal constant [3 x %struct.mtk_drv_group_desc] [%struct.mtk_drv_group_desc { i8 4, i8 16, i8 1, i8 2, i8 4 }, %struct.mtk_drv_group_desc { i8 2, i8 8, i8 1, i8 2, i8 2 }, %struct.mtk_drv_group_desc { i8 2, i8 16, i8 0, i8 2, i8 2 }], align 1
@mt2701_pin_drv = internal constant [182 x %struct.mtk_pin_drv_grp] [%struct.mtk_pin_drv_grp { i16 0, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 1, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 2, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 3, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 4, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 5, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 6, i16 3920, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 7, i16 3920, i8 4, i8 1 }, %struct.mtk_pin_drv_grp { i16 8, i16 3920, i8 4, i8 1 }, %struct.mtk_pin_drv_grp { i16 9, i16 3920, i8 4, i8 1 }, %struct.mtk_pin_drv_grp { i16 10, i16 3920, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 11, i16 3920, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 12, i16 3920, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 13, i16 3920, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 14, i16 3920, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 15, i16 3920, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 16, i16 3936, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 17, i16 3936, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 18, i16 3936, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 19, i16 3936, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 20, i16 3936, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 21, i16 3936, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 22, i16 3936, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 23, i16 3936, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 24, i16 3936, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 25, i16 3936, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 26, i16 3936, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 27, i16 3936, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 28, i16 3936, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 29, i16 3936, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 30, i16 3936, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 31, i16 3936, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 32, i16 3936, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 33, i16 3952, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 34, i16 3952, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 35, i16 3952, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 36, i16 3952, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 37, i16 3952, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 38, i16 3952, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 39, i16 3952, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 40, i16 3952, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 41, i16 3952, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 42, i16 3952, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 43, i16 3952, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 44, i16 3952, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 45, i16 3952, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 47, i16 3968, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 48, i16 3968, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 49, i16 3968, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 50, i16 3952, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 51, i16 3952, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 52, i16 3952, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 53, i16 3968, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 54, i16 3968, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 55, i16 3968, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 56, i16 3968, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 60, i16 3984, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 61, i16 3984, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 62, i16 3984, i8 8, i8 1 }, %struct.mtk_pin_drv_grp { i16 63, i16 3984, i8 12, i8 1 }, %struct.mtk_pin_drv_grp { i16 64, i16 3984, i8 12, i8 1 }, %struct.mtk_pin_drv_grp { i16 65, i16 3984, i8 12, i8 1 }, %struct.mtk_pin_drv_grp { i16 66, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 67, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 68, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 69, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 70, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 71, i16 4000, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 72, i16 3968, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 73, i16 3968, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 74, i16 3968, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 85, i16 3488, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 86, i16 3472, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 87, i16 3504, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 88, i16 3504, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 89, i16 3504, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 90, i16 3504, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 105, i16 3392, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 106, i16 3376, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 107, i16 3408, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 108, i16 3408, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 109, i16 3408, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 110, i16 3408, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 111, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 112, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 113, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 114, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 115, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 116, i16 3280, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 117, i16 3264, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 118, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 119, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 120, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 121, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 126, i16 3968, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 188, i16 3952, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 189, i16 4064, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 190, i16 4064, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 191, i16 4064, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 192, i16 4064, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 193, i16 4064, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 194, i16 4064, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 195, i16 4064, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 196, i16 4064, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 197, i16 4064, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 198, i16 4064, i8 12, i8 0 }, %struct.mtk_pin_drv_grp { i16 199, i16 3920, i8 4, i8 1 }, %struct.mtk_pin_drv_grp { i16 200, i16 4048, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 201, i16 4048, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 202, i16 4048, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 203, i16 4048, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 204, i16 4048, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 205, i16 4048, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 206, i16 4048, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 207, i16 4048, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 208, i16 4048, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 209, i16 4048, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 210, i16 4048, i8 12, i8 1 }, %struct.mtk_pin_drv_grp { i16 211, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 212, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 213, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 214, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 215, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 216, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 217, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 218, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 219, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 220, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 221, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 222, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 223, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 224, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 225, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 226, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 227, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 228, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 229, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 230, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 231, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 232, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 233, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 234, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 235, i16 4080, i8 0, i8 1 }, %struct.mtk_pin_drv_grp { i16 236, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 237, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 238, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 239, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 240, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 241, i16 4080, i8 4, i8 0 }, %struct.mtk_pin_drv_grp { i16 242, i16 4080, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 243, i16 4080, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 248, i16 3840, i8 0, i8 0 }, %struct.mtk_pin_drv_grp { i16 249, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 250, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 251, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 252, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 253, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 254, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 255, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 256, i16 4032, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 257, i16 3296, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 258, i16 3248, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 259, i16 3216, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 260, i16 928, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 261, i16 3408, i8 0, i8 2 }, %struct.mtk_pin_drv_grp { i16 262, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 263, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 264, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 265, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 266, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 267, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 268, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 269, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 270, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 271, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 272, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 273, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 274, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 275, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 276, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 277, i16 3840, i8 8, i8 0 }, %struct.mtk_pin_drv_grp { i16 278, i16 3952, i8 8, i8 1 }], align 2
@.str.1 = private unnamed_addr constant [14 x i8] c"PWRAP_SPI0_MI\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GPIO0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"PWRAP_SPIDO\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"PWRAP_SPIDI\00", align 1
@.compoundliteral = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.2, i8 0 }, %struct.mtk_desc_function { ptr @.str.3, i8 1 }, %struct.mtk_desc_function { ptr @.str.4, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"PWRAP_SPI0_MO\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"GPIO1\00", align 1
@.compoundliteral.7 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.6, i8 0 }, %struct.mtk_desc_function { ptr @.str.4, i8 1 }, %struct.mtk_desc_function { ptr @.str.3, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"PWRAP_INT\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"GPIO2\00", align 1
@.compoundliteral.10 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.9, i8 0 }, %struct.mtk_desc_function { ptr @.str.8, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"PWRAP_SPI0_CK\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"GPIO3\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"PWRAP_SPICK_I\00", align 1
@.compoundliteral.14 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.12, i8 0 }, %struct.mtk_desc_function { ptr @.str.13, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"PWRAP_SPI0_CSN\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"GPIO4\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"PWRAP_SPICS_B_I\00", align 1
@.compoundliteral.18 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.16, i8 0 }, %struct.mtk_desc_function { ptr @.str.17, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"PWRAP_SPI0_CK2\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"GPIO5\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"PWRAP_SPICK2_I\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"ANT_SEL1\00", align 1
@.compoundliteral.23 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.20, i8 0 }, %struct.mtk_desc_function { ptr @.str.21, i8 1 }, %struct.mtk_desc_function { ptr @.str.22, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.24 = private unnamed_addr constant [16 x i8] c"PWRAP_SPI0_CSN2\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"GPIO6\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"PWRAP_SPICS2_B_I\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"ANT_SEL0\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[0]\00", align 1
@.compoundliteral.29 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.25, i8 0 }, %struct.mtk_desc_function { ptr @.str.26, i8 1 }, %struct.mtk_desc_function { ptr @.str.27, i8 5 }, %struct.mtk_desc_function { ptr @.str.28, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"SPI1_CSN\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"GPIO7\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"SPI1_CS\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"KCOL0\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[12]\00", align 1
@.compoundliteral.35 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.31, i8 0 }, %struct.mtk_desc_function { ptr @.str.32, i8 1 }, %struct.mtk_desc_function { ptr @.str.33, i8 4 }, %struct.mtk_desc_function { ptr @.str.34, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"SPI1_MI\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"GPIO8\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"SPI1_MO\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"KCOL1\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[13]\00", align 1
@.compoundliteral.41 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.37, i8 0 }, %struct.mtk_desc_function { ptr @.str.36, i8 1 }, %struct.mtk_desc_function { ptr @.str.38, i8 2 }, %struct.mtk_desc_function { ptr @.str.39, i8 4 }, %struct.mtk_desc_function { ptr @.str.40, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"GPIO9\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"EXT_FRAME_SYNC\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"KCOL2\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[14]\00", align 1
@.compoundliteral.46 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.42, i8 0 }, %struct.mtk_desc_function { ptr @.str.38, i8 1 }, %struct.mtk_desc_function { ptr @.str.36, i8 2 }, %struct.mtk_desc_function { ptr @.str.43, i8 3 }, %struct.mtk_desc_function { ptr @.str.44, i8 4 }, %struct.mtk_desc_function { ptr @.str.45, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"RTC32K_CK\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"GPIO10\00", align 1
@.compoundliteral.49 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.48, i8 0 }, %struct.mtk_desc_function { ptr @.str.47, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"WATCHDOG\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"GPIO11\00", align 1
@.compoundliteral.52 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.51, i8 0 }, %struct.mtk_desc_function { ptr @.str.50, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [9 x i8] c"SRCLKENA\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"GPIO12\00", align 1
@.compoundliteral.55 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.54, i8 0 }, %struct.mtk_desc_function { ptr @.str.53, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [10 x i8] c"SRCLKENAI\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"GPIO13\00", align 1
@.compoundliteral.58 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.57, i8 0 }, %struct.mtk_desc_function { ptr @.str.56, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.59 = private unnamed_addr constant [6 x i8] c"URXD2\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"GPIO14\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"UTXD2\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"SRCCLKENAI2\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[30]\00", align 1
@.compoundliteral.64 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.60, i8 0 }, %struct.mtk_desc_function { ptr @.str.59, i8 1 }, %struct.mtk_desc_function { ptr @.str.61, i8 2 }, %struct.mtk_desc_function { ptr @.str.62, i8 5 }, %struct.mtk_desc_function { ptr @.str.63, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.65 = private unnamed_addr constant [7 x i8] c"GPIO15\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[31]\00", align 1
@.compoundliteral.67 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.65, i8 0 }, %struct.mtk_desc_function { ptr @.str.61, i8 1 }, %struct.mtk_desc_function { ptr @.str.59, i8 2 }, %struct.mtk_desc_function { ptr @.str.66, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.68 = private unnamed_addr constant [13 x i8] c"I2S5_DATA_IN\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"GPIO16\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"PCM_RX\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ANT_SEL4\00", align 1
@.compoundliteral.72 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.69, i8 0 }, %struct.mtk_desc_function { ptr @.str.68, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function { ptr @.str.71, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.73 = private unnamed_addr constant [9 x i8] c"I2S5_BCK\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"GPIO17\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"PCM_CLK0\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"ANT_SEL2\00", align 1
@.compoundliteral.77 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.74, i8 0 }, %struct.mtk_desc_function { ptr @.str.73, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function { ptr @.str.76, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.78 = private unnamed_addr constant [8 x i8] c"PCM_CLK\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"GPIO18\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"MRG_CLK\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"MM_TEST_CK\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"CONN_DSP_JCK\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"WCN_PCM_CLKO\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[3]\00", align 1
@.compoundliteral.85 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.79, i8 0 }, %struct.mtk_desc_function { ptr @.str.75, i8 1 }, %struct.mtk_desc_function { ptr @.str.80, i8 2 }, %struct.mtk_desc_function { ptr @.str.81, i8 4 }, %struct.mtk_desc_function { ptr @.str.82, i8 5 }, %struct.mtk_desc_function { ptr @.str.83, i8 6 }, %struct.mtk_desc_function { ptr @.str.84, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"PCM_SYNC\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"GPIO19\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"MRG_SYNC\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"CONN_DSP_JINTP\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"WCN_PCM_SYNC\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[5]\00", align 1
@.compoundliteral.92 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.87, i8 0 }, %struct.mtk_desc_function { ptr @.str.86, i8 1 }, %struct.mtk_desc_function { ptr @.str.88, i8 2 }, %struct.mtk_desc_function { ptr @.str.89, i8 5 }, %struct.mtk_desc_function { ptr @.str.90, i8 6 }, %struct.mtk_desc_function { ptr @.str.91, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"GPIO20\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"MRG_RX\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"MRG_TX\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"PCM_TX\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"CONN_DSP_JDI\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"WCN_PCM_RX\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[4]\00", align 1
@.compoundliteral.100 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.93, i8 0 }, %struct.mtk_desc_function { ptr @.str.70, i8 1 }, %struct.mtk_desc_function { ptr @.str.94, i8 2 }, %struct.mtk_desc_function { ptr @.str.95, i8 3 }, %struct.mtk_desc_function { ptr @.str.96, i8 4 }, %struct.mtk_desc_function { ptr @.str.97, i8 5 }, %struct.mtk_desc_function { ptr @.str.98, i8 6 }, %struct.mtk_desc_function { ptr @.str.99, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"GPIO21\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"CONN_DSP_JMS\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"WCN_PCM_TX\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[2]\00", align 1
@.compoundliteral.105 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.101, i8 0 }, %struct.mtk_desc_function { ptr @.str.96, i8 1 }, %struct.mtk_desc_function { ptr @.str.95, i8 2 }, %struct.mtk_desc_function { ptr @.str.94, i8 3 }, %struct.mtk_desc_function { ptr @.str.70, i8 4 }, %struct.mtk_desc_function { ptr @.str.102, i8 5 }, %struct.mtk_desc_function { ptr @.str.103, i8 6 }, %struct.mtk_desc_function { ptr @.str.104, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.106 = private unnamed_addr constant [6 x i8] c"EINT0\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"GPIO22\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"UCTS0\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"PCIE0_PERST_N\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"KCOL3\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"CONN_DSP_JDO\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[30]\00", align 1
@.compoundliteral.113 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.107, i8 0 }, %struct.mtk_desc_function { ptr @.str.108, i8 1 }, %struct.mtk_desc_function { ptr @.str.109, i8 2 }, %struct.mtk_desc_function { ptr @.str.110, i8 3 }, %struct.mtk_desc_function { ptr @.str.111, i8 4 }, %struct.mtk_desc_function { ptr @.str.43, i8 5 }, %struct.mtk_desc_function { ptr @.str.112, i8 7 }, %struct.mtk_desc_function { ptr @.str.109, i8 10 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.114 = private unnamed_addr constant [6 x i8] c"EINT1\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"GPIO23\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"URTS0\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"PCIE1_PERST_N\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"CONN_MCU_TDO\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[29]\00", align 1
@.compoundliteral.120 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.115, i8 0 }, %struct.mtk_desc_function { ptr @.str.116, i8 1 }, %struct.mtk_desc_function { ptr @.str.117, i8 2 }, %struct.mtk_desc_function { ptr @.str.44, i8 3 }, %struct.mtk_desc_function { ptr @.str.118, i8 4 }, %struct.mtk_desc_function { ptr @.str.43, i8 5 }, %struct.mtk_desc_function { ptr @.str.119, i8 7 }, %struct.mtk_desc_function { ptr @.str.117, i8 10 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.121 = private unnamed_addr constant [6 x i8] c"EINT2\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"GPIO24\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"UCTS1\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"PCIE2_PERST_N\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"CONN_MCU_DBGACK_N\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[28]\00", align 1
@.compoundliteral.127 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.122, i8 0 }, %struct.mtk_desc_function { ptr @.str.123, i8 1 }, %struct.mtk_desc_function { ptr @.str.124, i8 2 }, %struct.mtk_desc_function { ptr @.str.39, i8 3 }, %struct.mtk_desc_function { ptr @.str.125, i8 4 }, %struct.mtk_desc_function { ptr @.str.126, i8 7 }, %struct.mtk_desc_function { ptr @.str.124, i8 10 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.128 = private unnamed_addr constant [6 x i8] c"EINT3\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"GPIO25\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"URTS1\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"CONN_MCU_DBGI_N\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[27]\00", align 1
@.compoundliteral.133 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.129, i8 0 }, %struct.mtk_desc_function { ptr @.str.130, i8 1 }, %struct.mtk_desc_function { ptr @.str.33, i8 3 }, %struct.mtk_desc_function { ptr @.str.131, i8 4 }, %struct.mtk_desc_function { ptr @.str.132, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.134 = private unnamed_addr constant [6 x i8] c"EINT4\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"GPIO26\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"UCTS3\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"DRV_VBUS_P1\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"KROW3\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"CONN_MCU_TCK0\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"CONN_MCU_AICE_JCKC\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"PCIE2_WAKE_N\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[26]\00", align 1
@.compoundliteral.143 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.135, i8 0 }, %struct.mtk_desc_function { ptr @.str.136, i8 1 }, %struct.mtk_desc_function { ptr @.str.137, i8 2 }, %struct.mtk_desc_function { ptr @.str.138, i8 3 }, %struct.mtk_desc_function { ptr @.str.139, i8 4 }, %struct.mtk_desc_function { ptr @.str.140, i8 5 }, %struct.mtk_desc_function { ptr @.str.141, i8 6 }, %struct.mtk_desc_function { ptr @.str.142, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.144 = private unnamed_addr constant [6 x i8] c"EINT5\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"GPIO27\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"URTS3\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"IDDIG_P1\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"KROW2\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"CONN_MCU_TDI\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"PCIE1_WAKE_N\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[25]\00", align 1
@.compoundliteral.152 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.145, i8 0 }, %struct.mtk_desc_function { ptr @.str.146, i8 1 }, %struct.mtk_desc_function { ptr @.str.147, i8 2 }, %struct.mtk_desc_function { ptr @.str.148, i8 3 }, %struct.mtk_desc_function { ptr @.str.149, i8 4 }, %struct.mtk_desc_function { ptr @.str.150, i8 6 }, %struct.mtk_desc_function { ptr @.str.151, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.153 = private unnamed_addr constant [6 x i8] c"EINT6\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"GPIO28\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"DRV_VBUS\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"KROW1\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"CONN_MCU_TRST_B\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"PCIE0_WAKE_N\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[24]\00", align 1
@.compoundliteral.160 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.154, i8 0 }, %struct.mtk_desc_function { ptr @.str.155, i8 1 }, %struct.mtk_desc_function { ptr @.str.156, i8 3 }, %struct.mtk_desc_function { ptr @.str.157, i8 4 }, %struct.mtk_desc_function { ptr @.str.158, i8 6 }, %struct.mtk_desc_function { ptr @.str.159, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.161 = private unnamed_addr constant [6 x i8] c"EINT7\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"GPIO29\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"IDDIG\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"MSDC1_WP\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"KROW0\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"CONN_MCU_TMS\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"CONN_MCU_AICE_JMSC\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[23]\00", align 1
@.compoundliteral.169 = internal global [10 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.162, i8 0 }, %struct.mtk_desc_function { ptr @.str.163, i8 1 }, %struct.mtk_desc_function { ptr @.str.164, i8 2 }, %struct.mtk_desc_function { ptr @.str.165, i8 3 }, %struct.mtk_desc_function { ptr @.str.166, i8 4 }, %struct.mtk_desc_function { ptr @.str.167, i8 5 }, %struct.mtk_desc_function { ptr @.str.124, i8 6 }, %struct.mtk_desc_function { ptr @.str.168, i8 7 }, %struct.mtk_desc_function { ptr @.str.124, i8 14 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.170 = private unnamed_addr constant [10 x i8] c"I2S5_LRCK\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"GPIO30\00", align 1
@.compoundliteral.172 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.171, i8 0 }, %struct.mtk_desc_function { ptr @.str.170, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function { ptr @.str.22, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.173 = private unnamed_addr constant [10 x i8] c"I2S5_MCLK\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"GPIO31\00", align 1
@.compoundliteral.175 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.174, i8 0 }, %struct.mtk_desc_function { ptr @.str.173, i8 1 }, %struct.mtk_desc_function { ptr @.str.27, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.176 = private unnamed_addr constant [10 x i8] c"I2S5_DATA\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"GPIO32\00", align 1
@.str.178 = private unnamed_addr constant [15 x i8] c"I2S5_DATA_BYPS\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"ANT_SEL3\00", align 1
@.compoundliteral.180 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.177, i8 0 }, %struct.mtk_desc_function { ptr @.str.176, i8 1 }, %struct.mtk_desc_function { ptr @.str.178, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function { ptr @.str.179, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.181 = private unnamed_addr constant [10 x i8] c"I2S1_DATA\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"GPIO33\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"I2S1_DATA_BYPS\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"IMG_TEST_CK\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"G1_RXD0\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[8]\00", align 1
@.compoundliteral.187 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.182, i8 0 }, %struct.mtk_desc_function { ptr @.str.181, i8 1 }, %struct.mtk_desc_function { ptr @.str.183, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function { ptr @.str.184, i8 4 }, %struct.mtk_desc_function { ptr @.str.185, i8 5 }, %struct.mtk_desc_function { ptr @.str.103, i8 6 }, %struct.mtk_desc_function { ptr @.str.186, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.188 = private unnamed_addr constant [13 x i8] c"I2S1_DATA_IN\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"GPIO34\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"VDEC_TEST_CK\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"G1_RXD1\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[7]\00", align 1
@.compoundliteral.193 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.189, i8 0 }, %struct.mtk_desc_function { ptr @.str.188, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function { ptr @.str.190, i8 4 }, %struct.mtk_desc_function { ptr @.str.191, i8 5 }, %struct.mtk_desc_function { ptr @.str.98, i8 6 }, %struct.mtk_desc_function { ptr @.str.192, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.194 = private unnamed_addr constant [9 x i8] c"I2S1_BCK\00", align 1
@.str.195 = private unnamed_addr constant [7 x i8] c"GPIO35\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c"G1_RXD2\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[9]\00", align 1
@.compoundliteral.198 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.195, i8 0 }, %struct.mtk_desc_function { ptr @.str.194, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function { ptr @.str.196, i8 5 }, %struct.mtk_desc_function { ptr @.str.83, i8 6 }, %struct.mtk_desc_function { ptr @.str.197, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.199 = private unnamed_addr constant [10 x i8] c"I2S1_LRCK\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"GPIO36\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"G1_RXD3\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[10]\00", align 1
@.compoundliteral.203 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.200, i8 0 }, %struct.mtk_desc_function { ptr @.str.199, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function { ptr @.str.201, i8 5 }, %struct.mtk_desc_function { ptr @.str.90, i8 6 }, %struct.mtk_desc_function { ptr @.str.202, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.204 = private unnamed_addr constant [10 x i8] c"I2S1_MCLK\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"GPIO37\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"G1_RXDV\00", align 1
@.str.207 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[11]\00", align 1
@.compoundliteral.208 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.205, i8 0 }, %struct.mtk_desc_function { ptr @.str.204, i8 1 }, %struct.mtk_desc_function { ptr @.str.206, i8 5 }, %struct.mtk_desc_function { ptr @.str.207, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.209 = private unnamed_addr constant [10 x i8] c"I2S2_DATA\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"GPIO38\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"I2S2_DATA_BYPS\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"DMIC_DAT0\00", align 1
@.compoundliteral.213 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.210, i8 0 }, %struct.mtk_desc_function { ptr @.str.211, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function { ptr @.str.212, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.214 = private unnamed_addr constant [5 x i8] c"JTMS\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"GPIO39\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"DFD_TMS_XI\00", align 1
@.compoundliteral.217 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.215, i8 0 }, %struct.mtk_desc_function { ptr @.str.214, i8 1 }, %struct.mtk_desc_function { ptr @.str.166, i8 2 }, %struct.mtk_desc_function { ptr @.str.167, i8 3 }, %struct.mtk_desc_function { ptr @.str.216, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.218 = private unnamed_addr constant [5 x i8] c"JTCK\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"GPIO40\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"CONN_MCU_TCK1\00", align 1
@.str.221 = private unnamed_addr constant [11 x i8] c"DFD_TCK_XI\00", align 1
@.compoundliteral.222 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.219, i8 0 }, %struct.mtk_desc_function { ptr @.str.218, i8 1 }, %struct.mtk_desc_function { ptr @.str.220, i8 2 }, %struct.mtk_desc_function { ptr @.str.140, i8 3 }, %struct.mtk_desc_function { ptr @.str.221, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.223 = private unnamed_addr constant [5 x i8] c"JTDI\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"GPIO41\00", align 1
@.str.225 = private unnamed_addr constant [11 x i8] c"DFD_TDI_XI\00", align 1
@.compoundliteral.226 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.224, i8 0 }, %struct.mtk_desc_function { ptr @.str.223, i8 1 }, %struct.mtk_desc_function { ptr @.str.149, i8 2 }, %struct.mtk_desc_function { ptr @.str.225, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.227 = private unnamed_addr constant [5 x i8] c"JTDO\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"GPIO42\00", align 1
@.str.229 = private unnamed_addr constant [8 x i8] c"DFD_TDO\00", align 1
@.compoundliteral.230 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.228, i8 0 }, %struct.mtk_desc_function { ptr @.str.227, i8 1 }, %struct.mtk_desc_function { ptr @.str.118, i8 2 }, %struct.mtk_desc_function { ptr @.str.229, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.231 = private unnamed_addr constant [5 x i8] c"NCLE\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"GPIO43\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"EXT_XCS2\00", align 1
@.compoundliteral.234 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.232, i8 0 }, %struct.mtk_desc_function { ptr @.str.231, i8 1 }, %struct.mtk_desc_function { ptr @.str.233, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.235 = private unnamed_addr constant [6 x i8] c"NCEB1\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"GPIO44\00", align 1
@.compoundliteral.237 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.236, i8 0 }, %struct.mtk_desc_function { ptr @.str.235, i8 1 }, %struct.mtk_desc_function { ptr @.str.163, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.238 = private unnamed_addr constant [6 x i8] c"NCEB0\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"GPIO45\00", align 1
@.compoundliteral.240 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.239, i8 0 }, %struct.mtk_desc_function { ptr @.str.238, i8 1 }, %struct.mtk_desc_function { ptr @.str.155, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.241 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"GPIO46\00", align 1
@.compoundliteral.243 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.242, i8 0 }, %struct.mtk_desc_function { ptr @.str.241, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.244 = private unnamed_addr constant [5 x i8] c"NREB\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"GPIO47\00", align 1
@.compoundliteral.246 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.245, i8 0 }, %struct.mtk_desc_function { ptr @.str.244, i8 1 }, %struct.mtk_desc_function { ptr @.str.147, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.247 = private unnamed_addr constant [5 x i8] c"NRNB\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"GPIO48\00", align 1
@.compoundliteral.249 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.248, i8 0 }, %struct.mtk_desc_function { ptr @.str.247, i8 1 }, %struct.mtk_desc_function { ptr @.str.137, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.250 = private unnamed_addr constant [10 x i8] c"I2S0_DATA\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"GPIO49\00", align 1
@.str.252 = private unnamed_addr constant [15 x i8] c"I2S0_DATA_BYPS\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"WCN_I2S_DO\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[3]\00", align 1
@.compoundliteral.255 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.251, i8 0 }, %struct.mtk_desc_function { ptr @.str.250, i8 1 }, %struct.mtk_desc_function { ptr @.str.252, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function { ptr @.str.253, i8 6 }, %struct.mtk_desc_function { ptr @.str.254, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.256 = private unnamed_addr constant [9 x i8] c"I2S2_BCK\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"GPIO50\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"DMIC_SCK1\00", align 1
@.compoundliteral.259 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.257, i8 0 }, %struct.mtk_desc_function { ptr @.str.256, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function { ptr @.str.258, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.260 = private unnamed_addr constant [13 x i8] c"I2S2_DATA_IN\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"GPIO51\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"DMIC_SCK0\00", align 1
@.compoundliteral.263 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.261, i8 0 }, %struct.mtk_desc_function { ptr @.str.260, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function { ptr @.str.262, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.264 = private unnamed_addr constant [10 x i8] c"I2S2_LRCK\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"GPIO52\00", align 1
@.str.266 = private unnamed_addr constant [10 x i8] c"DMIC_DAT1\00", align 1
@.compoundliteral.267 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.265, i8 0 }, %struct.mtk_desc_function { ptr @.str.264, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function { ptr @.str.266, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.268 = private unnamed_addr constant [9 x i8] c"SPI0_CSN\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"GPIO53\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"SPI0_CS\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"ADC_CK\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"PWM1\00", align 1
@.str.274 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[7]\00", align 1
@.compoundliteral.275 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.269, i8 0 }, %struct.mtk_desc_function { ptr @.str.270, i8 1 }, %struct.mtk_desc_function { ptr @.str.271, i8 3 }, %struct.mtk_desc_function { ptr @.str.272, i8 4 }, %struct.mtk_desc_function { ptr @.str.273, i8 5 }, %struct.mtk_desc_function { ptr @.str.274, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.276 = private unnamed_addr constant [8 x i8] c"SPI0_CK\00", align 1
@.str.277 = private unnamed_addr constant [7 x i8] c"GPIO54\00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c"SPDIF_IN1\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"ADC_DAT_IN\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[10]\00", align 1
@.compoundliteral.281 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.277, i8 0 }, %struct.mtk_desc_function { ptr @.str.276, i8 1 }, %struct.mtk_desc_function { ptr @.str.278, i8 3 }, %struct.mtk_desc_function { ptr @.str.279, i8 4 }, %struct.mtk_desc_function { ptr @.str.280, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.282 = private unnamed_addr constant [8 x i8] c"SPI0_MI\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"GPIO55\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"SPI0_MO\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"ADC_WS\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c"PWM2\00", align 1
@.str.287 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[8]\00", align 1
@.compoundliteral.288 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.283, i8 0 }, %struct.mtk_desc_function { ptr @.str.282, i8 1 }, %struct.mtk_desc_function { ptr @.str.284, i8 2 }, %struct.mtk_desc_function { ptr @.str.164, i8 3 }, %struct.mtk_desc_function { ptr @.str.285, i8 4 }, %struct.mtk_desc_function { ptr @.str.286, i8 5 }, %struct.mtk_desc_function { ptr @.str.287, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.289 = private unnamed_addr constant [7 x i8] c"GPIO56\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"SPDIF_IN0\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[9]\00", align 1
@.compoundliteral.292 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.289, i8 0 }, %struct.mtk_desc_function { ptr @.str.284, i8 1 }, %struct.mtk_desc_function { ptr @.str.282, i8 2 }, %struct.mtk_desc_function { ptr @.str.290, i8 3 }, %struct.mtk_desc_function { ptr @.str.291, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.293 = private unnamed_addr constant [5 x i8] c"SDA1\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"GPIO57\00", align 1
@.compoundliteral.295 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.294, i8 0 }, %struct.mtk_desc_function { ptr @.str.293, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.296 = private unnamed_addr constant [5 x i8] c"SCL1\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"GPIO58\00", align 1
@.compoundliteral.298 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.297, i8 0 }, %struct.mtk_desc_function { ptr @.str.296, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.299 = private unnamed_addr constant [13 x i8] c"RAMBUF_I_CLK\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"GPIO59\00", align 1
@.compoundliteral.301 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.300, i8 0 }, %struct.mtk_desc_function { ptr @.str.299, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.302 = private unnamed_addr constant [8 x i8] c"WB_RSTB\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"GPIO60\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[11]\00", align 1
@.compoundliteral.305 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.303, i8 0 }, %struct.mtk_desc_function { ptr @.str.302, i8 1 }, %struct.mtk_desc_function { ptr @.str.304, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.306 = private unnamed_addr constant [9 x i8] c"F2W_DATA\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"GPIO61\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[16]\00", align 1
@.compoundliteral.309 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.307, i8 0 }, %struct.mtk_desc_function { ptr @.str.306, i8 1 }, %struct.mtk_desc_function { ptr @.str.308, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.310 = private unnamed_addr constant [8 x i8] c"F2W_CLK\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"GPIO62\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"F2W_CK\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[15]\00", align 1
@.compoundliteral.314 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.311, i8 0 }, %struct.mtk_desc_function { ptr @.str.312, i8 1 }, %struct.mtk_desc_function { ptr @.str.313, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.315 = private unnamed_addr constant [8 x i8] c"WB_SCLK\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"GPIO63\00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[13]\00", align 1
@.compoundliteral.318 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.316, i8 0 }, %struct.mtk_desc_function { ptr @.str.315, i8 1 }, %struct.mtk_desc_function { ptr @.str.317, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.319 = private unnamed_addr constant [9 x i8] c"WB_SDATA\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"GPIO64\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[12]\00", align 1
@.compoundliteral.322 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.320, i8 0 }, %struct.mtk_desc_function { ptr @.str.319, i8 1 }, %struct.mtk_desc_function { ptr @.str.321, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.323 = private unnamed_addr constant [7 x i8] c"WB_SEN\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"GPIO65\00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[14]\00", align 1
@.compoundliteral.326 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.324, i8 0 }, %struct.mtk_desc_function { ptr @.str.323, i8 1 }, %struct.mtk_desc_function { ptr @.str.325, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.327 = private unnamed_addr constant [9 x i8] c"WB_CRTL0\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"GPIO66\00", align 1
@.str.329 = private unnamed_addr constant [13 x i8] c"DFD_NTRST_XI\00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[17]\00", align 1
@.compoundliteral.331 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.328, i8 0 }, %struct.mtk_desc_function { ptr @.str.327, i8 1 }, %struct.mtk_desc_function { ptr @.str.329, i8 5 }, %struct.mtk_desc_function { ptr @.str.330, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.332 = private unnamed_addr constant [9 x i8] c"WB_CRTL1\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"GPIO67\00", align 1
@.str.334 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[18]\00", align 1
@.compoundliteral.335 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.333, i8 0 }, %struct.mtk_desc_function { ptr @.str.332, i8 1 }, %struct.mtk_desc_function { ptr @.str.216, i8 5 }, %struct.mtk_desc_function { ptr @.str.334, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.336 = private unnamed_addr constant [9 x i8] c"WB_CRTL2\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"GPIO68\00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[19]\00", align 1
@.compoundliteral.339 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.337, i8 0 }, %struct.mtk_desc_function { ptr @.str.336, i8 1 }, %struct.mtk_desc_function { ptr @.str.221, i8 5 }, %struct.mtk_desc_function { ptr @.str.338, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.340 = private unnamed_addr constant [9 x i8] c"WB_CRTL3\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"GPIO69\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[20]\00", align 1
@.compoundliteral.343 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.341, i8 0 }, %struct.mtk_desc_function { ptr @.str.340, i8 1 }, %struct.mtk_desc_function { ptr @.str.225, i8 5 }, %struct.mtk_desc_function { ptr @.str.342, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.344 = private unnamed_addr constant [9 x i8] c"WB_CRTL4\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"GPIO70\00", align 1
@.str.346 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[21]\00", align 1
@.compoundliteral.347 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.345, i8 0 }, %struct.mtk_desc_function { ptr @.str.344, i8 1 }, %struct.mtk_desc_function { ptr @.str.229, i8 5 }, %struct.mtk_desc_function { ptr @.str.346, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.348 = private unnamed_addr constant [9 x i8] c"WB_CRTL5\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"GPIO71\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[22]\00", align 1
@.compoundliteral.351 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.349, i8 0 }, %struct.mtk_desc_function { ptr @.str.348, i8 1 }, %struct.mtk_desc_function { ptr @.str.350, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.352 = private unnamed_addr constant [13 x i8] c"I2S0_DATA_IN\00", align 1
@.str.353 = private unnamed_addr constant [7 x i8] c"GPIO72\00", align 1
@.str.354 = private unnamed_addr constant [5 x i8] c"PWM0\00", align 1
@.str.355 = private unnamed_addr constant [9 x i8] c"DISP_PWM\00", align 1
@.str.356 = private unnamed_addr constant [11 x i8] c"WCN_I2S_DI\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[2]\00", align 1
@.compoundliteral.358 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.353, i8 0 }, %struct.mtk_desc_function { ptr @.str.352, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function { ptr @.str.354, i8 4 }, %struct.mtk_desc_function { ptr @.str.355, i8 5 }, %struct.mtk_desc_function { ptr @.str.356, i8 6 }, %struct.mtk_desc_function { ptr @.str.357, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.359 = private unnamed_addr constant [10 x i8] c"I2S0_LRCK\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"GPIO73\00", align 1
@.str.361 = private unnamed_addr constant [13 x i8] c"WCN_I2S_LRCK\00", align 1
@.str.362 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[5]\00", align 1
@.compoundliteral.363 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.360, i8 0 }, %struct.mtk_desc_function { ptr @.str.359, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function { ptr @.str.361, i8 6 }, %struct.mtk_desc_function { ptr @.str.362, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.364 = private unnamed_addr constant [9 x i8] c"I2S0_BCK\00", align 1
@.str.365 = private unnamed_addr constant [7 x i8] c"GPIO74\00", align 1
@.str.366 = private unnamed_addr constant [12 x i8] c"WCN_I2S_BCK\00", align 1
@.str.367 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[4]\00", align 1
@.compoundliteral.368 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.365, i8 0 }, %struct.mtk_desc_function { ptr @.str.364, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function { ptr @.str.366, i8 6 }, %struct.mtk_desc_function { ptr @.str.367, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.369 = private unnamed_addr constant [5 x i8] c"SDA0\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"GPIO75\00", align 1
@.compoundliteral.371 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.370, i8 0 }, %struct.mtk_desc_function { ptr @.str.369, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.372 = private unnamed_addr constant [5 x i8] c"SCL0\00", align 1
@.str.373 = private unnamed_addr constant [7 x i8] c"GPIO76\00", align 1
@.compoundliteral.374 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.373, i8 0 }, %struct.mtk_desc_function { ptr @.str.372, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.375 = private unnamed_addr constant [5 x i8] c"SDA2\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"GPIO77\00", align 1
@.compoundliteral.377 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.376, i8 0 }, %struct.mtk_desc_function { ptr @.str.375, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.378 = private unnamed_addr constant [5 x i8] c"SCL2\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"GPIO78\00", align 1
@.compoundliteral.380 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.379, i8 0 }, %struct.mtk_desc_function { ptr @.str.378, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.381 = private unnamed_addr constant [6 x i8] c"URXD0\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"GPIO79\00", align 1
@.str.383 = private unnamed_addr constant [6 x i8] c"UTXD0\00", align 1
@.compoundliteral.384 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.382, i8 0 }, %struct.mtk_desc_function { ptr @.str.381, i8 1 }, %struct.mtk_desc_function { ptr @.str.383, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.385 = private unnamed_addr constant [7 x i8] c"GPIO80\00", align 1
@.compoundliteral.386 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.385, i8 0 }, %struct.mtk_desc_function { ptr @.str.383, i8 1 }, %struct.mtk_desc_function { ptr @.str.381, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.387 = private unnamed_addr constant [6 x i8] c"URXD1\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"GPIO81\00", align 1
@.str.389 = private unnamed_addr constant [6 x i8] c"UTXD1\00", align 1
@.compoundliteral.390 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.388, i8 0 }, %struct.mtk_desc_function { ptr @.str.387, i8 1 }, %struct.mtk_desc_function { ptr @.str.389, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.391 = private unnamed_addr constant [7 x i8] c"GPIO82\00", align 1
@.compoundliteral.392 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.391, i8 0 }, %struct.mtk_desc_function { ptr @.str.389, i8 1 }, %struct.mtk_desc_function { ptr @.str.387, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.393 = private unnamed_addr constant [8 x i8] c"LCM_RST\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"GPIO83\00", align 1
@.str.395 = private unnamed_addr constant [11 x i8] c"VDAC_CK_XI\00", align 1
@.str.396 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[1]\00", align 1
@.compoundliteral.397 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.394, i8 0 }, %struct.mtk_desc_function { ptr @.str.393, i8 1 }, %struct.mtk_desc_function { ptr @.str.395, i8 2 }, %struct.mtk_desc_function { ptr @.str.396, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.398 = private unnamed_addr constant [7 x i8] c"DSI_TE\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"GPIO84\00", align 1
@.str.400 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[0]\00", align 1
@.compoundliteral.401 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.399, i8 0 }, %struct.mtk_desc_function { ptr @.str.398, i8 1 }, %struct.mtk_desc_function { ptr @.str.400, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.402 = private unnamed_addr constant [10 x i8] c"MSDC2_CMD\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"GPIO85\00", align 1
@.str.404 = private unnamed_addr constant [11 x i8] c"I2SOUT_BCK\00", align 1
@.compoundliteral.405 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.403, i8 0 }, %struct.mtk_desc_function { ptr @.str.402, i8 1 }, %struct.mtk_desc_function { ptr @.str.27, i8 2 }, %struct.mtk_desc_function { ptr @.str.293, i8 3 }, %struct.mtk_desc_function { ptr @.str.404, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.406 = private unnamed_addr constant [10 x i8] c"MSDC2_CLK\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"GPIO86\00", align 1
@.str.408 = private unnamed_addr constant [12 x i8] c"I2SOUT_LRCK\00", align 1
@.compoundliteral.409 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.407, i8 0 }, %struct.mtk_desc_function { ptr @.str.406, i8 1 }, %struct.mtk_desc_function { ptr @.str.22, i8 2 }, %struct.mtk_desc_function { ptr @.str.296, i8 3 }, %struct.mtk_desc_function { ptr @.str.408, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.410 = private unnamed_addr constant [11 x i8] c"MSDC2_DAT0\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"GPIO87\00", align 1
@.str.412 = private unnamed_addr constant [16 x i8] c"I2SOUT_DATA_OUT\00", align 1
@.compoundliteral.413 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.411, i8 0 }, %struct.mtk_desc_function { ptr @.str.410, i8 1 }, %struct.mtk_desc_function { ptr @.str.76, i8 2 }, %struct.mtk_desc_function { ptr @.str.383, i8 5 }, %struct.mtk_desc_function { ptr @.str.412, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.414 = private unnamed_addr constant [11 x i8] c"MSDC2_DAT1\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"GPIO88\00", align 1
@.compoundliteral.416 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.415, i8 0 }, %struct.mtk_desc_function { ptr @.str.414, i8 1 }, %struct.mtk_desc_function { ptr @.str.179, i8 2 }, %struct.mtk_desc_function { ptr @.str.354, i8 3 }, %struct.mtk_desc_function { ptr @.str.381, i8 5 }, %struct.mtk_desc_function { ptr @.str.273, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.417 = private unnamed_addr constant [11 x i8] c"MSDC2_DAT2\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"GPIO89\00", align 1
@.compoundliteral.419 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.418, i8 0 }, %struct.mtk_desc_function { ptr @.str.417, i8 1 }, %struct.mtk_desc_function { ptr @.str.71, i8 2 }, %struct.mtk_desc_function { ptr @.str.375, i8 3 }, %struct.mtk_desc_function { ptr @.str.389, i8 5 }, %struct.mtk_desc_function { ptr @.str.286, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.420 = private unnamed_addr constant [11 x i8] c"MSDC2_DAT3\00", align 1
@.str.421 = private unnamed_addr constant [7 x i8] c"GPIO90\00", align 1
@.str.422 = private unnamed_addr constant [9 x i8] c"ANT_SEL5\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"PWM3\00", align 1
@.compoundliteral.424 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.421, i8 0 }, %struct.mtk_desc_function { ptr @.str.420, i8 1 }, %struct.mtk_desc_function { ptr @.str.422, i8 2 }, %struct.mtk_desc_function { ptr @.str.378, i8 3 }, %struct.mtk_desc_function { ptr @.str.43, i8 4 }, %struct.mtk_desc_function { ptr @.str.387, i8 5 }, %struct.mtk_desc_function { ptr @.str.423, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.425 = private unnamed_addr constant [5 x i8] c"TDN3\00", align 1
@.str.426 = private unnamed_addr constant [6 x i8] c"GPI91\00", align 1
@.compoundliteral.427 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.426, i8 0 }, %struct.mtk_desc_function { ptr @.str.425, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.428 = private unnamed_addr constant [5 x i8] c"TDP3\00", align 1
@.str.429 = private unnamed_addr constant [6 x i8] c"GPI92\00", align 1
@.compoundliteral.430 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.429, i8 0 }, %struct.mtk_desc_function { ptr @.str.428, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.431 = private unnamed_addr constant [5 x i8] c"TDN2\00", align 1
@.str.432 = private unnamed_addr constant [6 x i8] c"GPI93\00", align 1
@.compoundliteral.433 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.432, i8 0 }, %struct.mtk_desc_function { ptr @.str.431, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.434 = private unnamed_addr constant [5 x i8] c"TDP2\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"GPI94\00", align 1
@.compoundliteral.436 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.435, i8 0 }, %struct.mtk_desc_function { ptr @.str.434, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.437 = private unnamed_addr constant [4 x i8] c"TCN\00", align 1
@.str.438 = private unnamed_addr constant [6 x i8] c"GPI95\00", align 1
@.compoundliteral.439 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.438, i8 0 }, %struct.mtk_desc_function { ptr @.str.437, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.440 = private unnamed_addr constant [4 x i8] c"TCP\00", align 1
@.str.441 = private unnamed_addr constant [6 x i8] c"GPI96\00", align 1
@.compoundliteral.442 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.441, i8 0 }, %struct.mtk_desc_function { ptr @.str.440, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.443 = private unnamed_addr constant [5 x i8] c"TDN1\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"GPI97\00", align 1
@.compoundliteral.445 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.444, i8 0 }, %struct.mtk_desc_function { ptr @.str.443, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.446 = private unnamed_addr constant [5 x i8] c"TDP1\00", align 1
@.str.447 = private unnamed_addr constant [6 x i8] c"GPI98\00", align 1
@.compoundliteral.448 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.447, i8 0 }, %struct.mtk_desc_function { ptr @.str.446, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.449 = private unnamed_addr constant [5 x i8] c"TDN0\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"GPI99\00", align 1
@.compoundliteral.451 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.450, i8 0 }, %struct.mtk_desc_function { ptr @.str.449, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.452 = private unnamed_addr constant [5 x i8] c"TDP0\00", align 1
@.str.453 = private unnamed_addr constant [7 x i8] c"GPI100\00", align 1
@.compoundliteral.454 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.453, i8 0 }, %struct.mtk_desc_function { ptr @.str.452, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.455 = private unnamed_addr constant [9 x i8] c"SPI2_CSN\00", align 1
@.str.456 = private unnamed_addr constant [8 x i8] c"GPIO101\00", align 1
@.str.457 = private unnamed_addr constant [8 x i8] c"SPI2_CS\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"SCL3\00", align 1
@.compoundliteral.459 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.456, i8 0 }, %struct.mtk_desc_function { ptr @.str.457, i8 1 }, %struct.mtk_desc_function { ptr @.str.458, i8 3 }, %struct.mtk_desc_function { ptr @.str.165, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.460 = private unnamed_addr constant [8 x i8] c"SPI2_MI\00", align 1
@.str.461 = private unnamed_addr constant [8 x i8] c"GPIO102\00", align 1
@.str.462 = private unnamed_addr constant [8 x i8] c"SPI2_MO\00", align 1
@.str.463 = private unnamed_addr constant [5 x i8] c"SDA3\00", align 1
@.compoundliteral.464 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.461, i8 0 }, %struct.mtk_desc_function { ptr @.str.460, i8 1 }, %struct.mtk_desc_function { ptr @.str.462, i8 2 }, %struct.mtk_desc_function { ptr @.str.463, i8 3 }, %struct.mtk_desc_function { ptr @.str.156, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.465 = private unnamed_addr constant [8 x i8] c"GPIO103\00", align 1
@.compoundliteral.466 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.465, i8 0 }, %struct.mtk_desc_function { ptr @.str.462, i8 1 }, %struct.mtk_desc_function { ptr @.str.460, i8 2 }, %struct.mtk_desc_function { ptr @.str.458, i8 3 }, %struct.mtk_desc_function { ptr @.str.148, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.467 = private unnamed_addr constant [9 x i8] c"SPI2_CLK\00", align 1
@.str.468 = private unnamed_addr constant [8 x i8] c"GPIO104\00", align 1
@.str.469 = private unnamed_addr constant [8 x i8] c"SPI2_CK\00", align 1
@.compoundliteral.470 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.468, i8 0 }, %struct.mtk_desc_function { ptr @.str.469, i8 1 }, %struct.mtk_desc_function { ptr @.str.463, i8 3 }, %struct.mtk_desc_function { ptr @.str.138, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.471 = private unnamed_addr constant [10 x i8] c"MSDC1_CMD\00", align 1
@.str.472 = private unnamed_addr constant [8 x i8] c"GPIO105\00", align 1
@.str.473 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[27]\00", align 1
@.compoundliteral.474 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.472, i8 0 }, %struct.mtk_desc_function { ptr @.str.471, i8 1 }, %struct.mtk_desc_function { ptr @.str.27, i8 2 }, %struct.mtk_desc_function { ptr @.str.293, i8 3 }, %struct.mtk_desc_function { ptr @.str.404, i8 6 }, %struct.mtk_desc_function { ptr @.str.473, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.475 = private unnamed_addr constant [10 x i8] c"MSDC1_CLK\00", align 1
@.str.476 = private unnamed_addr constant [8 x i8] c"GPIO106\00", align 1
@.str.477 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[28]\00", align 1
@.compoundliteral.478 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.476, i8 0 }, %struct.mtk_desc_function { ptr @.str.475, i8 1 }, %struct.mtk_desc_function { ptr @.str.22, i8 2 }, %struct.mtk_desc_function { ptr @.str.296, i8 3 }, %struct.mtk_desc_function { ptr @.str.408, i8 6 }, %struct.mtk_desc_function { ptr @.str.477, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.479 = private unnamed_addr constant [11 x i8] c"MSDC1_DAT0\00", align 1
@.str.480 = private unnamed_addr constant [8 x i8] c"GPIO107\00", align 1
@.str.481 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[26]\00", align 1
@.compoundliteral.482 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.480, i8 0 }, %struct.mtk_desc_function { ptr @.str.479, i8 1 }, %struct.mtk_desc_function { ptr @.str.76, i8 2 }, %struct.mtk_desc_function { ptr @.str.383, i8 5 }, %struct.mtk_desc_function { ptr @.str.412, i8 6 }, %struct.mtk_desc_function { ptr @.str.481, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.483 = private unnamed_addr constant [11 x i8] c"MSDC1_DAT1\00", align 1
@.str.484 = private unnamed_addr constant [8 x i8] c"GPIO108\00", align 1
@.str.485 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[25]\00", align 1
@.compoundliteral.486 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.484, i8 0 }, %struct.mtk_desc_function { ptr @.str.483, i8 1 }, %struct.mtk_desc_function { ptr @.str.179, i8 2 }, %struct.mtk_desc_function { ptr @.str.354, i8 3 }, %struct.mtk_desc_function { ptr @.str.381, i8 5 }, %struct.mtk_desc_function { ptr @.str.273, i8 6 }, %struct.mtk_desc_function { ptr @.str.485, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.487 = private unnamed_addr constant [11 x i8] c"MSDC1_DAT2\00", align 1
@.str.488 = private unnamed_addr constant [8 x i8] c"GPIO109\00", align 1
@.str.489 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[24]\00", align 1
@.compoundliteral.490 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.488, i8 0 }, %struct.mtk_desc_function { ptr @.str.487, i8 1 }, %struct.mtk_desc_function { ptr @.str.71, i8 2 }, %struct.mtk_desc_function { ptr @.str.375, i8 3 }, %struct.mtk_desc_function { ptr @.str.389, i8 5 }, %struct.mtk_desc_function { ptr @.str.286, i8 6 }, %struct.mtk_desc_function { ptr @.str.489, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.491 = private unnamed_addr constant [11 x i8] c"MSDC1_DAT3\00", align 1
@.str.492 = private unnamed_addr constant [8 x i8] c"GPIO110\00", align 1
@.str.493 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[23]\00", align 1
@.compoundliteral.494 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.492, i8 0 }, %struct.mtk_desc_function { ptr @.str.491, i8 1 }, %struct.mtk_desc_function { ptr @.str.422, i8 2 }, %struct.mtk_desc_function { ptr @.str.378, i8 3 }, %struct.mtk_desc_function { ptr @.str.43, i8 4 }, %struct.mtk_desc_function { ptr @.str.387, i8 5 }, %struct.mtk_desc_function { ptr @.str.423, i8 6 }, %struct.mtk_desc_function { ptr @.str.493, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.495 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT7\00", align 1
@.str.496 = private unnamed_addr constant [8 x i8] c"GPIO111\00", align 1
@.str.497 = private unnamed_addr constant [5 x i8] c"NLD7\00", align 1
@.compoundliteral.498 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.496, i8 0 }, %struct.mtk_desc_function { ptr @.str.495, i8 1 }, %struct.mtk_desc_function { ptr @.str.497, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.499 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT6\00", align 1
@.str.500 = private unnamed_addr constant [8 x i8] c"GPIO112\00", align 1
@.str.501 = private unnamed_addr constant [5 x i8] c"NLD6\00", align 1
@.compoundliteral.502 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.500, i8 0 }, %struct.mtk_desc_function { ptr @.str.499, i8 1 }, %struct.mtk_desc_function { ptr @.str.501, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.503 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT5\00", align 1
@.str.504 = private unnamed_addr constant [8 x i8] c"GPIO113\00", align 1
@.str.505 = private unnamed_addr constant [5 x i8] c"NLD5\00", align 1
@.compoundliteral.506 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.504, i8 0 }, %struct.mtk_desc_function { ptr @.str.503, i8 1 }, %struct.mtk_desc_function { ptr @.str.505, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.507 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT4\00", align 1
@.str.508 = private unnamed_addr constant [8 x i8] c"GPIO114\00", align 1
@.str.509 = private unnamed_addr constant [5 x i8] c"NLD4\00", align 1
@.compoundliteral.510 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.508, i8 0 }, %struct.mtk_desc_function { ptr @.str.507, i8 1 }, %struct.mtk_desc_function { ptr @.str.509, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.511 = private unnamed_addr constant [11 x i8] c"MSDC0_RSTB\00", align 1
@.str.512 = private unnamed_addr constant [8 x i8] c"GPIO115\00", align 1
@.str.513 = private unnamed_addr constant [5 x i8] c"NLD8\00", align 1
@.compoundliteral.514 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.512, i8 0 }, %struct.mtk_desc_function { ptr @.str.511, i8 1 }, %struct.mtk_desc_function { ptr @.str.513, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.515 = private unnamed_addr constant [10 x i8] c"MSDC0_CMD\00", align 1
@.str.516 = private unnamed_addr constant [8 x i8] c"GPIO116\00", align 1
@.str.517 = private unnamed_addr constant [5 x i8] c"NALE\00", align 1
@.compoundliteral.518 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.516, i8 0 }, %struct.mtk_desc_function { ptr @.str.515, i8 1 }, %struct.mtk_desc_function { ptr @.str.517, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.519 = private unnamed_addr constant [10 x i8] c"MSDC0_CLK\00", align 1
@.str.520 = private unnamed_addr constant [8 x i8] c"GPIO117\00", align 1
@.str.521 = private unnamed_addr constant [5 x i8] c"NWEB\00", align 1
@.compoundliteral.522 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.520, i8 0 }, %struct.mtk_desc_function { ptr @.str.519, i8 1 }, %struct.mtk_desc_function { ptr @.str.521, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.523 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT3\00", align 1
@.str.524 = private unnamed_addr constant [8 x i8] c"GPIO118\00", align 1
@.str.525 = private unnamed_addr constant [5 x i8] c"NLD3\00", align 1
@.compoundliteral.526 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.524, i8 0 }, %struct.mtk_desc_function { ptr @.str.523, i8 1 }, %struct.mtk_desc_function { ptr @.str.525, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.527 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT2\00", align 1
@.str.528 = private unnamed_addr constant [8 x i8] c"GPIO119\00", align 1
@.str.529 = private unnamed_addr constant [5 x i8] c"NLD2\00", align 1
@.compoundliteral.530 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.528, i8 0 }, %struct.mtk_desc_function { ptr @.str.527, i8 1 }, %struct.mtk_desc_function { ptr @.str.529, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.531 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT1\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"GPIO120\00", align 1
@.str.533 = private unnamed_addr constant [5 x i8] c"NLD1\00", align 1
@.compoundliteral.534 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.532, i8 0 }, %struct.mtk_desc_function { ptr @.str.531, i8 1 }, %struct.mtk_desc_function { ptr @.str.533, i8 4 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.535 = private unnamed_addr constant [11 x i8] c"MSDC0_DAT0\00", align 1
@.str.536 = private unnamed_addr constant [8 x i8] c"GPIO121\00", align 1
@.str.537 = private unnamed_addr constant [5 x i8] c"NLD0\00", align 1
@.compoundliteral.538 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.536, i8 0 }, %struct.mtk_desc_function { ptr @.str.535, i8 1 }, %struct.mtk_desc_function { ptr @.str.537, i8 4 }, %struct.mtk_desc_function { ptr @.str.50, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.539 = private unnamed_addr constant [4 x i8] c"CEC\00", align 1
@.str.540 = private unnamed_addr constant [8 x i8] c"GPIO122\00", align 1
@.compoundliteral.541 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.540, i8 0 }, %struct.mtk_desc_function { ptr @.str.539, i8 1 }, %struct.mtk_desc_function { ptr @.str.375, i8 4 }, %struct.mtk_desc_function { ptr @.str.381, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.542 = private unnamed_addr constant [6 x i8] c"HTPLG\00", align 1
@.str.543 = private unnamed_addr constant [8 x i8] c"GPIO123\00", align 1
@.compoundliteral.544 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.543, i8 0 }, %struct.mtk_desc_function { ptr @.str.542, i8 1 }, %struct.mtk_desc_function { ptr @.str.378, i8 4 }, %struct.mtk_desc_function { ptr @.str.383, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.545 = private unnamed_addr constant [8 x i8] c"HDMISCK\00", align 1
@.str.546 = private unnamed_addr constant [8 x i8] c"GPIO124\00", align 1
@.compoundliteral.547 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.546, i8 0 }, %struct.mtk_desc_function { ptr @.str.545, i8 1 }, %struct.mtk_desc_function { ptr @.str.293, i8 4 }, %struct.mtk_desc_function { ptr @.str.423, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.548 = private unnamed_addr constant [7 x i8] c"HDMISD\00", align 1
@.str.549 = private unnamed_addr constant [8 x i8] c"GPIO125\00", align 1
@.str.550 = private unnamed_addr constant [5 x i8] c"PWM4\00", align 1
@.compoundliteral.551 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.549, i8 0 }, %struct.mtk_desc_function { ptr @.str.548, i8 1 }, %struct.mtk_desc_function { ptr @.str.296, i8 4 }, %struct.mtk_desc_function { ptr @.str.550, i8 5 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.552 = private unnamed_addr constant [10 x i8] c"I2S0_MCLK\00", align 1
@.str.553 = private unnamed_addr constant [8 x i8] c"GPIO126\00", align 1
@.str.554 = private unnamed_addr constant [13 x i8] c"WCN_I2S_MCLK\00", align 1
@.str.555 = private unnamed_addr constant [13 x i8] c"DBG_MON_B[6]\00", align 1
@.compoundliteral.556 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.553, i8 0 }, %struct.mtk_desc_function { ptr @.str.552, i8 1 }, %struct.mtk_desc_function { ptr @.str.554, i8 6 }, %struct.mtk_desc_function { ptr @.str.555, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.557 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA0\00", align 1
@.str.558 = private unnamed_addr constant [8 x i8] c"GPIO127\00", align 1
@.compoundliteral.559 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.558, i8 0 }, %struct.mtk_desc_function { ptr @.str.557, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.560 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA1\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"GPIO128\00", align 1
@.compoundliteral.562 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.561, i8 0 }, %struct.mtk_desc_function { ptr @.str.560, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.563 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA2\00", align 1
@.str.564 = private unnamed_addr constant [8 x i8] c"GPIO129\00", align 1
@.compoundliteral.565 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.564, i8 0 }, %struct.mtk_desc_function { ptr @.str.563, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.566 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA3\00", align 1
@.str.567 = private unnamed_addr constant [8 x i8] c"GPIO130\00", align 1
@.compoundliteral.568 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.567, i8 0 }, %struct.mtk_desc_function { ptr @.str.566, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.569 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA4\00", align 1
@.str.570 = private unnamed_addr constant [8 x i8] c"GPIO131\00", align 1
@.compoundliteral.571 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.570, i8 0 }, %struct.mtk_desc_function { ptr @.str.569, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.572 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA5\00", align 1
@.str.573 = private unnamed_addr constant [8 x i8] c"GPIO132\00", align 1
@.compoundliteral.574 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.573, i8 0 }, %struct.mtk_desc_function { ptr @.str.572, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.575 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA6\00", align 1
@.str.576 = private unnamed_addr constant [8 x i8] c"GPIO133\00", align 1
@.compoundliteral.577 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.576, i8 0 }, %struct.mtk_desc_function { ptr @.str.575, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.578 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA7\00", align 1
@.str.579 = private unnamed_addr constant [8 x i8] c"GPIO134\00", align 1
@.compoundliteral.580 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.579, i8 0 }, %struct.mtk_desc_function { ptr @.str.578, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.581 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA8\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"GPIO135\00", align 1
@.compoundliteral.583 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.582, i8 0 }, %struct.mtk_desc_function { ptr @.str.581, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.584 = private unnamed_addr constant [14 x i8] c"RAMBUF_IDATA9\00", align 1
@.str.585 = private unnamed_addr constant [8 x i8] c"GPIO136\00", align 1
@.compoundliteral.586 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.585, i8 0 }, %struct.mtk_desc_function { ptr @.str.584, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.587 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA10\00", align 1
@.str.588 = private unnamed_addr constant [8 x i8] c"GPIO137\00", align 1
@.compoundliteral.589 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.588, i8 0 }, %struct.mtk_desc_function { ptr @.str.587, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.590 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA11\00", align 1
@.str.591 = private unnamed_addr constant [8 x i8] c"GPIO138\00", align 1
@.compoundliteral.592 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.591, i8 0 }, %struct.mtk_desc_function { ptr @.str.590, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.593 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA12\00", align 1
@.str.594 = private unnamed_addr constant [8 x i8] c"GPIO139\00", align 1
@.compoundliteral.595 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.594, i8 0 }, %struct.mtk_desc_function { ptr @.str.593, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.596 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA13\00", align 1
@.str.597 = private unnamed_addr constant [8 x i8] c"GPIO140\00", align 1
@.compoundliteral.598 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.597, i8 0 }, %struct.mtk_desc_function { ptr @.str.596, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.599 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA14\00", align 1
@.str.600 = private unnamed_addr constant [8 x i8] c"GPIO141\00", align 1
@.compoundliteral.601 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.600, i8 0 }, %struct.mtk_desc_function { ptr @.str.599, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.602 = private unnamed_addr constant [15 x i8] c"RAMBUF_IDATA15\00", align 1
@.str.603 = private unnamed_addr constant [8 x i8] c"GPIO142\00", align 1
@.compoundliteral.604 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.603, i8 0 }, %struct.mtk_desc_function { ptr @.str.602, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.605 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA0\00", align 1
@.str.606 = private unnamed_addr constant [8 x i8] c"GPIO143\00", align 1
@.compoundliteral.607 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.606, i8 0 }, %struct.mtk_desc_function { ptr @.str.605, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.608 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA1\00", align 1
@.str.609 = private unnamed_addr constant [8 x i8] c"GPIO144\00", align 1
@.compoundliteral.610 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.609, i8 0 }, %struct.mtk_desc_function { ptr @.str.608, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.611 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA2\00", align 1
@.str.612 = private unnamed_addr constant [8 x i8] c"GPIO145\00", align 1
@.compoundliteral.613 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.612, i8 0 }, %struct.mtk_desc_function { ptr @.str.611, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.614 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA3\00", align 1
@.str.615 = private unnamed_addr constant [8 x i8] c"GPIO146\00", align 1
@.compoundliteral.616 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.615, i8 0 }, %struct.mtk_desc_function { ptr @.str.614, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.617 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA4\00", align 1
@.str.618 = private unnamed_addr constant [8 x i8] c"GPIO147\00", align 1
@.compoundliteral.619 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.618, i8 0 }, %struct.mtk_desc_function { ptr @.str.617, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.620 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA5\00", align 1
@.str.621 = private unnamed_addr constant [8 x i8] c"GPIO148\00", align 1
@.compoundliteral.622 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.621, i8 0 }, %struct.mtk_desc_function { ptr @.str.620, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.623 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA6\00", align 1
@.str.624 = private unnamed_addr constant [8 x i8] c"GPIO149\00", align 1
@.compoundliteral.625 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.624, i8 0 }, %struct.mtk_desc_function { ptr @.str.623, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.626 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA7\00", align 1
@.str.627 = private unnamed_addr constant [8 x i8] c"GPIO150\00", align 1
@.compoundliteral.628 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.627, i8 0 }, %struct.mtk_desc_function { ptr @.str.626, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.629 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA8\00", align 1
@.str.630 = private unnamed_addr constant [8 x i8] c"GPIO151\00", align 1
@.compoundliteral.631 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.630, i8 0 }, %struct.mtk_desc_function { ptr @.str.629, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.632 = private unnamed_addr constant [14 x i8] c"RAMBUF_ODATA9\00", align 1
@.str.633 = private unnamed_addr constant [8 x i8] c"GPIO152\00", align 1
@.compoundliteral.634 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.633, i8 0 }, %struct.mtk_desc_function { ptr @.str.632, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.635 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA10\00", align 1
@.str.636 = private unnamed_addr constant [8 x i8] c"GPIO153\00", align 1
@.compoundliteral.637 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.636, i8 0 }, %struct.mtk_desc_function { ptr @.str.635, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.638 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA11\00", align 1
@.str.639 = private unnamed_addr constant [8 x i8] c"GPIO154\00", align 1
@.compoundliteral.640 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.639, i8 0 }, %struct.mtk_desc_function { ptr @.str.638, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.641 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA12\00", align 1
@.str.642 = private unnamed_addr constant [8 x i8] c"GPIO155\00", align 1
@.compoundliteral.643 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.642, i8 0 }, %struct.mtk_desc_function { ptr @.str.641, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.644 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA13\00", align 1
@.str.645 = private unnamed_addr constant [8 x i8] c"GPIO156\00", align 1
@.compoundliteral.646 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.645, i8 0 }, %struct.mtk_desc_function { ptr @.str.644, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.647 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA14\00", align 1
@.str.648 = private unnamed_addr constant [8 x i8] c"GPIO157\00", align 1
@.compoundliteral.649 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.648, i8 0 }, %struct.mtk_desc_function { ptr @.str.647, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.650 = private unnamed_addr constant [15 x i8] c"RAMBUF_ODATA15\00", align 1
@.str.651 = private unnamed_addr constant [8 x i8] c"GPIO158\00", align 1
@.compoundliteral.652 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.651, i8 0 }, %struct.mtk_desc_function { ptr @.str.650, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.653 = private unnamed_addr constant [11 x i8] c"RAMBUF_BE0\00", align 1
@.str.654 = private unnamed_addr constant [8 x i8] c"GPIO159\00", align 1
@.compoundliteral.655 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.654, i8 0 }, %struct.mtk_desc_function { ptr @.str.653, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.656 = private unnamed_addr constant [11 x i8] c"RAMBUF_BE1\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"GPIO160\00", align 1
@.compoundliteral.658 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.657, i8 0 }, %struct.mtk_desc_function { ptr @.str.656, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.659 = private unnamed_addr constant [10 x i8] c"AP2PT_INT\00", align 1
@.str.660 = private unnamed_addr constant [8 x i8] c"GPIO161\00", align 1
@.compoundliteral.661 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.660, i8 0 }, %struct.mtk_desc_function { ptr @.str.659, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.662 = private unnamed_addr constant [14 x i8] c"AP2PT_INT_CLR\00", align 1
@.str.663 = private unnamed_addr constant [8 x i8] c"GPIO162\00", align 1
@.compoundliteral.664 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.663, i8 0 }, %struct.mtk_desc_function { ptr @.str.662, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.665 = private unnamed_addr constant [10 x i8] c"PT2AP_INT\00", align 1
@.str.666 = private unnamed_addr constant [8 x i8] c"GPIO163\00", align 1
@.compoundliteral.667 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.666, i8 0 }, %struct.mtk_desc_function { ptr @.str.665, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.668 = private unnamed_addr constant [14 x i8] c"PT2AP_INT_CLR\00", align 1
@.str.669 = private unnamed_addr constant [8 x i8] c"GPIO164\00", align 1
@.compoundliteral.670 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.669, i8 0 }, %struct.mtk_desc_function { ptr @.str.668, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.671 = private unnamed_addr constant [10 x i8] c"AP2UP_INT\00", align 1
@.str.672 = private unnamed_addr constant [8 x i8] c"GPIO165\00", align 1
@.compoundliteral.673 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.672, i8 0 }, %struct.mtk_desc_function { ptr @.str.671, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.674 = private unnamed_addr constant [14 x i8] c"AP2UP_INT_CLR\00", align 1
@.str.675 = private unnamed_addr constant [8 x i8] c"GPIO166\00", align 1
@.compoundliteral.676 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.675, i8 0 }, %struct.mtk_desc_function { ptr @.str.674, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.677 = private unnamed_addr constant [10 x i8] c"UP2AP_INT\00", align 1
@.str.678 = private unnamed_addr constant [8 x i8] c"GPIO167\00", align 1
@.compoundliteral.679 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.678, i8 0 }, %struct.mtk_desc_function { ptr @.str.677, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.680 = private unnamed_addr constant [14 x i8] c"UP2AP_INT_CLR\00", align 1
@.str.681 = private unnamed_addr constant [8 x i8] c"GPIO168\00", align 1
@.compoundliteral.682 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.681, i8 0 }, %struct.mtk_desc_function { ptr @.str.680, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.683 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR0\00", align 1
@.str.684 = private unnamed_addr constant [8 x i8] c"GPIO169\00", align 1
@.compoundliteral.685 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.684, i8 0 }, %struct.mtk_desc_function { ptr @.str.683, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.686 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR1\00", align 1
@.str.687 = private unnamed_addr constant [8 x i8] c"GPIO170\00", align 1
@.compoundliteral.688 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.687, i8 0 }, %struct.mtk_desc_function { ptr @.str.686, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.689 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR2\00", align 1
@.str.690 = private unnamed_addr constant [8 x i8] c"GPIO171\00", align 1
@.compoundliteral.691 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.690, i8 0 }, %struct.mtk_desc_function { ptr @.str.689, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.692 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR3\00", align 1
@.str.693 = private unnamed_addr constant [8 x i8] c"GPIO172\00", align 1
@.compoundliteral.694 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.693, i8 0 }, %struct.mtk_desc_function { ptr @.str.692, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.695 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR4\00", align 1
@.str.696 = private unnamed_addr constant [8 x i8] c"GPIO173\00", align 1
@.compoundliteral.697 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.696, i8 0 }, %struct.mtk_desc_function { ptr @.str.695, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.698 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR5\00", align 1
@.str.699 = private unnamed_addr constant [8 x i8] c"GPIO174\00", align 1
@.compoundliteral.700 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.699, i8 0 }, %struct.mtk_desc_function { ptr @.str.698, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.701 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR6\00", align 1
@.str.702 = private unnamed_addr constant [8 x i8] c"GPIO175\00", align 1
@.compoundliteral.703 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.702, i8 0 }, %struct.mtk_desc_function { ptr @.str.701, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.704 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR7\00", align 1
@.str.705 = private unnamed_addr constant [8 x i8] c"GPIO176\00", align 1
@.compoundliteral.706 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.705, i8 0 }, %struct.mtk_desc_function { ptr @.str.704, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.707 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR8\00", align 1
@.str.708 = private unnamed_addr constant [8 x i8] c"GPIO177\00", align 1
@.compoundliteral.709 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.708, i8 0 }, %struct.mtk_desc_function { ptr @.str.707, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.710 = private unnamed_addr constant [13 x i8] c"RAMBUF_ADDR9\00", align 1
@.str.711 = private unnamed_addr constant [8 x i8] c"GPIO178\00", align 1
@.compoundliteral.712 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.711, i8 0 }, %struct.mtk_desc_function { ptr @.str.710, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.713 = private unnamed_addr constant [14 x i8] c"RAMBUF_ADDR10\00", align 1
@.str.714 = private unnamed_addr constant [8 x i8] c"GPIO179\00", align 1
@.compoundliteral.715 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.714, i8 0 }, %struct.mtk_desc_function { ptr @.str.713, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.716 = private unnamed_addr constant [10 x i8] c"RAMBUF_RW\00", align 1
@.str.717 = private unnamed_addr constant [8 x i8] c"GPIO180\00", align 1
@.compoundliteral.718 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.717, i8 0 }, %struct.mtk_desc_function { ptr @.str.716, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.719 = private unnamed_addr constant [12 x i8] c"RAMBUF_LAST\00", align 1
@.str.720 = private unnamed_addr constant [8 x i8] c"GPIO181\00", align 1
@.compoundliteral.721 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.720, i8 0 }, %struct.mtk_desc_function { ptr @.str.719, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.722 = private unnamed_addr constant [10 x i8] c"RAMBUF_HP\00", align 1
@.str.723 = private unnamed_addr constant [8 x i8] c"GPIO182\00", align 1
@.compoundliteral.724 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.723, i8 0 }, %struct.mtk_desc_function { ptr @.str.722, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.725 = private unnamed_addr constant [11 x i8] c"RAMBUF_REQ\00", align 1
@.str.726 = private unnamed_addr constant [8 x i8] c"GPIO183\00", align 1
@.compoundliteral.727 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.726, i8 0 }, %struct.mtk_desc_function { ptr @.str.725, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.728 = private unnamed_addr constant [11 x i8] c"RAMBUF_ALE\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"GPIO184\00", align 1
@.compoundliteral.730 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.729, i8 0 }, %struct.mtk_desc_function { ptr @.str.728, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.731 = private unnamed_addr constant [11 x i8] c"RAMBUF_DLE\00", align 1
@.str.732 = private unnamed_addr constant [8 x i8] c"GPIO185\00", align 1
@.compoundliteral.733 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.732, i8 0 }, %struct.mtk_desc_function { ptr @.str.731, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.734 = private unnamed_addr constant [12 x i8] c"RAMBUF_WDLE\00", align 1
@.str.735 = private unnamed_addr constant [8 x i8] c"GPIO186\00", align 1
@.compoundliteral.736 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.735, i8 0 }, %struct.mtk_desc_function { ptr @.str.734, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.737 = private unnamed_addr constant [13 x i8] c"RAMBUF_O_CLK\00", align 1
@.str.738 = private unnamed_addr constant [8 x i8] c"GPIO187\00", align 1
@.compoundliteral.739 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.738, i8 0 }, %struct.mtk_desc_function { ptr @.str.737, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.740 = private unnamed_addr constant [10 x i8] c"I2S2_MCLK\00", align 1
@.str.741 = private unnamed_addr constant [8 x i8] c"GPIO188\00", align 1
@.compoundliteral.742 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.741, i8 0 }, %struct.mtk_desc_function { ptr @.str.740, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.743 = private unnamed_addr constant [10 x i8] c"I2S3_DATA\00", align 1
@.str.744 = private unnamed_addr constant [8 x i8] c"GPIO189\00", align 1
@.str.745 = private unnamed_addr constant [15 x i8] c"I2S3_DATA_BYPS\00", align 1
@.compoundliteral.746 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.744, i8 0 }, %struct.mtk_desc_function { ptr @.str.745, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.747 = private unnamed_addr constant [13 x i8] c"I2S3_DATA_IN\00", align 1
@.str.748 = private unnamed_addr constant [8 x i8] c"GPIO190\00", align 1
@.compoundliteral.749 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.748, i8 0 }, %struct.mtk_desc_function { ptr @.str.747, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.750 = private unnamed_addr constant [9 x i8] c"I2S3_BCK\00", align 1
@.str.751 = private unnamed_addr constant [8 x i8] c"GPIO191\00", align 1
@.compoundliteral.752 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.751, i8 0 }, %struct.mtk_desc_function { ptr @.str.750, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.753 = private unnamed_addr constant [10 x i8] c"I2S3_LRCK\00", align 1
@.str.754 = private unnamed_addr constant [8 x i8] c"GPIO192\00", align 1
@.compoundliteral.755 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.754, i8 0 }, %struct.mtk_desc_function { ptr @.str.753, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.756 = private unnamed_addr constant [10 x i8] c"I2S3_MCLK\00", align 1
@.str.757 = private unnamed_addr constant [8 x i8] c"GPIO193\00", align 1
@.compoundliteral.758 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.757, i8 0 }, %struct.mtk_desc_function { ptr @.str.756, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.759 = private unnamed_addr constant [10 x i8] c"I2S4_DATA\00", align 1
@.str.760 = private unnamed_addr constant [8 x i8] c"GPIO194\00", align 1
@.str.761 = private unnamed_addr constant [15 x i8] c"I2S4_DATA_BYPS\00", align 1
@.compoundliteral.762 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.760, i8 0 }, %struct.mtk_desc_function { ptr @.str.759, i8 1 }, %struct.mtk_desc_function { ptr @.str.761, i8 2 }, %struct.mtk_desc_function { ptr @.str.96, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.763 = private unnamed_addr constant [13 x i8] c"I2S4_DATA_IN\00", align 1
@.str.764 = private unnamed_addr constant [8 x i8] c"GPIO195\00", align 1
@.compoundliteral.765 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.764, i8 0 }, %struct.mtk_desc_function { ptr @.str.763, i8 1 }, %struct.mtk_desc_function { ptr @.str.70, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.766 = private unnamed_addr constant [9 x i8] c"I2S4_BCK\00", align 1
@.str.767 = private unnamed_addr constant [8 x i8] c"GPIO196\00", align 1
@.compoundliteral.768 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.767, i8 0 }, %struct.mtk_desc_function { ptr @.str.766, i8 1 }, %struct.mtk_desc_function { ptr @.str.75, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.769 = private unnamed_addr constant [10 x i8] c"I2S4_LRCK\00", align 1
@.str.770 = private unnamed_addr constant [8 x i8] c"GPIO197\00", align 1
@.compoundliteral.771 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.770, i8 0 }, %struct.mtk_desc_function { ptr @.str.769, i8 1 }, %struct.mtk_desc_function { ptr @.str.86, i8 3 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.772 = private unnamed_addr constant [10 x i8] c"I2S4_MCLK\00", align 1
@.str.773 = private unnamed_addr constant [8 x i8] c"GPIO198\00", align 1
@.compoundliteral.774 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.773, i8 0 }, %struct.mtk_desc_function { ptr @.str.772, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.775 = private unnamed_addr constant [9 x i8] c"SPI1_CLK\00", align 1
@.str.776 = private unnamed_addr constant [8 x i8] c"GPIO199\00", align 1
@.str.777 = private unnamed_addr constant [8 x i8] c"SPI1_CK\00", align 1
@.str.778 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[15]\00", align 1
@.compoundliteral.779 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.776, i8 0 }, %struct.mtk_desc_function { ptr @.str.777, i8 1 }, %struct.mtk_desc_function { ptr @.str.43, i8 3 }, %struct.mtk_desc_function { ptr @.str.110, i8 4 }, %struct.mtk_desc_function { ptr @.str.778, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.780 = private unnamed_addr constant [10 x i8] c"SPDIF_OUT\00", align 1
@.str.781 = private unnamed_addr constant [8 x i8] c"GPIO200\00", align 1
@.str.782 = private unnamed_addr constant [8 x i8] c"G1_TXD3\00", align 1
@.str.783 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[16]\00", align 1
@.compoundliteral.784 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.781, i8 0 }, %struct.mtk_desc_function { ptr @.str.780, i8 1 }, %struct.mtk_desc_function { ptr @.str.782, i8 5 }, %struct.mtk_desc_function { ptr @.str.59, i8 6 }, %struct.mtk_desc_function { ptr @.str.783, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.785 = private unnamed_addr constant [8 x i8] c"GPIO201\00", align 1
@.str.786 = private unnamed_addr constant [8 x i8] c"G1_TXEN\00", align 1
@.str.787 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[17]\00", align 1
@.compoundliteral.788 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.785, i8 0 }, %struct.mtk_desc_function { ptr @.str.290, i8 1 }, %struct.mtk_desc_function { ptr @.str.786, i8 5 }, %struct.mtk_desc_function { ptr @.str.61, i8 6 }, %struct.mtk_desc_function { ptr @.str.787, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.789 = private unnamed_addr constant [8 x i8] c"GPIO202\00", align 1
@.compoundliteral.790 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.789, i8 0 }, %struct.mtk_desc_function { ptr @.str.278, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.791 = private unnamed_addr constant [8 x i8] c"GPIO203\00", align 1
@.str.792 = private unnamed_addr constant [8 x i8] c"G1_TXD2\00", align 1
@.str.793 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[18]\00", align 1
@.compoundliteral.794 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.791, i8 0 }, %struct.mtk_desc_function { ptr @.str.354, i8 1 }, %struct.mtk_desc_function { ptr @.str.355, i8 2 }, %struct.mtk_desc_function { ptr @.str.792, i8 5 }, %struct.mtk_desc_function { ptr @.str.793, i8 7 }, %struct.mtk_desc_function { ptr @.str.209, i8 9 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.795 = private unnamed_addr constant [8 x i8] c"GPIO204\00", align 1
@.str.796 = private unnamed_addr constant [6 x i8] c"CLKM3\00", align 1
@.str.797 = private unnamed_addr constant [8 x i8] c"G1_TXD1\00", align 1
@.str.798 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[19]\00", align 1
@.compoundliteral.799 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.795, i8 0 }, %struct.mtk_desc_function { ptr @.str.273, i8 1 }, %struct.mtk_desc_function { ptr @.str.796, i8 2 }, %struct.mtk_desc_function { ptr @.str.797, i8 5 }, %struct.mtk_desc_function { ptr @.str.798, i8 7 }, %struct.mtk_desc_function { ptr @.str.743, i8 9 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.800 = private unnamed_addr constant [8 x i8] c"GPIO205\00", align 1
@.str.801 = private unnamed_addr constant [6 x i8] c"CLKM2\00", align 1
@.str.802 = private unnamed_addr constant [8 x i8] c"G1_TXD0\00", align 1
@.str.803 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[20]\00", align 1
@.compoundliteral.804 = internal global [6 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.800, i8 0 }, %struct.mtk_desc_function { ptr @.str.286, i8 1 }, %struct.mtk_desc_function { ptr @.str.801, i8 2 }, %struct.mtk_desc_function { ptr @.str.802, i8 5 }, %struct.mtk_desc_function { ptr @.str.803, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.805 = private unnamed_addr constant [8 x i8] c"GPIO206\00", align 1
@.str.806 = private unnamed_addr constant [6 x i8] c"CLKM1\00", align 1
@.str.807 = private unnamed_addr constant [7 x i8] c"G1_TXC\00", align 1
@.str.808 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[21]\00", align 1
@.compoundliteral.809 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.805, i8 0 }, %struct.mtk_desc_function { ptr @.str.423, i8 1 }, %struct.mtk_desc_function { ptr @.str.806, i8 2 }, %struct.mtk_desc_function { ptr @.str.43, i8 3 }, %struct.mtk_desc_function { ptr @.str.807, i8 5 }, %struct.mtk_desc_function { ptr @.str.808, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.810 = private unnamed_addr constant [8 x i8] c"GPIO207\00", align 1
@.str.811 = private unnamed_addr constant [6 x i8] c"CLKM0\00", align 1
@.str.812 = private unnamed_addr constant [7 x i8] c"G1_RXC\00", align 1
@.str.813 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[22]\00", align 1
@.compoundliteral.814 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.810, i8 0 }, %struct.mtk_desc_function { ptr @.str.550, i8 1 }, %struct.mtk_desc_function { ptr @.str.811, i8 2 }, %struct.mtk_desc_function { ptr @.str.43, i8 3 }, %struct.mtk_desc_function { ptr @.str.812, i8 5 }, %struct.mtk_desc_function { ptr @.str.813, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.815 = private unnamed_addr constant [12 x i8] c"AUD_EXT_CK1\00", align 1
@.str.816 = private unnamed_addr constant [8 x i8] c"GPIO208\00", align 1
@.str.817 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[31]\00", align 1
@.compoundliteral.818 = internal global [9 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.816, i8 0 }, %struct.mtk_desc_function { ptr @.str.815, i8 1 }, %struct.mtk_desc_function { ptr @.str.354, i8 2 }, %struct.mtk_desc_function { ptr @.str.109, i8 3 }, %struct.mtk_desc_function { ptr @.str.422, i8 4 }, %struct.mtk_desc_function { ptr @.str.355, i8 5 }, %struct.mtk_desc_function { ptr @.str.817, i8 7 }, %struct.mtk_desc_function { ptr @.str.109, i8 11 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.819 = private unnamed_addr constant [12 x i8] c"AUD_EXT_CK2\00", align 1
@.str.820 = private unnamed_addr constant [8 x i8] c"GPIO209\00", align 1
@.str.821 = private unnamed_addr constant [14 x i8] c"DBG_MON_A[32]\00", align 1
@.compoundliteral.822 = internal global [8 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.820, i8 0 }, %struct.mtk_desc_function { ptr @.str.819, i8 1 }, %struct.mtk_desc_function { ptr @.str.164, i8 2 }, %struct.mtk_desc_function { ptr @.str.117, i8 3 }, %struct.mtk_desc_function { ptr @.str.273, i8 5 }, %struct.mtk_desc_function { ptr @.str.821, i8 7 }, %struct.mtk_desc_function { ptr @.str.117, i8 11 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.823 = private unnamed_addr constant [10 x i8] c"AUD_CLOCK\00", align 1
@.str.824 = private unnamed_addr constant [8 x i8] c"GPIO210\00", align 1
@.compoundliteral.825 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.824, i8 0 }, %struct.mtk_desc_function { ptr @.str.823, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.826 = private unnamed_addr constant [10 x i8] c"DVP_RESET\00", align 1
@.str.827 = private unnamed_addr constant [8 x i8] c"GPIO211\00", align 1
@.compoundliteral.828 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.827, i8 0 }, %struct.mtk_desc_function { ptr @.str.826, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.829 = private unnamed_addr constant [10 x i8] c"DVP_CLOCK\00", align 1
@.str.830 = private unnamed_addr constant [8 x i8] c"GPIO212\00", align 1
@.compoundliteral.831 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.830, i8 0 }, %struct.mtk_desc_function { ptr @.str.829, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.832 = private unnamed_addr constant [7 x i8] c"DVP_CS\00", align 1
@.str.833 = private unnamed_addr constant [8 x i8] c"GPIO213\00", align 1
@.compoundliteral.834 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.833, i8 0 }, %struct.mtk_desc_function { ptr @.str.832, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.835 = private unnamed_addr constant [7 x i8] c"DVP_CK\00", align 1
@.str.836 = private unnamed_addr constant [8 x i8] c"GPIO214\00", align 1
@.compoundliteral.837 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.836, i8 0 }, %struct.mtk_desc_function { ptr @.str.835, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.838 = private unnamed_addr constant [7 x i8] c"DVP_DI\00", align 1
@.str.839 = private unnamed_addr constant [8 x i8] c"GPIO215\00", align 1
@.compoundliteral.840 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.839, i8 0 }, %struct.mtk_desc_function { ptr @.str.838, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.841 = private unnamed_addr constant [7 x i8] c"DVP_DO\00", align 1
@.str.842 = private unnamed_addr constant [8 x i8] c"GPIO216\00", align 1
@.compoundliteral.843 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.842, i8 0 }, %struct.mtk_desc_function { ptr @.str.841, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.844 = private unnamed_addr constant [6 x i8] c"AP_CS\00", align 1
@.str.845 = private unnamed_addr constant [8 x i8] c"GPIO217\00", align 1
@.compoundliteral.846 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.845, i8 0 }, %struct.mtk_desc_function { ptr @.str.844, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.847 = private unnamed_addr constant [6 x i8] c"AP_CK\00", align 1
@.str.848 = private unnamed_addr constant [8 x i8] c"GPIO218\00", align 1
@.compoundliteral.849 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.848, i8 0 }, %struct.mtk_desc_function { ptr @.str.847, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.850 = private unnamed_addr constant [6 x i8] c"AP_DI\00", align 1
@.str.851 = private unnamed_addr constant [8 x i8] c"GPIO219\00", align 1
@.compoundliteral.852 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.851, i8 0 }, %struct.mtk_desc_function { ptr @.str.850, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.853 = private unnamed_addr constant [6 x i8] c"AP_DO\00", align 1
@.str.854 = private unnamed_addr constant [8 x i8] c"GPIO220\00", align 1
@.compoundliteral.855 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.854, i8 0 }, %struct.mtk_desc_function { ptr @.str.853, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.856 = private unnamed_addr constant [9 x i8] c"DVD_BCLK\00", align 1
@.str.857 = private unnamed_addr constant [8 x i8] c"GPIO221\00", align 1
@.compoundliteral.858 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.857, i8 0 }, %struct.mtk_desc_function { ptr @.str.856, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.859 = private unnamed_addr constant [10 x i8] c"T8032_CLK\00", align 1
@.str.860 = private unnamed_addr constant [8 x i8] c"GPIO222\00", align 1
@.compoundliteral.861 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.860, i8 0 }, %struct.mtk_desc_function { ptr @.str.859, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.862 = private unnamed_addr constant [8 x i8] c"AP_BCLK\00", align 1
@.str.863 = private unnamed_addr constant [8 x i8] c"GPIO223\00", align 1
@.compoundliteral.864 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.863, i8 0 }, %struct.mtk_desc_function { ptr @.str.862, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.865 = private unnamed_addr constant [8 x i8] c"HOST_CS\00", align 1
@.str.866 = private unnamed_addr constant [8 x i8] c"GPIO224\00", align 1
@.compoundliteral.867 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.866, i8 0 }, %struct.mtk_desc_function { ptr @.str.865, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.868 = private unnamed_addr constant [8 x i8] c"HOST_CK\00", align 1
@.str.869 = private unnamed_addr constant [8 x i8] c"GPIO225\00", align 1
@.compoundliteral.870 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.869, i8 0 }, %struct.mtk_desc_function { ptr @.str.868, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.871 = private unnamed_addr constant [9 x i8] c"HOST_DO0\00", align 1
@.str.872 = private unnamed_addr constant [8 x i8] c"GPIO226\00", align 1
@.compoundliteral.873 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.872, i8 0 }, %struct.mtk_desc_function { ptr @.str.871, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.874 = private unnamed_addr constant [9 x i8] c"HOST_DO1\00", align 1
@.str.875 = private unnamed_addr constant [8 x i8] c"GPIO227\00", align 1
@.compoundliteral.876 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.875, i8 0 }, %struct.mtk_desc_function { ptr @.str.874, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.877 = private unnamed_addr constant [7 x i8] c"SLV_CS\00", align 1
@.str.878 = private unnamed_addr constant [8 x i8] c"GPIO228\00", align 1
@.compoundliteral.879 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.878, i8 0 }, %struct.mtk_desc_function { ptr @.str.877, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.880 = private unnamed_addr constant [7 x i8] c"SLV_CK\00", align 1
@.str.881 = private unnamed_addr constant [8 x i8] c"GPIO229\00", align 1
@.compoundliteral.882 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.881, i8 0 }, %struct.mtk_desc_function { ptr @.str.880, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.883 = private unnamed_addr constant [8 x i8] c"SLV_DI0\00", align 1
@.str.884 = private unnamed_addr constant [8 x i8] c"GPIO230\00", align 1
@.compoundliteral.885 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.884, i8 0 }, %struct.mtk_desc_function { ptr @.str.883, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.886 = private unnamed_addr constant [8 x i8] c"SLV_DI1\00", align 1
@.str.887 = private unnamed_addr constant [8 x i8] c"GPIO231\00", align 1
@.compoundliteral.888 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.887, i8 0 }, %struct.mtk_desc_function { ptr @.str.886, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.889 = private unnamed_addr constant [11 x i8] c"AP2DSP_INT\00", align 1
@.str.890 = private unnamed_addr constant [8 x i8] c"GPIO232\00", align 1
@.compoundliteral.891 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.890, i8 0 }, %struct.mtk_desc_function { ptr @.str.889, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.892 = private unnamed_addr constant [15 x i8] c"AP2DSP_INT_CLR\00", align 1
@.str.893 = private unnamed_addr constant [8 x i8] c"GPIO233\00", align 1
@.compoundliteral.894 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.893, i8 0 }, %struct.mtk_desc_function { ptr @.str.892, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.895 = private unnamed_addr constant [11 x i8] c"DSP2AP_INT\00", align 1
@.str.896 = private unnamed_addr constant [8 x i8] c"GPIO234\00", align 1
@.compoundliteral.897 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.896, i8 0 }, %struct.mtk_desc_function { ptr @.str.895, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.898 = private unnamed_addr constant [15 x i8] c"DSP2AP_INT_CLR\00", align 1
@.str.899 = private unnamed_addr constant [8 x i8] c"GPIO235\00", align 1
@.compoundliteral.900 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.899, i8 0 }, %struct.mtk_desc_function { ptr @.str.898, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.901 = private unnamed_addr constant [10 x i8] c"EXT_SDIO3\00", align 1
@.str.902 = private unnamed_addr constant [8 x i8] c"GPIO236\00", align 1
@.str.903 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[1]\00", align 1
@.compoundliteral.904 = internal global [5 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.902, i8 0 }, %struct.mtk_desc_function { ptr @.str.901, i8 1 }, %struct.mtk_desc_function { ptr @.str.163, i8 2 }, %struct.mtk_desc_function { ptr @.str.903, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.905 = private unnamed_addr constant [10 x i8] c"EXT_SDIO2\00", align 1
@.str.906 = private unnamed_addr constant [8 x i8] c"GPIO237\00", align 1
@.compoundliteral.907 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.906, i8 0 }, %struct.mtk_desc_function { ptr @.str.905, i8 1 }, %struct.mtk_desc_function { ptr @.str.155, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.908 = private unnamed_addr constant [10 x i8] c"EXT_SDIO1\00", align 1
@.str.909 = private unnamed_addr constant [8 x i8] c"GPIO238\00", align 1
@.compoundliteral.910 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.909, i8 0 }, %struct.mtk_desc_function { ptr @.str.908, i8 1 }, %struct.mtk_desc_function { ptr @.str.147, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.911 = private unnamed_addr constant [10 x i8] c"EXT_SDIO0\00", align 1
@.str.912 = private unnamed_addr constant [8 x i8] c"GPIO239\00", align 1
@.compoundliteral.913 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.912, i8 0 }, %struct.mtk_desc_function { ptr @.str.911, i8 1 }, %struct.mtk_desc_function { ptr @.str.137, i8 2 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.914 = private unnamed_addr constant [8 x i8] c"EXT_XCS\00", align 1
@.str.915 = private unnamed_addr constant [8 x i8] c"GPIO240\00", align 1
@.compoundliteral.916 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.915, i8 0 }, %struct.mtk_desc_function { ptr @.str.914, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.917 = private unnamed_addr constant [8 x i8] c"EXT_SCK\00", align 1
@.str.918 = private unnamed_addr constant [8 x i8] c"GPIO241\00", align 1
@.compoundliteral.919 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.918, i8 0 }, %struct.mtk_desc_function { ptr @.str.917, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.920 = private unnamed_addr constant [6 x i8] c"URTS2\00", align 1
@.str.921 = private unnamed_addr constant [8 x i8] c"GPIO242\00", align 1
@.str.922 = private unnamed_addr constant [6 x i8] c"UTXD3\00", align 1
@.str.923 = private unnamed_addr constant [6 x i8] c"URXD3\00", align 1
@.str.924 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[32]\00", align 1
@.compoundliteral.925 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.921, i8 0 }, %struct.mtk_desc_function { ptr @.str.920, i8 1 }, %struct.mtk_desc_function { ptr @.str.922, i8 2 }, %struct.mtk_desc_function { ptr @.str.923, i8 3 }, %struct.mtk_desc_function { ptr @.str.296, i8 4 }, %struct.mtk_desc_function { ptr @.str.924, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.926 = private unnamed_addr constant [6 x i8] c"UCTS2\00", align 1
@.str.927 = private unnamed_addr constant [8 x i8] c"GPIO243\00", align 1
@.str.928 = private unnamed_addr constant [13 x i8] c"DBG_MON_A[6]\00", align 1
@.compoundliteral.929 = internal global [7 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.927, i8 0 }, %struct.mtk_desc_function { ptr @.str.926, i8 1 }, %struct.mtk_desc_function { ptr @.str.923, i8 2 }, %struct.mtk_desc_function { ptr @.str.922, i8 3 }, %struct.mtk_desc_function { ptr @.str.293, i8 4 }, %struct.mtk_desc_function { ptr @.str.928, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.930 = private unnamed_addr constant [12 x i8] c"HDMI_SDA_RX\00", align 1
@.str.931 = private unnamed_addr constant [8 x i8] c"GPIO244\00", align 1
@.compoundliteral.932 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.931, i8 0 }, %struct.mtk_desc_function { ptr @.str.930, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.933 = private unnamed_addr constant [12 x i8] c"HDMI_SCL_RX\00", align 1
@.str.934 = private unnamed_addr constant [8 x i8] c"GPIO245\00", align 1
@.compoundliteral.935 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.934, i8 0 }, %struct.mtk_desc_function { ptr @.str.933, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.936 = private unnamed_addr constant [10 x i8] c"MHL_SENCE\00", align 1
@.str.937 = private unnamed_addr constant [8 x i8] c"GPIO246\00", align 1
@.compoundliteral.938 = internal global [2 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.937, i8 0 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.939 = private unnamed_addr constant [17 x i8] c"HDMI_HPD_CBUS_RX\00", align 1
@.str.940 = private unnamed_addr constant [8 x i8] c"GPIO247\00", align 1
@.str.941 = private unnamed_addr constant [12 x i8] c"HDMI_HPD_RX\00", align 1
@.compoundliteral.942 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.940, i8 0 }, %struct.mtk_desc_function { ptr @.str.941, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.943 = private unnamed_addr constant [17 x i8] c"HDMI_TESTOUTP_RX\00", align 1
@.str.944 = private unnamed_addr constant [8 x i8] c"GPIO248\00", align 1
@.compoundliteral.945 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.944, i8 0 }, %struct.mtk_desc_function { ptr @.str.943, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.946 = private unnamed_addr constant [12 x i8] c"MSDC0E_RSTB\00", align 1
@.str.947 = private unnamed_addr constant [8 x i8] c"GPIO249\00", align 1
@.compoundliteral.948 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.947, i8 0 }, %struct.mtk_desc_function { ptr @.str.946, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.949 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT7\00", align 1
@.str.950 = private unnamed_addr constant [8 x i8] c"GPIO250\00", align 1
@.str.951 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT7\00", align 1
@.str.952 = private unnamed_addr constant [15 x i8] c"PCIE0_CLKREQ_N\00", align 1
@.compoundliteral.953 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.950, i8 0 }, %struct.mtk_desc_function { ptr @.str.951, i8 1 }, %struct.mtk_desc_function { ptr @.str.952, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.954 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT6\00", align 1
@.str.955 = private unnamed_addr constant [8 x i8] c"GPIO251\00", align 1
@.str.956 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT6\00", align 1
@.compoundliteral.957 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.955, i8 0 }, %struct.mtk_desc_function { ptr @.str.956, i8 1 }, %struct.mtk_desc_function { ptr @.str.158, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.958 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT5\00", align 1
@.str.959 = private unnamed_addr constant [8 x i8] c"GPIO252\00", align 1
@.str.960 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT5\00", align 1
@.str.961 = private unnamed_addr constant [15 x i8] c"PCIE1_CLKREQ_N\00", align 1
@.compoundliteral.962 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.959, i8 0 }, %struct.mtk_desc_function { ptr @.str.960, i8 1 }, %struct.mtk_desc_function { ptr @.str.961, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.963 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT4\00", align 1
@.str.964 = private unnamed_addr constant [8 x i8] c"GPIO253\00", align 1
@.str.965 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT4\00", align 1
@.compoundliteral.966 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.964, i8 0 }, %struct.mtk_desc_function { ptr @.str.965, i8 1 }, %struct.mtk_desc_function { ptr @.str.150, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.967 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT3\00", align 1
@.str.968 = private unnamed_addr constant [8 x i8] c"GPIO254\00", align 1
@.str.969 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT3\00", align 1
@.str.970 = private unnamed_addr constant [15 x i8] c"PCIE2_CLKREQ_N\00", align 1
@.compoundliteral.971 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.968, i8 0 }, %struct.mtk_desc_function { ptr @.str.969, i8 1 }, %struct.mtk_desc_function { ptr @.str.970, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.972 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT2\00", align 1
@.str.973 = private unnamed_addr constant [8 x i8] c"GPIO255\00", align 1
@.str.974 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT2\00", align 1
@.compoundliteral.975 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.973, i8 0 }, %struct.mtk_desc_function { ptr @.str.974, i8 1 }, %struct.mtk_desc_function { ptr @.str.141, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.976 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT1\00", align 1
@.str.977 = private unnamed_addr constant [8 x i8] c"GPIO256\00", align 1
@.str.978 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT1\00", align 1
@.compoundliteral.979 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.977, i8 0 }, %struct.mtk_desc_function { ptr @.str.978, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.980 = private unnamed_addr constant [12 x i8] c"MSDC0E_DAT0\00", align 1
@.str.981 = private unnamed_addr constant [8 x i8] c"GPIO257\00", align 1
@.str.982 = private unnamed_addr constant [11 x i8] c"MSDC3_DAT0\00", align 1
@.compoundliteral.983 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.981, i8 0 }, %struct.mtk_desc_function { ptr @.str.982, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.984 = private unnamed_addr constant [11 x i8] c"MSDC0E_CMD\00", align 1
@.str.985 = private unnamed_addr constant [8 x i8] c"GPIO258\00", align 1
@.str.986 = private unnamed_addr constant [10 x i8] c"MSDC3_CMD\00", align 1
@.compoundliteral.987 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.985, i8 0 }, %struct.mtk_desc_function { ptr @.str.986, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.988 = private unnamed_addr constant [11 x i8] c"MSDC0E_CLK\00", align 1
@.str.989 = private unnamed_addr constant [8 x i8] c"GPIO259\00", align 1
@.str.990 = private unnamed_addr constant [10 x i8] c"MSDC3_CLK\00", align 1
@.compoundliteral.991 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.989, i8 0 }, %struct.mtk_desc_function { ptr @.str.990, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.992 = private unnamed_addr constant [11 x i8] c"MSDC0E_DSL\00", align 1
@.str.993 = private unnamed_addr constant [8 x i8] c"GPIO260\00", align 1
@.str.994 = private unnamed_addr constant [10 x i8] c"MSDC3_DSL\00", align 1
@.compoundliteral.995 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.993, i8 0 }, %struct.mtk_desc_function { ptr @.str.994, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.996 = private unnamed_addr constant [10 x i8] c"MSDC1_INS\00", align 1
@.str.997 = private unnamed_addr constant [8 x i8] c"GPIO261\00", align 1
@.str.998 = private unnamed_addr constant [14 x i8] c"DBG_MON_B[29]\00", align 1
@.compoundliteral.999 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.997, i8 0 }, %struct.mtk_desc_function { ptr @.str.996, i8 1 }, %struct.mtk_desc_function { ptr @.str.998, i8 7 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1000 = private unnamed_addr constant [8 x i8] c"G2_TXEN\00", align 1
@.str.1001 = private unnamed_addr constant [8 x i8] c"GPIO262\00", align 1
@.compoundliteral.1002 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1001, i8 0 }, %struct.mtk_desc_function { ptr @.str.1000, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1003 = private unnamed_addr constant [8 x i8] c"G2_TXD3\00", align 1
@.str.1004 = private unnamed_addr constant [8 x i8] c"GPIO263\00", align 1
@.compoundliteral.1005 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1004, i8 0 }, %struct.mtk_desc_function { ptr @.str.1003, i8 1 }, %struct.mtk_desc_function { ptr @.str.422, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1006 = private unnamed_addr constant [8 x i8] c"G2_TXD2\00", align 1
@.str.1007 = private unnamed_addr constant [8 x i8] c"GPIO264\00", align 1
@.compoundliteral.1008 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1007, i8 0 }, %struct.mtk_desc_function { ptr @.str.1006, i8 1 }, %struct.mtk_desc_function { ptr @.str.71, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1009 = private unnamed_addr constant [8 x i8] c"G2_TXD1\00", align 1
@.str.1010 = private unnamed_addr constant [8 x i8] c"GPIO265\00", align 1
@.compoundliteral.1011 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1010, i8 0 }, %struct.mtk_desc_function { ptr @.str.1009, i8 1 }, %struct.mtk_desc_function { ptr @.str.179, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1012 = private unnamed_addr constant [8 x i8] c"G2_TXD0\00", align 1
@.str.1013 = private unnamed_addr constant [8 x i8] c"GPIO266\00", align 1
@.compoundliteral.1014 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1013, i8 0 }, %struct.mtk_desc_function { ptr @.str.1012, i8 1 }, %struct.mtk_desc_function { ptr @.str.76, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1015 = private unnamed_addr constant [7 x i8] c"G2_TXC\00", align 1
@.str.1016 = private unnamed_addr constant [8 x i8] c"GPIO267\00", align 1
@.compoundliteral.1017 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1016, i8 0 }, %struct.mtk_desc_function { ptr @.str.1015, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1018 = private unnamed_addr constant [7 x i8] c"G2_RXC\00", align 1
@.str.1019 = private unnamed_addr constant [8 x i8] c"GPIO268\00", align 1
@.compoundliteral.1020 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1019, i8 0 }, %struct.mtk_desc_function { ptr @.str.1018, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1021 = private unnamed_addr constant [8 x i8] c"G2_RXD0\00", align 1
@.str.1022 = private unnamed_addr constant [8 x i8] c"GPIO269\00", align 1
@.compoundliteral.1023 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1022, i8 0 }, %struct.mtk_desc_function { ptr @.str.1021, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1024 = private unnamed_addr constant [8 x i8] c"G2_RXD1\00", align 1
@.str.1025 = private unnamed_addr constant [8 x i8] c"GPIO270\00", align 1
@.compoundliteral.1026 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1025, i8 0 }, %struct.mtk_desc_function { ptr @.str.1024, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1027 = private unnamed_addr constant [8 x i8] c"G2_RXD2\00", align 1
@.str.1028 = private unnamed_addr constant [8 x i8] c"GPIO271\00", align 1
@.compoundliteral.1029 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1028, i8 0 }, %struct.mtk_desc_function { ptr @.str.1027, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1030 = private unnamed_addr constant [8 x i8] c"G2_RXD3\00", align 1
@.str.1031 = private unnamed_addr constant [8 x i8] c"GPIO272\00", align 1
@.compoundliteral.1032 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1031, i8 0 }, %struct.mtk_desc_function { ptr @.str.1030, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1033 = private unnamed_addr constant [8 x i8] c"ESW_INT\00", align 1
@.str.1034 = private unnamed_addr constant [8 x i8] c"GPIO273\00", align 1
@.compoundliteral.1035 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1034, i8 0 }, %struct.mtk_desc_function { ptr @.str.1033, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1036 = private unnamed_addr constant [8 x i8] c"G2_RXDV\00", align 1
@.str.1037 = private unnamed_addr constant [8 x i8] c"GPIO274\00", align 1
@.compoundliteral.1038 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1037, i8 0 }, %struct.mtk_desc_function { ptr @.str.1036, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1039 = private unnamed_addr constant [4 x i8] c"MDC\00", align 1
@.str.1040 = private unnamed_addr constant [8 x i8] c"GPIO275\00", align 1
@.compoundliteral.1041 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1040, i8 0 }, %struct.mtk_desc_function { ptr @.str.1039, i8 1 }, %struct.mtk_desc_function { ptr @.str.27, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1042 = private unnamed_addr constant [5 x i8] c"MDIO\00", align 1
@.str.1043 = private unnamed_addr constant [8 x i8] c"GPIO276\00", align 1
@.compoundliteral.1044 = internal global [4 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1043, i8 0 }, %struct.mtk_desc_function { ptr @.str.1042, i8 1 }, %struct.mtk_desc_function { ptr @.str.22, i8 6 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1045 = private unnamed_addr constant [8 x i8] c"ESW_RST\00", align 1
@.str.1046 = private unnamed_addr constant [8 x i8] c"GPIO277\00", align 1
@.compoundliteral.1047 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1046, i8 0 }, %struct.mtk_desc_function { ptr @.str.1045, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1048 = private unnamed_addr constant [11 x i8] c"JTAG_RESET\00", align 1
@.str.1049 = private unnamed_addr constant [8 x i8] c"GPIO278\00", align 1
@.compoundliteral.1050 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1049, i8 0 }, %struct.mtk_desc_function { ptr @.str.1048, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@.str.1051 = private unnamed_addr constant [14 x i8] c"USB3_RES_BOND\00", align 1
@.str.1052 = private unnamed_addr constant [8 x i8] c"GPIO279\00", align 1
@.compoundliteral.1053 = internal global [3 x %struct.mtk_desc_function] [%struct.mtk_desc_function { ptr @.str.1052, i8 0 }, %struct.mtk_desc_function { ptr @.str.1051, i8 1 }, %struct.mtk_desc_function zeroinitializer], align 4
@mt2701_spec_pupd = internal constant [35 x %struct.mtk_pin_spec_pupd_set_samereg] [%struct.mtk_pin_spec_pupd_set_samereg { i16 111, i16 3328, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 112, i16 3328, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 113, i16 3328, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 114, i16 3328, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 115, i16 3344, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 116, i16 3280, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 117, i16 3264, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 118, i16 3312, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 119, i16 3312, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 120, i16 3312, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 121, i16 3312, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 105, i16 3392, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 106, i16 3376, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 107, i16 3424, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 108, i16 3424, i8 10, i8 9, i8 8 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 109, i16 3424, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 110, i16 3168, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 85, i16 3488, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 86, i16 3472, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 87, i16 3520, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 88, i16 3520, i8 10, i8 9, i8 8 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 89, i16 3520, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 90, i16 3520, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 249, i16 320, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 250, i16 304, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 251, i16 304, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 252, i16 304, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 253, i16 304, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 254, i16 3904, i8 12, i8 13, i8 14 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 255, i16 3904, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 256, i16 3904, i8 4, i8 5, i8 6 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 257, i16 3904, i8 0, i8 1, i8 2 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 258, i16 3248, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 259, i16 3216, i8 8, i8 9, i8 10 }, %struct.mtk_pin_spec_pupd_set_samereg { i16 261, i16 320, i8 8, i8 9, i8 10 }], align 2
@mt2701_ies_set = internal constant [66 x %struct.mtk_pin_ies_smt_set] [%struct.mtk_pin_ies_smt_set { i16 0, i16 6, i16 2848, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 7, i16 9, i16 2848, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 10, i16 13, i16 2864, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 14, i16 15, i16 2864, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 16, i16 17, i16 2880, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 18, i16 21, i16 2880, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 22, i16 26, i16 2880, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 27, i16 29, i16 2880, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 30, i16 32, i16 2880, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 33, i16 37, i16 2880, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 38, i16 38, i16 2848, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 39, i16 42, i16 2880, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 43, i16 45, i16 2848, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 47, i16 48, i16 2848, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 49, i16 49, i16 2848, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 50, i16 52, i16 2848, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 53, i16 56, i16 2848, i8 14 }, %struct.mtk_pin_ies_smt_set { i16 57, i16 58, i16 2848, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 59, i16 59, i16 2864, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 60, i16 62, i16 2864, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 63, i16 65, i16 2864, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 66, i16 71, i16 2864, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 72, i16 74, i16 2848, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 75, i16 76, i16 2864, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 77, i16 78, i16 2864, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 79, i16 82, i16 2864, i8 5 }, %struct.mtk_pin_ies_smt_set { i16 83, i16 84, i16 2864, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 85, i16 85, i16 3488, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 86, i16 86, i16 3472, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 87, i16 90, i16 3504, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 101, i16 104, i16 2864, i8 6 }, %struct.mtk_pin_ies_smt_set { i16 105, i16 105, i16 3392, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 106, i16 106, i16 3376, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 107, i16 110, i16 3408, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 111, i16 115, i16 3296, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 116, i16 116, i16 3280, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 117, i16 117, i16 3264, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 118, i16 121, i16 3296, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 122, i16 125, i16 2864, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 126, i16 126, i16 2848, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 127, i16 142, i16 2864, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 143, i16 160, i16 2864, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 161, i16 168, i16 2864, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 169, i16 183, i16 2864, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 184, i16 186, i16 2864, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 187, i16 187, i16 2864, i8 14 }, %struct.mtk_pin_ies_smt_set { i16 188, i16 188, i16 2848, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 189, i16 193, i16 2864, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 194, i16 198, i16 2880, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 199, i16 199, i16 2848, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 200, i16 202, i16 2880, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 203, i16 207, i16 2880, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 208, i16 209, i16 2880, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 210, i16 210, i16 2880, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 211, i16 235, i16 2880, i8 5 }, %struct.mtk_pin_ies_smt_set { i16 236, i16 241, i16 2880, i8 6 }, %struct.mtk_pin_ies_smt_set { i16 242, i16 243, i16 2880, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 244, i16 247, i16 2880, i8 8 }, %struct.mtk_pin_ies_smt_set { i16 248, i16 248, i16 2880, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 249, i16 257, i16 4032, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 258, i16 258, i16 3248, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 259, i16 259, i16 3216, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 260, i16 260, i16 928, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 261, i16 261, i16 3408, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 262, i16 277, i16 2880, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 278, i16 278, i16 2880, i8 13 }], align 2
@mt2701_smt_set = internal constant [87 x %struct.mtk_pin_ies_smt_set] [%struct.mtk_pin_ies_smt_set { i16 0, i16 6, i16 2896, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 7, i16 9, i16 2896, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 10, i16 13, i16 2912, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 14, i16 15, i16 2912, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 16, i16 17, i16 2928, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 18, i16 21, i16 2928, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 22, i16 26, i16 2928, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 27, i16 29, i16 2928, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 30, i16 32, i16 2928, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 33, i16 37, i16 2928, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 38, i16 38, i16 2896, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 39, i16 42, i16 2928, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 43, i16 45, i16 2896, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 47, i16 48, i16 2896, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 49, i16 49, i16 2896, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 50, i16 52, i16 2896, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 53, i16 56, i16 2896, i8 14 }, %struct.mtk_pin_ies_smt_set { i16 57, i16 58, i16 2896, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 59, i16 59, i16 2912, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 60, i16 62, i16 2912, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 63, i16 65, i16 2912, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 66, i16 71, i16 2912, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 72, i16 74, i16 2896, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 75, i16 76, i16 2912, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 77, i16 78, i16 2912, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 79, i16 82, i16 2912, i8 5 }, %struct.mtk_pin_ies_smt_set { i16 83, i16 84, i16 2912, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 85, i16 85, i16 3488, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 86, i16 86, i16 3472, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 87, i16 87, i16 3520, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 88, i16 88, i16 3520, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 89, i16 89, i16 3520, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 90, i16 90, i16 3520, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 101, i16 104, i16 2912, i8 6 }, %struct.mtk_pin_ies_smt_set { i16 105, i16 105, i16 3392, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 106, i16 106, i16 3376, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 107, i16 107, i16 3424, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 108, i16 108, i16 3424, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 109, i16 109, i16 3424, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 110, i16 110, i16 3424, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 111, i16 111, i16 3328, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 112, i16 112, i16 3328, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 113, i16 113, i16 3328, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 114, i16 114, i16 3328, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 115, i16 115, i16 3344, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 116, i16 116, i16 3280, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 117, i16 117, i16 3264, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 118, i16 118, i16 3312, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 119, i16 119, i16 3312, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 120, i16 120, i16 3312, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 121, i16 121, i16 3312, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 122, i16 125, i16 2912, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 126, i16 126, i16 2896, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 127, i16 142, i16 2912, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 143, i16 160, i16 2912, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 161, i16 168, i16 2912, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 169, i16 183, i16 2912, i8 10 }, %struct.mtk_pin_ies_smt_set { i16 184, i16 186, i16 2912, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 187, i16 187, i16 2912, i8 14 }, %struct.mtk_pin_ies_smt_set { i16 188, i16 188, i16 2896, i8 13 }, %struct.mtk_pin_ies_smt_set { i16 189, i16 193, i16 2912, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 194, i16 198, i16 2928, i8 0 }, %struct.mtk_pin_ies_smt_set { i16 199, i16 199, i16 2896, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 200, i16 202, i16 2928, i8 1 }, %struct.mtk_pin_ies_smt_set { i16 203, i16 207, i16 2928, i8 2 }, %struct.mtk_pin_ies_smt_set { i16 208, i16 209, i16 2928, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 210, i16 210, i16 2928, i8 4 }, %struct.mtk_pin_ies_smt_set { i16 211, i16 235, i16 2928, i8 5 }, %struct.mtk_pin_ies_smt_set { i16 236, i16 241, i16 2928, i8 6 }, %struct.mtk_pin_ies_smt_set { i16 242, i16 243, i16 2928, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 244, i16 247, i16 2928, i8 8 }, %struct.mtk_pin_ies_smt_set { i16 248, i16 248, i16 2928, i8 9 }, %struct.mtk_pin_ies_smt_set { i16 249, i16 249, i16 320, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 250, i16 250, i16 304, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 251, i16 251, i16 304, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 252, i16 252, i16 304, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 253, i16 253, i16 304, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 254, i16 254, i16 3904, i8 15 }, %struct.mtk_pin_ies_smt_set { i16 255, i16 255, i16 3904, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 256, i16 256, i16 3904, i8 7 }, %struct.mtk_pin_ies_smt_set { i16 257, i16 257, i16 3904, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 258, i16 258, i16 3248, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 259, i16 259, i16 3216, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 260, i16 260, i16 928, i8 11 }, %struct.mtk_pin_ies_smt_set { i16 261, i16 261, i16 176, i8 3 }, %struct.mtk_pin_ies_smt_set { i16 262, i16 277, i16 2928, i8 12 }, %struct.mtk_pin_ies_smt_set { i16 278, i16 278, i16 2928, i8 13 }], align 2
@mt2701_spec_pinmux = internal unnamed_addr constant [20 x %struct.mtk_spec_pinmux_set] [%struct.mtk_spec_pinmux_set { i16 22, i16 2832, i8 3 }, %struct.mtk_spec_pinmux_set { i16 23, i16 2832, i8 4 }, %struct.mtk_spec_pinmux_set { i16 24, i16 2832, i8 5 }, %struct.mtk_spec_pinmux_set { i16 29, i16 2832, i8 9 }, %struct.mtk_spec_pinmux_set { i16 208, i16 2832, i8 7 }, %struct.mtk_spec_pinmux_set { i16 209, i16 2832, i8 8 }, %struct.mtk_spec_pinmux_set { i16 203, i16 3872, i8 0 }, %struct.mtk_spec_pinmux_set { i16 204, i16 3872, i8 1 }, %struct.mtk_spec_pinmux_set { i16 249, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 250, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 251, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 252, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 253, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 254, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 255, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 256, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 257, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 258, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 259, i16 3824, i8 0 }, %struct.mtk_spec_pinmux_set { i16 260, i16 3824, i8 0 }], align 2
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_mt2701__202_562_mtk_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_pinctrl_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2701_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @mtk_pctrl_init(ptr noundef %0, ptr noundef nonnull @mt2701_pinctrl_data, ptr noundef null) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pctrl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2701_spec_pull_set(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) #2 {
  %6 = tail call i32 @mtk_pctrl_spec_pull_set_samereg(ptr noundef %0, ptr noundef nonnull @mt2701_spec_pupd, i32 noundef 35, i32 noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2701_ies_smt_set(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4) #2 {
  switch i32 %4, label %10 [
    i32 12, label %6
    i32 14, label %8
  ]

6:                                                ; preds = %5
  %7 = tail call i32 @mtk_pconf_spec_set_ies_smt_range(ptr noundef %0, ptr noundef nonnull @mt2701_ies_set, i32 noundef 66, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) #4
  br label %10

8:                                                ; preds = %5
  %9 = tail call i32 @mtk_pconf_spec_set_ies_smt_range(ptr noundef %0, ptr noundef nonnull @mt2701_smt_set, i32 noundef 87, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3) #4
  br label %10

10:                                               ; preds = %8, %6, %5
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ], [ -22, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt2701_spec_pinmux_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  switch i32 %1, label %35 [
    i32 22, label %23
    i32 23, label %4
    i32 24, label %5
    i32 29, label %6
    i32 208, label %7
    i32 209, label %8
    i32 203, label %9
    i32 204, label %10
    i32 249, label %11
    i32 250, label %12
    i32 251, label %13
    i32 252, label %14
    i32 253, label %15
    i32 254, label %16
    i32 255, label %17
    i32 256, label %18
    i32 257, label %19
    i32 258, label %20
    i32 259, label %21
    i32 260, label %22
  ]

4:                                                ; preds = %3
  br label %23

5:                                                ; preds = %3
  br label %23

6:                                                ; preds = %3
  br label %23

7:                                                ; preds = %3
  br label %23

8:                                                ; preds = %3
  br label %23

9:                                                ; preds = %3
  br label %23

10:                                               ; preds = %3
  br label %23

11:                                               ; preds = %3
  br label %23

12:                                               ; preds = %3
  br label %23

13:                                               ; preds = %3
  br label %23

14:                                               ; preds = %3
  br label %23

15:                                               ; preds = %3
  br label %23

16:                                               ; preds = %3
  br label %23

17:                                               ; preds = %3
  br label %23

18:                                               ; preds = %3
  br label %23

19:                                               ; preds = %3
  br label %23

20:                                               ; preds = %3
  br label %23

21:                                               ; preds = %3
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  %24 = phi i32 [ 0, %3 ], [ 1, %4 ], [ 2, %5 ], [ 3, %6 ], [ 4, %7 ], [ 5, %8 ], [ 6, %9 ], [ 7, %10 ], [ 8, %11 ], [ 9, %12 ], [ 10, %13 ], [ 11, %14 ], [ 12, %15 ], [ 13, %16 ], [ 14, %17 ], [ 15, %18 ], [ 16, %19 ], [ 17, %20 ], [ 18, %21 ], [ 19, %22 ]
  %25 = getelementptr [20 x %struct.mtk_spec_pinmux_set], ptr @mt2701_spec_pinmux, i32 0, i32 %24, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 1, %27
  %29 = icmp ult i32 %2, 8
  %30 = select i1 %29, i32 %28, i32 0
  %31 = getelementptr [20 x %struct.mtk_spec_pinmux_set], ptr @mt2701_spec_pinmux, i32 0, i32 %24, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef %33, i32 noundef %28, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %35

35:                                               ; preds = %23, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @mt2701_spec_dir_set(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = icmp ugt i32 %1, 175
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4
  %6 = add i32 %5, 16
  store i32 %6, ptr %0, align 4
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pctrl_spec_pull_set_samereg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_pconf_spec_set_ies_smt_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
