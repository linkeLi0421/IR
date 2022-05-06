; ModuleID = '/llk/IR/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c_pt.bc'
source_filename = "../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_pinctrl_socdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.uniphier_pinctrl_group = type { ptr, ptr, i32, ptr }
%struct.uniphier_pinmux_function = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_uniphier_ld4__202_749_uniphier_ld4_pinctrl_driver_init6 = internal global ptr @uniphier_ld4_pinctrl_driver_init, section ".initcall6.init", align 4
@uniphier_ld4_pinctrl_driver = internal global %struct.platform_driver { ptr @uniphier_ld4_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_ld4_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [21 x i8] c"uniphier-ld4-pinctrl\00", align 1
@uniphier_ld4_pinctrl_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@uniphier_pinctrl_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@uniphier_ld4_pindata = internal constant %struct.uniphier_pinctrl_socdata { ptr @uniphier_ld4_pins, i32 175, ptr @uniphier_ld4_groups, i32 29, ptr @uniphier_ld4_functions, i32 18, ptr @uniphier_ld4_get_gpio_muxval, i32 0 }, align 4
@uniphier_ld4_pins = internal constant [175 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr inttoptr (i32 17039431 to ptr) }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr inttoptr (i32 17072207 to ptr) }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr inttoptr (i32 17104983 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr inttoptr (i32 17137759 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr inttoptr (i32 17170535 to ptr) }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr inttoptr (i32 17203311 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr inttoptr (i32 17236087 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr inttoptr (i32 17268856 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr inttoptr (i32 17301632 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr inttoptr (i32 17334408 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr inttoptr (i32 17367184 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr inttoptr (i32 17399960 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr inttoptr (i32 17432736 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr inttoptr (i32 17465512 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr inttoptr (i32 17498288 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr inttoptr (i32 17531071 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr inttoptr (i32 786631 to ptr) }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr inttoptr (i32 819407 to ptr) }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr inttoptr (i32 884959 to ptr) }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr inttoptr (i32 917735 to ptr) }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr inttoptr (i32 950511 to ptr) }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr inttoptr (i32 1245495 to ptr) }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr inttoptr (i32 4788231 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr inttoptr (i32 4821007 to ptr) }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr inttoptr (i32 4853783 to ptr) }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr inttoptr (i32 4886559 to ptr) }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr inttoptr (i32 4919335 to ptr) }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr inttoptr (i32 4952111 to ptr) }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr inttoptr (i32 4984887 to ptr) }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr inttoptr (i32 5017663 to ptr) }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr inttoptr (i32 5050439 to ptr) }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr inttoptr (i32 5083215 to ptr) }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.33, ptr inttoptr (i32 18055486 to ptr) }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.34, ptr inttoptr (i32 18088262 to ptr) }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.35, ptr inttoptr (i32 18121038 to ptr) }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.36, ptr inttoptr (i32 18153814 to ptr) }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.37, ptr inttoptr (i32 18186590 to ptr) }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.38, ptr inttoptr (i32 18219366 to ptr) }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.39, ptr inttoptr (i32 18252142 to ptr) }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.40, ptr inttoptr (i32 18284918 to ptr) }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.41, ptr inttoptr (i32 18317694 to ptr) }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.42, ptr inttoptr (i32 18350470 to ptr) }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.43, ptr inttoptr (i32 18383246 to ptr) }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.44, ptr inttoptr (i32 18416022 to ptr) }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.45, ptr inttoptr (i32 5115991 to ptr) }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.46, ptr inttoptr (i32 5148767 to ptr) }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.47, ptr inttoptr (i32 5181543 to ptr) }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.48, ptr inttoptr (i32 5214319 to ptr) }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.49, ptr inttoptr (i32 5247095 to ptr) }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.50, ptr inttoptr (i32 5279871 to ptr) }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.51, ptr inttoptr (i32 1671583 to ptr) }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.52, ptr inttoptr (i32 1704359 to ptr) }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.53, ptr inttoptr (i32 1737135 to ptr) }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.54, ptr inttoptr (i32 18547120 to ptr) }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.55, ptr inttoptr (i32 18579896 to ptr) }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.56, ptr inttoptr (i32 18612672 to ptr) }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.57, ptr inttoptr (i32 18645448 to ptr) }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.58, ptr inttoptr (i32 18678224 to ptr) }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.59, ptr inttoptr (i32 18711000 to ptr) }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.60, ptr inttoptr (i32 18743776 to ptr) }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.61, ptr inttoptr (i32 18776552 to ptr) }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.62, ptr inttoptr (i32 18809328 to ptr) }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.63, ptr inttoptr (i32 18842104 to ptr) }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.64, ptr inttoptr (i32 18874880 to ptr) }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.65, ptr inttoptr (i32 18907656 to ptr) }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.66, ptr inttoptr (i32 18940432 to ptr) }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.67, ptr inttoptr (i32 18973208 to ptr) }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.68, ptr inttoptr (i32 19005984 to ptr) }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.69, ptr inttoptr (i32 19038760 to ptr) }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.70, ptr inttoptr (i32 19071536 to ptr) }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.71, ptr inttoptr (i32 19104312 to ptr) }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.72, ptr inttoptr (i32 19137088 to ptr) }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.73, ptr inttoptr (i32 19169864 to ptr) }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.74, ptr inttoptr (i32 19202640 to ptr) }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.75, ptr inttoptr (i32 19235416 to ptr) }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.76, ptr inttoptr (i32 19268192 to ptr) }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.77, ptr inttoptr (i32 19300968 to ptr) }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.78, ptr inttoptr (i32 19333744 to ptr) }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.79, ptr inttoptr (i32 19366520 to ptr) }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.80, ptr inttoptr (i32 19399296 to ptr) }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.81, ptr inttoptr (i32 19432072 to ptr) }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.82, ptr inttoptr (i32 19464848 to ptr) }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.83, ptr inttoptr (i32 19497624 to ptr) }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.84, ptr inttoptr (i32 19530400 to ptr) }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.85, ptr inttoptr (i32 19563176 to ptr) }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.86, ptr inttoptr (i32 19595952 to ptr) }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.87, ptr inttoptr (i32 19628728 to ptr) }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.88, ptr inttoptr (i32 19661504 to ptr) }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.89, ptr inttoptr (i32 19694280 to ptr) }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.90, ptr inttoptr (i32 19727056 to ptr) }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.91, ptr inttoptr (i32 19759832 to ptr) }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.92, ptr inttoptr (i32 19792608 to ptr) }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.93, ptr inttoptr (i32 19825384 to ptr) }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.94, ptr inttoptr (i32 22102011 to ptr) }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.95, ptr inttoptr (i32 22134780 to ptr) }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.96, ptr inttoptr (i32 22167549 to ptr) }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.97, ptr inttoptr (i32 19858160 to ptr) }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.98, ptr inttoptr (i32 19890936 to ptr) }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.99, ptr inttoptr (i32 19923719 to ptr) }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.100, ptr inttoptr (i32 19956495 to ptr) }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.101, ptr inttoptr (i32 19989271 to ptr) }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.102, ptr inttoptr (i32 20022040 to ptr) }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.103, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.104, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.105, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.106, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.107, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.108, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.109, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.110, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.111, ptr inttoptr (i32 3277607 to ptr) }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.112, ptr inttoptr (i32 3310383 to ptr) }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.113, ptr inttoptr (i32 83873785 to ptr) }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.114, ptr inttoptr (i32 83873786 to ptr) }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.115, ptr inttoptr (i32 20120375 to ptr) }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.116, ptr inttoptr (i32 20153151 to ptr) }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.117, ptr inttoptr (i32 20185927 to ptr) }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.118, ptr inttoptr (i32 20218703 to ptr) }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.119, ptr inttoptr (i32 20251479 to ptr) }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.120, ptr inttoptr (i32 20284255 to ptr) }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.121, ptr inttoptr (i32 20317024 to ptr) }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.122, ptr inttoptr (i32 20349800 to ptr) }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.123, ptr inttoptr (i32 20382576 to ptr) }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.124, ptr inttoptr (i32 20415352 to ptr) }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.125, ptr inttoptr (i32 20448128 to ptr) }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.126, ptr inttoptr (i32 20480904 to ptr) }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.127, ptr inttoptr (i32 20513680 to ptr) }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.128, ptr inttoptr (i32 20546456 to ptr) }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.129, ptr inttoptr (i32 20579232 to ptr) }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.130, ptr inttoptr (i32 20612008 to ptr) }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.131, ptr inttoptr (i32 20644784 to ptr) }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.132, ptr inttoptr (i32 20677560 to ptr) }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.133, ptr inttoptr (i32 20710336 to ptr) }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.134, ptr inttoptr (i32 20743112 to ptr) }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.135, ptr inttoptr (i32 20775888 to ptr) }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.136, ptr inttoptr (i32 20808664 to ptr) }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.137, ptr inttoptr (i32 20841440 to ptr) }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.138, ptr inttoptr (i32 20874216 to ptr) }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.139, ptr inttoptr (i32 20906992 to ptr) }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.140, ptr inttoptr (i32 20939768 to ptr) }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.141, ptr inttoptr (i32 20972544 to ptr) }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.142, ptr inttoptr (i32 21005320 to ptr) }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.143, ptr inttoptr (i32 21038096 to ptr) }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.144, ptr inttoptr (i32 21070872 to ptr) }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.145, ptr inttoptr (i32 21103648 to ptr) }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.146, ptr inttoptr (i32 21136424 to ptr) }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.147, ptr inttoptr (i32 21169200 to ptr) }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.148, ptr inttoptr (i32 21201976 to ptr) }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.149, ptr inttoptr (i32 21234752 to ptr) }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.150, ptr inttoptr (i32 21267528 to ptr) }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.151, ptr inttoptr (i32 21300311 to ptr) }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.152, ptr inttoptr (i32 21333080 to ptr) }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.153, ptr inttoptr (i32 21365856 to ptr) }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.154, ptr inttoptr (i32 21398632 to ptr) }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.155, ptr inttoptr (i32 21431408 to ptr) }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.156, ptr inttoptr (i32 21464191 to ptr) }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.157, ptr inttoptr (i32 21496960 to ptr) }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.158, ptr inttoptr (i32 21529736 to ptr) }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.159, ptr inttoptr (i32 1016063 to ptr) }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.160, ptr inttoptr (i32 1048839 to ptr) }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.161, ptr inttoptr (i32 17858831 to ptr) }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.162, ptr inttoptr (i32 17891607 to ptr) }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.163, ptr inttoptr (i32 17924383 to ptr) }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.164, ptr inttoptr (i32 1179943 to ptr) }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.165, ptr inttoptr (i32 1212719 to ptr) }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.166, ptr inttoptr (i32 16777223 to ptr) }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.167, ptr inttoptr (i32 16809999 to ptr) }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.168, ptr inttoptr (i32 16842775 to ptr) }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.169, ptr inttoptr (i32 16875551 to ptr) }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.170, ptr inttoptr (i32 16908327 to ptr) }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.171, ptr inttoptr (i32 16941103 to ptr) }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.172, ptr inttoptr (i32 16973879 to ptr) }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.173, ptr inttoptr (i32 17006655 to ptr) }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.174, ptr inttoptr (i32 852183 to ptr) }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.175, ptr inttoptr (i32 983287 to ptr) }], align 4
@uniphier_ld4_groups = internal constant [29 x %struct.uniphier_pinctrl_group] [%struct.uniphier_pinctrl_group { ptr @.str.176, ptr @emmc_pins, i32 7, ptr @emmc_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.177, ptr @emmc_dat8_pins, i32 4, ptr @emmc_dat8_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.178, ptr @ether_mii_pins, i32 19, ptr @ether_mii_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.179, ptr @ether_rmii_pins, i32 12, ptr @ether_rmii_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.180, ptr @i2c0_pins, i32 2, ptr @i2c0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.181, ptr @i2c1_pins, i32 2, ptr @i2c1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.182, ptr @i2c2_pins, i32 2, ptr @i2c2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.183, ptr @i2c3_pins, i32 2, ptr @i2c3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.184, ptr @nand_pins, i32 15, ptr @nand_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.185, ptr @nand_cs1_pins, i32 2, ptr @nand_cs1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.186, ptr @sd_pins, i32 9, ptr @sd_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.187, ptr @spi0_pins, i32 4, ptr @spi0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.188, ptr @system_bus_pins, i32 14, ptr @system_bus_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.189, ptr @system_bus_cs0_pins, i32 1, ptr @system_bus_cs0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.190, ptr @system_bus_cs1_pins, i32 1, ptr @system_bus_cs1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.191, ptr @system_bus_cs2_pins, i32 1, ptr @system_bus_cs2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.192, ptr @system_bus_cs3_pins, i32 1, ptr @system_bus_cs3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.193, ptr @uart0_pins, i32 2, ptr @uart0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.194, ptr @uart0_ctsrts_pins, i32 2, ptr @uart0_ctsrts_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.195, ptr @uart0_modem_pins, i32 1, ptr @uart0_modem_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.196, ptr @uart1_pins, i32 2, ptr @uart1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.197, ptr @uart1b_pins, i32 2, ptr @uart1b_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.198, ptr @uart2_pins, i32 2, ptr @uart2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.199, ptr @uart3_pins, i32 2, ptr @uart3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.200, ptr @usb0_pins, i32 2, ptr @usb0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.201, ptr @usb1_pins, i32 2, ptr @usb1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.202, ptr @usb2_pins, i32 2, ptr @usb2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.203, ptr @usb2b_pins, i32 2, ptr @usb2b_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.204, ptr @gpio_range_pins, i32 136, ptr null }], align 4
@uniphier_ld4_functions = internal constant [18 x %struct.uniphier_pinmux_function] [%struct.uniphier_pinmux_function { ptr @.str.176, ptr @emmc_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.178, ptr @ether_mii_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.179, ptr @ether_rmii_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.180, ptr @i2c0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.181, ptr @i2c1_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.182, ptr @i2c2_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.183, ptr @i2c3_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.184, ptr @nand_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.186, ptr @sd_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.187, ptr @spi0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.188, ptr @system_bus_groups, i32 5 }, %struct.uniphier_pinmux_function { ptr @.str.193, ptr @uart0_groups, i32 3 }, %struct.uniphier_pinmux_function { ptr @.str.196, ptr @uart1_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.198, ptr @uart2_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.199, ptr @uart3_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.200, ptr @usb0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.201, ptr @usb1_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.202, ptr @usb2_groups, i32 2 }], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"EA1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"EA2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"EA3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EA4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"EA5\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"EA6\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"EA7\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"EA8\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"EA9\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"EA10\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"EA11\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"EA12\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"EA13\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"EA14\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"EA15\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ECLK\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"XERWE0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"XERWE1\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"ES0\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"ES1\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ES2\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"XERST\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"MMCCLK\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"MMCCMD\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"MMCDAT0\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"MMCDAT1\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"MMCDAT2\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"MMCDAT3\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"MMCDAT4\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"MMCDAT5\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"MMCDAT6\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"MMCDAT7\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"RMII_RXD0\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"RMII_RXD1\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"RMII_CRS_DV\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"RMII_RXER\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"RMII_REFCLK\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"RMII_TXD0\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"RMII_TXD1\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"RMII_TXEN\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"MDC\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"MDIO\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"MDIO_INTL\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"PHYRSTL\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"SDCLK\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"SDCMD\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"SDDAT0\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"SDDAT1\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"SDDAT2\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"SDDAT3\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"SDCD\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"SDWP\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"SDVOLC\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"USB0VBUS\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"USB0OD\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"USB1VBUS\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"USB1OD\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"PCRESET\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"PCREG\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"PCCE2\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"PCVS1\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"PCCD2\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"PCCD1\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"PCREADY\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"PCDOE\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"PCCE1\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"PCWE\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"PCOE\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"PCWAIT\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"PCIOWR\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"PCIORD\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"HS0DIN0\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"HS0DIN1\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"HS0DIN2\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"HS0DIN3\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"HS0DIN4\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"HS0DIN5\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"HS0DIN6\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"HS0DIN7\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"HS0BCLKIN\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"HS0VALIN\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"HS0SYNCIN\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"HSDOUT0\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"HSDOUT1\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"HSDOUT2\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"HSDOUT3\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"HSDOUT4\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"HSDOUT5\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"HSDOUT6\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"HSDOUT7\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"HSBCLKOUT\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"HSVALOUT\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"HSSYNCOUT\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"AGCI\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"AGCR\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"AGCBS\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"IECOUT\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"ASMCK\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"ABCKO\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"ALRCKO\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"ASDOUT0\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"ARCOUT\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"SDA0\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"SCL0\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"SDA1\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"SCL1\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"DMDSDA0\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"DMDSCL0\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"DMDSDA1\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"DMDSCL1\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"SBO0\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"SBI0\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"HIN\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"VIN\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"TCON0\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"TCON1\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"TCON2\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"TCON3\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"TCON4\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"TCON5\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"TCON6\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"TCON7\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"PWMA\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"XIRQ1\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"XIRQ2\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"XIRQ3\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"XIRQ4\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"XIRQ5\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"XIRQ6\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"XIRQ7\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"XIRQ8\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"XIRQ9\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"XIRQ10\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"XIRQ11\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"XIRQ14\00", align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"PORT00\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"PORT01\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"PORT02\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"PORT03\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"PORT04\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"PORT05\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"PORT06\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"PORT07\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"PORT10\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"PORT11\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"PORT12\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"PORT13\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"PORT14\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"PORT15\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"PORT16\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"PORT17\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"PORT20\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"PORT21\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"PORT22\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"PORT23\00", align 1
@.str.156 = private unnamed_addr constant [7 x i8] c"PORT24\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"PORT25\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"PORT26\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"XNFRE\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"XNFWE\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"NFALE\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"NFCLE\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"XNFWP\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"XNFCE0\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"NANDRYBY0\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"ED0\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"ED1\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"ED2\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"ED3\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"ED4\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"ED5\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"ED6\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"ED7\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"ERXW\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"XECS1\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"emmc\00", align 1
@emmc_pins = internal constant [7 x i32] [i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27], align 4
@emmc_muxvals = internal constant [7 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 4
@.str.177 = private unnamed_addr constant [10 x i8] c"emmc_dat8\00", align 1
@emmc_dat8_pins = internal constant [4 x i32] [i32 28, i32 29, i32 30, i32 31], align 4
@emmc_dat8_muxvals = internal constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 4
@.str.178 = private unnamed_addr constant [10 x i8] c"ether_mii\00", align 1
@ether_mii_pins = internal constant [19 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142], align 4
@ether_mii_muxvals = internal constant [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 4
@.str.179 = private unnamed_addr constant [11 x i8] c"ether_rmii\00", align 1
@ether_rmii_pins = internal constant [12 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43], align 4
@ether_rmii_muxvals = internal constant [12 x i32] zeroinitializer, align 4
@.str.180 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@i2c0_pins = internal constant [2 x i32] [i32 102, i32 103], align 4
@i2c0_muxvals = internal constant [2 x i32] zeroinitializer, align 4
@.str.181 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@i2c1_pins = internal constant [2 x i32] [i32 104, i32 105], align 4
@i2c1_muxvals = internal constant [2 x i32] zeroinitializer, align 4
@.str.182 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@i2c2_pins = internal constant [2 x i32] [i32 108, i32 109], align 4
@i2c2_muxvals = internal constant [2 x i32] [i32 2, i32 2], align 4
@.str.183 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@i2c3_pins = internal constant [2 x i32] [i32 108, i32 109], align 4
@i2c3_muxvals = internal constant [2 x i32] [i32 3, i32 3], align 4
@.str.184 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@nand_pins = internal constant [15 x i32] [i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164], align 4
@nand_muxvals = internal constant [15 x i32] zeroinitializer, align 4
@.str.185 = private unnamed_addr constant [9 x i8] c"nand_cs1\00", align 1
@nand_cs1_pins = internal constant [2 x i32] [i32 22, i32 23], align 4
@nand_cs1_muxvals = internal constant [2 x i32] zeroinitializer, align 4
@.str.186 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@sd_pins = internal constant [9 x i32] [i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], align 4
@sd_muxvals = internal constant [9 x i32] zeroinitializer, align 4
@.str.187 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@spi0_pins = internal constant [4 x i32] [i32 135, i32 136, i32 137, i32 138], align 4
@spi0_muxvals = internal constant [4 x i32] [i32 12, i32 12, i32 12, i32 12], align 4
@.str.188 = private unnamed_addr constant [11 x i8] c"system_bus\00", align 1
@system_bus_pins = internal constant [14 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173], align 4
@system_bus_muxvals = internal constant [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@.str.189 = private unnamed_addr constant [15 x i8] c"system_bus_cs0\00", align 1
@system_bus_cs0_pins = internal constant [1 x i32] [i32 155], align 4
@system_bus_cs0_muxvals = internal constant [1 x i32] [i32 1], align 4
@.str.190 = private unnamed_addr constant [15 x i8] c"system_bus_cs1\00", align 1
@system_bus_cs1_pins = internal constant [1 x i32] [i32 174], align 4
@system_bus_cs1_muxvals = internal constant [1 x i32] [i32 -1], align 4
@.str.191 = private unnamed_addr constant [15 x i8] c"system_bus_cs2\00", align 1
@system_bus_cs2_pins = internal constant [1 x i32] [i32 64], align 4
@system_bus_cs2_muxvals = internal constant [1 x i32] [i32 1], align 4
@.str.192 = private unnamed_addr constant [15 x i8] c"system_bus_cs3\00", align 1
@system_bus_cs3_pins = internal constant [1 x i32] [i32 156], align 4
@system_bus_cs3_muxvals = internal constant [1 x i32] [i32 1], align 4
@.str.193 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@uart0_pins = internal constant [2 x i32] [i32 85, i32 88], align 4
@uart0_muxvals = internal constant [2 x i32] [i32 1, i32 1], align 4
@.str.194 = private unnamed_addr constant [13 x i8] c"uart0_ctsrts\00", align 1
@uart0_ctsrts_pins = internal constant [2 x i32] [i32 86, i32 89], align 4
@uart0_ctsrts_muxvals = internal constant [2 x i32] [i32 1, i32 1], align 4
@.str.195 = private unnamed_addr constant [12 x i8] c"uart0_modem\00", align 1
@uart0_modem_pins = internal constant [1 x i32] [i32 87], align 4
@uart0_modem_muxvals = internal constant [1 x i32] [i32 1], align 4
@.str.196 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_pins = internal constant [2 x i32] [i32 155, i32 156], align 4
@uart1_muxvals = internal constant [2 x i32] [i32 13, i32 13], align 4
@.str.197 = private unnamed_addr constant [7 x i8] c"uart1b\00", align 1
@uart1b_pins = internal constant [2 x i32] [i32 69, i32 70], align 4
@uart1b_muxvals = internal constant [2 x i32] [i32 23, i32 23], align 4
@.str.198 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@uart2_pins = internal constant [2 x i32] [i32 128, i32 129], align 4
@uart2_muxvals = internal constant [2 x i32] [i32 13, i32 13], align 4
@.str.199 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@uart3_pins = internal constant [2 x i32] [i32 110, i32 111], align 4
@uart3_muxvals = internal constant [2 x i32] [i32 1, i32 1], align 4
@.str.200 = private unnamed_addr constant [5 x i8] c"usb0\00", align 1
@usb0_pins = internal constant [2 x i32] [i32 53, i32 54], align 4
@usb0_muxvals = internal constant [2 x i32] zeroinitializer, align 4
@.str.201 = private unnamed_addr constant [5 x i8] c"usb1\00", align 1
@usb1_pins = internal constant [2 x i32] [i32 55, i32 56], align 4
@usb1_muxvals = internal constant [2 x i32] zeroinitializer, align 4
@.str.202 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@usb2_pins = internal constant [2 x i32] [i32 155, i32 156], align 4
@usb2_muxvals = internal constant [2 x i32] [i32 4, i32 4], align 4
@.str.203 = private unnamed_addr constant [6 x i8] c"usb2b\00", align 1
@usb2b_pins = internal constant [2 x i32] [i32 67, i32 68], align 4
@usb2b_muxvals = internal constant [2 x i32] [i32 23, i32 23], align 4
@.str.204 = private unnamed_addr constant [11 x i8] c"gpio_range\00", align 1
@gpio_range_pins = internal constant [136 x i32] [i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 120, i32 121, i32 122, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 85, i32 84, i32 59, i32 82, i32 61, i32 64, i32 65, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 89, i32 86, i32 78, i32 79, i32 80, i32 81, i32 60, i32 83, i32 58, i32 57, i32 88, i32 87, i32 77, i32 76, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 6, i32 101, i32 114, i32 115, i32 116, i32 103, i32 108, i32 21, i32 22, i32 23, i32 117, i32 118, i32 119, i32 151, i32 123, i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 62, i32 7, i32 134, i32 63], align 4
@emmc_groups = internal constant [2 x ptr] [ptr @.str.176, ptr @.str.177], align 4
@ether_mii_groups = internal constant [1 x ptr] [ptr @.str.178], align 4
@ether_rmii_groups = internal constant [1 x ptr] [ptr @.str.179], align 4
@i2c0_groups = internal constant [1 x ptr] [ptr @.str.180], align 4
@i2c1_groups = internal constant [1 x ptr] [ptr @.str.181], align 4
@i2c2_groups = internal constant [1 x ptr] [ptr @.str.182], align 4
@i2c3_groups = internal constant [1 x ptr] [ptr @.str.183], align 4
@nand_groups = internal constant [2 x ptr] [ptr @.str.184, ptr @.str.185], align 4
@sd_groups = internal constant [1 x ptr] [ptr @.str.186], align 4
@spi0_groups = internal constant [1 x ptr] [ptr @.str.187], align 4
@system_bus_groups = internal constant [5 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], align 4
@uart0_groups = internal constant [3 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195], align 4
@uart1_groups = internal constant [2 x ptr] [ptr @.str.196, ptr @.str.197], align 4
@uart2_groups = internal constant [1 x ptr] [ptr @.str.198], align 4
@uart3_groups = internal constant [1 x ptr] [ptr @.str.199], align 4
@usb0_groups = internal constant [1 x ptr] [ptr @.str.200], align 4
@usb1_groups = internal constant [1 x ptr] [ptr @.str.201], align 4
@usb2_groups = internal constant [2 x ptr] [ptr @.str.202, ptr @.str.203], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_uniphier_ld4__202_749_uniphier_ld4_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_ld4_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_ld4_pinctrl_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_ld4_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @uniphier_pinctrl_probe(ptr noundef %0, ptr noundef nonnull @uniphier_ld4_pindata) #4
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_ld4_get_gpio_muxval(i32 noundef %0, i32 noundef %1) #3 {
  switch i32 %1, label %4 [
    i32 134, label %5
    i32 121, label %5
    i32 122, label %5
    i32 123, label %5
    i32 124, label %5
    i32 125, label %5
    i32 126, label %5
    i32 127, label %5
    i32 128, label %5
    i32 129, label %5
    i32 130, label %5
    i32 131, label %5
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 5, label %5
    i32 6, label %5
    i32 7, label %5
    i32 8, label %5
    i32 9, label %5
    i32 10, label %5
    i32 11, label %5
    i32 12, label %5
    i32 13, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
    i32 17, label %5
    i32 18, label %5
    i32 19, label %5
    i32 20, label %5
    i32 21, label %5
    i32 22, label %5
    i32 120, label %3
    i32 132, label %3
    i32 135, label %3
  ]

3:                                                ; preds = %2, %2, %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %6 = phi i32 [ 15, %4 ], [ 14, %3 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ]
  ret i32 %6
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
