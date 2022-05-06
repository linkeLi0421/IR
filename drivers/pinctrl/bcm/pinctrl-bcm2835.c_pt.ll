; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-bcm2835.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-bcm2835.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bcm_plat_data = type { ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_pinctrl = type { ptr, ptr, ptr, [2 x i32], [58 x i32], ptr, %struct.gpio_chip, %struct.pinctrl_desc, %struct.pinctrl_gpio_range, [2 x %struct.raw_spinlock] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_bcm2835__212_1351_bcm2835_pinctrl_driver_init6 = internal global ptr @bcm2835_pinctrl_driver_init, section ".initcall6.init", align 4
@bcm2835_pinctrl_driver = internal global %struct.platform_driver { ptr @bcm2835_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm2835_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm2835_pinctrl_driver_exit = internal global ptr @bcm2835_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author213 = internal constant [34 x i8] c"pinctrl_bcm2835.author=Chris Boot\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [36 x i8] c"pinctrl_bcm2835.author=Simon Arlott\00", section ".modinfo", align 1
@__UNIQUE_ID_author215 = internal constant [38 x i8] c"pinctrl_bcm2835.author=Stephen Warren\00", section ".modinfo", align 1
@__UNIQUE_ID_description216 = internal constant [74 x i8] c"pinctrl_bcm2835.description=Broadcom BCM2835/2711 pinctrl and GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file217 = internal constant [57 x i8] c"pinctrl_bcm2835.file=drivers/pinctrl/bcm/pinctrl-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license218 = internal constant [28 x i8] c"pinctrl_bcm2835.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"pinctrl-bcm2835\00", align 1
@bcm2835_pinctrl_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2711_plat_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"could not get IO memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"brcm,bcm7211-gpio\00", align 1
@bcm2835_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @bcm2835_gpio_irq_enable, ptr @bcm2835_gpio_irq_disable, ptr @bcm2835_gpio_irq_ack, ptr @bcm2835_gpio_irq_disable, ptr null, ptr @bcm2835_gpio_irq_enable, ptr null, ptr null, ptr null, ptr @bcm2835_gpio_irq_set_type, ptr @bcm2835_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s:bank%d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to request wake IRQ %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"could not add GPIO chip\0A\00", align 1
@bcm2835_plat_data = internal constant %struct.bcm_plat_data { ptr @bcm2835_gpio_chip, ptr @bcm2835_pinctrl_desc, ptr @bcm2835_pinctrl_gpio_range }, align 4
@bcm2711_plat_data = internal constant %struct.bcm_plat_data { ptr @bcm2711_gpio_chip, ptr @bcm2711_pinctrl_desc, ptr @bcm2711_pinctrl_gpio_range }, align 4
@bcm2835_gpio_chip = internal constant %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @bcm2835_gpio_get_direction, ptr @bcm2835_gpio_direction_input, ptr @bcm2835_gpio_direction_output, ptr @bcm2835_gpio_get, ptr null, ptr @bcm2835_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 54, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@bcm2835_pinctrl_desc = internal constant %struct.pinctrl_desc { ptr @.str, ptr @bcm2835_gpio_pins, i32 54, ptr @bcm2835_pctl_ops, ptr @bcm2835_pmx_ops, ptr @bcm2835_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@bcm2835_pinctrl_gpio_range = internal constant %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str, i32 0, i32 0, i32 0, i32 54, ptr null, ptr null }, align 4
@bcm2835_gpio_pins = internal global [58 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.11, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.12, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.13, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.14, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.15, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.16, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.63, ptr null }], align 4
@bcm2835_pctl_ops = internal constant %struct.pinctrl_ops { ptr @bcm2835_pctl_get_groups_count, ptr @bcm2835_pctl_get_group_name, ptr @bcm2835_pctl_get_group_pins, ptr @bcm2835_pctl_pin_dbg_show, ptr @bcm2835_pctl_dt_node_to_map, ptr @bcm2835_pctl_dt_free_map }, align 4
@bcm2835_pmx_ops = internal constant %struct.pinmux_ops { ptr null, ptr @bcm2835_pmx_free, ptr @bcm2835_pmx_get_functions_count, ptr @bcm2835_pmx_get_function_name, ptr @bcm2835_pmx_get_function_groups, ptr @bcm2835_pmx_set, ptr null, ptr @bcm2835_pmx_gpio_disable_free, ptr @bcm2835_pmx_gpio_set_direction, i8 0 }, align 4
@bcm2835_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @bcm2835_pinconf_get, ptr @bcm2835_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"gpio16\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"gpio17\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"gpio18\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"gpio19\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"gpio20\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"gpio21\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"gpio22\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"gpio23\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gpio24\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gpio25\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gpio26\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gpio27\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gpio28\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gpio29\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio30\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gpio31\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gpio32\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gpio33\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gpio34\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gpio35\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gpio36\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"gpio37\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"gpio38\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"gpio39\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"gpio40\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"gpio41\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"gpio42\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"gpio43\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"gpio44\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"gpio45\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"gpio46\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"gpio47\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"gpio48\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"gpio49\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"gpio50\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"gpio51\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"gpio52\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"gpio53\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"gpio54\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"gpio55\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"gpio56\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"gpio57\00", align 1
@bcm2835_gpio_groups = internal constant [58 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], align 4
@bcm2835_functions = internal unnamed_addr constant [8 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 4
@.str.64 = private unnamed_addr constant [31 x i8] c"function %s in %s; irq %d (%s)\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@irq_type_names = internal unnamed_addr constant [9 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr null, ptr null, ptr null, ptr @.str.80], align 4
@.str.67 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"alt5\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"alt4\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"alt0\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"alt1\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"alt2\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"alt3\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"edge-rising\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"edge-falling\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"edge-both\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"level-high\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"level-low\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"brcm,pins\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"%pOF: missing brcm,pins property\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"brcm,function\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"brcm,pull\00", align 1
@.str.85 = private unnamed_addr constant [53 x i8] c"%pOF: neither brcm,function nor brcm,pull specified\0A\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"%pOF: brcm,function must have 1 or %d entries\0A\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"%pOF: brcm,pull must have 1 or %d entries\0A\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"%pOF: invalid brcm,pins value %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.89 = private unnamed_addr constant [32 x i8] c"%pOF: invalid brcm,function %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"%pOF: invalid brcm,pull %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bcm2711_gpio_chip = internal constant %struct.gpio_chip { ptr @.str.91, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @bcm2835_gpio_get_direction, ptr @bcm2835_gpio_direction_input, ptr @bcm2835_gpio_direction_output, ptr @bcm2835_gpio_get, ptr null, ptr @bcm2835_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 58, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@bcm2711_pinctrl_desc = internal constant %struct.pinctrl_desc { ptr @.str.91, ptr @bcm2835_gpio_pins, i32 58, ptr @bcm2835_pctl_ops, ptr @bcm2835_pmx_ops, ptr @bcm2711_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@bcm2711_pinctrl_gpio_range = internal constant %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.91, i32 0, i32 0, i32 0, i32 58, ptr null, ptr null }, align 4
@.str.91 = private unnamed_addr constant [16 x i8] c"pinctrl-bcm2711\00", align 1
@bcm2711_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @bcm2835_pinconf_get, ptr @bcm2711_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_author215, ptr @__UNIQUE_ID_description216, ptr @__UNIQUE_ID_file217, ptr @__UNIQUE_ID_license218, ptr @__exitcall_bcm2835_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_bcm2835__212_1351_bcm2835_pinctrl_driver_init6, ptr @bcm2835_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm2835_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_pinctrl_driver, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm2835_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_pinctrl_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 648, i32 noundef 3520) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %161, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  store ptr %4, ptr %7, align 4
  %11 = call i32 @of_address_to_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #15
  br label %161

14:                                               ; preds = %9
  %15 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %2) #14
  %16 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %161

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 8
  %22 = call ptr @of_match_node(ptr noundef nonnull @bcm2835_pinctrl_match, ptr noundef %21) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %161, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.of_device_id, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.2) #14
  %28 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6
  %29 = load ptr, ptr %26, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %28, ptr noundef align 4 dereferenceable(304) %29, i32 304, i1 false)
  %30 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 2
  store ptr %4, ptr %30, align 4
  br label %31

31:                                               ; preds = %66, %24
  %32 = phi i32 [ 0, %24 ], [ %68, %66 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %33 = shl i32 %32, 2
  %34 = add nuw nsw i32 %33, 76
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i8, ptr %35, i32 %34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #14, !srcloc !10
  %37 = add nuw nsw i32 %33, 88
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr i8, ptr %38, i32 %37
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #14, !srcloc !10
  %40 = add nuw nsw i32 %33, 100
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #14, !srcloc !10
  %43 = add nuw nsw i32 %33, 112
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #14, !srcloc !10
  %46 = add nuw nsw i32 %33, 124
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %47 = load ptr, ptr %16, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #14, !srcloc !10
  %49 = add nuw nsw i32 %33, 136
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i8, ptr %50, i32 %49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #14, !srcloc !10
  %52 = add nuw nsw i32 %33, 64
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #14, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  store i32 %55, ptr %3, align 4
  %56 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #14
  %57 = icmp ult i32 %56, 32
  br i1 %57, label %58, label %66

58:                                               ; preds = %58, %31
  %59 = phi i32 [ %64, %58 ], [ %56, %31 ]
  %60 = shl nuw i32 1, %59
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  call void @arm_heavy_mb() #14
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr i8, ptr %61, i32 %52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #14, !srcloc !10
  %63 = add nuw nsw i32 %59, 1
  %64 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %63) #14
  %65 = icmp ult i32 %64, 32
  br i1 %65, label %58, label %66

66:                                               ; preds = %58, %31
  %67 = getelementptr %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 9, i32 %32
  store i32 0, ptr %67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %68 = add nuw nsw i32 %32, 1
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %31

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 7
  %72 = getelementptr inbounds %struct.bcm_plat_data, ptr %26, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %71, ptr noundef align 4 dereferenceable(44) %73, i32 44, i1 false)
  %74 = call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef %71, ptr noundef nonnull %7) #14
  %75 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 5
  store ptr %74, ptr %75, align 4
  %76 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  call void @gpiochip_remove(ptr noundef %28) #14
  %78 = load ptr, ptr %75, align 4
  %79 = ptrtoint ptr %78 to i32
  br label %161

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 8
  %82 = getelementptr inbounds %struct.bcm_plat_data, ptr %26, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %81, ptr noundef align 4 dereferenceable(36) %83, i32 32, i1 false)
  %84 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 19
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 8, i32 3
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 8, i32 7
  store ptr %28, ptr %87, align 4
  call void @pinctrl_add_gpio_range(ptr noundef %74, ptr noundef %81) #14
  %88 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37
  store ptr @bcm2835_gpio_irq_chip, ptr %88, align 4
  %89 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37, i32 13
  store ptr @bcm2835_gpio_irq_handler, ptr %89, align 4
  %90 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37, i32 15
  store i32 3, ptr %90, align 4
  %91 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 12, i32 noundef 3520) #14
  %92 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37, i32 16
  store ptr %91, ptr %92, align 4
  %93 = icmp eq ptr %91, null
  br i1 %93, label %158, label %94

94:                                               ; preds = %80
  %95 = icmp eq i32 %27, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 12, i32 noundef 3520) #14
  %98 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 2
  store ptr %97, ptr %98, align 4
  %99 = icmp eq ptr %97, null
  br i1 %99, label %158, label %100

100:                                              ; preds = %96, %94
  %101 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 2
  br label %102

102:                                              ; preds = %149, %100
  %103 = phi i32 [ 0, %100 ], [ %150, %149 ]
  %104 = call i32 @irq_of_parse_and_map(ptr noundef %6, i32 noundef %103) #14
  %105 = load ptr, ptr %92, align 4
  %106 = getelementptr i32, ptr %105, i32 %103
  store i32 %104, ptr %106, align 4
  br i1 %95, label %107, label %113

107:                                              ; preds = %102
  %108 = load ptr, ptr %92, align 4
  %109 = getelementptr i32, ptr %108, i32 %103
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %149

112:                                              ; preds = %107
  store i32 %103, ptr %90, align 4
  br label %152

113:                                              ; preds = %102
  %114 = add nuw nsw i32 %103, 4
  %115 = call i32 @irq_of_parse_and_map(ptr noundef %6, i32 noundef %114) #14
  %116 = load ptr, ptr %101, align 4
  %117 = getelementptr i32, ptr %116, i32 %103
  store i32 %115, ptr %117, align 4
  %118 = load ptr, ptr %7, align 4
  %119 = getelementptr inbounds %struct.device, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load ptr, ptr %118, align 4
  br label %124

124:                                              ; preds = %122, %113
  %125 = phi ptr [ %123, %122 ], [ %120, %113 ]
  %126 = call i32 @strlen(ptr noundef %125)
  %127 = add i32 %126, 16
  %128 = call noalias ptr @devm_kmalloc(ptr noundef %118, i32 noundef %127, i32 noundef 3520) #14
  %129 = icmp eq ptr %128, null
  br i1 %129, label %158, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %7, align 4
  %132 = getelementptr inbounds %struct.device, ptr %131, i32 0, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load ptr, ptr %131, align 4
  br label %137

137:                                              ; preds = %135, %130
  %138 = phi ptr [ %136, %135 ], [ %133, %130 ]
  %139 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %128, i32 noundef %127, ptr noundef nonnull @.str.3, ptr noundef %138, i32 noundef %103)
  %140 = load ptr, ptr %101, align 4
  %141 = getelementptr i32, ptr %140, i32 %103
  %142 = load i32, ptr %141, align 4
  %143 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %142, ptr noundef nonnull @bcm2835_gpio_wake_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull %128, ptr noundef nonnull %7) #14
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = load ptr, ptr %101, align 4
  %147 = getelementptr i32, ptr %146, i32 %103
  %148 = load i32, ptr %147, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %148) #15
  br label %149

149:                                              ; preds = %145, %137, %107
  %150 = add nuw nsw i32 %103, 1
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %102

152:                                              ; preds = %149, %112
  %153 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37, i32 10
  store i32 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %7, i32 0, i32 6, i32 37, i32 9
  store ptr @handle_level_irq, ptr %154, align 4
  %155 = call i32 @gpiochip_add_data_with_key(ptr noundef %28, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #14
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #15
  br label %158

158:                                              ; preds = %157, %124, %96, %80
  %159 = phi i32 [ %155, %157 ], [ -12, %80 ], [ -12, %96 ], [ -12, %124 ]
  %160 = load ptr, ptr %75, align 4
  call void @pinctrl_remove_gpio_range(ptr noundef %160, ptr noundef %81) #14
  br label %161

161:                                              ; preds = %158, %152, %77, %20, %18, %13, %1
  %162 = phi i32 [ %11, %13 ], [ %19, %18 ], [ %79, %77 ], [ %159, %158 ], [ -12, %1 ], [ -22, %20 ], [ 0, %152 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  ret i32 %162
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #14
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 37, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %12
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = getelementptr i32, ptr %14, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr i32, ptr %14, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/bcm/pinctrl-bcm2835.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #14, !srcloc !13
  unreachable

26:                                               ; preds = %21, %17, %1
  %27 = phi i32 [ 0, %1 ], [ 1, %17 ], [ 2, %21 ]
  %28 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %33(ptr noundef %36) #14
  br label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %39(ptr noundef %40) #14
  %41 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  tail call void %42(ptr noundef %40) #14
  br label %45

45:                                               ; preds = %44, %37, %35, %26
  switch i32 %27, label %130 [
    i32 0, label %46
    i32 1, label %67
    i32 2, label %108
  ]

46:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %47 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %51 = and i32 %50, 268435455
  %52 = getelementptr %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 3, i32 0
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %51, %53
  store i32 %54, ptr %5, align 4
  %55 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef 0) #14
  %56 = icmp ult i32 %55, 32
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 6, i32 37, i32 1
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %55, %57 ], [ %64, %59 ]
  %61 = load ptr, ptr %58, align 4
  %62 = call i32 @generic_handle_domain_irq(ptr noundef %61, i32 noundef %60) #14
  %63 = add nuw nsw i32 %60, 1
  %64 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef %63) #14
  %65 = icmp ult i32 %64, 32
  br i1 %65, label %59, label %66

66:                                               ; preds = %59, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %130

67:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %68 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 64
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %72 = and i32 %71, -268435456
  %73 = getelementptr %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 3, i32 0
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %72, %74
  store i32 %75, ptr %4, align 4
  %76 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #14
  %77 = icmp ult i32 %76, 32
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 6, i32 37, i32 1
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i32 [ %76, %78 ], [ %85, %80 ]
  %82 = load ptr, ptr %79, align 4
  %83 = call i32 @generic_handle_domain_irq(ptr noundef %82, i32 noundef %81) #14
  %84 = add nuw nsw i32 %81, 1
  %85 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %84) #14
  %86 = icmp ult i32 %85, 32
  br i1 %86, label %80, label %87

87:                                               ; preds = %80, %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %88 = load ptr, ptr %68, align 4
  %89 = getelementptr i8, ptr %88, i32 68
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #14, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %91 = and i32 %90, 16383
  %92 = getelementptr %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 3, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %91, %93
  store i32 %94, ptr %3, align 4
  %95 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #14
  %96 = icmp ult i32 %95, 32
  br i1 %96, label %97, label %107

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 6, i32 37, i32 1
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i32 [ %95, %97 ], [ %105, %99 ]
  %101 = add nuw nsw i32 %100, 32
  %102 = load ptr, ptr %98, align 4
  %103 = call i32 @generic_handle_domain_irq(ptr noundef %102, i32 noundef %101) #14
  %104 = add nuw nsw i32 %100, 1
  %105 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %104) #14
  %106 = icmp ult i32 %105, 32
  br i1 %106, label %99, label %107

107:                                              ; preds = %99, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %130

108:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %109 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr i8, ptr %110, i32 68
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %113 = and i32 %112, 4177920
  %114 = getelementptr %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 3, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = and i32 %113, %115
  store i32 %116, ptr %2, align 4
  %117 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #14
  %118 = icmp ult i32 %117, 32
  br i1 %118, label %119, label %129

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 6, i32 37, i32 1
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i32 [ %117, %119 ], [ %127, %121 ]
  %123 = add nuw nsw i32 %122, 32
  %124 = load ptr, ptr %120, align 4
  %125 = call i32 @generic_handle_domain_irq(ptr noundef %124, i32 noundef %123) #14
  %126 = add nuw nsw i32 %122, 1
  %127 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %126) #14
  %128 = icmp ult i32 %127, 32
  br i1 %128, label %121, label %129

129:                                              ; preds = %121, %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %130

130:                                              ; preds = %129, %107, %66, %45
  %131 = load ptr, ptr %28, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 9
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi ptr [ %135, %133 ], [ %131, %130 ]
  %138 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %137(ptr noundef %138) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_gpio_wake_irq_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #9 {
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_remove_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = lshr i32 %6, 5
  %9 = getelementptr %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 9, i32 %8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  %11 = getelementptr %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 3, i32 %8
  tail call void @_set_bit(i32 noundef %7, ptr noundef %11) #14
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %4, i32 noundef %6, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = lshr i32 %6, 5
  %9 = getelementptr %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 9, i32 %8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #14
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %4, i32 noundef %6, i1 noundef zeroext false)
  %11 = lshr i32 %6, 3
  %12 = and i32 %11, 536870908
  %13 = add nuw nsw i32 %12, 64
  %14 = shl nuw i32 1, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %15 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #14, !srcloc !10
  %18 = getelementptr %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 3, i32 %8
  tail call void @_clear_bit(i32 noundef %7, ptr noundef %18) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 64
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #14, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 31
  %9 = lshr i32 %7, 5
  %10 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 9, i32 %9
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 3, i32 %9
  %13 = load volatile i32, ptr %12, align 4
  %14 = shl nuw i32 1, %8
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %2
  switch i32 %1, label %47 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %28
    i32 3, label %33
    i32 4, label %39
    i32 8, label %39
  ]

18:                                               ; preds = %17
  %19 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 0, ptr %19, align 4
  br label %51

23:                                               ; preds = %17
  %24 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %27 [
    i32 3, label %26
    i32 1, label %53
  ]

26:                                               ; preds = %23
  store i32 2, ptr %24, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 1, ptr %24, align 4
  br label %53

27:                                               ; preds = %23
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 1, ptr %24, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  br label %53

28:                                               ; preds = %17
  %29 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %32 [
    i32 3, label %31
    i32 2, label %53
  ]

31:                                               ; preds = %28
  store i32 1, ptr %29, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 2, ptr %29, align 4
  br label %53

32:                                               ; preds = %28
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 2, ptr %29, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  br label %53

33:                                               ; preds = %17
  %34 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %38 [
    i32 1, label %36
    i32 2, label %37
    i32 3, label %53
  ]

36:                                               ; preds = %33
  store i32 2, ptr %34, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  store i32 3, ptr %34, align 4
  br label %53

37:                                               ; preds = %33
  store i32 1, ptr %34, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  store i32 3, ptr %34, align 4
  br label %53

38:                                               ; preds = %33
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 3, ptr %34, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  br label %53

39:                                               ; preds = %17, %17
  %40 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext false) #14
  store i32 %1, ptr %40, align 4
  tail call fastcc void @bcm2835_gpio_irq_config(ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #14
  br label %47

44:                                               ; preds = %2
  switch i32 %1, label %47 [
    i32 0, label %45
    i32 1, label %45
    i32 2, label %45
    i32 3, label %45
    i32 4, label %45
    i32 8, label %45
  ]

45:                                               ; preds = %44, %44, %44, %44, %44, %44
  %46 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %7
  store i32 %1, ptr %46, align 4
  br label %47

47:                                               ; preds = %45, %44, %43, %39, %17
  %48 = phi i32 [ -22, %17 ], [ 0, %39 ], [ 0, %43 ], [ 0, %45 ], [ -22, %44 ]
  %49 = and i32 %1, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %22, %18
  %52 = phi i32 [ %48, %47 ], [ 0, %22 ], [ 0, %18 ]
  br label %53

53:                                               ; preds = %51, %47, %38, %37, %36, %33, %32, %31, %28, %27, %26, %23
  %54 = phi ptr [ @handle_level_irq, %51 ], [ @handle_edge_irq, %23 ], [ @handle_edge_irq, %26 ], [ @handle_edge_irq, %27 ], [ @handle_edge_irq, %28 ], [ @handle_edge_irq, %31 ], [ @handle_edge_irq, %32 ], [ @handle_edge_irq, %33 ], [ @handle_edge_irq, %36 ], [ @handle_edge_irq, %37 ], [ @handle_edge_irq, %38 ], [ @handle_edge_irq, %47 ]
  %55 = phi i32 [ %52, %51 ], [ 0, %23 ], [ 0, %26 ], [ 0, %27 ], [ 0, %28 ], [ 0, %31 ], [ 0, %32 ], [ 0, %33 ], [ 0, %36 ], [ 0, %37 ], [ 0, %38 ], [ %48, %47 ]
  %56 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.irq_desc, ptr %57, i32 0, i32 3
  store ptr %54, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = icmp ult i32 %7, 28
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %7, 46
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %7, 58
  br i1 %16, label %17, label %24

17:                                               ; preds = %15, %13, %11
  %18 = phi i32 [ 0, %11 ], [ 1, %13 ], [ 2, %15 ]
  %19 = icmp ne i32 %1, 0
  %20 = getelementptr i32, ptr %9, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = zext i1 %19 to i32
  %23 = tail call i32 @irq_set_irq_wake(i32 noundef %21, i32 noundef %22) #14
  br label %24

24:                                               ; preds = %17, %15, %2
  %25 = phi i32 [ -22, %2 ], [ -22, %15 ], [ %23, %17 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcm2835_gpio_irq_config(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 4, i32 %1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %95 [
    i32 1, label %6
    i32 2, label %22
    i32 3, label %38
    i32 4, label %63
    i32 8, label %79
  ]

6:                                                ; preds = %3
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 76
  %10 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %14 = and i32 %1, 31
  %15 = shl nuw i32 1, %14
  %16 = or i32 %13, %15
  %17 = xor i32 %15, -1
  %18 = and i32 %13, %17
  %19 = select i1 %2, i32 %16, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr i8, ptr %20, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #14, !srcloc !10
  br label %95

22:                                               ; preds = %3
  %23 = lshr i32 %1, 3
  %24 = and i32 %23, 536870908
  %25 = add nuw nsw i32 %24, 88
  %26 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 %25
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %30 = and i32 %1, 31
  %31 = shl nuw i32 1, %30
  %32 = or i32 %29, %31
  %33 = xor i32 %31, -1
  %34 = and i32 %29, %33
  %35 = select i1 %2, i32 %32, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr i8, ptr %36, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #14, !srcloc !10
  br label %95

38:                                               ; preds = %3
  %39 = lshr i32 %1, 3
  %40 = and i32 %39, 536870908
  %41 = add nuw nsw i32 %40, 76
  %42 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %46 = and i32 %1, 31
  %47 = shl nuw i32 1, %46
  %48 = or i32 %45, %47
  %49 = xor i32 %47, -1
  %50 = and i32 %45, %49
  %51 = select i1 %2, i32 %48, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr i8, ptr %52, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #14, !srcloc !10
  %54 = add nuw nsw i32 %40, 88
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr i8, ptr %55, i32 %54
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %58 = or i32 %57, %47
  %59 = and i32 %57, %49
  %60 = select i1 %2, i32 %58, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %61 = load ptr, ptr %42, align 4
  %62 = getelementptr i8, ptr %61, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #14, !srcloc !10
  br label %95

63:                                               ; preds = %3
  %64 = lshr i32 %1, 3
  %65 = and i32 %64, 536870908
  %66 = add nuw nsw i32 %65, 100
  %67 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 %66
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %71 = and i32 %1, 31
  %72 = shl nuw i32 1, %71
  %73 = or i32 %70, %72
  %74 = xor i32 %72, -1
  %75 = and i32 %70, %74
  %76 = select i1 %2, i32 %73, i32 %75
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %77 = load ptr, ptr %67, align 4
  %78 = getelementptr i8, ptr %77, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #14, !srcloc !10
  br label %95

79:                                               ; preds = %3
  %80 = lshr i32 %1, 3
  %81 = and i32 %80, 536870908
  %82 = add nuw nsw i32 %81, 112
  %83 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %82
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %87 = and i32 %1, 31
  %88 = shl nuw i32 1, %87
  %89 = or i32 %86, %88
  %90 = xor i32 %88, -1
  %91 = and i32 %86, %90
  %92 = select i1 %2, i32 %89, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %93 = load ptr, ptr %83, align 4
  %94 = getelementptr i8, ptr %93, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %92) #14, !srcloc !10
  br label %95

95:                                               ; preds = %79, %63, %38, %22, %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = udiv i32 %1, 10
  %5 = shl nuw nsw i32 %4, 2
  %6 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %10 = mul i32 %4, 10
  %11 = sub i32 %1, %10
  %12 = mul nuw nsw i32 %11, 3
  %13 = lshr i32 %9, %12
  %14 = and i32 %13, 7
  %15 = icmp ugt i32 %14, 1
  %16 = icmp eq i32 %14, 0
  %17 = zext i1 %16 to i32
  %18 = select i1 %15, i32 -22, i32 %17
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = udiv i32 %1, 10
  %5 = shl nuw nsw i32 %4, 2
  %6 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %10 = mul i32 %4, 10
  %11 = sub i32 %1, %10
  %12 = mul nuw nsw i32 %11, 3
  %13 = shl nuw nsw i32 7, %12
  %14 = and i32 %9, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = xor i32 %13, -1
  %18 = and i32 %9, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #14, !srcloc !10
  br label %21

21:                                               ; preds = %16, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 40, i32 28
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %6, %8
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #14, !srcloc !10
  %15 = udiv i32 %1, 10
  %16 = shl nuw nsw i32 %15, 2
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %20 = mul i32 %15, 10
  %21 = sub i32 %1, %20
  %22 = mul nuw nsw i32 %21, 3
  %23 = lshr i32 %19, %22
  %24 = and i32 %23, 7
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %41, label %26

26:                                               ; preds = %3
  %27 = icmp eq i32 %24, 0
  %28 = shl nuw nsw i32 7, %22
  %29 = xor i32 %28, -1
  br i1 %27, label %34, label %30

30:                                               ; preds = %26
  %31 = and i32 %19, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr i8, ptr %32, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #14, !srcloc !10
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32 [ %31, %30 ], [ %19, %26 ]
  %36 = and i32 %35, %29
  %37 = shl nuw nsw i32 1, %22
  %38 = or i32 %36, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr i8, ptr %39, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #14, !srcloc !10
  br label %41

41:                                               ; preds = %34, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = lshr i32 %1, 3
  %5 = and i32 %4, 536870908
  %6 = add nuw nsw i32 %5, 52
  %7 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %11 = and i32 %1, 31
  %12 = lshr i32 %10, %11
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 40, i32 28
  %7 = lshr i32 %1, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %6, %8
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %12 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #14, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pctl_get_groups_count(ptr nocapture noundef readnone %0) #9 {
  ret i32 54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @bcm2835_pctl_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #9 {
  %3 = getelementptr [58 x ptr], ptr @bcm2835_gpio_groups, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm2835_pctl_get_group_pins(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #11 {
  %5 = getelementptr [58 x %struct.pinctrl_pin_desc], ptr @bcm2835_gpio_pins, i32 0, i32 %1
  store ptr %5, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pctl_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = udiv i32 %2, 10
  %7 = shl nuw nsw i32 %6, 2
  %8 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %12 = mul i32 %6, 10
  %13 = sub i32 %2, %12
  %14 = mul nuw nsw i32 %13, 3
  %15 = lshr i32 %11, %14
  %16 = and i32 %15, 7
  %17 = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = lshr i32 %2, 3
  %20 = and i32 %19, 536870908
  %21 = add nuw nsw i32 %20, 52
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %25 = and i32 %2, 31
  %26 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 6, i32 37, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %28 = call ptr @__irq_resolve_mapping(ptr noundef %27, i32 noundef %2, ptr noundef nonnull %4) #14
  %29 = icmp eq ptr %28, null
  %30 = load i32, ptr %4, align 4
  %31 = select i1 %29, i32 0, i32 %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %32 = shl nuw i32 1, %25
  %33 = and i32 %24, %32
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.66, ptr @.str.65
  %36 = getelementptr %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 4, i32 %2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr [9 x ptr], ptr @irq_type_names, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef %18, ptr noundef nonnull %35, i32 noundef %31, ptr noundef %39) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pctl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %9 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %151

11:                                               ; preds = %4
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %151

14:                                               ; preds = %11
  %15 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef null) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.82, ptr noundef %1) #15
  br label %151

19:                                               ; preds = %14
  %20 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.83, ptr noundef null) #14
  %21 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef null) #14
  %22 = icmp ne ptr %20, null
  %23 = icmp ne ptr %21, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.85, ptr noundef %1) #15
  br label %151

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.property, ptr %15, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sdiv i32 %29, 4
  br i1 %22, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.property, ptr %20, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sdiv i32 %33, 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %34, %31 ], [ 0, %27 ]
  br i1 %23, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.property, ptr %21, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = sdiv i32 %39, 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %40, %37 ], [ 0, %35 ]
  %43 = icmp sgt i32 %36, 1
  %44 = xor i1 %43, true
  %45 = icmp eq i32 %36, %30
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.86, ptr noundef %1, i32 noundef %30) #15
  br label %151

49:                                               ; preds = %41
  %50 = icmp sgt i32 %42, 1
  %51 = xor i1 %50, true
  %52 = icmp eq i32 %42, %30
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.87, ptr noundef %1, i32 noundef %30) #15
  br label %151

56:                                               ; preds = %49
  %57 = icmp eq i32 %36, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %42, 0
  %61 = select i1 %57, i32 1, i32 2
  %62 = select i1 %60, i32 %59, i32 %61
  %63 = mul nsw i32 %62, %30
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 28) #14
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %151, label %66, !prof !14

66:                                               ; preds = %56
  %67 = extractvalue { i32, i1 } %64, 0
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #16
  %69 = icmp eq ptr %68, null
  br i1 %69, label %151, label %70

70:                                               ; preds = %66
  %71 = icmp sgt i32 %29, 3
  br i1 %71, label %72, label %135

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %8, i32 0, i32 7, i32 2
  br label %74

74:                                               ; preds = %131, %72
  %75 = phi i32 [ 0, %72 ], [ %133, %131 ]
  %76 = phi ptr [ %68, %72 ], [ %132, %131 ]
  %77 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %75, ptr noundef nonnull %5) #14
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %136

79:                                               ; preds = %74
  %80 = load i32, ptr %5, align 4
  %81 = load i32, ptr %73, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.88, ptr noundef %1, i32 noundef %80) #15
  br label %136

85:                                               ; preds = %79
  br i1 %57, label %105, label %86

86:                                               ; preds = %85
  %87 = select i1 %43, i32 %75, i32 0
  %88 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef %87, ptr noundef nonnull %6) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %136

90:                                               ; preds = %86
  %91 = load i32, ptr %6, align 4
  %92 = icmp ugt i32 %91, 7
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load i32, ptr %5, align 4
  %95 = getelementptr inbounds %struct.pinctrl_map, ptr %76, i32 0, i32 2
  store i32 2, ptr %95, align 4
  %96 = getelementptr [58 x ptr], ptr @bcm2835_gpio_groups, i32 0, i32 %94
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.pinctrl_map, ptr %76, i32 0, i32 4
  store ptr %97, ptr %98, align 4
  %99 = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %91
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.pinctrl_map, ptr %76, i32 0, i32 4, i32 0, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr %struct.pinctrl_map, ptr %76, i32 1
  br label %105

103:                                              ; preds = %90
  %104 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.89, ptr noundef %1, i32 noundef %91) #15
  br label %136

105:                                              ; preds = %93, %85
  %106 = phi ptr [ %76, %85 ], [ %102, %93 ]
  br i1 %60, label %131, label %107

107:                                              ; preds = %105
  %108 = select i1 %50, i32 %75, i32 0
  %109 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.84, i32 noundef %108, ptr noundef nonnull %7) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i32, ptr %5, align 4
  %113 = load i32, ptr %7, align 4
  %114 = icmp ugt i32 %113, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load ptr, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.90, ptr noundef %1, i32 noundef %113) #15
  br label %136

117:                                              ; preds = %111
  %118 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %119 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3520, i32 noundef 4) #17
  %120 = icmp eq ptr %119, null
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = shl nuw nsw i32 %113, 8
  %123 = or i32 %122, 128
  store i32 %123, ptr %119, align 8
  %124 = getelementptr inbounds %struct.pinctrl_map, ptr %106, i32 0, i32 2
  store i32 3, ptr %124, align 4
  %125 = getelementptr [58 x %struct.pinctrl_pin_desc], ptr @bcm2835_gpio_pins, i32 0, i32 %112, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.pinctrl_map, ptr %106, i32 0, i32 4
  store ptr %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.pinctrl_map, ptr %106, i32 0, i32 4, i32 0, i32 1
  store ptr %119, ptr %128, align 4
  %129 = getelementptr inbounds %struct.pinctrl_map, ptr %106, i32 0, i32 4, i32 0, i32 2
  store i32 1, ptr %129, align 4
  %130 = getelementptr %struct.pinctrl_map, ptr %106, i32 1
  br label %131

131:                                              ; preds = %121, %105
  %132 = phi ptr [ %106, %105 ], [ %130, %121 ]
  %133 = add nuw nsw i32 %75, 1
  %134 = icmp eq i32 %133, %30
  br i1 %134, label %135, label %74

135:                                              ; preds = %131, %70
  store ptr %68, ptr %2, align 4
  store i32 %63, ptr %3, align 4
  br label %151

136:                                              ; preds = %117, %115, %107, %103, %86, %83, %74
  %137 = phi i32 [ -22, %83 ], [ -22, %103 ], [ -22, %115 ], [ -12, %117 ], [ %109, %107 ], [ %88, %86 ], [ %77, %74 ]
  %138 = icmp eq i32 %63, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %147, %136
  %140 = phi i32 [ %148, %147 ], [ 0, %136 ]
  %141 = getelementptr %struct.pinctrl_map, ptr %68, i32 %140, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = getelementptr %struct.pinctrl_map, ptr %68, i32 %140, i32 4, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  call void @kfree(ptr noundef %146) #14
  br label %147

147:                                              ; preds = %144, %139
  %148 = add nuw i32 %140, 1
  %149 = icmp eq i32 %148, %63
  br i1 %149, label %150, label %139

150:                                              ; preds = %147, %136
  call void @kfree(ptr noundef nonnull %68) #14
  br label %151

151:                                              ; preds = %150, %135, %66, %56, %54, %47, %25, %17, %11, %4
  %152 = phi i32 [ -22, %47 ], [ -22, %54 ], [ %137, %150 ], [ 0, %135 ], [ -22, %25 ], [ -22, %17 ], [ 0, %11 ], [ %9, %4 ], [ -12, %66 ], [ -12, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pctl_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %3
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %7 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %10, %5
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %3
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %4 = udiv i32 %1, 10
  %5 = shl nuw nsw i32 %4, 2
  %6 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %10 = mul i32 %4, 10
  %11 = sub i32 %1, %10
  %12 = mul nuw nsw i32 %11, 3
  %13 = shl nuw nsw i32 7, %12
  %14 = and i32 %9, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = xor i32 %13, -1
  %18 = and i32 %9, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #14, !srcloc !10
  br label %21

21:                                               ; preds = %16, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pmx_get_functions_count(ptr nocapture noundef readnone %0) #9 {
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @bcm2835_pmx_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #9 {
  %3 = getelementptr [8 x ptr], ptr @bcm2835_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm2835_pmx_get_function_groups(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #11 {
  store ptr @bcm2835_gpio_groups, ptr %2, align 4
  store i32 54, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = udiv i32 %2, 10
  %6 = shl nuw nsw i32 %5, 2
  %7 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %11 = mul i32 %5, 10
  %12 = sub i32 %2, %11
  %13 = mul nuw nsw i32 %12, 3
  %14 = lshr i32 %10, %13
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %34, label %17

17:                                               ; preds = %3
  %18 = icmp ne i32 %15, 0
  %19 = icmp ne i32 %1, 0
  %20 = and i1 %19, %18
  %21 = shl nuw nsw i32 7, %13
  %22 = xor i32 %21, -1
  br i1 %20, label %23, label %27

23:                                               ; preds = %17
  %24 = and i32 %10, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #14, !srcloc !10
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i32 [ %24, %23 ], [ %10, %17 ]
  %29 = and i32 %28, %22
  %30 = shl i32 %1, %13
  %31 = or i32 %29, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %32 = load ptr, ptr %7, align 4
  %33 = getelementptr i8, ptr %32, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #14, !srcloc !10
  br label %34

34:                                               ; preds = %27, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm2835_pmx_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = udiv i32 %2, 10
  %6 = shl nuw nsw i32 %5, 2
  %7 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %11 = mul i32 %5, 10
  %12 = sub i32 %2, %11
  %13 = mul nuw nsw i32 %12, 3
  %14 = shl nuw nsw i32 7, %13
  %15 = and i32 %10, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = xor i32 %14, -1
  %19 = and i32 %10, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr i8, ptr %20, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #14, !srcloc !10
  br label %22

22:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pmx_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = xor i1 %3, true
  %7 = zext i1 %6 to i32
  %8 = udiv i32 %2, 10
  %9 = shl nuw nsw i32 %8, 2
  %10 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %14 = mul i32 %8, 10
  %15 = sub i32 %2, %14
  %16 = mul nuw nsw i32 %15, 3
  %17 = lshr i32 %13, %16
  %18 = and i32 %17, 7
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %36, label %20

20:                                               ; preds = %4
  %21 = icmp eq i32 %18, 0
  %22 = or i1 %21, %3
  %23 = shl nuw nsw i32 7, %16
  %24 = xor i32 %23, -1
  br i1 %22, label %29, label %25

25:                                               ; preds = %20
  %26 = and i32 %13, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #14, !srcloc !10
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %26, %25 ], [ %13, %20 ]
  %31 = and i32 %30, %24
  %32 = shl nuw nsw i32 %7, %16
  %33 = or i32 %31, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %34 = load ptr, ptr %10, align 4
  %35 = getelementptr i8, ptr %34, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #14, !srcloc !10
  br label %36

36:                                               ; preds = %29, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_pinconf_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #9 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2835_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %1, 3
  %9 = and i32 %8, 536870908
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 1
  %13 = add nuw nsw i32 %9, 152
  br label %14

14:                                               ; preds = %63, %7
  %15 = phi i32 [ 0, %7 ], [ %64, %63 ]
  %16 = getelementptr i32, ptr %2, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %66 [
    i8 -128, label %19
    i8 1, label %30
    i8 3, label %39
    i8 5, label %48
    i8 17, label %57
  ]

19:                                               ; preds = %14
  %20 = lshr i32 %17, 8
  %21 = and i32 %20, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #14, !srcloc !10
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %11) #14, !srcloc !10
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr i8, ptr %28, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 0) #14, !srcloc !10
  br label %63

30:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr i8, ptr %31, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #14, !srcloc !10
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr i8, ptr %34, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %11) #14, !srcloc !10
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %37 = load ptr, ptr %12, align 4
  %38 = getelementptr i8, ptr %37, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #14, !srcloc !10
  br label %63

39:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %40 = load ptr, ptr %12, align 4
  %41 = getelementptr i8, ptr %40, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 1) #14, !srcloc !10
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %43 = load ptr, ptr %12, align 4
  %44 = getelementptr i8, ptr %43, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %11) #14, !srcloc !10
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #14, !srcloc !10
  br label %63

48:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr i8, ptr %49, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 2) #14, !srcloc !10
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %52 = load ptr, ptr %12, align 4
  %53 = getelementptr i8, ptr %52, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %11) #14, !srcloc !10
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #14
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %55 = load ptr, ptr %12, align 4
  %56 = getelementptr i8, ptr %55, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 0) #14, !srcloc !10
  br label %63

57:                                               ; preds = %14
  %58 = icmp ult i32 %17, 256
  %59 = select i1 %58, i32 40, i32 28
  %60 = add nuw nsw i32 %59, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %61 = load ptr, ptr %12, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %11) #14, !srcloc !10
  br label %63

63:                                               ; preds = %57, %48, %39, %30, %19
  %64 = add nuw i32 %15, 1
  %65 = icmp eq i32 %64, %3
  br i1 %65, label %66, label %14

66:                                               ; preds = %63, %14, %4
  %67 = phi i32 [ 0, %4 ], [ 0, %63 ], [ -524, %14 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm2711_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %1, 3
  %9 = and i32 %8, 536870908
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = getelementptr inbounds %struct.bcm2835_pinctrl, ptr %5, i32 0, i32 1
  %13 = shl i32 %1, 1
  %14 = and i32 %13, 30
  %15 = lshr i32 %1, 2
  %16 = and i32 %15, 1073741820
  %17 = add nuw nsw i32 %16, 228
  %18 = shl nuw i32 3, %14
  %19 = xor i32 %18, -1
  %20 = shl nuw nsw i32 1, %14
  %21 = shl nuw i32 2, %14
  br label %22

22:                                               ; preds = %70, %7
  %23 = phi i32 [ 0, %7 ], [ %71, %70 ]
  %24 = getelementptr i32, ptr %2, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %73 [
    i8 -128, label %27
    i8 1, label %41
    i8 3, label %48
    i8 5, label %56
    i8 17, label %64
  ]

27:                                               ; preds = %22
  %28 = lshr i32 %25, 8
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, i32 2, i32 0
  %31 = icmp eq i32 %28, 2
  %32 = select i1 %31, i32 1, i32 %30
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 %17
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %36 = and i32 %35, %19
  %37 = shl nuw i32 %32, %14
  %38 = or i32 %36, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr i8, ptr %39, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #14, !srcloc !10
  br label %70

41:                                               ; preds = %22
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr i8, ptr %42, i32 %17
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %45 = and i32 %44, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr i8, ptr %46, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #14, !srcloc !10
  br label %70

48:                                               ; preds = %22
  %49 = load ptr, ptr %12, align 4
  %50 = getelementptr i8, ptr %49, i32 %17
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %52 = and i32 %51, %19
  %53 = or i32 %52, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr i8, ptr %54, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #14, !srcloc !10
  br label %70

56:                                               ; preds = %22
  %57 = load ptr, ptr %12, align 4
  %58 = getelementptr i8, ptr %57, i32 %17
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #14, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !12
  %60 = and i32 %59, %19
  %61 = or i32 %60, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %62 = load ptr, ptr %12, align 4
  %63 = getelementptr i8, ptr %62, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #14, !srcloc !10
  br label %70

64:                                               ; preds = %22
  %65 = icmp ult i32 %25, 256
  %66 = select i1 %65, i32 40, i32 28
  %67 = add nuw nsw i32 %66, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !9
  tail call void @arm_heavy_mb() #14
  %68 = load ptr, ptr %12, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %11) #14, !srcloc !10
  br label %70

70:                                               ; preds = %64, %56, %48, %41, %27
  %71 = add nuw i32 %23, 1
  %72 = icmp eq i32 %71, %3
  br i1 %72, label %73, label %22

73:                                               ; preds = %70, %22, %4
  %74 = phi i32 [ 0, %4 ], [ 0, %70 ], [ -524, %22 ]
  ret i32 %74
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

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
!9 = !{i64 2152486777}
!10 = !{i64 3715735}
!11 = !{i64 3716153}
!12 = !{i64 2152486426}
!13 = !{i64 2152491343, i64 2152491845, i64 2152491380, i64 2152491436, i64 2152491470, i64 2152491494, i64 2152491535, i64 2152491556, i64 2152491584, i64 2152491618}
!14 = !{!"branch_weights", i32 1, i32 2000}
