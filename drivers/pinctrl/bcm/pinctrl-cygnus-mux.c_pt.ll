; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-cygnus-mux.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-cygnus-mux.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cygnus_pin = type { i32, ptr, %struct.cygnus_gpio_mux }
%struct.cygnus_gpio_mux = type { i32, i32, i32 }
%struct.cygnus_pin_group = type { ptr, ptr, i32, %struct.cygnus_mux }
%struct.cygnus_mux = type { i32, i32, i32 }
%struct.cygnus_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.cygnus_pinctrl = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.spinlock }
%struct.cygnus_mux_log = type { %struct.cygnus_mux, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_cygnus_mux__206_1018_cygnus_pinmux_init3 = internal global ptr @cygnus_pinmux_init, section ".initcall3.init", align 4
@cygnus_pinmux_driver = internal global %struct.platform_driver { ptr @cygnus_pinmux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @cygnus_pinmux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"cygnus-pinmux\00", align 1
@cygnus_pinmux_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to map I/O space\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"unable to initialize IOMUX log\0A\00", align 1
@cygnus_pins = internal global [180 x %struct.cygnus_pin] [%struct.cygnus_pin { i32 0, ptr @.str.4, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 1, ptr @.str.5, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 2, ptr @.str.6, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 3, ptr @.str.7, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 4, ptr @.str.8, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 5, ptr @.str.9, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 6, ptr @.str.10, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 7, ptr @.str.11, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 8, ptr @.str.12, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 9, ptr @.str.13, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 10, ptr @.str.14, %struct.cygnus_gpio_mux { i32 1, i32 40, i32 0 } }, %struct.cygnus_pin { i32 11, ptr @.str.15, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 28 } }, %struct.cygnus_pin { i32 12, ptr @.str.16, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 13, ptr @.str.17, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 14, ptr @.str.18, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 15, ptr @.str.19, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 16, ptr @.str.20, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 17, ptr @.str.21, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 18, ptr @.str.22, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 19, ptr @.str.23, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 20, ptr @.str.24, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 21, ptr @.str.25, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 22, ptr @.str.26, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 23, ptr @.str.27, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 24, ptr @.str.28, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 25, ptr @.str.29, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 26, ptr @.str.30, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 27, ptr @.str.31, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 28, ptr @.str.32, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 29, ptr @.str.33, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 30, ptr @.str.34, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 31, ptr @.str.35, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 32, ptr @.str.36, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 33, ptr @.str.37, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 34, ptr @.str.38, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 35, ptr @.str.39, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 36, ptr @.str.40, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 37, ptr @.str.41, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 38, ptr @.str.42, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 30 } }, %struct.cygnus_pin { i32 39, ptr @.str.43, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 28 } }, %struct.cygnus_pin { i32 40, ptr @.str.44, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 26 } }, %struct.cygnus_pin { i32 41, ptr @.str.45, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 24 } }, %struct.cygnus_pin { i32 42, ptr @.str.46, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 22 } }, %struct.cygnus_pin { i32 43, ptr @.str.47, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 20 } }, %struct.cygnus_pin { i32 44, ptr @.str.48, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 18 } }, %struct.cygnus_pin { i32 45, ptr @.str.49, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 16 } }, %struct.cygnus_pin { i32 46, ptr @.str.50, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 14 } }, %struct.cygnus_pin { i32 47, ptr @.str.51, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 12 } }, %struct.cygnus_pin { i32 48, ptr @.str.52, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 10 } }, %struct.cygnus_pin { i32 49, ptr @.str.53, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 8 } }, %struct.cygnus_pin { i32 50, ptr @.str.54, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 6 } }, %struct.cygnus_pin { i32 51, ptr @.str.55, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 4 } }, %struct.cygnus_pin { i32 52, ptr @.str.56, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 2 } }, %struct.cygnus_pin { i32 53, ptr @.str.57, %struct.cygnus_gpio_mux { i32 1, i32 16, i32 0 } }, %struct.cygnus_pin { i32 54, ptr @.str.58, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 10 } }, %struct.cygnus_pin { i32 55, ptr @.str.59, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 6 } }, %struct.cygnus_pin { i32 56, ptr @.str.60, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 8 } }, %struct.cygnus_pin { i32 57, ptr @.str.61, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 4 } }, %struct.cygnus_pin { i32 58, ptr @.str.62, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 2 } }, %struct.cygnus_pin { i32 59, ptr @.str.63, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 30 } }, %struct.cygnus_pin { i32 60, ptr @.str.64, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 0 } }, %struct.cygnus_pin { i32 61, ptr @.str.65, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 28 } }, %struct.cygnus_pin { i32 62, ptr @.str.66, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 26 } }, %struct.cygnus_pin { i32 63, ptr @.str.67, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 22 } }, %struct.cygnus_pin { i32 64, ptr @.str.68, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 24 } }, %struct.cygnus_pin { i32 65, ptr @.str.69, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 20 } }, %struct.cygnus_pin { i32 66, ptr @.str.70, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 18 } }, %struct.cygnus_pin { i32 67, ptr @.str.71, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 14 } }, %struct.cygnus_pin { i32 68, ptr @.str.72, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 16 } }, %struct.cygnus_pin { i32 69, ptr @.str.73, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 12 } }, %struct.cygnus_pin { i32 70, ptr @.str.74, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 10 } }, %struct.cygnus_pin { i32 71, ptr @.str.75, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 8 } }, %struct.cygnus_pin { i32 72, ptr @.str.76, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 6 } }, %struct.cygnus_pin { i32 73, ptr @.str.77, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 4 } }, %struct.cygnus_pin { i32 74, ptr @.str.78, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 2 } }, %struct.cygnus_pin { i32 75, ptr @.str.79, %struct.cygnus_gpio_mux { i32 1, i32 28, i32 0 } }, %struct.cygnus_pin { i32 76, ptr @.str.80, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 14 } }, %struct.cygnus_pin { i32 77, ptr @.str.81, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 12 } }, %struct.cygnus_pin { i32 78, ptr @.str.82, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 10 } }, %struct.cygnus_pin { i32 79, ptr @.str.83, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 8 } }, %struct.cygnus_pin { i32 80, ptr @.str.84, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 6 } }, %struct.cygnus_pin { i32 81, ptr @.str.85, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 4 } }, %struct.cygnus_pin { i32 82, ptr @.str.86, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 2 } }, %struct.cygnus_pin { i32 83, ptr @.str.87, %struct.cygnus_gpio_mux { i32 1, i32 32, i32 0 } }, %struct.cygnus_pin { i32 84, ptr @.str.88, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 6 } }, %struct.cygnus_pin { i32 85, ptr @.str.89, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 4 } }, %struct.cygnus_pin { i32 86, ptr @.str.90, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 2 } }, %struct.cygnus_pin { i32 87, ptr @.str.91, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 0 } }, %struct.cygnus_pin { i32 88, ptr @.str.92, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 30 } }, %struct.cygnus_pin { i32 89, ptr @.str.93, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 28 } }, %struct.cygnus_pin { i32 90, ptr @.str.94, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 24 } }, %struct.cygnus_pin { i32 91, ptr @.str.95, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 10 } }, %struct.cygnus_pin { i32 92, ptr @.str.96, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 26 } }, %struct.cygnus_pin { i32 93, ptr @.str.97, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 8 } }, %struct.cygnus_pin { i32 94, ptr @.str.98, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 26 } }, %struct.cygnus_pin { i32 95, ptr @.str.99, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 24 } }, %struct.cygnus_pin { i32 96, ptr @.str.100, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 22 } }, %struct.cygnus_pin { i32 97, ptr @.str.101, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 20 } }, %struct.cygnus_pin { i32 98, ptr @.str.102, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 18 } }, %struct.cygnus_pin { i32 99, ptr @.str.103, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 16 } }, %struct.cygnus_pin { i32 100, ptr @.str.104, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 12 } }, %struct.cygnus_pin { i32 101, ptr @.str.105, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 30 } }, %struct.cygnus_pin { i32 102, ptr @.str.106, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 14 } }, %struct.cygnus_pin { i32 103, ptr @.str.107, %struct.cygnus_gpio_mux { i32 1, i32 20, i32 28 } }, %struct.cygnus_pin { i32 104, ptr @.str.108, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 22 } }, %struct.cygnus_pin { i32 105, ptr @.str.109, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 20 } }, %struct.cygnus_pin { i32 106, ptr @.str.110, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 14 } }, %struct.cygnus_pin { i32 107, ptr @.str.111, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 16 } }, %struct.cygnus_pin { i32 108, ptr @.str.112, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 12 } }, %struct.cygnus_pin { i32 109, ptr @.str.113, %struct.cygnus_gpio_mux { i32 1, i32 24, i32 18 } }, %struct.cygnus_pin { i32 110, ptr @.str.114, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 30 } }, %struct.cygnus_pin { i32 111, ptr @.str.115, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 28 } }, %struct.cygnus_pin { i32 112, ptr @.str.116, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 26 } }, %struct.cygnus_pin { i32 113, ptr @.str.117, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 24 } }, %struct.cygnus_pin { i32 114, ptr @.str.118, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 22 } }, %struct.cygnus_pin { i32 115, ptr @.str.119, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 20 } }, %struct.cygnus_pin { i32 116, ptr @.str.120, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 18 } }, %struct.cygnus_pin { i32 117, ptr @.str.121, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 16 } }, %struct.cygnus_pin { i32 118, ptr @.str.122, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 14 } }, %struct.cygnus_pin { i32 119, ptr @.str.123, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 12 } }, %struct.cygnus_pin { i32 120, ptr @.str.124, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 10 } }, %struct.cygnus_pin { i32 121, ptr @.str.125, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 8 } }, %struct.cygnus_pin { i32 122, ptr @.str.126, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 6 } }, %struct.cygnus_pin { i32 123, ptr @.str.127, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 4 } }, %struct.cygnus_pin { i32 124, ptr @.str.128, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 2 } }, %struct.cygnus_pin { i32 125, ptr @.str.129, %struct.cygnus_gpio_mux { i32 1, i32 12, i32 0 } }, %struct.cygnus_pin { i32 126, ptr @.str.130, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 26 } }, %struct.cygnus_pin { i32 127, ptr @.str.131, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 24 } }, %struct.cygnus_pin { i32 128, ptr @.str.132, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 22 } }, %struct.cygnus_pin { i32 129, ptr @.str.133, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 0 } }, %struct.cygnus_pin { i32 130, ptr @.str.134, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 20 } }, %struct.cygnus_pin { i32 131, ptr @.str.135, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 18 } }, %struct.cygnus_pin { i32 132, ptr @.str.136, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 16 } }, %struct.cygnus_pin { i32 133, ptr @.str.137, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 14 } }, %struct.cygnus_pin { i32 134, ptr @.str.138, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 12 } }, %struct.cygnus_pin { i32 135, ptr @.str.139, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 10 } }, %struct.cygnus_pin { i32 136, ptr @.str.140, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 8 } }, %struct.cygnus_pin { i32 137, ptr @.str.141, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 6 } }, %struct.cygnus_pin { i32 138, ptr @.str.142, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 4 } }, %struct.cygnus_pin { i32 139, ptr @.str.143, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 2 } }, %struct.cygnus_pin { i32 140, ptr @.str.144, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 22 } }, %struct.cygnus_pin { i32 141, ptr @.str.145, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 30 } }, %struct.cygnus_pin { i32 142, ptr @.str.146, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 28 } }, %struct.cygnus_pin { i32 143, ptr @.str.147, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 26 } }, %struct.cygnus_pin { i32 144, ptr @.str.148, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 24 } }, %struct.cygnus_pin { i32 145, ptr @.str.149, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 20 } }, %struct.cygnus_pin { i32 146, ptr @.str.150, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 18 } }, %struct.cygnus_pin { i32 147, ptr @.str.151, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 16 } }, %struct.cygnus_pin { i32 148, ptr @.str.152, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 14 } }, %struct.cygnus_pin { i32 149, ptr @.str.153, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 12 } }, %struct.cygnus_pin { i32 150, ptr @.str.154, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 10 } }, %struct.cygnus_pin { i32 151, ptr @.str.155, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 8 } }, %struct.cygnus_pin { i32 152, ptr @.str.156, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 6 } }, %struct.cygnus_pin { i32 153, ptr @.str.157, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 4 } }, %struct.cygnus_pin { i32 154, ptr @.str.158, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 2 } }, %struct.cygnus_pin { i32 155, ptr @.str.159, %struct.cygnus_gpio_mux { i32 1, i32 8, i32 0 } }, %struct.cygnus_pin { i32 156, ptr @.str.160, %struct.cygnus_gpio_mux { i32 1, i32 4, i32 30 } }, %struct.cygnus_pin { i32 157, ptr @.str.161, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 0 } }, %struct.cygnus_pin { i32 158, ptr @.str.162, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 2 } }, %struct.cygnus_pin { i32 159, ptr @.str.163, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 4 } }, %struct.cygnus_pin { i32 160, ptr @.str.164, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 6 } }, %struct.cygnus_pin { i32 161, ptr @.str.165, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 8 } }, %struct.cygnus_pin { i32 162, ptr @.str.166, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 10 } }, %struct.cygnus_pin { i32 163, ptr @.str.167, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 12 } }, %struct.cygnus_pin { i32 164, ptr @.str.168, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 14 } }, %struct.cygnus_pin { i32 165, ptr @.str.169, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 16 } }, %struct.cygnus_pin { i32 166, ptr @.str.170, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 18 } }, %struct.cygnus_pin { i32 167, ptr @.str.171, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 20 } }, %struct.cygnus_pin { i32 168, ptr @.str.172, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 22 } }, %struct.cygnus_pin { i32 169, ptr @.str.173, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 24 } }, %struct.cygnus_pin { i32 170, ptr @.str.174, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 26 } }, %struct.cygnus_pin { i32 171, ptr @.str.175, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 28 } }, %struct.cygnus_pin { i32 172, ptr @.str.176, %struct.cygnus_gpio_mux { i32 1, i32 0, i32 30 } }, %struct.cygnus_pin { i32 173, ptr @.str.177, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 174, ptr @.str.178, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 175, ptr @.str.179, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 176, ptr @.str.180, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 177, ptr @.str.181, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 178, ptr @.str.182, %struct.cygnus_gpio_mux zeroinitializer }, %struct.cygnus_pin { i32 179, ptr @.str.183, %struct.cygnus_gpio_mux zeroinitializer }], align 4
@cygnus_pin_groups = internal constant [86 x %struct.cygnus_pin_group] [%struct.cygnus_pin_group { ptr @.str.184, ptr @i2s2_0_pins, i32 1, %struct.cygnus_mux { i32 0, i32 0, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.185, ptr @i2s2_1_pins, i32 1, %struct.cygnus_mux { i32 0, i32 4, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.186, ptr @i2s2_2_pins, i32 1, %struct.cygnus_mux { i32 0, i32 8, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.187, ptr @i2s2_3_pins, i32 1, %struct.cygnus_mux { i32 0, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.188, ptr @i2s2_4_pins, i32 1, %struct.cygnus_mux { i32 0, i32 16, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.189, ptr @pwm4_pins, i32 1, %struct.cygnus_mux { i32 0, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.190, ptr @pwm5_pins, i32 1, %struct.cygnus_mux { i32 0, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.191, ptr @key0_pins, i32 1, %struct.cygnus_mux { i32 4, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.192, ptr @key1_pins, i32 1, %struct.cygnus_mux { i32 4, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.193, ptr @key2_pins, i32 1, %struct.cygnus_mux { i32 4, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.194, ptr @key3_pins, i32 1, %struct.cygnus_mux { i32 4, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.195, ptr @key4_pins, i32 1, %struct.cygnus_mux { i32 4, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.196, ptr @key5_pins, i32 1, %struct.cygnus_mux { i32 4, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.197, ptr @key6_pins, i32 1, %struct.cygnus_mux { i32 4, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.198, ptr @audio_dte0_pins, i32 1, %struct.cygnus_mux { i32 4, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.199, ptr @key7_pins, i32 1, %struct.cygnus_mux { i32 4, i32 28, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.200, ptr @audio_dte1_pins, i32 1, %struct.cygnus_mux { i32 4, i32 28, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.201, ptr @key8_pins, i32 1, %struct.cygnus_mux { i32 8, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.202, ptr @key9_pins, i32 1, %struct.cygnus_mux { i32 8, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.203, ptr @key10_pins, i32 1, %struct.cygnus_mux { i32 8, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.204, ptr @key11_pins, i32 1, %struct.cygnus_mux { i32 8, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.205, ptr @key12_pins, i32 1, %struct.cygnus_mux { i32 8, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.206, ptr @key13_pins, i32 1, %struct.cygnus_mux { i32 8, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.207, ptr @key14_pins, i32 1, %struct.cygnus_mux { i32 8, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.208, ptr @audio_dte2_pins, i32 1, %struct.cygnus_mux { i32 8, i32 24, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.209, ptr @key15_pins, i32 1, %struct.cygnus_mux { i32 8, i32 28, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.210, ptr @audio_dte3_pins, i32 1, %struct.cygnus_mux { i32 8, i32 28, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.211, ptr @pwm0_pins, i32 1, %struct.cygnus_mux { i32 12, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.212, ptr @pwm1_pins, i32 1, %struct.cygnus_mux { i32 12, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.213, ptr @pwm2_pins, i32 1, %struct.cygnus_mux { i32 12, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.214, ptr @pwm3_pins, i32 1, %struct.cygnus_mux { i32 12, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.215, ptr @sdio0_pins, i32 6, %struct.cygnus_mux { i32 12, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.216, ptr @smart_card0_pins, i32 5, %struct.cygnus_mux { i32 12, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.217, ptr @i2s0_0_pins, i32 4, %struct.cygnus_mux { i32 12, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.218, ptr @spdif_pins, i32 1, %struct.cygnus_mux { i32 12, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.219, ptr @smart_card1_pins, i32 5, %struct.cygnus_mux { i32 12, i32 24, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.220, ptr @i2s1_0_pins, i32 4, %struct.cygnus_mux { i32 12, i32 24, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.221, ptr @spi0_pins, i32 4, %struct.cygnus_mux { i32 16, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.222, ptr @spi1_pins, i32 4, %struct.cygnus_mux { i32 16, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.223, ptr @spi2_pins, i32 4, %struct.cygnus_mux { i32 16, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.224, ptr @spi3_pins, i32 4, %struct.cygnus_mux { i32 16, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.225, ptr @sw_led0_0_pins, i32 4, %struct.cygnus_mux { i32 16, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.226, ptr @d1w_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.227, ptr @uart4_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.228, ptr @sw_led2_0_pins, i32 2, %struct.cygnus_mux { i32 16, i32 16, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.229, ptr @lcd_pins, i32 30, %struct.cygnus_mux { i32 16, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.230, ptr @sram_0_pins, i32 30, %struct.cygnus_mux { i32 16, i32 20, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.231, ptr @spi5_pins, i32 4, %struct.cygnus_mux { i32 16, i32 20, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.232, ptr @uart0_pins, i32 4, %struct.cygnus_mux { i32 20, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.233, ptr @sw_led0_1_pins, i32 4, %struct.cygnus_mux { i32 20, i32 0, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.234, ptr @uart1_dte_pins, i32 4, %struct.cygnus_mux { i32 20, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.235, ptr @uart2_pins, i32 4, %struct.cygnus_mux { i32 20, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.236, ptr @uart1_pins, i32 4, %struct.cygnus_mux { i32 20, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.237, ptr @uart3_pins, i32 2, %struct.cygnus_mux { i32 20, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.238, ptr @qspi_0_pins, i32 4, %struct.cygnus_mux { i32 20, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.239, ptr @nand_pins, i32 16, %struct.cygnus_mux { i32 20, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.240, ptr @sdio0_cd_pins, i32 1, %struct.cygnus_mux { i32 24, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.241, ptr @sdio0_mmc_pins, i32 3, %struct.cygnus_mux { i32 24, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.242, ptr @sdio1_data_0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.243, ptr @can0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.244, ptr @spi4_0_pins, i32 2, %struct.cygnus_mux { i32 24, i32 8, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.245, ptr @sdio1_data_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.246, ptr @can1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.247, ptr @spi4_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 12, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.248, ptr @sdio1_cd_pins, i32 1, %struct.cygnus_mux { i32 24, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.249, ptr @sdio1_led_pins, i32 2, %struct.cygnus_mux { i32 24, i32 20, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.250, ptr @sw_led2_1_pins, i32 2, %struct.cygnus_mux { i32 24, i32 20, i32 2 } }, %struct.cygnus_pin_group { ptr @.str.251, ptr @sdio1_mmc_pins, i32 3, %struct.cygnus_mux { i32 24, i32 24, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.252, ptr @cam_led_pins, i32 5, %struct.cygnus_mux { i32 28, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.253, ptr @sw_led1_pins, i32 4, %struct.cygnus_mux { i32 28, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.254, ptr @cam_0_pins, i32 5, %struct.cygnus_mux { i32 28, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.255, ptr @cam_1_pins, i32 8, %struct.cygnus_mux { i32 28, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.256, ptr @sram_1_pins, i32 8, %struct.cygnus_mux { i32 28, i32 8, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.257, ptr @qspi_1_pins, i32 2, %struct.cygnus_mux { i32 28, i32 12, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.258, ptr @bsc1_pins, i32 2, %struct.cygnus_mux { i32 28, i32 16, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.259, ptr @pcie_clkreq_pins, i32 2, %struct.cygnus_mux { i32 28, i32 16, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.260, ptr @smart_card0_fcb_pins, i32 1, %struct.cygnus_mux { i32 32, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.261, ptr @i2s0_1_pins, i32 1, %struct.cygnus_mux { i32 32, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.262, ptr @smart_card1_fcb_pins, i32 1, %struct.cygnus_mux { i32 32, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.263, ptr @i2s1_1_pins, i32 1, %struct.cygnus_mux { i32 32, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.264, ptr @gpio0_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 0, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.265, ptr @usb0_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 0, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.266, ptr @gpio1_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 4, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.267, ptr @usb1_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 4, i32 1 } }, %struct.cygnus_pin_group { ptr @.str.268, ptr @gpio2_3p3_pins, i32 1, %struct.cygnus_mux { i32 40, i32 8, i32 0 } }, %struct.cygnus_pin_group { ptr @.str.269, ptr @usb2_oc_pins, i32 1, %struct.cygnus_mux { i32 40, i32 8, i32 1 } }], align 4
@cygnus_pin_functions = internal constant [43 x %struct.cygnus_pin_function] [%struct.cygnus_pin_function { ptr @.str.270, ptr @i2s0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.271, ptr @i2s1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.272, ptr @i2s2_grps, i32 5 }, %struct.cygnus_pin_function { ptr @.str.273, ptr @spdif_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.42, ptr @pwm0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.43, ptr @pwm1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.44, ptr @pwm2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.45, ptr @pwm3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.274, ptr @pwm4_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.275, ptr @pwm5_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.276, ptr @key_grps, i32 16 }, %struct.cygnus_pin_function { ptr @.str.277, ptr @audio_dte_grps, i32 4 }, %struct.cygnus_pin_function { ptr @.str.278, ptr @smart_card0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.279, ptr @smart_card1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.280, ptr @spi0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.281, ptr @spi1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.282, ptr @spi2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.283, ptr @spi3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.284, ptr @spi4_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.285, ptr @spi5_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.286, ptr @sw_led0_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.287, ptr @sw_led1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.288, ptr @sw_led2_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.289, ptr @d1w_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.290, ptr @lcd_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.291, ptr @sram_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.292, ptr @uart0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.293, ptr @uart1_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.294, ptr @uart2_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.295, ptr @uart3_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.296, ptr @uart4_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.297, ptr @qspi_grps, i32 2 }, %struct.cygnus_pin_function { ptr @.str.298, ptr @nand_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.299, ptr @sdio0_grps, i32 3 }, %struct.cygnus_pin_function { ptr @.str.300, ptr @sdio1_grps, i32 5 }, %struct.cygnus_pin_function { ptr @.str.301, ptr @can0_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.302, ptr @can1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.303, ptr @cam_grps, i32 3 }, %struct.cygnus_pin_function { ptr @.str.304, ptr @bsc1_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.305, ptr @pcie_clkreq_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.306, ptr @usb0_oc_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.307, ptr @usb1_oc_grps, i32 1 }, %struct.cygnus_pin_function { ptr @.str.308, ptr @usb2_oc_grps, i32 1 }], align 4
@cygnus_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str, ptr null, i32 0, ptr @cygnus_pinctrl_ops, ptr @cygnus_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"unable to register Cygnus IOMUX pinctrl\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ext_device_reset_n\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"chip_mode0\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"chip_mode1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"chip_mode2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"chip_mode3\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"chip_mode4\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"bsc0_scl\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"bsc0_sda\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"bsc1_scl\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bsc1_sda\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"d1w_dq\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"d1wowstz_l\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gpio16\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gpio17\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gpio18\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gpio19\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio20\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gpio21\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gpio22\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gpio23\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"pwm0\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"sc0_clk\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"sc0_cmdvcc_l\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"sc0_detect\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"sc0_fcb\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"sc0_io\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"sc0_rst_l\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"sc1_clk\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"sc1_cmdvcc_l\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"sc1_detect\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"sc1_fcb\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"sc1_io\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"sc1_rst_l\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"spi0_clk\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"spi0_mosi\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"spi0_miso\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"spi0_ss\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"spi1_clk\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"spi1_mosi\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"spi1_miso\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"spi1_ss\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"spi2_clk\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"spi2_mosi\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"spi2_miso\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"spi2_ss\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"spi3_clk\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"spi3_mosi\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"spi3_miso\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"spi3_ss\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"uart0_cts\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"uart0_rts\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"uart0_rx\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"uart0_tx\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"uart1_cts\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"uart1_dcd\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"uart1_dsr\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"uart1_dtr\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"uart1_ri\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"uart1_rts\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"uart1_rx\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"uart1_tx\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"uart3_rx\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"uart3_tx\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"sdio1_clk_sdcard\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"sdio1_cmd\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"sdio1_data0\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"sdio1_data1\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"sdio1_data2\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"sdio1_data3\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"sdio1_wp_n\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"sdio1_card_rst\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"sdio1_led_on\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"sdio1_cd\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"sdio0_clk_sdcard\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"sdio0_cmd\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"sdio0_data0\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"sdio0_data1\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"sdio0_data2\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"sdio0_data3\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"sdio0_wp_n\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"sdio0_card_rst\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"sdio0_led_on\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"sdio0_cd\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"sflash_clk\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"sflash_cs_l\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"sflash_mosi\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"sflash_miso\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"sflash_wp_n\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"sflash_hold_n\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"nand_ale\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"nand_ce0_l\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"nand_ce1_l\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"nand_cle\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"nand_dq0\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"nand_dq1\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"nand_dq2\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"nand_dq3\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"nand_dq4\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"nand_dq5\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"nand_dq6\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"nand_dq7\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"nand_rb_l\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"nand_re_l\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"nand_we_l\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"nand_wp_l\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"lcd_clac\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"lcd_clcp\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"lcd_cld0\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"lcd_cld1\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"lcd_cld10\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"lcd_cld11\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"lcd_cld12\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"lcd_cld13\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"lcd_cld14\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"lcd_cld15\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"lcd_cld16\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"lcd_cld17\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"lcd_cld18\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"lcd_cld19\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"lcd_cld2\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"lcd_cld20\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"lcd_cld21\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"lcd_cld22\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"lcd_cld23\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"lcd_cld3\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"lcd_cld4\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"lcd_cld5\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"lcd_cld6\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"lcd_cld7\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"lcd_cld8\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"lcd_cld9\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"lcd_clfp\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"lcd_clle\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"lcd_cllp\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"lcd_clpower\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"camera_vsync\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"camera_trigger\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"camera_strobe\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"camera_standby\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"camera_reset_n\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"camera_pixdata9\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"camera_pixdata8\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"camera_pixdata7\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"camera_pixdata6\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"camera_pixdata5\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"camera_pixdata4\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"camera_pixdata3\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"camera_pixdata2\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"camera_pixdata1\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"camera_pixdata0\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"camera_pixclk\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"camera_hsync\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"camera_pll_ref_clk\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"usb_id_indication\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"usb_vbus_indication\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"gpio0_3p3\00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"gpio1_3p3\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"gpio2_3p3\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"gpio3_3p3\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"i2s2_0_grp\00", align 1
@i2s2_0_pins = internal constant [1 x i32] [i32 12], align 4
@.str.185 = private unnamed_addr constant [11 x i8] c"i2s2_1_grp\00", align 1
@i2s2_1_pins = internal constant [1 x i32] [i32 13], align 4
@.str.186 = private unnamed_addr constant [11 x i8] c"i2s2_2_grp\00", align 1
@i2s2_2_pins = internal constant [1 x i32] [i32 14], align 4
@.str.187 = private unnamed_addr constant [11 x i8] c"i2s2_3_grp\00", align 1
@i2s2_3_pins = internal constant [1 x i32] [i32 15], align 4
@.str.188 = private unnamed_addr constant [11 x i8] c"i2s2_4_grp\00", align 1
@i2s2_4_pins = internal constant [1 x i32] [i32 16], align 4
@.str.189 = private unnamed_addr constant [9 x i8] c"pwm4_grp\00", align 1
@pwm4_pins = internal constant [1 x i32] [i32 17], align 4
@.str.190 = private unnamed_addr constant [9 x i8] c"pwm5_grp\00", align 1
@pwm5_pins = internal constant [1 x i32] [i32 18], align 4
@.str.191 = private unnamed_addr constant [9 x i8] c"key0_grp\00", align 1
@key0_pins = internal constant [1 x i32] [i32 20], align 4
@.str.192 = private unnamed_addr constant [9 x i8] c"key1_grp\00", align 1
@key1_pins = internal constant [1 x i32] [i32 21], align 4
@.str.193 = private unnamed_addr constant [9 x i8] c"key2_grp\00", align 1
@key2_pins = internal constant [1 x i32] [i32 22], align 4
@.str.194 = private unnamed_addr constant [9 x i8] c"key3_grp\00", align 1
@key3_pins = internal constant [1 x i32] [i32 23], align 4
@.str.195 = private unnamed_addr constant [9 x i8] c"key4_grp\00", align 1
@key4_pins = internal constant [1 x i32] [i32 24], align 4
@.str.196 = private unnamed_addr constant [9 x i8] c"key5_grp\00", align 1
@key5_pins = internal constant [1 x i32] [i32 25], align 4
@.str.197 = private unnamed_addr constant [9 x i8] c"key6_grp\00", align 1
@key6_pins = internal constant [1 x i32] [i32 26], align 4
@.str.198 = private unnamed_addr constant [15 x i8] c"audio_dte0_grp\00", align 1
@audio_dte0_pins = internal constant [1 x i32] [i32 26], align 4
@.str.199 = private unnamed_addr constant [9 x i8] c"key7_grp\00", align 1
@key7_pins = internal constant [1 x i32] [i32 27], align 4
@.str.200 = private unnamed_addr constant [15 x i8] c"audio_dte1_grp\00", align 1
@audio_dte1_pins = internal constant [1 x i32] [i32 27], align 4
@.str.201 = private unnamed_addr constant [9 x i8] c"key8_grp\00", align 1
@key8_pins = internal constant [1 x i32] [i32 28], align 4
@.str.202 = private unnamed_addr constant [9 x i8] c"key9_grp\00", align 1
@key9_pins = internal constant [1 x i32] [i32 29], align 4
@.str.203 = private unnamed_addr constant [10 x i8] c"key10_grp\00", align 1
@key10_pins = internal constant [1 x i32] [i32 30], align 4
@.str.204 = private unnamed_addr constant [10 x i8] c"key11_grp\00", align 1
@key11_pins = internal constant [1 x i32] [i32 31], align 4
@.str.205 = private unnamed_addr constant [10 x i8] c"key12_grp\00", align 1
@key12_pins = internal constant [1 x i32] [i32 32], align 4
@.str.206 = private unnamed_addr constant [10 x i8] c"key13_grp\00", align 1
@key13_pins = internal constant [1 x i32] [i32 33], align 4
@.str.207 = private unnamed_addr constant [10 x i8] c"key14_grp\00", align 1
@key14_pins = internal constant [1 x i32] [i32 34], align 4
@.str.208 = private unnamed_addr constant [15 x i8] c"audio_dte2_grp\00", align 1
@audio_dte2_pins = internal constant [1 x i32] [i32 34], align 4
@.str.209 = private unnamed_addr constant [10 x i8] c"key15_grp\00", align 1
@key15_pins = internal constant [1 x i32] [i32 35], align 4
@.str.210 = private unnamed_addr constant [15 x i8] c"audio_dte3_grp\00", align 1
@audio_dte3_pins = internal constant [1 x i32] [i32 35], align 4
@.str.211 = private unnamed_addr constant [9 x i8] c"pwm0_grp\00", align 1
@pwm0_pins = internal constant [1 x i32] [i32 38], align 4
@.str.212 = private unnamed_addr constant [9 x i8] c"pwm1_grp\00", align 1
@pwm1_pins = internal constant [1 x i32] [i32 39], align 4
@.str.213 = private unnamed_addr constant [9 x i8] c"pwm2_grp\00", align 1
@pwm2_pins = internal constant [1 x i32] [i32 40], align 4
@.str.214 = private unnamed_addr constant [9 x i8] c"pwm3_grp\00", align 1
@pwm3_pins = internal constant [1 x i32] [i32 41], align 4
@.str.215 = private unnamed_addr constant [10 x i8] c"sdio0_grp\00", align 1
@sdio0_pins = internal constant [6 x i32] [i32 94, i32 95, i32 96, i32 97, i32 98, i32 99], align 4
@.str.216 = private unnamed_addr constant [16 x i8] c"smart_card0_grp\00", align 1
@smart_card0_pins = internal constant [5 x i32] [i32 42, i32 43, i32 44, i32 46, i32 47], align 4
@.str.217 = private unnamed_addr constant [11 x i8] c"i2s0_0_grp\00", align 1
@i2s0_0_pins = internal constant [4 x i32] [i32 42, i32 43, i32 44, i32 46], align 4
@.str.218 = private unnamed_addr constant [10 x i8] c"spdif_grp\00", align 1
@spdif_pins = internal constant [1 x i32] [i32 47], align 4
@.str.219 = private unnamed_addr constant [16 x i8] c"smart_card1_grp\00", align 1
@smart_card1_pins = internal constant [5 x i32] [i32 48, i32 49, i32 50, i32 52, i32 53], align 4
@.str.220 = private unnamed_addr constant [11 x i8] c"i2s1_0_grp\00", align 1
@i2s1_0_pins = internal constant [4 x i32] [i32 48, i32 49, i32 50, i32 52], align 4
@.str.221 = private unnamed_addr constant [9 x i8] c"spi0_grp\00", align 1
@spi0_pins = internal constant [4 x i32] [i32 54, i32 55, i32 56, i32 57], align 4
@.str.222 = private unnamed_addr constant [9 x i8] c"spi1_grp\00", align 1
@spi1_pins = internal constant [4 x i32] [i32 58, i32 59, i32 60, i32 61], align 4
@.str.223 = private unnamed_addr constant [9 x i8] c"spi2_grp\00", align 1
@spi2_pins = internal constant [4 x i32] [i32 62, i32 63, i32 64, i32 65], align 4
@.str.224 = private unnamed_addr constant [9 x i8] c"spi3_grp\00", align 1
@spi3_pins = internal constant [4 x i32] [i32 66, i32 67, i32 68, i32 69], align 4
@.str.225 = private unnamed_addr constant [14 x i8] c"sw_led0_0_grp\00", align 1
@sw_led0_0_pins = internal constant [4 x i32] [i32 66, i32 67, i32 68, i32 69], align 4
@.str.226 = private unnamed_addr constant [8 x i8] c"d1w_grp\00", align 1
@d1w_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.227 = private unnamed_addr constant [10 x i8] c"uart4_grp\00", align 1
@uart4_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.228 = private unnamed_addr constant [14 x i8] c"sw_led2_0_grp\00", align 1
@sw_led2_0_pins = internal constant [2 x i32] [i32 10, i32 11], align 4
@.str.229 = private unnamed_addr constant [8 x i8] c"lcd_grp\00", align 1
@lcd_pins = internal constant [30 x i32] [i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155], align 4
@.str.230 = private unnamed_addr constant [11 x i8] c"sram_0_grp\00", align 1
@sram_0_pins = internal constant [30 x i32] [i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155], align 4
@.str.231 = private unnamed_addr constant [9 x i8] c"spi5_grp\00", align 1
@spi5_pins = internal constant [4 x i32] [i32 141, i32 142, i32 143, i32 144], align 4
@.str.232 = private unnamed_addr constant [10 x i8] c"uart0_grp\00", align 1
@uart0_pins = internal constant [4 x i32] [i32 70, i32 71, i32 72, i32 73], align 4
@.str.233 = private unnamed_addr constant [14 x i8] c"sw_led0_1_grp\00", align 1
@sw_led0_1_pins = internal constant [4 x i32] [i32 70, i32 71, i32 72, i32 73], align 4
@.str.234 = private unnamed_addr constant [14 x i8] c"uart1_dte_grp\00", align 1
@uart1_dte_pins = internal constant [4 x i32] [i32 75, i32 76, i32 77, i32 78], align 4
@.str.235 = private unnamed_addr constant [10 x i8] c"uart2_grp\00", align 1
@uart2_pins = internal constant [4 x i32] [i32 75, i32 76, i32 77, i32 78], align 4
@.str.236 = private unnamed_addr constant [10 x i8] c"uart1_grp\00", align 1
@uart1_pins = internal constant [4 x i32] [i32 74, i32 79, i32 80, i32 81], align 4
@.str.237 = private unnamed_addr constant [10 x i8] c"uart3_grp\00", align 1
@uart3_pins = internal constant [2 x i32] [i32 82, i32 83], align 4
@.str.238 = private unnamed_addr constant [11 x i8] c"qspi_0_grp\00", align 1
@qspi_0_pins = internal constant [4 x i32] [i32 104, i32 105, i32 106, i32 107], align 4
@.str.239 = private unnamed_addr constant [9 x i8] c"nand_grp\00", align 1
@nand_pins = internal constant [16 x i32] [i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125], align 4
@.str.240 = private unnamed_addr constant [13 x i8] c"sdio0_cd_grp\00", align 1
@sdio0_cd_pins = internal constant [1 x i32] [i32 103], align 4
@.str.241 = private unnamed_addr constant [14 x i8] c"sdio0_mmc_grp\00", align 1
@sdio0_mmc_pins = internal constant [3 x i32] [i32 100, i32 101, i32 102], align 4
@.str.242 = private unnamed_addr constant [17 x i8] c"sdio1_data_0_grp\00", align 1
@sdio1_data_0_pins = internal constant [2 x i32] [i32 86, i32 87], align 4
@.str.243 = private unnamed_addr constant [9 x i8] c"can0_grp\00", align 1
@can0_pins = internal constant [2 x i32] [i32 86, i32 87], align 4
@.str.244 = private unnamed_addr constant [11 x i8] c"spi4_0_grp\00", align 1
@spi4_0_pins = internal constant [2 x i32] [i32 86, i32 87], align 4
@.str.245 = private unnamed_addr constant [17 x i8] c"sdio1_data_1_grp\00", align 1
@sdio1_data_1_pins = internal constant [2 x i32] [i32 88, i32 89], align 4
@.str.246 = private unnamed_addr constant [9 x i8] c"can1_grp\00", align 1
@can1_pins = internal constant [2 x i32] [i32 88, i32 89], align 4
@.str.247 = private unnamed_addr constant [11 x i8] c"spi4_1_grp\00", align 1
@spi4_1_pins = internal constant [2 x i32] [i32 88, i32 89], align 4
@.str.248 = private unnamed_addr constant [13 x i8] c"sdio1_cd_grp\00", align 1
@sdio1_cd_pins = internal constant [1 x i32] [i32 93], align 4
@.str.249 = private unnamed_addr constant [14 x i8] c"sdio1_led_grp\00", align 1
@sdio1_led_pins = internal constant [2 x i32] [i32 84, i32 85], align 4
@.str.250 = private unnamed_addr constant [14 x i8] c"sw_led2_1_grp\00", align 1
@sw_led2_1_pins = internal constant [2 x i32] [i32 84, i32 85], align 4
@.str.251 = private unnamed_addr constant [14 x i8] c"sdio1_mmc_grp\00", align 1
@sdio1_mmc_pins = internal constant [3 x i32] [i32 90, i32 91, i32 92], align 4
@.str.252 = private unnamed_addr constant [12 x i8] c"cam_led_grp\00", align 1
@cam_led_pins = internal constant [5 x i32] [i32 156, i32 157, i32 158, i32 159, i32 160], align 4
@.str.253 = private unnamed_addr constant [12 x i8] c"sw_led1_grp\00", align 1
@sw_led1_pins = internal constant [4 x i32] [i32 156, i32 157, i32 158, i32 159], align 4
@.str.254 = private unnamed_addr constant [10 x i8] c"cam_0_grp\00", align 1
@cam_0_pins = internal constant [5 x i32] [i32 169, i32 170, i32 171, i32 169, i32 170], align 4
@.str.255 = private unnamed_addr constant [10 x i8] c"cam_1_grp\00", align 1
@cam_1_pins = internal constant [8 x i32] [i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168], align 4
@.str.256 = private unnamed_addr constant [11 x i8] c"sram_1_grp\00", align 1
@sram_1_pins = internal constant [8 x i32] [i32 161, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168], align 4
@.str.257 = private unnamed_addr constant [11 x i8] c"qspi_1_grp\00", align 1
@qspi_1_pins = internal constant [2 x i32] [i32 108, i32 109], align 4
@.str.258 = private unnamed_addr constant [9 x i8] c"bsc1_grp\00", align 1
@bsc1_pins = internal constant [2 x i32] [i32 8, i32 9], align 4
@.str.259 = private unnamed_addr constant [16 x i8] c"pcie_clkreq_grp\00", align 1
@pcie_clkreq_pins = internal constant [2 x i32] [i32 8, i32 9], align 4
@.str.260 = private unnamed_addr constant [20 x i8] c"smart_card0_fcb_grp\00", align 1
@smart_card0_fcb_pins = internal constant [1 x i32] [i32 45], align 4
@.str.261 = private unnamed_addr constant [11 x i8] c"i2s0_1_grp\00", align 1
@i2s0_1_pins = internal constant [1 x i32] [i32 45], align 4
@.str.262 = private unnamed_addr constant [20 x i8] c"smart_card1_fcb_grp\00", align 1
@smart_card1_fcb_pins = internal constant [1 x i32] [i32 51], align 4
@.str.263 = private unnamed_addr constant [11 x i8] c"i2s1_1_grp\00", align 1
@i2s1_1_pins = internal constant [1 x i32] [i32 51], align 4
@.str.264 = private unnamed_addr constant [14 x i8] c"gpio0_3p3_grp\00", align 1
@gpio0_3p3_pins = internal constant [1 x i32] [i32 176], align 4
@.str.265 = private unnamed_addr constant [12 x i8] c"usb0_oc_grp\00", align 1
@usb0_oc_pins = internal constant [1 x i32] [i32 176], align 4
@.str.266 = private unnamed_addr constant [14 x i8] c"gpio1_3p3_grp\00", align 1
@gpio1_3p3_pins = internal constant [1 x i32] [i32 177], align 4
@.str.267 = private unnamed_addr constant [12 x i8] c"usb1_oc_grp\00", align 1
@usb1_oc_pins = internal constant [1 x i32] [i32 177], align 4
@.str.268 = private unnamed_addr constant [14 x i8] c"gpio2_3p3_grp\00", align 1
@gpio2_3p3_pins = internal constant [1 x i32] [i32 178], align 4
@.str.269 = private unnamed_addr constant [12 x i8] c"usb2_oc_grp\00", align 1
@usb2_oc_pins = internal constant [1 x i32] [i32 178], align 4
@.str.270 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@i2s0_grps = internal constant [2 x ptr] [ptr @.str.217, ptr @.str.261], align 4
@.str.271 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@i2s1_grps = internal constant [2 x ptr] [ptr @.str.220, ptr @.str.263], align 4
@.str.272 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@i2s2_grps = internal constant [5 x ptr] [ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188], align 4
@.str.273 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@spdif_grps = internal constant [1 x ptr] [ptr @.str.218], align 4
@pwm0_grps = internal constant [1 x ptr] [ptr @.str.211], align 4
@pwm1_grps = internal constant [1 x ptr] [ptr @.str.212], align 4
@pwm2_grps = internal constant [1 x ptr] [ptr @.str.213], align 4
@pwm3_grps = internal constant [1 x ptr] [ptr @.str.214], align 4
@.str.274 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@pwm4_grps = internal constant [1 x ptr] [ptr @.str.189], align 4
@.str.275 = private unnamed_addr constant [5 x i8] c"pwm5\00", align 1
@pwm5_grps = internal constant [1 x ptr] [ptr @.str.190], align 4
@.str.276 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@key_grps = internal constant [16 x ptr] [ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.209], align 4
@.str.277 = private unnamed_addr constant [10 x i8] c"audio_dte\00", align 1
@audio_dte_grps = internal constant [4 x ptr] [ptr @.str.198, ptr @.str.200, ptr @.str.208, ptr @.str.210], align 4
@.str.278 = private unnamed_addr constant [12 x i8] c"smart_card0\00", align 1
@smart_card0_grps = internal constant [2 x ptr] [ptr @.str.216, ptr @.str.260], align 4
@.str.279 = private unnamed_addr constant [12 x i8] c"smart_card1\00", align 1
@smart_card1_grps = internal constant [2 x ptr] [ptr @.str.219, ptr @.str.262], align 4
@.str.280 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@spi0_grps = internal constant [1 x ptr] [ptr @.str.221], align 4
@.str.281 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@spi1_grps = internal constant [1 x ptr] [ptr @.str.222], align 4
@.str.282 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@spi2_grps = internal constant [1 x ptr] [ptr @.str.223], align 4
@.str.283 = private unnamed_addr constant [5 x i8] c"spi3\00", align 1
@spi3_grps = internal constant [1 x ptr] [ptr @.str.224], align 4
@.str.284 = private unnamed_addr constant [5 x i8] c"spi4\00", align 1
@spi4_grps = internal constant [2 x ptr] [ptr @.str.244, ptr @.str.247], align 4
@.str.285 = private unnamed_addr constant [5 x i8] c"spi5\00", align 1
@spi5_grps = internal constant [1 x ptr] [ptr @.str.231], align 4
@.str.286 = private unnamed_addr constant [8 x i8] c"sw_led0\00", align 1
@sw_led0_grps = internal constant [2 x ptr] [ptr @.str.225, ptr @.str.233], align 4
@.str.287 = private unnamed_addr constant [8 x i8] c"sw_led1\00", align 1
@sw_led1_grps = internal constant [1 x ptr] [ptr @.str.253], align 4
@.str.288 = private unnamed_addr constant [8 x i8] c"sw_led2\00", align 1
@sw_led2_grps = internal constant [2 x ptr] [ptr @.str.228, ptr @.str.250], align 4
@.str.289 = private unnamed_addr constant [4 x i8] c"d1w\00", align 1
@d1w_grps = internal constant [1 x ptr] [ptr @.str.226], align 4
@.str.290 = private unnamed_addr constant [4 x i8] c"lcd\00", align 1
@lcd_grps = internal constant [1 x ptr] [ptr @.str.229], align 4
@.str.291 = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@sram_grps = internal constant [2 x ptr] [ptr @.str.230, ptr @.str.256], align 4
@.str.292 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@uart0_grps = internal constant [1 x ptr] [ptr @.str.232], align 4
@.str.293 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_grps = internal constant [2 x ptr] [ptr @.str.236, ptr @.str.234], align 4
@.str.294 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@uart2_grps = internal constant [1 x ptr] [ptr @.str.235], align 4
@.str.295 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@uart3_grps = internal constant [1 x ptr] [ptr @.str.237], align 4
@.str.296 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@uart4_grps = internal constant [1 x ptr] [ptr @.str.227], align 4
@.str.297 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@qspi_grps = internal constant [2 x ptr] [ptr @.str.238, ptr @.str.257], align 4
@.str.298 = private unnamed_addr constant [5 x i8] c"nand\00", align 1
@nand_grps = internal constant [1 x ptr] [ptr @.str.239], align 4
@.str.299 = private unnamed_addr constant [6 x i8] c"sdio0\00", align 1
@sdio0_grps = internal constant [3 x ptr] [ptr @.str.215, ptr @.str.240, ptr @.str.241], align 4
@.str.300 = private unnamed_addr constant [6 x i8] c"sdio1\00", align 1
@sdio1_grps = internal constant [5 x ptr] [ptr @.str.242, ptr @.str.245, ptr @.str.248, ptr @.str.249, ptr @.str.251], align 4
@.str.301 = private unnamed_addr constant [5 x i8] c"can0\00", align 1
@can0_grps = internal constant [1 x ptr] [ptr @.str.243], align 4
@.str.302 = private unnamed_addr constant [5 x i8] c"can1\00", align 1
@can1_grps = internal constant [1 x ptr] [ptr @.str.246], align 4
@.str.303 = private unnamed_addr constant [4 x i8] c"cam\00", align 1
@cam_grps = internal constant [3 x ptr] [ptr @.str.252, ptr @.str.254, ptr @.str.255], align 4
@.str.304 = private unnamed_addr constant [5 x i8] c"bsc1\00", align 1
@bsc1_grps = internal constant [1 x ptr] [ptr @.str.258], align 4
@.str.305 = private unnamed_addr constant [12 x i8] c"pcie_clkreq\00", align 1
@pcie_clkreq_grps = internal constant [1 x ptr] [ptr @.str.259], align 4
@.str.306 = private unnamed_addr constant [8 x i8] c"usb0_oc\00", align 1
@usb0_oc_grps = internal constant [1 x ptr] [ptr @.str.265], align 4
@.str.307 = private unnamed_addr constant [8 x i8] c"usb1_oc\00", align 1
@usb1_oc_grps = internal constant [1 x ptr] [ptr @.str.267], align 4
@.str.308 = private unnamed_addr constant [8 x i8] c"usb2_oc\00", align 1
@usb2_oc_grps = internal constant [1 x ptr] [ptr @.str.269], align 4
@cygnus_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @cygnus_get_groups_count, ptr @cygnus_get_group_name, ptr @cygnus_get_group_pins, ptr @cygnus_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@cygnus_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @cygnus_get_functions_count, ptr @cygnus_get_function_name, ptr @cygnus_get_function_groups, ptr @cygnus_pinmux_set_mux, ptr @cygnus_gpio_request_enable, ptr @cygnus_gpio_disable_free, ptr null, i8 0 }, align 4
@.str.309 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.310 = private unnamed_addr constant [38 x i8] c"double configuration error detected!\0A\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"func:%s grp:%s\0A\00", align 1
@.str.312 = private unnamed_addr constant [47 x i8] c"gpio disable free pin=%u offset=0x%x shift=%u\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_cygnus_mux__206_1018_cygnus_pinmux_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @cygnus_pinmux_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 9
  store i32 0, ptr %8, align 4
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %10 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 4
  %11 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %108

15:                                               ; preds = %5
  %16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #5
  %17 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %20 = load ptr, ptr %17, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %108

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 1024, i32 noundef 3520) #5
  %25 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 8
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %82, label %27

27:                                               ; preds = %80, %22
  %28 = phi ptr [ %81, %80 ], [ %24, %22 ]
  %29 = phi i32 [ %78, %80 ], [ 0, %22 ]
  %30 = shl i32 %29, 3
  %31 = shl i32 %29, 2
  %32 = getelementptr %struct.cygnus_mux_log, ptr %28, i32 %30
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.cygnus_mux, ptr %32, i32 0, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.cygnus_mux, ptr %32, i32 0, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.cygnus_mux_log, ptr %28, i32 %30, i32 1
  store i8 0, ptr %35, align 4
  %36 = load ptr, ptr %25, align 4
  %37 = or i32 %30, 1
  %38 = getelementptr %struct.cygnus_mux_log, ptr %36, i32 %37
  store i32 %31, ptr %38, align 4
  %39 = getelementptr inbounds %struct.cygnus_mux, ptr %38, i32 0, i32 1
  store i32 4, ptr %39, align 4
  %40 = getelementptr inbounds %struct.cygnus_mux, ptr %38, i32 0, i32 2
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.cygnus_mux_log, ptr %36, i32 %37, i32 1
  store i8 0, ptr %41, align 4
  %42 = load ptr, ptr %25, align 4
  %43 = or i32 %30, 2
  %44 = getelementptr %struct.cygnus_mux_log, ptr %42, i32 %43
  store i32 %31, ptr %44, align 4
  %45 = getelementptr inbounds %struct.cygnus_mux, ptr %44, i32 0, i32 1
  store i32 8, ptr %45, align 4
  %46 = getelementptr inbounds %struct.cygnus_mux, ptr %44, i32 0, i32 2
  store i32 0, ptr %46, align 4
  %47 = getelementptr %struct.cygnus_mux_log, ptr %42, i32 %43, i32 1
  store i8 0, ptr %47, align 4
  %48 = load ptr, ptr %25, align 4
  %49 = or i32 %30, 3
  %50 = getelementptr %struct.cygnus_mux_log, ptr %48, i32 %49
  store i32 %31, ptr %50, align 4
  %51 = getelementptr inbounds %struct.cygnus_mux, ptr %50, i32 0, i32 1
  store i32 12, ptr %51, align 4
  %52 = getelementptr inbounds %struct.cygnus_mux, ptr %50, i32 0, i32 2
  store i32 0, ptr %52, align 4
  %53 = getelementptr %struct.cygnus_mux_log, ptr %48, i32 %49, i32 1
  store i8 0, ptr %53, align 4
  %54 = load ptr, ptr %25, align 4
  %55 = or i32 %30, 4
  %56 = getelementptr %struct.cygnus_mux_log, ptr %54, i32 %55
  store i32 %31, ptr %56, align 4
  %57 = getelementptr inbounds %struct.cygnus_mux, ptr %56, i32 0, i32 1
  store i32 16, ptr %57, align 4
  %58 = getelementptr inbounds %struct.cygnus_mux, ptr %56, i32 0, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr %struct.cygnus_mux_log, ptr %54, i32 %55, i32 1
  store i8 0, ptr %59, align 4
  %60 = load ptr, ptr %25, align 4
  %61 = or i32 %30, 5
  %62 = getelementptr %struct.cygnus_mux_log, ptr %60, i32 %61
  store i32 %31, ptr %62, align 4
  %63 = getelementptr inbounds %struct.cygnus_mux, ptr %62, i32 0, i32 1
  store i32 20, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cygnus_mux, ptr %62, i32 0, i32 2
  store i32 0, ptr %64, align 4
  %65 = getelementptr %struct.cygnus_mux_log, ptr %60, i32 %61, i32 1
  store i8 0, ptr %65, align 4
  %66 = load ptr, ptr %25, align 4
  %67 = or i32 %30, 6
  %68 = getelementptr %struct.cygnus_mux_log, ptr %66, i32 %67
  store i32 %31, ptr %68, align 4
  %69 = getelementptr inbounds %struct.cygnus_mux, ptr %68, i32 0, i32 1
  store i32 24, ptr %69, align 4
  %70 = getelementptr inbounds %struct.cygnus_mux, ptr %68, i32 0, i32 2
  store i32 0, ptr %70, align 4
  %71 = getelementptr %struct.cygnus_mux_log, ptr %66, i32 %67, i32 1
  store i8 0, ptr %71, align 4
  %72 = load ptr, ptr %25, align 4
  %73 = or i32 %30, 7
  %74 = getelementptr %struct.cygnus_mux_log, ptr %72, i32 %73
  store i32 %31, ptr %74, align 4
  %75 = getelementptr inbounds %struct.cygnus_mux, ptr %74, i32 0, i32 1
  store i32 28, ptr %75, align 4
  %76 = getelementptr inbounds %struct.cygnus_mux, ptr %74, i32 0, i32 2
  store i32 0, ptr %76, align 4
  %77 = getelementptr %struct.cygnus_mux_log, ptr %72, i32 %73, i32 1
  store i8 0, ptr %77, align 4
  %78 = add nuw nsw i32 %29, 1
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %83, label %80

80:                                               ; preds = %27
  %81 = load ptr, ptr %25, align 4
  br label %27

82:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %108

83:                                               ; preds = %27
  %84 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 2160, i32 noundef 3520) #5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %108, label %86

86:                                               ; preds = %86, %83
  %87 = phi i32 [ %96, %86 ], [ 0, %83 ]
  %88 = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr %struct.pinctrl_pin_desc, ptr %84, i32 %87
  store i32 %89, ptr %90, align 4
  %91 = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %87, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr %struct.pinctrl_pin_desc, ptr %84, i32 %87, i32 1
  store ptr %92, ptr %93, align 4
  %94 = getelementptr [180 x %struct.cygnus_pin], ptr @cygnus_pins, i32 0, i32 %87, i32 2
  %95 = getelementptr %struct.pinctrl_pin_desc, ptr %84, i32 %87, i32 2
  store ptr %94, ptr %95, align 4
  %96 = add nuw nsw i32 %87, 1
  %97 = icmp eq i32 %96, 180
  br i1 %97, label %98, label %86

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 4
  store ptr @cygnus_pin_groups, ptr %99, align 4
  %100 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 5
  store i32 86, ptr %100, align 4
  %101 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 6
  store ptr @cygnus_pin_functions, ptr %101, align 4
  %102 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 7
  store i32 43, ptr %102, align 4
  store ptr %84, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @cygnus_pinctrl_desc, i32 0, i32 1), align 4
  store i32 180, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @cygnus_pinctrl_desc, i32 0, i32 2), align 4
  %103 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @cygnus_pinctrl_desc, ptr noundef nonnull %3) #5
  store ptr %103, ptr %3, align 4
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %106 = load ptr, ptr %3, align 4
  %107 = ptrtoint ptr %106 to i32
  br label %108

108:                                              ; preds = %105, %98, %83, %82, %19, %12, %1
  %109 = phi i32 [ %14, %12 ], [ %21, %19 ], [ -12, %82 ], [ %107, %105 ], [ -12, %1 ], [ -12, %83 ], [ 0, %98 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cygnus_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.cygnus_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.cygnus_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.cygnus_pin_group, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cygnus_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #2 {
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.309, ptr noundef %12) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #5
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
define internal i32 @cygnus_get_functions_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @cygnus_get_function_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.cygnus_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.cygnus_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.cygnus_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.cygnus_pin_function, ptr %6, i32 %1
  %8 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.cygnus_pin_group, ptr %9, i32 %2
  %11 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.cygnus_pin_group, ptr %9, i32 %2, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.cygnus_pin_group, ptr %9, i32 %2, i32 3, i32 1
  br label %16

16:                                               ; preds = %42, %3
  %17 = phi i32 [ 0, %3 ], [ %43, %42 ]
  %18 = getelementptr %struct.cygnus_mux_log, ptr %12, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load i32, ptr %15, align 4
  %23 = getelementptr inbounds %struct.cygnus_mux, ptr %18, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = getelementptr %struct.cygnus_mux_log, ptr %12, i32 %17, i32 1
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.cygnus_mux, ptr %18, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.cygnus_pin_group, ptr %9, i32 %2, i32 3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %68, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.310) #6
  %39 = load ptr, ptr %37, align 4
  %40 = load ptr, ptr %7, align 4
  %41 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.311, ptr noundef %40, ptr noundef %41) #6
  br label %68

42:                                               ; preds = %21, %16
  %43 = add nuw nsw i32 %17, 1
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %16

45:                                               ; preds = %42, %26
  %46 = phi i32 [ %17, %26 ], [ 64, %42 ]
  %47 = getelementptr %struct.cygnus_pin_group, ptr %9, i32 %2, i32 3, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.cygnus_mux_log, ptr %12, i32 %46, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.cygnus_mux_log, ptr %12, i32 %46, i32 1
  store i8 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 9
  %52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #5
  %53 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %13, align 4
  %56 = getelementptr i8, ptr %54, i32 %55
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %58 = load i32, ptr %15, align 4
  %59 = shl i32 7, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %57, %60
  %62 = load i32, ptr %47, align 4
  %63 = shl i32 %62, %58
  %64 = or i32 %61, %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %65 = load ptr, ptr %53, align 4
  %66 = load i32, ptr %13, align 4
  %67 = getelementptr i8, ptr %65, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %64) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %52) #5
  br label %68

68:                                               ; preds = %45, %36, %30
  %69 = phi i32 [ -22, %36 ], [ 0, %45 ], [ 0, %30 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cygnus_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %2, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 9
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #5
  %16 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %22 = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %10, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 3, %23
  %25 = or i32 %24, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %16, align 4
  %27 = load i32, ptr %18, align 4
  %28 = getelementptr i8, ptr %26, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #5
  br label %29

29:                                               ; preds = %13, %3
  %30 = phi i32 [ 0, %13 ], [ -524, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cygnus_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %2, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 9
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #5
  %16 = getelementptr inbounds %struct.cygnus_pinctrl, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %10, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %22 = getelementptr inbounds %struct.cygnus_gpio_mux, ptr %10, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 3, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %16, align 4
  %28 = load i32, ptr %18, align 4
  %29 = getelementptr i8, ptr %27, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #5, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #5
  %30 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %18, align 4
  %33 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.312, i32 noundef %2, i32 noundef %32, i32 noundef %33) #6
  br label %34

34:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 393968}
!10 = !{i64 2152317912}
!11 = !{i64 2152318112}
!12 = !{i64 393550}
!13 = !{i64 2152320441}
!14 = !{i64 2152320637}
!15 = !{i64 2152322301}
!16 = !{i64 2152322497}
