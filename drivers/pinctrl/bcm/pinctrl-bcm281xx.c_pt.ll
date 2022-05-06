; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-bcm281xx.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm281xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bcm281xx_pinctrl_data = type { ptr, ptr, i32, ptr, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.bcm281xx_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_bcm281xx__206_1446_bcm281xx_pinctrl_driver_init6 = internal global ptr @bcm281xx_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm281xx_pinctrl_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm281xx_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"bcm281xx-pinctrl\00", align 1
@bcm281xx_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@bcm281xx_pinctrl = internal global %struct.bcm281xx_pinctrl_data { ptr null, ptr @bcm281xx_pinctrl_pins, i32 268, ptr @bcm281xx_functions, i32 4, ptr null }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to ioremap MEM resource\0A\00", align 1
@bcm281xx_pinctrl_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 267, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Regmap MMIO init failed.\0A\00", align 1
@bcm281xx_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @bcm281xx_pinctrl_ops, ptr @bcm281xx_pinctrl_pinmux_ops, ptr @bcm281xx_pinctrl_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@bcm281xx_pinctrl_pins = internal constant [268 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.4, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.5, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.6, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.7, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.8, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.9, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.10, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.11, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.12, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.13, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.14, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.15, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.16, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.17, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.18, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.19, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.20, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.21, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.22, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.23, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.24, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.25, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.26, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.27, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.28, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.29, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.30, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.31, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.32, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.33, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.34, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.35, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.36, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.37, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.38, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.39, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.40, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.41, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.42, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.43, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.44, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.45, ptr @hdmi_pin }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.46, ptr @hdmi_pin }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.47, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.48, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.49, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.50, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.51, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.52, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.53, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.54, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.55, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.56, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.57, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.58, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.59, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.60, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.61, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.62, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.63, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.64, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.65, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.66, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.67, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.68, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.69, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.70, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.71, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.72, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.73, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.74, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.75, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.76, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.77, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.78, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.79, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.80, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.81, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.82, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.83, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.84, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.85, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.86, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.87, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.88, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.89, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.90, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.91, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.92, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.93, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.94, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.95, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.96, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.97, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.98, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.99, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.100, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.101, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.102, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.103, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.104, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.105, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.106, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.107, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.108, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.109, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.110, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.111, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.112, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.113, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.114, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.115, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.116, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.117, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.118, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.119, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.120, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.121, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.122, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.123, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.124, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.125, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.126, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.127, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.128, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.129, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.130, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.131, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.132, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.133, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.134, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.135, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.136, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.137, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.138, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.139, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.140, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.141, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.142, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.143, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.144, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.145, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.146, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.147, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.148, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.149, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.150, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.151, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.152, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.153, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.154, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.155, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.156, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.157, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.158, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.159, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.160, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.161, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.162, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.163, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.164, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.165, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.166, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.167, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.168, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.169, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.170, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.171, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.172, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.173, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.174, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.175, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.176, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.177, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.178, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 175, ptr @.str.179, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 176, ptr @.str.180, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 177, ptr @.str.181, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 178, ptr @.str.182, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 179, ptr @.str.183, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 180, ptr @.str.184, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 181, ptr @.str.185, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 182, ptr @.str.186, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 183, ptr @.str.187, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 184, ptr @.str.188, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 185, ptr @.str.189, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 186, ptr @.str.190, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 187, ptr @.str.191, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 188, ptr @.str.192, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 189, ptr @.str.193, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 190, ptr @.str.194, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 191, ptr @.str.195, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 192, ptr @.str.196, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 193, ptr @.str.197, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 194, ptr @.str.198, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 195, ptr @.str.199, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 196, ptr @.str.200, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 197, ptr @.str.201, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 198, ptr @.str.202, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 199, ptr @.str.203, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 200, ptr @.str.204, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 201, ptr @.str.205, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 202, ptr @.str.206, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 203, ptr @.str.207, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 204, ptr @.str.208, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 205, ptr @.str.209, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 206, ptr @.str.210, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 207, ptr @.str.211, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 208, ptr @.str.212, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 209, ptr @.str.213, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 210, ptr @.str.214, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 211, ptr @.str.215, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 212, ptr @.str.216, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 213, ptr @.str.217, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 214, ptr @.str.218, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 215, ptr @.str.219, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 216, ptr @.str.220, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 217, ptr @.str.221, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 218, ptr @.str.222, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 219, ptr @.str.223, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 220, ptr @.str.224, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 221, ptr @.str.225, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 222, ptr @.str.226, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 223, ptr @.str.227, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 224, ptr @.str.228, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 225, ptr @.str.229, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 226, ptr @.str.230, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 227, ptr @.str.231, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 228, ptr @.str.232, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 229, ptr @.str.233, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 230, ptr @.str.234, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 231, ptr @.str.235, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 232, ptr @.str.236, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 233, ptr @.str.237, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 234, ptr @.str.238, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 235, ptr @.str.239, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 236, ptr @.str.240, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 237, ptr @.str.241, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 238, ptr @.str.242, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 239, ptr @.str.243, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 240, ptr @.str.244, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 241, ptr @.str.245, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 242, ptr @.str.246, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 243, ptr @.str.247, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 244, ptr @.str.248, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 245, ptr @.str.249, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 246, ptr @.str.250, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 247, ptr @.str.251, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 248, ptr @.str.252, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 249, ptr @.str.253, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 250, ptr @.str.254, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 251, ptr @.str.255, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 252, ptr @.str.256, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 253, ptr @.str.257, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 254, ptr @.str.258, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 255, ptr @.str.259, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 256, ptr @.str.260, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 257, ptr @.str.261, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 258, ptr @.str.262, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 259, ptr @.str.263, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 260, ptr @.str.264, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 261, ptr @.str.265, ptr @std_pin }, %struct.pinctrl_pin_desc { i32 262, ptr @.str.266, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 263, ptr @.str.267, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 264, ptr @.str.268, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 265, ptr @.str.269, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 266, ptr @.str.270, ptr @i2c_pin }, %struct.pinctrl_pin_desc { i32 267, ptr @.str.271, ptr @i2c_pin }], align 4
@bcm281xx_functions = internal constant [4 x %struct.bcm281xx_pin_function] [%struct.bcm281xx_pin_function { ptr @.str.272, ptr @bcm281xx_alt_groups, i32 268 }, %struct.bcm281xx_pin_function { ptr @.str.273, ptr @bcm281xx_alt_groups, i32 268 }, %struct.bcm281xx_pin_function { ptr @.str.274, ptr @bcm281xx_alt_groups, i32 268 }, %struct.bcm281xx_pin_function { ptr @.str.275, ptr @bcm281xx_alt_groups, i32 268 }], align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"adcsync\00", align 1
@std_pin = internal global i32 1, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"bat_rm\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"bsc1_scl\00", align 1
@i2c_pin = internal global i32 2, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"bsc1_sda\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"bsc2_scl\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"bsc2_sda\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"classgpwr\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"clk_cx8\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"clkout_0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"clkout_1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"clkout_2\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"clkout_3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"clkreq_in_0\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"clkreq_in_1\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"cws_sys_req1\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"cws_sys_req2\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"cws_sys_req3\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"digmic1_clk\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"digmic1_dq\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"digmic2_clk\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"digmic2_dq\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gpen13\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gpen14\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gpen15\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpio00\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gpio01\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gpio02\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gpio03\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gpio04\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gpio05\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gpio06\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gpio07\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio08\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gpio09\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"gps_pablank\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"gps_tmark\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"hdmi_scl\00", align 1
@hdmi_pin = internal global i32 3, align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"hdmi_sda\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"ic_dm\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"ic_dp\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"kp_col_ip_0\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"kp_col_ip_1\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"kp_col_ip_2\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"kp_col_ip_3\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"kp_row_op_0\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"kp_row_op_1\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"kp_row_op_2\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"kp_row_op_3\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"lcd_b_0\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"lcd_b_1\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"lcd_b_2\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"lcd_b_3\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"lcd_b_4\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"lcd_b_5\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"lcd_b_6\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"lcd_b_7\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"lcd_g_0\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"lcd_g_1\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"lcd_g_2\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"lcd_g_3\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"lcd_g_4\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"lcd_g_5\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"lcd_g_6\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"lcd_g_7\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"lcd_hsync\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"lcd_oe\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"lcd_pclk\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"lcd_r_0\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"lcd_r_1\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"lcd_r_2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"lcd_r_3\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"lcd_r_4\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"lcd_r_5\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"lcd_r_6\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"lcd_r_7\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"lcd_vsync\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"mdmgpio0\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"mdmgpio1\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"mdmgpio2\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"mdmgpio3\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"mdmgpio4\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"mdmgpio5\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"mdmgpio6\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"mdmgpio7\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"mdmgpio8\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"mphi_data_0\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"mphi_data_1\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"mphi_data_2\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"mphi_data_3\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"mphi_data_4\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"mphi_data_5\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"mphi_data_6\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"mphi_data_7\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"mphi_data_8\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"mphi_data_9\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"mphi_data_10\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"mphi_data_11\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"mphi_data_12\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"mphi_data_13\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"mphi_data_14\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"mphi_data_15\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"mphi_ha0\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"mphi_hat0\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"mphi_hat1\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"mphi_hce0_n\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"mphi_hce1_n\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"mphi_hrd_n\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"mphi_hwr_n\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"mphi_run0\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"mphi_run1\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"mtx_scan_clk\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"mtx_scan_data\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"nand_ad_0\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"nand_ad_1\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"nand_ad_2\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"nand_ad_3\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"nand_ad_4\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"nand_ad_5\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"nand_ad_6\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"nand_ad_7\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"nand_ale\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"nand_cen_0\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"nand_cen_1\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"nand_cle\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"nand_oen\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"nand_rdy_0\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"nand_rdy_1\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"nand_wen\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"nand_wp\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"pc1\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"pc2\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"pmu_int\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"pmu_scl\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"pmu_sda\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"rfst2g_mtsloten3g\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"rgmii_0_rx_ctl\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"rgmii_0_rxc\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"rgmii_0_rxd_0\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"rgmii_0_rxd_1\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"rgmii_0_rxd_2\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"rgmii_0_rxd_3\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"rgmii_0_tx_ctl\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"rgmii_0_txc\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"rgmii_0_txd_0\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"rgmii_0_txd_1\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"rgmii_0_txd_2\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"rgmii_0_txd_3\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"rgmii_1_rx_ctl\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"rgmii_1_rxc\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"rgmii_1_rxd_0\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"rgmii_1_rxd_1\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"rgmii_1_rxd_2\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"rgmii_1_rxd_3\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"rgmii_1_tx_ctl\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"rgmii_1_txc\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"rgmii_1_txd_0\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"rgmii_1_txd_1\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"rgmii_1_txd_2\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"rgmii_1_txd_3\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"rgmii_gpio_0\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"rgmii_gpio_1\00", align 1
@.str.170 = private unnamed_addr constant [13 x i8] c"rgmii_gpio_2\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"rgmii_gpio_3\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"rtxdata2g_txdata3g1\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"rtxen2g_txdata3g2\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"rxdata3g0\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"rxdata3g1\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"rxdata3g2\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"sdio1_clk\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"sdio1_cmd\00", align 1
@.str.179 = private unnamed_addr constant [13 x i8] c"sdio1_data_0\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"sdio1_data_1\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"sdio1_data_2\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"sdio1_data_3\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"sdio4_clk\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"sdio4_cmd\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"sdio4_data_0\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"sdio4_data_1\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"sdio4_data_2\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"sdio4_data_3\00", align 1
@.str.189 = private unnamed_addr constant [8 x i8] c"sim_clk\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"sim_data\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"sim_det\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"sim_resetn\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"sim2_clk\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"sim2_data\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"sim2_det\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"sim2_resetn\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"sri_c\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"sri_d\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"sri_e\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"ssp_extclk\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"ssp0_clk\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"ssp0_fs\00", align 1
@.str.203 = private unnamed_addr constant [9 x i8] c"ssp0_rxd\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"ssp0_txd\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"ssp2_clk\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"ssp2_fs_0\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"ssp2_fs_1\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"ssp2_fs_2\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"ssp2_fs_3\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"ssp2_rxd_0\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"ssp2_rxd_1\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"ssp2_txd_0\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"ssp2_txd_1\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"ssp3_clk\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"ssp3_fs\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"ssp3_rxd\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"ssp3_txd\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"ssp4_clk\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"ssp4_fs\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"ssp4_rxd\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"ssp4_txd\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"ssp5_clk\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"ssp5_fs\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"ssp5_rxd\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"ssp5_txd\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"ssp6_clk\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c"ssp6_fs\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"ssp6_rxd\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"ssp6_txd\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"stat_1\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"stat_2\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"sysclken\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"traceclk\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"tracedt00\00", align 1
@.str.235 = private unnamed_addr constant [10 x i8] c"tracedt01\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"tracedt02\00", align 1
@.str.237 = private unnamed_addr constant [10 x i8] c"tracedt03\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"tracedt04\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"tracedt05\00", align 1
@.str.240 = private unnamed_addr constant [10 x i8] c"tracedt06\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"tracedt07\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"tracedt08\00", align 1
@.str.243 = private unnamed_addr constant [10 x i8] c"tracedt09\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"tracedt10\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"tracedt11\00", align 1
@.str.246 = private unnamed_addr constant [10 x i8] c"tracedt12\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"tracedt13\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"tracedt14\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"tracedt15\00", align 1
@.str.250 = private unnamed_addr constant [10 x i8] c"txdata3g0\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"txpwrind\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"uartb1_ucts\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"uartb1_urts\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"uartb1_urxd\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"uartb1_utxd\00", align 1
@.str.256 = private unnamed_addr constant [12 x i8] c"uartb2_urxd\00", align 1
@.str.257 = private unnamed_addr constant [12 x i8] c"uartb2_utxd\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"uartb3_ucts\00", align 1
@.str.259 = private unnamed_addr constant [12 x i8] c"uartb3_urts\00", align 1
@.str.260 = private unnamed_addr constant [12 x i8] c"uartb3_urxd\00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"uartb3_utxd\00", align 1
@.str.262 = private unnamed_addr constant [12 x i8] c"uartb4_ucts\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"uartb4_urts\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"uartb4_urxd\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"uartb4_utxd\00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c"vc_cam1_scl\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"vc_cam1_sda\00", align 1
@.str.268 = private unnamed_addr constant [12 x i8] c"vc_cam2_scl\00", align 1
@.str.269 = private unnamed_addr constant [12 x i8] c"vc_cam2_sda\00", align 1
@.str.270 = private unnamed_addr constant [12 x i8] c"vc_cam3_scl\00", align 1
@.str.271 = private unnamed_addr constant [12 x i8] c"vc_cam3_sda\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"alt1\00", align 1
@bcm281xx_alt_groups = internal constant [268 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271], align 4
@.str.273 = private unnamed_addr constant [5 x i8] c"alt2\00", align 1
@.str.274 = private unnamed_addr constant [5 x i8] c"alt3\00", align 1
@.str.275 = private unnamed_addr constant [5 x i8] c"alt4\00", align 1
@bcm281xx_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @bcm281xx_pinctrl_get_groups_count, ptr @bcm281xx_pinctrl_get_group_name, ptr @bcm281xx_pinctrl_get_group_pins, ptr @bcm281xx_pinctrl_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@bcm281xx_pinctrl_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @bcm281xx_pinctrl_get_fcns_count, ptr @bcm281xx_pinctrl_get_fcn_name, ptr @bcm281xx_pinctrl_get_fcn_groups, ptr @bcm281xx_pinmux_set, ptr null, ptr null, ptr null, i8 0 }, align 4
@bcm281xx_pinctrl_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @bcm281xx_pinctrl_pin_config_get, ptr @bcm281xx_pinctrl_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.276 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.277 = private unnamed_addr constant [42 x i8] c"Error updating register for pin %s (%d).\0A\00", align 1
@.str.278 = private unnamed_addr constant [35 x i8] c"Unknown pin type for pin %s (%d).\0A\00", align 1
@.str.279 = private unnamed_addr constant [100 x i8] c"Invalid Drive Strength value (%d) for pin %s (%d). Valid values are (2..16) mA, even numbers only.\0A\00", align 1
@.str.280 = private unnamed_addr constant [45 x i8] c"Unrecognized pin config %d for pin %s (%d).\0A\00", align 1
@.str.281 = private unnamed_addr constant [106 x i8] c"Invalid pull-up value (%d) for pin %s (%d). Valid values are 568, 720, 831, 1080, 1200, 1800, 2700 Ohms.\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_bcm281xx__206_1446_bcm281xx_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @bcm281xx_pinctrl_driver, ptr noundef nonnull @bcm281xx_pinctrl_probe, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  store ptr %2, ptr @bcm281xx_pinctrl, align 4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %3, label %5, label %8

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  %6 = load ptr, ptr @bcm281xx_pinctrl, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %28

8:                                                ; preds = %1
  %9 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %4, ptr noundef null, ptr noundef %2, ptr noundef nonnull @bcm281xx_pinctrl_regmap_config, ptr noundef null, ptr noundef null) #6
  store ptr %9, ptr getelementptr inbounds (%struct.bcm281xx_pinctrl_data, ptr @bcm281xx_pinctrl, i32 0, i32 5), align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  br label %28

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %14, %12 ]
  store ptr %19, ptr @bcm281xx_pinctrl_desc, align 4
  %20 = load ptr, ptr getelementptr inbounds (%struct.bcm281xx_pinctrl_data, ptr @bcm281xx_pinctrl, i32 0, i32 1), align 4
  store ptr %20, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @bcm281xx_pinctrl_desc, i32 0, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.bcm281xx_pinctrl_data, ptr @bcm281xx_pinctrl, i32 0, i32 2), align 4
  store i32 %21, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @bcm281xx_pinctrl_desc, i32 0, i32 2), align 4
  %22 = tail call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull @bcm281xx_pinctrl_desc, ptr noundef nonnull @bcm281xx_pinctrl) #6
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  %25 = ptrtoint ptr %22 to i32
  br label %28

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr @bcm281xx_pinctrl, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %24, %11, %5
  %29 = phi i32 [ %7, %5 ], [ -19, %11 ], [ %25, %24 ], [ 0, %26 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_get_groups_count(ptr noundef %0) #3 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm281xx_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %1, i32 1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %1
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm281xx_pinctrl_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.276, ptr noundef %12) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_get_fcns_count(ptr noundef %0) #3 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm281xx_pinctrl_get_fcn_name(ptr noundef %0, i32 noundef %1) #3 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.bcm281xx_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_get_fcn_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.bcm281xx_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.bcm281xx_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinmux_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %2
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 2
  %10 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = shl i32 %1, 8
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %9, i32 noundef 1792, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr %struct.pinctrl_pin_desc, ptr %18, i32 %2
  %20 = getelementptr %struct.pinctrl_pin_desc, ptr %18, i32 %2, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.277, ptr noundef %21, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %15, %3
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm281xx_pinctrl_pin_config_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm281xx_pinctrl_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = shl i32 %1, 2
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %8 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %176

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.pinctrl_pin_desc, ptr %13, i32 %1, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %176 [
    i32 1, label %17
    i32 2, label %87
    i32 3, label %142
  ]

17:                                               ; preds = %11
  %18 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %183, label %20

20:                                               ; preds = %80, %17
  %21 = phi i32 [ %82, %80 ], [ 0, %17 ]
  %22 = phi i32 [ %84, %80 ], [ 0, %17 ]
  %23 = phi i32 [ %85, %80 ], [ 0, %17 ]
  %24 = getelementptr i32, ptr %2, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %72 [
    i8 14, label %27
    i8 1, label %32
    i8 5, label %35
    i8 3, label %39
    i8 24, label %43
    i8 12, label %48
    i8 9, label %53
  ]

27:                                               ; preds = %20
  %28 = icmp ugt i32 %25, 255
  %29 = and i32 %21, -129
  %30 = select i1 %28, i32 128, i32 0
  %31 = or i32 %30, %29
  br label %80

32:                                               ; preds = %20
  %33 = or i32 %22, 32
  %34 = and i32 %21, -97
  br label %80

35:                                               ; preds = %20
  %36 = or i32 %22, 32
  %37 = and i32 %21, -97
  %38 = or i32 %37, 32
  br label %80

39:                                               ; preds = %20
  %40 = and i32 %21, -97
  %41 = or i32 %22, 32
  %42 = or i32 %40, 64
  br label %80

43:                                               ; preds = %20
  %44 = icmp ugt i32 %25, 255
  %45 = and i32 %21, -17
  %46 = select i1 %44, i32 16, i32 0
  %47 = or i32 %46, %45
  br label %80

48:                                               ; preds = %20
  %49 = icmp ult i32 %25, 256
  %50 = and i32 %21, -9
  %51 = select i1 %49, i32 8, i32 0
  %52 = or i32 %51, %50
  br label %80

53:                                               ; preds = %20
  %54 = lshr i32 %25, 8
  %55 = add nsw i32 %54, -2
  %56 = icmp ult i32 %55, 15
  %57 = and i32 %25, 256
  %58 = icmp eq i32 %57, 0
  %59 = and i1 %58, %56
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %18, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.pinctrl_pin_desc, ptr %64, i32 %1, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.279, i32 noundef %54, ptr noundef %66, i32 noundef %1) #7
  br label %197

67:                                               ; preds = %53
  %68 = lshr i32 %25, 9
  %69 = add nsw i32 %68, -1
  %70 = and i32 %21, -8
  %71 = or i32 %69, %70
  br label %80

72:                                               ; preds = %20
  %73 = and i32 %25, 255
  %74 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %18, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr %struct.pinctrl_pin_desc, ptr %77, i32 %1, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.280, i32 noundef %73, ptr noundef %79, i32 noundef %1) #7
  br label %197

80:                                               ; preds = %67, %48, %43, %39, %35, %32, %27
  %81 = phi i32 [ %22, %67 ], [ %22, %48 ], [ %22, %43 ], [ %41, %39 ], [ %36, %35 ], [ %33, %32 ], [ %22, %27 ]
  %82 = phi i32 [ %71, %67 ], [ %52, %48 ], [ %47, %43 ], [ %42, %39 ], [ %38, %35 ], [ %34, %32 ], [ %31, %27 ]
  %83 = phi i32 [ 7, %67 ], [ 8, %48 ], [ 16, %43 ], [ 64, %39 ], [ 64, %35 ], [ 64, %32 ], [ 128, %27 ]
  %84 = or i32 %83, %81
  %85 = add nuw i32 %23, 1
  %86 = icmp eq i32 %85, %3
  br i1 %86, label %183, label %20

87:                                               ; preds = %11
  %88 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %89 = icmp eq i32 %3, 0
  br i1 %89, label %183, label %90

90:                                               ; preds = %136, %87
  %91 = phi i32 [ %137, %136 ], [ 0, %87 ]
  %92 = phi i32 [ %139, %136 ], [ 0, %87 ]
  %93 = phi i32 [ %140, %136 ], [ 0, %87 ]
  %94 = getelementptr i32, ptr %2, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = trunc i32 %95 to i8
  switch i8 %96, label %128 [
    i8 5, label %97
    i8 1, label %116
    i8 24, label %118
    i8 12, label %123
  ]

97:                                               ; preds = %90
  %98 = lshr i32 %95, 8
  switch i32 %98, label %99 [
    i32 1200, label %112
    i32 1800, label %106
    i32 720, label %107
    i32 2700, label %108
    i32 831, label %109
    i32 1080, label %110
    i32 568, label %111
  ]

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %88, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr %struct.pinctrl_pin_desc, ptr %103, i32 %1, i32 1
  %105 = load ptr, ptr %104, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.281, i32 noundef %98, ptr noundef %105, i32 noundef %1) #7
  br label %197

106:                                              ; preds = %97
  br label %112

107:                                              ; preds = %97
  br label %112

108:                                              ; preds = %97
  br label %112

109:                                              ; preds = %97
  br label %112

110:                                              ; preds = %97
  br label %112

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %110, %109, %108, %107, %106, %97
  %113 = phi i32 [ 16, %97 ], [ 32, %106 ], [ 48, %107 ], [ 64, %108 ], [ 80, %109 ], [ 96, %110 ], [ 112, %111 ]
  %114 = and i32 %91, -113
  %115 = or i32 %113, %114
  br label %136

116:                                              ; preds = %90
  %117 = and i32 %91, -113
  br label %136

118:                                              ; preds = %90
  %119 = icmp ugt i32 %95, 255
  %120 = and i32 %91, -9
  %121 = select i1 %119, i32 8, i32 0
  %122 = or i32 %121, %120
  br label %136

123:                                              ; preds = %90
  %124 = icmp ult i32 %95, 256
  %125 = and i32 %91, -5
  %126 = select i1 %124, i32 4, i32 0
  %127 = or i32 %126, %125
  br label %136

128:                                              ; preds = %90
  %129 = and i32 %95, 255
  %130 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %88, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr %struct.pinctrl_pin_desc, ptr %133, i32 %1, i32 1
  %135 = load ptr, ptr %134, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.280, i32 noundef %129, ptr noundef %135, i32 noundef %1) #7
  br label %197

136:                                              ; preds = %123, %118, %116, %112
  %137 = phi i32 [ %115, %112 ], [ %117, %116 ], [ %122, %118 ], [ %127, %123 ]
  %138 = phi i32 [ 112, %112 ], [ 112, %116 ], [ 8, %118 ], [ 4, %123 ]
  %139 = or i32 %138, %92
  %140 = add nuw i32 %93, 1
  %141 = icmp eq i32 %140, %3
  br i1 %141, label %183, label %90

142:                                              ; preds = %11
  %143 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %144 = icmp eq i32 %3, 0
  br i1 %144, label %183, label %145

145:                                              ; preds = %170, %142
  %146 = phi i32 [ %171, %170 ], [ 0, %142 ]
  %147 = phi i32 [ %173, %170 ], [ 0, %142 ]
  %148 = phi i32 [ %174, %170 ], [ 0, %142 ]
  %149 = getelementptr i32, ptr %2, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = trunc i32 %150 to i8
  switch i8 %151, label %162 [
    i8 24, label %152
    i8 12, label %157
  ]

152:                                              ; preds = %145
  %153 = icmp ugt i32 %150, 255
  %154 = and i32 %146, -17
  %155 = select i1 %153, i32 16, i32 0
  %156 = or i32 %155, %154
  br label %170

157:                                              ; preds = %145
  %158 = icmp ult i32 %150, 256
  %159 = and i32 %146, -9
  %160 = select i1 %158, i32 8, i32 0
  %161 = or i32 %160, %159
  br label %170

162:                                              ; preds = %145
  %163 = and i32 %150, 255
  %164 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %143, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr %struct.pinctrl_pin_desc, ptr %167, i32 %1, i32 1
  %169 = load ptr, ptr %168, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.280, i32 noundef %163, ptr noundef %169, i32 noundef %1) #7
  br label %197

170:                                              ; preds = %157, %152
  %171 = phi i32 [ %156, %152 ], [ %161, %157 ]
  %172 = phi i32 [ 16, %152 ], [ 8, %157 ]
  %173 = or i32 %172, %147
  %174 = add nuw i32 %148, 1
  %175 = icmp eq i32 %174, %3
  br i1 %175, label %183, label %145

176:                                              ; preds = %11, %4
  %177 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %5, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr %struct.pinctrl_pin_desc, ptr %180, i32 %1, i32 1
  %182 = load ptr, ptr %181, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.278, ptr noundef %182, i32 noundef %1) #7
  br label %197

183:                                              ; preds = %170, %142, %136, %87, %80, %17
  %184 = phi i32 [ 0, %142 ], [ 0, %87 ], [ 0, %17 ], [ %82, %80 ], [ %137, %136 ], [ %171, %170 ]
  %185 = phi i32 [ 0, %142 ], [ 0, %87 ], [ 0, %17 ], [ %84, %80 ], [ %139, %136 ], [ %173, %170 ]
  %186 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %5, i32 0, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = tail call i32 @regmap_update_bits_base(ptr noundef %187, i32 noundef %6, i32 noundef %185, i32 noundef %184, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.bcm281xx_pinctrl_data, ptr %5, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr %struct.pinctrl_pin_desc, ptr %194, i32 %1, i32 1
  %196 = load ptr, ptr %195, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.277, ptr noundef %196, i32 noundef %1) #7
  br label %197

197:                                              ; preds = %190, %183, %176, %162, %128, %99, %72, %60
  %198 = phi i32 [ -22, %176 ], [ %188, %190 ], [ 0, %183 ], [ -22, %72 ], [ -22, %60 ], [ -22, %128 ], [ -22, %99 ], [ -22, %162 ]
  ret i32 %198
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
