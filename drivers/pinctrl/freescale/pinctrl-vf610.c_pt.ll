; ModuleID = '/llk/IR/drivers/pinctrl/freescale/pinctrl-vf610.c_pt.bc'
source_filename = "../drivers/pinctrl/freescale/pinctrl-vf610.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.imx_pinctrl_soc_info = type { ptr, i32, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.imx_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.imx_pin_reg = type { i16, i16 }

@__initcall__kmod_pinctrl_vf610__202_348_vf610_pinctrl_init3 = internal global ptr @vf610_pinctrl_init, section ".initcall3.init", align 4
@vf610_pinctrl_driver = internal global %struct.platform_driver { ptr @vf610_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @vf610_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"vf610-pinctrl\00", align 1
@vf610_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-iomuxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@vf610_pinctrl_info = internal constant %struct.imx_pinctrl_soc_info { ptr @vf610_pinctrl_pads, i32 135, i32 3, ptr null, i32 7340032, i8 20, i8 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr @vf610_pmx_gpio_set_direction, ptr null, ptr null, ptr null }, align 4
@vf610_pinctrl_pads = internal constant [135 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.64, ptr null }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.65, ptr null }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.66, ptr null }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.67, ptr null }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.68, ptr null }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.69, ptr null }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.70, ptr null }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.71, ptr null }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.72, ptr null }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.73, ptr null }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.74, ptr null }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.75, ptr null }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.76, ptr null }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.77, ptr null }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.78, ptr null }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.79, ptr null }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.80, ptr null }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.81, ptr null }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.82, ptr null }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.83, ptr null }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.84, ptr null }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.85, ptr null }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.86, ptr null }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.87, ptr null }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.88, ptr null }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.89, ptr null }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.90, ptr null }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.91, ptr null }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.92, ptr null }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.93, ptr null }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.94, ptr null }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.95, ptr null }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.96, ptr null }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.97, ptr null }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.98, ptr null }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.99, ptr null }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.100, ptr null }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.101, ptr null }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.102, ptr null }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.103, ptr null }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.104, ptr null }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.105, ptr null }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.106, ptr null }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.107, ptr null }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.108, ptr null }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.109, ptr null }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.110, ptr null }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.111, ptr null }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.112, ptr null }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.113, ptr null }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.114, ptr null }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.115, ptr null }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.116, ptr null }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.117, ptr null }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.118, ptr null }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.119, ptr null }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.120, ptr null }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.121, ptr null }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.122, ptr null }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.123, ptr null }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.124, ptr null }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.125, ptr null }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.126, ptr null }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.127, ptr null }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.128, ptr null }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.129, ptr null }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.130, ptr null }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.131, ptr null }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.132, ptr null }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.133, ptr null }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.134, ptr null }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.135, ptr null }], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTA6\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTA8\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTA9\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA10\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA11\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA12\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA16\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA17\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA18\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA19\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA20\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA21\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA22\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA23\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA24\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA25\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA26\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA27\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA28\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA29\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA30\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTA31\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB0\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB1\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB2\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB3\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB4\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB5\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB6\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB7\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB8\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTB9\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB10\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB11\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB12\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB13\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB14\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB15\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB16\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB17\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB18\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB19\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB20\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB21\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB22\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC0\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC1\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC2\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC3\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC4\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC5\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC6\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC7\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC8\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTC9\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC10\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC11\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC12\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC13\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC14\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC15\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC16\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC17\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD31\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD30\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD29\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD28\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD27\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD26\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD25\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD24\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD23\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD22\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD21\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD20\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD19\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD18\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD17\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD16\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD0\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD1\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD2\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD3\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD4\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD5\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD6\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD7\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD8\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTD9\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD10\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD11\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD12\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTD13\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB23\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB24\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB25\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB26\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB27\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTB28\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC26\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC27\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC28\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC29\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC30\00", align 1
@.str.105 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTC31\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE0\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE1\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE2\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE3\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE4\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE5\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE6\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE7\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE8\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTE9\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE10\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE11\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE12\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE13\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE14\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE15\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE16\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE17\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE18\00", align 1
@.str.125 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE19\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE20\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE21\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE22\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE23\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE24\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE25\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE26\00", align 1
@.str.133 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE27\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"VF610_PAD_PTE28\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"VF610_PAD_PTA7\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_vf610__202_348_vf610_pinctrl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vf610_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_pinctrl_driver, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_pinctrl_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @imx_pinctrl_probe(ptr noundef %0, ptr noundef nonnull @vf610_pinctrl_info) #3
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_pmx_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #3
  %6 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.imx_pin_reg, ptr %7, i32 %2
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = sext i16 %9 to i32
  %13 = getelementptr inbounds %struct.imx_pinctrl, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %17 = and i32 %16, -3
  %18 = select i1 %3, i32 0, i32 2
  %19 = or i32 %17, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %20 = load ptr, ptr %13, align 4
  %21 = load i16, ptr %8, align 2
  %22 = sext i16 %21 to i32
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #3, !srcloc !11
  br label %24

24:                                               ; preds = %11, %4
  %25 = phi i32 [ 0, %11 ], [ -22, %4 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!8 = !{i64 369133}
!9 = !{i64 2152117560}
!10 = !{i64 2152117758}
!11 = !{i64 368715}
