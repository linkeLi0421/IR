; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-palmas.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-palmas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_pinctrl_data = type { ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.palmas_pin_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.palmas_pingroup = type { ptr, [1 x i32], i32, i32, i32, i32, i32, [4 x ptr] }
%struct.palmas_pin_info = type { i32, ptr, ptr }
%struct.palmas_pins_pullup_dn_info = type { i32, i32, i32, i32, i32, i32 }
%struct.palmas_pins_od_info = type { i32, i32, i32, i32, i32 }
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
%struct.palmas_pctrl_chip_info = type { ptr, ptr, ptr, [26 x i32], ptr, i32, ptr, i32, ptr, i32 }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_pinctrl_palmas__252_1059_palmas_pinctrl_driver_init6 = internal global ptr @palmas_pinctrl_driver_init, section ".initcall6.init", align 4
@palmas_pinctrl_driver = internal global %struct.platform_driver { ptr @palmas_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @palmas_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_palmas_pinctrl_driver_exit = internal global ptr @palmas_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description253 = internal constant [53 x i8] c"pinctrl_palmas.description=Palmas pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [60 x i8] c"pinctrl_palmas.author=Laxman Dewangan<ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias255 = internal constant [45 x i8] c"pinctrl_palmas.alias=platform:palmas-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [51 x i8] c"pinctrl_palmas.file=drivers/pinctrl/pinctrl-palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [30 x i8] c"pinctrl_palmas.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"palmas-pinctrl\00", align 1
@palmas_pinctrl_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65913_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65913_pinctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps80036_pinctrl_data }, %struct.of_device_id zeroinitializer], align 4
@tps65913_pinctrl_data = internal global %struct.palmas_pinctrl_data { ptr @tps65913_pingroups, i32 18 }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ti,palmas-enable-dvfs1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,palmas-enable-dvfs2\00", align 1
@palmas_pins_desc = internal constant [26 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.22, ptr null }], align 4
@palmas_pin_function = internal constant [31 x %struct.palmas_pin_function] [%struct.palmas_pin_function { ptr @.str.31, ptr @opt0_groups, i32 26 }, %struct.palmas_pin_function { ptr @.str.32, ptr @opt1_groups, i32 16 }, %struct.palmas_pin_function { ptr @.str.33, ptr @opt2_groups, i32 4 }, %struct.palmas_pin_function { ptr @.str.34, ptr @opt3_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.35, ptr @gpio_groups, i32 16 }, %struct.palmas_pin_function { ptr @.str.36, ptr @led_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.37, ptr @pwm_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.38, ptr @regen_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.39, ptr @sysen_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.40, ptr @clk32kgaudio_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.41, ptr @id_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.42, ptr @vbus_det_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.43, ptr @chrg_det_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.13, ptr @vac_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.44, ptr @vacok_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.14, ptr @powergood_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.45, ptr @usb_psel_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.46, ptr @msecure_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.47, ptr @pwrhold_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.22, ptr @int_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.15, ptr @nreswarm_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.48, ptr @simrsto_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.49, ptr @simrsti_groups, i32 2 }, %struct.palmas_pin_function { ptr @.str.50, ptr @low_vbat_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.51, ptr @wireless_chrg1_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.52, ptr @rcm_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.16, ptr @pwrdown_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.17, ptr @gpadc_start_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.18, ptr @reset_in_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.19, ptr @nsleep_groups, i32 1 }, %struct.palmas_pin_function { ptr @.str.53, ptr @enable_groups, i32 2 }], align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Reading pinctrol option register failed: %d\0A\00", align 1
@palmas_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @palmas_pinctrl_ops, ptr @palmas_pinmux_ops, ptr @palmas_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@tps65913_pingroups = internal constant [18 x %struct.palmas_pingroup] [%struct.palmas_pingroup { ptr @.str.5, [1 x i32] zeroinitializer, i32 1, i32 496, i32 10, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio0_info, ptr @pin_id_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.6, [1 x i32] [i32 1], i32 1, i32 496, i32 10, i32 24, i32 3, [4 x ptr] [ptr @pin_gpio1_info, ptr @pin_vbus_det_info, ptr @pin_led1_info, ptr @pin_pwm1_info] }, %struct.palmas_pingroup { ptr @.str.7, [1 x i32] [i32 2], i32 1, i32 496, i32 10, i32 96, i32 5, [4 x ptr] [ptr @pin_gpio2_info, ptr @pin_regen_info, ptr @pin_led2_info, ptr @pin_pwm2_info] }, %struct.palmas_pingroup { ptr @.str.8, [1 x i32] [i32 3], i32 1, i32 496, i32 10, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio3_info, ptr @pin_chrg_det_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.9, [1 x i32] [i32 4], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio4_info, ptr @pin_sysen1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.10, [1 x i32] [i32 5], i32 1, i32 496, i32 11, i32 6, i32 1, [4 x ptr] [ptr @pin_gpio5_info, ptr @pin_clk32kgaudio_info, ptr @pin_usb_psel_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.11, [1 x i32] [i32 6], i32 1, i32 496, i32 11, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio6_info, ptr @pin_sysen2_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.12, [1 x i32] [i32 7], i32 1, i32 496, i32 11, i32 48, i32 4, [4 x ptr] [ptr @pin_gpio7_info, ptr @pin_msecure_info, ptr @pin_pwrhold_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.13, [1 x i32] [i32 16], i32 1, i32 496, i32 10, i32 2, i32 1, [4 x ptr] [ptr @pin_vac_info, ptr @pin_vacok_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.14, [1 x i32] [i32 17], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_powergood_info, ptr @pin_usb_psel_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.15, [1 x i32] [i32 18], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nreswarm_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.16, [1 x i32] [i32 19], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_pwrdown_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.17, [1 x i32] [i32 20], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpadc_start_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.18, [1 x i32] [i32 21], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_reset_in_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.19, [1 x i32] [i32 22], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nsleep_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.20, [1 x i32] [i32 23], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable1_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.21, [1 x i32] [i32 24], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable2_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.22, [1 x i32] [i32 25], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_int_info, ptr null, ptr null, ptr null] }], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@pin_gpio0_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio0_info, ptr null }, align 4
@pin_id_info = internal constant %struct.palmas_pin_info { i32 10, ptr @pud_id_info, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@pin_gpio1_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio1_info, ptr @od_gpio1_info }, align 4
@pin_vbus_det_info = internal constant %struct.palmas_pin_info { i32 11, ptr null, ptr @od_vbus_det_info }, align 4
@pin_led1_info = internal constant %struct.palmas_pin_info { i32 5, ptr null, ptr null }, align 4
@pin_pwm1_info = internal constant %struct.palmas_pin_info { i32 6, ptr null, ptr @od_pwm1_info }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@pin_gpio2_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio2_info, ptr @od_gpio2_info }, align 4
@pin_regen_info = internal constant %struct.palmas_pin_info { i32 7, ptr null, ptr null }, align 4
@pin_led2_info = internal constant %struct.palmas_pin_info { i32 5, ptr null, ptr null }, align 4
@pin_pwm2_info = internal constant %struct.palmas_pin_info { i32 6, ptr null, ptr @od_pwm2_info }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@pin_gpio3_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio3_info, ptr null }, align 4
@pin_chrg_det_info = internal constant %struct.palmas_pin_info { i32 12, ptr @pud_chrg_det_info, ptr null }, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@pin_gpio4_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio4_info, ptr null }, align 4
@pin_sysen1_info = internal constant %struct.palmas_pin_info { i32 8, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@pin_gpio5_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio5_info, ptr @od_gpio5_info }, align 4
@pin_clk32kgaudio_info = internal constant %struct.palmas_pin_info { i32 9, ptr null, ptr null }, align 4
@pin_usb_psel_info = internal constant %struct.palmas_pin_info { i32 16, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@pin_gpio6_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio6_info, ptr null }, align 4
@pin_sysen2_info = internal constant %struct.palmas_pin_info { i32 8, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@pin_gpio7_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio7_info, ptr null }, align 4
@pin_msecure_info = internal constant %struct.palmas_pin_info { i32 17, ptr @pud_msecure_info, ptr null }, align 4
@pin_pwrhold_info = internal constant %struct.palmas_pin_info { i32 18, ptr @pud_pwrhold_info, ptr null }, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"vac\00", align 1
@pin_vac_info = internal constant %struct.palmas_pin_info { i32 13, ptr null, ptr null }, align 4
@pin_vacok_info = internal constant %struct.palmas_pin_info { i32 14, ptr @pud_vacok_info, ptr null }, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"powergood\00", align 1
@pin_powergood_info = internal constant %struct.palmas_pin_info { i32 15, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"nreswarm\00", align 1
@pin_nreswarm_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_nreswarm_info, ptr null }, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"pwrdown\00", align 1
@pin_pwrdown_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_pwrdown_info, ptr null }, align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"gpadc_start\00", align 1
@pin_gpadc_start_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_gpadc_start_info, ptr null }, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"reset_in\00", align 1
@pin_reset_in_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_reset_in_info, ptr null }, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"nsleep\00", align 1
@pin_nsleep_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_nsleep_info, ptr null }, align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"enable1\00", align 1
@pin_enable1_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_enable1_info, ptr null }, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"enable2\00", align 1
@pin_enable2_info = internal constant %struct.palmas_pin_info { i32 65535, ptr @pud_enable2_info, ptr null }, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@pin_int_info = internal constant %struct.palmas_pin_info { i32 19, ptr null, ptr @od_int_info }, align 4
@pud_gpio0_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 4, i32 0, i32 -1, i32 1 }, align 4
@pud_id_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 592, i32 6, i32 64, i32 0, i32 64, i32 -1 }, align 4
@pud_gpio1_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 12, i32 0, i32 8, i32 4 }, align 4
@od_gpio1_info = internal constant %struct.palmas_pins_od_info { i32 640, i32 8, i32 1, i32 1, i32 0 }, align 4
@od_vbus_det_info = internal constant %struct.palmas_pins_od_info { i32 496, i32 8, i32 64, i32 64, i32 0 }, align 4
@od_pwm1_info = internal constant %struct.palmas_pins_od_info { i32 496, i32 8, i32 32, i32 32, i32 0 }, align 4
@pud_gpio2_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 48, i32 0, i32 32, i32 16 }, align 4
@od_gpio2_info = internal constant %struct.palmas_pins_od_info { i32 640, i32 8, i32 2, i32 2, i32 0 }, align 4
@od_pwm2_info = internal constant %struct.palmas_pins_od_info { i32 496, i32 8, i32 128, i32 128, i32 0 }, align 4
@pud_gpio3_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 6, i32 64, i32 0, i32 -1, i32 64 }, align 4
@pud_chrg_det_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 16, i32 0, i32 -1, i32 16 }, align 4
@pud_gpio4_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 3, i32 0, i32 2, i32 1 }, align 4
@pud_gpio5_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 12, i32 0, i32 8, i32 4 }, align 4
@od_gpio5_info = internal constant %struct.palmas_pins_od_info { i32 640, i32 8, i32 32, i32 32, i32 0 }, align 4
@pud_gpio6_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 48, i32 0, i32 32, i32 16 }, align 4
@pud_gpio7_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 7, i32 64, i32 0, i32 -1, i32 64 }, align 4
@pud_msecure_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 1, i32 0, i32 -1, i32 1 }, align 4
@pud_pwrhold_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 4, i32 0, i32 -1, i32 4 }, align 4
@pud_vacok_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 6, i32 64, i32 0, i32 -1, i32 64 }, align 4
@pud_nreswarm_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 2, i32 0, i32 2, i32 -1 }, align 4
@pud_pwrdown_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 4, i32 0, i32 -1, i32 4 }, align 4
@pud_gpadc_start_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 48, i32 0, i32 32, i32 16 }, align 4
@pud_reset_in_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 4, i32 64, i32 0, i32 -1, i32 64 }, align 4
@pud_nsleep_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 3, i32 0, i32 2, i32 1 }, align 4
@pud_enable1_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 12, i32 0, i32 8, i32 4 }, align 4
@pud_enable2_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 496, i32 5, i32 48, i32 0, i32 32, i32 16 }, align 4
@od_int_info = internal constant %struct.palmas_pins_od_info { i32 496, i32 8, i32 8, i32 8, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"opt0\00", align 1
@opt0_groups = internal constant [26 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"opt1\00", align 1
@opt1_groups = internal constant [16 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.13, ptr @.str.14], align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"opt2\00", align 1
@opt2_groups = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12], align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"opt3\00", align 1
@opt3_groups = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.7], align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@gpio_groups = internal constant [16 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"led\00", align 1
@led_groups = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.7], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_groups = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.7], align 4
@.str.38 = private unnamed_addr constant [6 x i8] c"regen\00", align 1
@regen_groups = internal constant [1 x ptr] [ptr @.str.7], align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"sysen\00", align 1
@sysen_groups = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.11], align 4
@.str.40 = private unnamed_addr constant [13 x i8] c"clk32kgaudio\00", align 1
@clk32kgaudio_groups = internal constant [1 x ptr] [ptr @.str.10], align 4
@.str.41 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@id_groups = internal constant [1 x ptr] [ptr @.str.5], align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"vbus_det\00", align 1
@vbus_det_groups = internal constant [1 x ptr] [ptr @.str.6], align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"chrg_det\00", align 1
@chrg_det_groups = internal constant [1 x ptr] [ptr @.str.8], align 4
@vac_groups = internal constant [1 x ptr] [ptr @.str.13], align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"vacok\00", align 1
@vacok_groups = internal constant [1 x ptr] [ptr @.str.13], align 4
@powergood_groups = internal constant [1 x ptr] [ptr @.str.14], align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"usb_psel\00", align 1
@usb_psel_groups = internal constant [2 x ptr] [ptr @.str.10, ptr @.str.14], align 4
@.str.46 = private unnamed_addr constant [8 x i8] c"msecure\00", align 1
@msecure_groups = internal constant [1 x ptr] [ptr @.str.12], align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"pwrhold\00", align 1
@pwrhold_groups = internal constant [1 x ptr] [ptr @.str.12], align 4
@int_groups = internal constant [1 x ptr] [ptr @.str.22], align 4
@nreswarm_groups = internal constant [1 x ptr] [ptr @.str.15], align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"simrsto\00", align 1
@simrsto_groups = internal constant [1 x ptr] [ptr @.str.27], align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"simrsti\00", align 1
@simrsti_groups = internal constant [2 x ptr] [ptr @.str.23, ptr @.str.30], align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"low_vbat\00", align 1
@low_vbat_groups = internal constant [1 x ptr] [ptr @.str.24], align 4
@.str.51 = private unnamed_addr constant [15 x i8] c"wireless_chrg1\00", align 1
@wireless_chrg1_groups = internal constant [1 x ptr] [ptr @.str.25], align 4
@.str.52 = private unnamed_addr constant [4 x i8] c"rcm\00", align 1
@rcm_groups = internal constant [1 x ptr] [ptr @.str.26], align 4
@pwrdown_groups = internal constant [1 x ptr] [ptr @.str.16], align 4
@gpadc_start_groups = internal constant [1 x ptr] [ptr @.str.17], align 4
@reset_in_groups = internal constant [1 x ptr] [ptr @.str.18], align 4
@nsleep_groups = internal constant [1 x ptr] [ptr @.str.19], align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@enable_groups = internal constant [2 x ptr] [ptr @.str.20, ptr @.str.21], align 4
@.str.54 = private unnamed_addr constant [33 x i8] c"SECONDARY_PAD3 update failed %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"mux_reg 0x%02x read failed: %d\0A\00", align 1
@palmas_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @palmas_pinctrl_get_groups_count, ptr @palmas_pinctrl_get_group_name, ptr @palmas_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@palmas_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @palmas_pinctrl_get_funcs_count, ptr @palmas_pinctrl_get_func_name, ptr @palmas_pinctrl_get_func_groups, ptr @palmas_pinctrl_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@palmas_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @palmas_pinconf_get, ptr @palmas_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.56 = private unnamed_addr constant [35 x i8] c"Pin %s does not support option %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"drivers/pinctrl/pinctrl-palmas.c\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Reg 0x%02x update failed: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"Pinconf is not supported for pin-id %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Pinconf is not supported for pin %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"PULL control not supported for pin %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Reg 0x%02x read failed: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"OD control not supported for pin %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@tps80036_pinctrl_data = internal global %struct.palmas_pinctrl_data { ptr @tps80036_pingroups, i32 26 }, align 4
@tps80036_pingroups = internal constant [26 x %struct.palmas_pingroup] [%struct.palmas_pingroup { ptr @.str.5, [1 x i32] zeroinitializer, i32 1, i32 496, i32 10, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio0_info, ptr @pin_id_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.6, [1 x i32] [i32 1], i32 1, i32 496, i32 10, i32 24, i32 3, [4 x ptr] [ptr @pin_gpio1_info, ptr @pin_vbus_det_info, ptr @pin_led1_info, ptr @pin_pwm1_info] }, %struct.palmas_pingroup { ptr @.str.7, [1 x i32] [i32 2], i32 1, i32 496, i32 10, i32 96, i32 5, [4 x ptr] [ptr @pin_gpio2_info, ptr @pin_regen_info, ptr @pin_led2_info, ptr @pin_pwm2_info] }, %struct.palmas_pingroup { ptr @.str.8, [1 x i32] [i32 3], i32 1, i32 496, i32 10, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio3_info, ptr @pin_chrg_det_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.9, [1 x i32] [i32 4], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio4_info, ptr @pin_sysen1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.10, [1 x i32] [i32 5], i32 1, i32 496, i32 11, i32 6, i32 1, [4 x ptr] [ptr @pin_gpio5_info, ptr @pin_clk32kgaudio_info, ptr @pin_usb_psel_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.11, [1 x i32] [i32 6], i32 1, i32 496, i32 11, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio6_info, ptr @pin_sysen2_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.12, [1 x i32] [i32 7], i32 1, i32 496, i32 11, i32 48, i32 4, [4 x ptr] [ptr @pin_gpio7_info, ptr @pin_msecure_info, ptr @pin_pwrhold_info, ptr null] }, %struct.palmas_pingroup { ptr @.str.23, [1 x i32] [i32 8], i32 1, i32 496, i32 15, i32 1, i32 0, [4 x ptr] [ptr @pin_gpio8_info, ptr @pin_sim1rsti_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.24, [1 x i32] [i32 9], i32 1, i32 496, i32 15, i32 2, i32 1, [4 x ptr] [ptr @pin_gpio9_info, ptr @pin_low_vbat_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.25, [1 x i32] [i32 10], i32 1, i32 496, i32 15, i32 4, i32 2, [4 x ptr] [ptr @pin_gpio10_info, ptr @pin_wireless_chrg1_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.26, [1 x i32] [i32 11], i32 1, i32 496, i32 15, i32 8, i32 3, [4 x ptr] [ptr @pin_gpio11_info, ptr @pin_rcm_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.27, [1 x i32] [i32 12], i32 1, i32 496, i32 15, i32 16, i32 4, [4 x ptr] [ptr @pin_gpio12_info, ptr @pin_sim2rsto_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.28, [1 x i32] [i32 13], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpio13_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.29, [1 x i32] [i32 14], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpio14_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.30, [1 x i32] [i32 15], i32 1, i32 496, i32 15, i32 128, i32 7, [4 x ptr] [ptr @pin_gpio15_info, ptr @pin_sim2rsti_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.13, [1 x i32] [i32 16], i32 1, i32 496, i32 10, i32 2, i32 1, [4 x ptr] [ptr @pin_vac_info, ptr @pin_vacok_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.14, [1 x i32] [i32 17], i32 1, i32 496, i32 10, i32 1, i32 0, [4 x ptr] [ptr @pin_powergood_info, ptr @pin_usb_psel_info, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.15, [1 x i32] [i32 18], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nreswarm_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.16, [1 x i32] [i32 19], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_pwrdown_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.17, [1 x i32] [i32 20], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_gpadc_start_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.18, [1 x i32] [i32 21], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_reset_in_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.19, [1 x i32] [i32 22], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_nsleep_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.20, [1 x i32] [i32 23], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable1_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.21, [1 x i32] [i32 24], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_enable2_info, ptr null, ptr null, ptr null] }, %struct.palmas_pingroup { ptr @.str.22, [1 x i32] [i32 25], i32 1, i32 0, i32 0, i32 0, i32 0, [4 x ptr] [ptr @pin_int_info, ptr null, ptr null, ptr null] }], align 4
@pin_gpio8_info = internal constant %struct.palmas_pin_info { i32 4, ptr null, ptr null }, align 4
@pin_sim1rsti_info = internal constant %struct.palmas_pin_info { i32 22, ptr null, ptr null }, align 4
@pin_gpio9_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio9_info, ptr null }, align 4
@pin_low_vbat_info = internal constant %struct.palmas_pin_info { i32 23, ptr null, ptr null }, align 4
@pin_gpio10_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio10_info, ptr @od_gpio10_info }, align 4
@pin_wireless_chrg1_info = internal constant %struct.palmas_pin_info { i32 24, ptr null, ptr null }, align 4
@pin_gpio11_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio11_info, ptr null }, align 4
@pin_rcm_info = internal constant %struct.palmas_pin_info { i32 25, ptr null, ptr null }, align 4
@pin_gpio12_info = internal constant %struct.palmas_pin_info { i32 4, ptr null, ptr null }, align 4
@pin_sim2rsto_info = internal constant %struct.palmas_pin_info { i32 21, ptr null, ptr null }, align 4
@pin_gpio13_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio13_info, ptr @od_gpio13_info }, align 4
@pin_gpio14_info = internal constant %struct.palmas_pin_info { i32 4, ptr @pud_gpio14_info, ptr null }, align 4
@pin_gpio15_info = internal constant %struct.palmas_pin_info { i32 4, ptr null, ptr null }, align 4
@pin_sim2rsti_info = internal constant %struct.palmas_pin_info { i32 22, ptr null, ptr null }, align 4
@pud_gpio9_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 12, i32 0, i32 8, i32 4 }, align 4
@pud_gpio10_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 48, i32 0, i32 32, i32 16 }, align 4
@od_gpio10_info = internal constant %struct.palmas_pins_od_info { i32 640, i32 17, i32 4, i32 4, i32 0 }, align 4
@pud_gpio11_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 15, i32 192, i32 0, i32 128, i32 64 }, align 4
@pud_gpio13_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 16, i32 4, i32 0, i32 -1, i32 4 }, align 4
@od_gpio13_info = internal constant %struct.palmas_pins_od_info { i32 640, i32 17, i32 32, i32 32, i32 0 }, align 4
@pud_gpio14_info = internal constant %struct.palmas_pins_pullup_dn_info { i32 640, i32 16, i32 48, i32 0, i32 32, i32 16 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias255, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_palmas_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_palmas__252_1059_palmas_pinctrl_driver_init6, ptr @palmas_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_pinctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @palmas_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  %9 = load ptr, ptr %4, align 8
  %10 = tail call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %11 = icmp ne ptr %10, null
  %12 = load ptr, ptr %4, align 8
  %13 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %14 = icmp eq ptr %13, null
  %15 = zext i1 %11 to i32
  %16 = select i1 %14, i32 0, i32 2
  br label %17

17:                                               ; preds = %7, %1
  %18 = phi ptr [ %8, %7 ], [ @tps65913_pinctrl_data, %1 ]
  %19 = phi i32 [ %15, %7 ], [ 0, %1 ]
  %20 = phi i32 [ %16, %7 ], [ 0, %1 ]
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 140, i32 noundef 3520) #6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %105, label %23

23:                                               ; preds = %17
  store ptr %3, ptr %21, align 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 8
  store ptr @palmas_pins_desc, ptr %29, align 4
  %30 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 9
  store i32 26, ptr %30, align 4
  %31 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 4
  store ptr @palmas_pin_function, ptr %31, align 4
  %32 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 5
  store i32 31, ptr %32, align 4
  %33 = load ptr, ptr %18, align 4
  %34 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 6
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.palmas_pinctrl_data, ptr %18, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 7
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %38, align 8
  %39 = getelementptr %struct.palmas, ptr %27, i32 0, i32 2, i32 0
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 254, i32 noundef 1, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.54, i32 noundef %41) #7
  br label %45

45:                                               ; preds = %43, %23
  %46 = load ptr, ptr %28, align 4
  %47 = getelementptr %struct.palmas, ptr %46, i32 0, i32 2, i32 0
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 254, i32 noundef 2, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.54, i32 noundef %49) #7
  br label %53

53:                                               ; preds = %51, %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %54 = load i32, ptr %37, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %82, %53
  %57 = phi i32 [ %85, %82 ], [ 0, %53 ]
  %58 = load ptr, ptr %34, align 4
  %59 = getelementptr %struct.palmas_pingroup, ptr %58, i32 %57, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %28, align 4
  %64 = getelementptr %struct.palmas_pingroup, ptr %58, i32 %57, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %60, 255
  %67 = add i32 %65, %66
  %68 = lshr i32 %60, 8
  %69 = add nsw i32 %68, -1
  %70 = getelementptr %struct.palmas, ptr %63, i32 0, i32 2, i32 %69
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 @regmap_read(ptr noundef %71, i32 noundef %67, ptr noundef nonnull %2) #6
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %62
  %75 = getelementptr %struct.palmas_pingroup, ptr %58, i32 %57, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %2, align 4
  %78 = and i32 %77, %76
  store i32 %78, ptr %2, align 4
  %79 = getelementptr %struct.palmas_pingroup, ptr %58, i32 %57, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %78, %80
  br label %82

82:                                               ; preds = %74, %56
  %83 = phi i32 [ %81, %74 ], [ 0, %56 ]
  %84 = getelementptr %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 3, i32 %57
  store i32 %83, ptr %84, align 4
  %85 = add nuw nsw i32 %57, 1
  %86 = load i32, ptr %37, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %56, label %91

88:                                               ; preds = %62
  %89 = load ptr, ptr %21, align 4
  %90 = load i32, ptr %64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.55, i32 noundef %90, i32 noundef %72) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %72) #7
  br label %105

91:                                               ; preds = %82, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load ptr, ptr %3, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ %93, %91 ]
  store ptr %98, ptr @palmas_pinctrl_desc, align 4
  store ptr @palmas_pins_desc, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @palmas_pinctrl_desc, i32 0, i32 1), align 4
  store i32 26, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @palmas_pinctrl_desc, i32 0, i32 2), align 4
  %99 = call ptr @devm_pinctrl_register(ptr noundef %3, ptr noundef nonnull @palmas_pinctrl_desc, ptr noundef nonnull %21) #6
  %100 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %21, i32 0, i32 1
  store ptr %99, ptr %100, align 4
  %101 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  %103 = load ptr, ptr %100, align 4
  %104 = ptrtoint ptr %103 to i32
  br label %105

105:                                              ; preds = %102, %97, %88, %17
  %106 = phi i32 [ %72, %88 ], [ %104, %102 ], [ -12, %17 ], [ 0, %97 ]
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @palmas_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.palmas_pingroup, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.palmas_pingroup, ptr %7, i32 %1, i32 1
  store ptr %8, ptr %2, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.palmas_pingroup, ptr %9, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_funcs_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @palmas_pinctrl_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.palmas_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.palmas_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.palmas_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinctrl_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2
  %8 = icmp ult i32 %1, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 7, i32 0
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %20

13:                                               ; preds = %3
  %14 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 7, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.56, ptr noundef %19, i32 noundef %1) #7
  br label %84

20:                                               ; preds = %9
  %21 = load i32, ptr %11, align 4
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %52, label %23

23:                                               ; preds = %20, %9
  %24 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 7, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %47, label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 7, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 4
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %47, label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 7, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 4
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 714, i32 noundef 9, ptr noundef null) #6
  %45 = load ptr, ptr %4, align 4
  %46 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.56, ptr noundef %46, i32 noundef %1) #7
  br label %84

47:                                               ; preds = %41, %34, %27, %13
  %48 = phi i32 [ %1, %13 ], [ 1, %27 ], [ 2, %34 ], [ 3, %41 ]
  %49 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %59

52:                                               ; preds = %20
  %53 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %84, label %59

56:                                               ; preds = %47
  %57 = icmp eq i32 %48, 0
  br i1 %57, label %84, label %58, !prof !9

58:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 722, i32 noundef 9, ptr noundef null) #6
  br label %84

59:                                               ; preds = %52, %47
  %60 = phi i32 [ %54, %52 ], [ %50, %47 ]
  %61 = phi i32 [ 0, %52 ], [ %48, %47 ]
  %62 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %4, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.palmas_pingroup, ptr %6, i32 %2, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %61, %69
  %71 = and i32 %60, 255
  %72 = add i32 %65, %71
  %73 = lshr i32 %60, 8
  %74 = add nsw i32 %73, -1
  %75 = getelementptr %struct.palmas, ptr %63, i32 0, i32 2, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %72, i32 noundef %67, i32 noundef %70, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load ptr, ptr %4, align 4
  %81 = load i32, ptr %64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.58, i32 noundef %81, i32 noundef %77) #7
  br label %84

82:                                               ; preds = %59
  %83 = getelementptr %struct.palmas_pctrl_chip_info, ptr %4, i32 0, i32 3, i32 %2
  store i32 %61, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %79, %58, %56, %52, %44, %17
  %85 = phi i32 [ %77, %79 ], [ 0, %82 ], [ -22, %17 ], [ -22, %44 ], [ -22, %58 ], [ 0, %56 ], [ 0, %52 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %19, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %19 ]
  %16 = getelementptr %struct.palmas_pingroup, ptr %13, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %9
  br i1 %21, label %25, label %14

22:                                               ; preds = %14, %3
  %23 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.59, i32 noundef %1) #7
  br label %142

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr %struct.palmas_pingroup, ptr %29, i32 %23
  %31 = getelementptr %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 3, i32 %23
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.palmas_pingroup, ptr %29, i32 %23, i32 7, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load ptr, ptr %5, align 4
  %38 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.60, ptr noundef %38) #7
  br label %142

39:                                               ; preds = %27
  %40 = trunc i32 %6 to i8
  switch i8 %40, label %137 [
    i8 1, label %41
    i8 5, label %41
    i8 3, label %41
    i8 6, label %94
  ]

41:                                               ; preds = %39, %39, %39
  %42 = getelementptr inbounds %struct.palmas_pin_info, ptr %34, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 4
  %47 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.61, ptr noundef %47) #7
  br label %142

48:                                               ; preds = %41
  %49 = load i32, ptr %43, align 4
  %50 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %43, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = and i32 %49, 255
  %55 = add i32 %54, %51
  %56 = lshr i32 %49, 8
  %57 = add nsw i32 %56, -1
  %58 = getelementptr %struct.palmas, ptr %53, i32 0, i32 2, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 @regmap_read(ptr noundef %59, i32 noundef %55, ptr noundef nonnull %4) #6
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.62, i32 noundef %51, i32 noundef %60) #7
  br label %142

64:                                               ; preds = %48
  %65 = load i32, ptr %4, align 4
  %66 = load ptr, ptr %42, align 4
  %67 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, %65
  %70 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %66, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = icmp eq i32 %71, %69
  %75 = icmp eq i32 %7, 1
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %139, label %77

77:                                               ; preds = %73, %64
  %78 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %66, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = icmp eq i32 %79, %69
  %83 = icmp eq i32 %7, 5
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %139, label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %66, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %139

89:                                               ; preds = %85
  %90 = icmp eq i32 %87, %69
  %91 = icmp eq i32 %7, 3
  %92 = select i1 %90, i1 %91, i1 false
  %93 = select i1 %92, i32 256, i32 0
  br label %139

94:                                               ; preds = %39
  %95 = getelementptr inbounds %struct.palmas_pin_info, ptr %34, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load ptr, ptr %5, align 4
  %100 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.63, ptr noundef %100) #7
  br label %142

101:                                              ; preds = %94
  %102 = load i32, ptr %96, align 4
  %103 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %96, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = and i32 %102, 255
  %108 = add i32 %107, %104
  %109 = lshr i32 %102, 8
  %110 = add nsw i32 %109, -1
  %111 = getelementptr %struct.palmas, ptr %106, i32 0, i32 2, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = call i32 @regmap_read(ptr noundef %112, i32 noundef %108, ptr noundef nonnull %4) #6
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.62, i32 noundef %104, i32 noundef %113) #7
  br label %142

117:                                              ; preds = %101
  %118 = load i32, ptr %4, align 4
  %119 = load ptr, ptr %95, align 4
  %120 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %119, i32 0, i32 2
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, %118
  %123 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %119, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %124, -1
  %126 = icmp eq i32 %124, %122
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %139, label %128

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %119, i32 0, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = icmp sgt i32 %130, -1
  %132 = icmp eq i32 %130, %122
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %5, align 4
  %136 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.63, ptr noundef %136) #7
  br label %142

137:                                              ; preds = %39
  %138 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.64) #7
  br label %142

139:                                              ; preds = %128, %117, %89, %85, %81, %73
  %140 = phi i32 [ 256, %128 ], [ 0, %85 ], [ 256, %73 ], [ 256, %81 ], [ %93, %89 ], [ 0, %117 ]
  %141 = or i32 %140, %7
  store i32 %141, ptr %2, align 4
  br label %142

142:                                              ; preds = %139, %137, %134, %115, %98, %62, %45, %36, %25
  %143 = phi i32 [ -524, %25 ], [ -524, %137 ], [ %113, %115 ], [ -524, %134 ], [ 0, %139 ], [ -524, %98 ], [ %60, %62 ], [ -524, %45 ], [ -524, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %14 = getelementptr %struct.palmas_pingroup, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %23, label %12

20:                                               ; preds = %12, %4
  %21 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.59, i32 noundef %1) #7
  br label %115

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.palmas_pingroup, ptr %27, i32 %21
  %29 = getelementptr %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 3, i32 %21
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.palmas_pingroup, ptr %27, i32 %21, i32 7, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %115, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.palmas_pin_info, ptr %32, i32 0, i32 2
  %38 = getelementptr inbounds %struct.palmas_pin_info, ptr %32, i32 0, i32 1
  %39 = getelementptr inbounds %struct.palmas_pctrl_chip_info, ptr %5, i32 0, i32 2
  br label %46

40:                                               ; preds = %25
  %41 = load ptr, ptr %5, align 4
  %42 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.60, ptr noundef %42) #7
  br label %115

43:                                               ; preds = %99
  %44 = add nuw i32 %47, 1
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %115, label %46

46:                                               ; preds = %43, %36
  %47 = phi i32 [ 0, %36 ], [ %44, %43 ]
  %48 = getelementptr i32, ptr %2, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i8
  switch i8 %50, label %97 [
    i8 1, label %51
    i8 5, label %51
    i8 3, label %51
    i8 6, label %76
  ]

51:                                               ; preds = %46, %46, %46
  %52 = load ptr, ptr %38, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 4
  %56 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.61, ptr noundef %56) #7
  br label %115

57:                                               ; preds = %51
  %58 = load i32, ptr %52, align 4
  %59 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %52, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %52, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  switch i8 %50, label %67 [
    i8 1, label %63
    i8 5, label %65
  ]

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %52, i32 0, i32 3
  br label %69

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %52, i32 0, i32 4
  br label %69

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.palmas_pins_pullup_dn_info, ptr %52, i32 0, i32 5
  br label %69

69:                                               ; preds = %67, %65, %63
  %70 = phi ptr [ %64, %63 ], [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, ptr %70, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %69
  %74 = load ptr, ptr %5, align 4
  %75 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.61, ptr noundef %75) #7
  br label %115

76:                                               ; preds = %46
  %77 = load ptr, ptr %37, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load ptr, ptr %5, align 4
  %81 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.63, ptr noundef %81) #7
  br label %115

82:                                               ; preds = %76
  %83 = load i32, ptr %77, align 4
  %84 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %77, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %77, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %49, 256
  %89 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %77, i32 0, i32 4
  %90 = getelementptr inbounds %struct.palmas_pins_od_info, ptr %77, i32 0, i32 3
  %91 = select i1 %88, ptr %89, ptr %90
  %92 = load i32, ptr %91, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %82
  %95 = load ptr, ptr %5, align 4
  %96 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.63, ptr noundef %96) #7
  br label %115

97:                                               ; preds = %46
  %98 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.64) #7
  br label %115

99:                                               ; preds = %82, %69
  %100 = phi i32 [ %83, %82 ], [ %58, %69 ]
  %101 = phi i32 [ %85, %82 ], [ %60, %69 ]
  %102 = phi i32 [ %87, %82 ], [ %62, %69 ]
  %103 = phi i32 [ %92, %82 ], [ %71, %69 ]
  %104 = load ptr, ptr %39, align 4
  %105 = and i32 %100, 255
  %106 = add i32 %105, %101
  %107 = lshr i32 %100, 8
  %108 = add nsw i32 %107, -1
  %109 = getelementptr %struct.palmas, ptr %104, i32 0, i32 2, i32 %108
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %106, i32 noundef %102, i32 noundef %103, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %43

113:                                              ; preds = %99
  %114 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.58, i32 noundef %101, i32 noundef %111) #7
  br label %115

115:                                              ; preds = %113, %97, %94, %79, %73, %54, %43, %40, %34, %23
  %116 = phi i32 [ -524, %23 ], [ -524, %97 ], [ -524, %94 ], [ %111, %113 ], [ -524, %79 ], [ -524, %73 ], [ -524, %54 ], [ -524, %40 ], [ 0, %34 ], [ 0, %43 ]
  ret i32 %116
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
