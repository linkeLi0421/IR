; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-at91.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-at91.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
%struct.at91_pinctrl_mux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at91_gpio_chip = type { %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.at91_pinctrl = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.at91_pmx_func = type { ptr, ptr, i32 }
%struct.at91_pin_group = type { ptr, ptr, ptr, i32 }
%struct.at91_pmx_pin = type { i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@gpio_banks = internal unnamed_addr global i32 0, align 4
@gpio_chips = internal unnamed_addr global [5 x ptr] zeroinitializer, align 4
@backups = internal unnamed_addr global [5 x i32] zeroinitializer, align 4
@wakeups = internal unnamed_addr global [5 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"\017GPIO-%c may wake for %08x\0A\00", align 1
@__initcall__kmod_pinctrl_at91__212_1954_at91_pinctrl_init3 = internal global ptr @at91_pinctrl_init, section ".initcall3.init", align 4
@drivers = internal constant [2 x ptr] [ptr @at91_gpio_driver, ptr @at91_pinctrl_driver], align 4
@at91_gpio_driver = internal global %struct.platform_driver { ptr @at91_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@at91_pinctrl_driver = internal global %struct.platform_driver { ptr @at91_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.21, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at91_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"gpio-at91\00", align 1
@at91_gpio_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ops }, %struct.of_device_id zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to get clock, ignoring.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to prepare and enable clock, ignoring.\0A\00", align 1
@at91_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @at91_gpio_get_direction, ptr @at91_gpio_direction_input, ptr @at91_gpio_direction_output, ptr @at91_gpio_get, ptr null, ptr @at91_gpio_set, ptr @at91_gpio_set_multiple, ptr null, ptr null, ptr @at91_gpio_dbg_show, ptr null, ptr null, i32 0, i16 32, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"#gpio-lines\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"\013at91_gpio.%d, gpio-nb >= %d failback to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pio%c%d\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"at address %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Failure %i for GPIO %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"[%s] GPIO%s%d: \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"[gpio] \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"[periph %c]\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@at91sam9x5_ops = internal constant %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sam9x5_get_drivestrength, ptr @at91_mux_sam9x5_set_drivestrength, ptr null, ptr null, ptr @alt_gpio_irq_type }, align 4
@at91rm9200_ops = internal constant %struct.at91_pinctrl_mux_ops { ptr @at91_mux_get_periph, ptr @at91_mux_set_A_periph, ptr @at91_mux_set_B_periph, ptr null, ptr null, ptr @at91_mux_get_deglitch, ptr @at91_mux_set_deglitch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_irq_type }, align 4
@sam9x60_ops = internal constant %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sam9x60_get_drivestrength, ptr @at91_mux_sam9x60_set_drivestrength, ptr @at91_mux_sam9x60_get_slewrate, ptr @at91_mux_sam9x60_set_slewrate, ptr @alt_gpio_irq_type }, align 4
@.str.20 = private unnamed_addr constant [40 x i8] c"\014AT91: No type for GPIO irq offset %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"pinctrl-at91\00", align 1
@at91_pinctrl_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sama5d3_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9x5_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91rm9200_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sam9x60_ops }, %struct.of_device_id zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [47 x i8] c"All GPIO chips are not registered yet (%d/%d)\0A\00", align 1
@at91_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @at91_pctrl_ops, ptr @at91_pmx_ops, ptr @at91_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.23 = private unnamed_addr constant [40 x i8] c"could not register AT91 pinctrl driver\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"initialized AT91 pinctrl driver\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"you need to specify at least one gpio-controller\0A\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"failed to parse function\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"atmel,mux-mask\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"can not read the mux-mask of %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"wrong mux mask array should be by %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"atmel,at91rm9200-gpio\00", align 1
@at91_pinctrl_parse_functions.grp_index = internal unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"no groups defined\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"atmel,pins\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"wrong pins number or pins and configs should be by 4\0A\00", align 1
@at91_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @at91_get_groups_count, ptr @at91_get_group_name, ptr @at91_get_group_pins, ptr @at91_pin_dbg_show, ptr @at91_dt_node_to_map, ptr @at91_dt_free_map }, align 4
@at91_pmx_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @at91_pmx_get_funcs_count, ptr @at91_pmx_get_func_name, ptr @at91_pmx_get_groups, ptr @at91_pmx_set, ptr @at91_gpio_request_enable, ptr @at91_gpio_disable_free, ptr null, i8 0 }, align 4
@at91_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @at91_pinconf_get, ptr @at91_pinconf_set, ptr null, ptr null, ptr @at91_pinconf_dbg_show, ptr @at91_pinconf_group_dbg_show, ptr null }, align 4
@.str.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"%s: pin conf %d bank_id %d >= nbanks %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"%s: pin conf %d bank_id %d not enabled\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"%s: pin conf %d pin_bank_id %d >= %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"%s: pin conf %d mux_id %d >= nmux %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"%s: pin conf %d mux_id %d not supported for pio%c%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"invalid range\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"missing GPIO chip in range\0A\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"MULTI_DRIVE\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"PULL_UP\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"PULL_DOWN\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"DIS_SCHMIT\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"DEGLITCH\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"DRIVE_STRENGTH_LOW\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"DRIVE_STRENGTH_MED\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"DRIVE_STRENGTH_HI\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"SLEWRATE\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"DEBOUNCE\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@sama5d3_ops = internal constant %struct.at91_pinctrl_mux_ops { ptr @at91_mux_pio3_get_periph, ptr @at91_mux_pio3_set_A_periph, ptr @at91_mux_pio3_set_B_periph, ptr @at91_mux_pio3_set_C_periph, ptr @at91_mux_pio3_set_D_periph, ptr @at91_mux_pio3_get_deglitch, ptr @at91_mux_pio3_set_deglitch, ptr @at91_mux_pio3_get_debounce, ptr @at91_mux_pio3_set_debounce, ptr @at91_mux_pio3_get_pulldown, ptr @at91_mux_pio3_set_pulldown, ptr @at91_mux_pio3_get_schmitt_trig, ptr @at91_mux_pio3_disable_schmitt_trig, ptr @at91_mux_sama5d3_get_drivestrength, ptr @at91_mux_sama5d3_set_drivestrength, ptr null, ptr null, ptr @alt_gpio_irq_type }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_at91__212_1954_at91_pinctrl_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_pinctrl_gpio_suspend() local_unnamed_addr #0 {
  %1 = load i32, ptr @gpio_banks, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %31

3:                                                ; preds = %27, %0
  %4 = phi i32 [ %28, %27 ], [ 0, %0 ]
  %5 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.at91_gpio_chip, ptr %6, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = getelementptr [5 x i32], ptr @backups, i32 0, i32 %4
  store i32 %12, ptr %13, align 4
  %14 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !9
  %15 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #9, !srcloc !9
  %18 = load i32, ptr %15, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %8
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr inbounds %struct.at91_gpio_chip, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  br label %27

24:                                               ; preds = %8
  %25 = add nuw i32 %4, 65
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %25, i32 noundef %18) #10
  br label %27

27:                                               ; preds = %24, %20, %3
  %28 = add nuw nsw i32 %4, 1
  %29 = load i32, ptr @gpio_banks, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %3, label %31

31:                                               ; preds = %27, %0
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @at91_pinctrl_gpio_resume() local_unnamed_addr #0 {
  %1 = load i32, ptr @gpio_banks, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %35

3:                                                ; preds = %31, %0
  %4 = phi i32 [ %32, %31 ], [ %1, %0 ]
  %5 = phi i32 [ %33, %31 ], [ 0, %0 ]
  %6 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.at91_gpio_chip, ptr %7, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.at91_gpio_chip, ptr %7, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #9
  br label %24

24:                                               ; preds = %23, %20, %15, %9
  %25 = load i32, ptr %12, align 4
  %26 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #9, !srcloc !9
  %27 = getelementptr [5 x i32], ptr @backups, i32 0, i32 %5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #9, !srcloc !9
  %30 = load i32, ptr @gpio_banks, align 4
  br label %31

31:                                               ; preds = %24, %3
  %32 = phi i32 [ %4, %3 ], [ %30, %24 ]
  %33 = add nuw nsw i32 %5, 1
  %34 = icmp slt i32 %33, %32
  br i1 %34, label %3, label %35

35:                                               ; preds = %31, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at91_pinctrl_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @of_alias_get_id(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %7 = icmp ugt i32 %6, 4
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/pinctrl-at91.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1826, 0\0A.popsection", ""() #9, !srcloc !12
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %114

13:                                               ; preds = %9
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %114, label %16

16:                                               ; preds = %13
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 368, i32 noundef 3520) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %114, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %21 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 6
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %114

25:                                               ; preds = %19
  %26 = tail call ptr @of_match_device(ptr noundef nonnull @at91_gpio_of_match, ptr noundef %3) #9
  %27 = getelementptr inbounds %struct.of_device_id, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 8
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 4
  store i32 %14, ptr %30, align 4
  %31 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 5
  store i32 %6, ptr %31, align 4
  %32 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #9
  %33 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 7
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #10
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %114

38:                                               ; preds = %25
  %39 = tail call i32 @clk_prepare(ptr noundef %32) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call i32 @clk_enable(ptr noundef %32) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %32) #9
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi i32 [ %42, %44 ], [ %39, %38 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  br label %111

47:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(304) %17, ptr noundef nonnull align 4 dereferenceable(304) @at91_gpio_template, i32 304, i1 false)
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load ptr, ptr %3, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi ptr [ %52, %51 ], [ %49, %47 ]
  store ptr %54, ptr %17, align 4
  %55 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 2
  store ptr %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 4
  store ptr null, ptr %56, align 4
  %57 = shl nuw nsw i32 %6, 5
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 19
  store i32 %57, ptr %58, align 4
  %59 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load i32, ptr %2, align 4
  %63 = icmp ugt i32 %62, 31
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %6, i32 noundef 32, i32 noundef 32) #10
  br label %69

66:                                               ; preds = %61
  %67 = trunc i32 %62 to i16
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  store i16 %67, ptr %68, align 4
  br label %69

69:                                               ; preds = %66, %64, %53
  %70 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 20
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = shl nuw nsw i32 %72, 2
  %74 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %73, i32 noundef 3520) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %111, label %76

76:                                               ; preds = %69
  %77 = load i16, ptr %70, align 4
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %76
  %80 = add nuw nsw i32 %6, 65
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i32 [ 0, %79 ], [ %85, %81 ]
  %83 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %80, i32 noundef %82) #9
  %84 = getelementptr ptr, ptr %74, i32 %82
  store ptr %83, ptr %84, align 4
  %85 = add nuw nsw i32 %82, 1
  %86 = load i16, ptr %70, align 4
  %87 = zext i16 %86 to i32
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %81, label %89

89:                                               ; preds = %81
  %90 = zext i16 %86 to i32
  br label %91

91:                                               ; preds = %89, %76
  %92 = phi i32 [ %90, %89 ], [ 0, %76 ]
  %93 = getelementptr inbounds %struct.gpio_chip, ptr %17, i32 0, i32 22
  store ptr %74, ptr %93, align 4
  %94 = load ptr, ptr %17, align 4
  %95 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 1
  store ptr %94, ptr %95, align 4
  %96 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 2
  store i32 %6, ptr %96, align 4
  %97 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 3
  store i32 %57, ptr %97, align 4
  %98 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 4
  store i32 %57, ptr %98, align 4
  %99 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 5
  store i32 %92, ptr %99, align 4
  %100 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 1, i32 7
  store ptr %17, ptr %100, align 4
  %101 = call fastcc i32 @at91_gpio_of_irq_setup(ptr noundef %0, ptr noundef nonnull %17)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %91
  %104 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %17, ptr noundef nonnull %17, ptr noundef null, ptr noundef null) #9
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  store ptr %17, ptr %10, align 4
  %107 = load i32, ptr @gpio_banks, align 4
  %108 = add i32 %6, 1
  %109 = call i32 @llvm.smax.i32(i32 %107, i32 %108)
  store i32 %109, ptr @gpio_banks, align 4
  %110 = load ptr, ptr %21, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %110) #10
  br label %116

111:                                              ; preds = %103, %91, %69, %45
  %112 = phi i32 [ %46, %45 ], [ %101, %91 ], [ %104, %103 ], [ -12, %69 ]
  %113 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %113) #9
  call void @clk_unprepare(ptr noundef %113) #9
  br label %114

114:                                              ; preds = %111, %35, %23, %16, %13, %9
  %115 = phi i32 [ %24, %23 ], [ %37, %35 ], [ %112, %111 ], [ -16, %9 ], [ %14, %13 ], [ -12, %16 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %115, i32 noundef %6) #10
  br label %116

116:                                              ; preds = %114, %106
  %117 = phi i32 [ %115, %114 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at91_gpio_of_irq_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @irq_get_irq_data(i32 noundef %4) #9
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 136, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 1
  store ptr @.str.19, ptr %13, align 4
  %14 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  store ptr @gpio_irq_ack, ptr %14, align 4
  %15 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 5
  store ptr @gpio_irq_mask, ptr %15, align 4
  %16 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  store ptr @gpio_irq_mask, ptr %16, align 4
  %17 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  store ptr @gpio_irq_unmask, ptr %17, align 4
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 14
  store ptr @gpio_irq_set_wake, ptr %18, align 4
  %19 = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %20, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 13
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.at91_gpio_chip, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #9, !srcloc !9
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37
  store ptr %7, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 10
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 9
  store ptr @handle_edge_irq, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  %31 = tail call ptr @irq_get_irq_data(i32 noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.irq_data, ptr %31, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.irq_common_data, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33, %9
  %40 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 13
  store ptr @gpio_irq_handler, ptr %40, align 4
  %41 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 15
  store i32 1, ptr %41, align 4
  %42 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 4, i32 noundef 3520) #9
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 16
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  br i1 %44, label %59, label %45

45:                                               ; preds = %39
  %46 = load i32, ptr %3, align 4
  store i32 %46, ptr %42, align 4
  br label %59

47:                                               ; preds = %33
  %48 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %37) #9
  %49 = getelementptr inbounds %struct.at91_gpio_chip, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.at91_gpio_chip, ptr %50, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %47
  %57 = phi ptr [ %48, %47 ], [ %50, %52 ]
  %58 = getelementptr inbounds %struct.at91_gpio_chip, ptr %57, i32 0, i32 2
  store ptr %1, ptr %58, align 4
  br label %59

59:                                               ; preds = %56, %52, %45, %39, %2
  %60 = phi i32 [ 0, %56 ], [ 0, %45 ], [ -12, %2 ], [ -12, %39 ], [ -22, %52 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_get_direction(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = xor i32 %7, -1
  %9 = lshr i32 %8, %1
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = shl nuw i32 1, %1
  %7 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = shl nuw i32 1, %1
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, i32 52, i32 48
  %10 = getelementptr i8, ptr %6, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #9, !srcloc !9
  %11 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %7) #9, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = lshr i32 %7, %1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = shl nuw i32 1, %1
  %8 = icmp eq i32 %2, 0
  %9 = select i1 %8, i32 52, i32 48
  %10 = getelementptr i8, ptr %6, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_gpio_set_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 32
  %12 = zext i16 %10 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = select i1 %11, i32 -1, i32 %14
  %16 = xor i32 %8, -1
  %17 = and i32 %15, %7
  %18 = and i32 %17, %8
  %19 = and i32 %17, %16
  %20 = getelementptr i8, ptr %6, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #9, !srcloc !9
  %21 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 8
  %11 = getelementptr i8, ptr %5, i32 24
  %12 = getelementptr i8, ptr %5, i32 60
  br label %13

13:                                               ; preds = %35, %9
  %14 = phi i32 [ 0, %9 ], [ %36, %35 ]
  %15 = tail call ptr @gpiochip_is_requested(ptr noundef %1, i32 noundef %14) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = shl nuw i32 1, %14
  %19 = load ptr, ptr %10, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %5, i32 noundef %18) #9
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %15, ptr noundef %22, i32 noundef %14) #9
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11) #9
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %26 = and i32 %25, %18
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %28) #9
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %30 = and i32 %29, %18
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %32) #9
  br label %35

33:                                               ; preds = %17
  %34 = add i32 %21, 64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %34) #9
  br label %35

35:                                               ; preds = %33, %24, %13
  %36 = add nuw nsw i32 %14, 1
  %37 = load i16, ptr %6, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %13, label %40

40:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gpio_irq_ack(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr i8, ptr %5, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !9
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at91_gpio_chip, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #9, !srcloc !9
  br label %12

12:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  %10 = icmp ugt i32 %6, 4
  br i1 %10, label %26, label %11, !prof !11

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %6
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %9
  store i32 %16, ptr %14, align 4
  br label %22

17:                                               ; preds = %11
  %18 = xor i32 %9, -1
  %19 = getelementptr [5 x i32], ptr @wakeups, i32 0, i32 %6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef %1) #9
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i32 [ 0, %22 ], [ -22, %2 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_irq_handler(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.at91_gpio_chip, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %10 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %15(ptr noundef %18) #9
  br label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %21(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void %24(ptr noundef %22) #9
  br label %27

27:                                               ; preds = %26, %19, %17, %1
  br label %28

28:                                               ; preds = %49, %27
  %29 = phi ptr [ %51, %49 ], [ %9, %27 ]
  %30 = phi ptr [ %47, %49 ], [ %7, %27 ]
  %31 = phi ptr [ %47, %49 ], [ %6, %27 ]
  %32 = getelementptr i8, ptr %29, i32 76
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !8
  %34 = getelementptr i8, ptr %29, i32 72
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !8
  %36 = and i32 %35, %33
  store i32 %36, ptr %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.gpio_chip, ptr %31, i32 0, i32 37, i32 1
  br label %52

40:                                               ; preds = %55, %52
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #9, !srcloc !8
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !8
  %43 = and i32 %42, %41
  store i32 %43, ptr %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %28
  %46 = getelementptr inbounds %struct.at91_gpio_chip, ptr %30, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.at91_gpio_chip, ptr %47, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  br label %28

52:                                               ; preds = %40, %38
  %53 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #9
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %55, label %40

55:                                               ; preds = %55, %52
  %56 = phi i32 [ %60, %55 ], [ %53, %52 ]
  %57 = load ptr, ptr %39, align 4
  %58 = call i32 @generic_handle_domain_irq(ptr noundef %57, i32 noundef %56) #9
  %59 = add nsw i32 %56, 1
  %60 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %59) #9
  %61 = icmp slt i32 %60, 32
  br i1 %61, label %55, label %40

62:                                               ; preds = %45
  %63 = load ptr, ptr %10, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = phi ptr [ %67, %65 ], [ %63, %62 ]
  %70 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %69(ptr noundef %70) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_pio3_get_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = and i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 112
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr i8, ptr %0, i32 116
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, %1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 2
  %17 = select i1 %11, i32 1, i32 2
  %18 = add nuw nsw i32 %17, %16
  br label %19

19:                                               ; preds = %7, %2
  %20 = phi i32 [ %18, %7 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_A_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #9, !srcloc !9
  %7 = getelementptr i8, ptr %0, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  %9 = and i32 %8, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_B_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = or i32 %4, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %9) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_C_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %6) #9, !srcloc !9
  %7 = getelementptr i8, ptr %0, i32 116
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  %9 = or i32 %8, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_D_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = or i32 %4, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !9
  %6 = getelementptr i8, ptr %0, i32 116
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = or i32 %7, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_deglitch(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = shl nuw i32 1, %1
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 136
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = and i32 %10, %5
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i1 [ %12, %8 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_deglitch(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  br i1 %2, label %4, label %6

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #9, !srcloc !9
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ 32, %4 ], [ 36, %3 ]
  %8 = getelementptr i8, ptr %0, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_debounce(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
  store i32 %5, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = shl nuw i32 1, %1
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 136
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = and i32 %13, %8
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i1 [ false, %3 ], [ %15, %11 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_debounce(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  br i1 %2, label %5, label %10

5:                                                ; preds = %4
  %6 = getelementptr i8, ptr %0, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #9, !srcloc !9
  %7 = and i32 %3, 16383
  %8 = getelementptr i8, ptr %0, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #9, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #9, !srcloc !9
  br label %12

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %1) #9, !srcloc !9
  br label %12

12:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_pulldown(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = shl nuw i32 1, %1
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_set_pulldown(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  br i1 %2, label %4, label %6

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #9, !srcloc !9
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ 148, %4 ], [ 144, %3 ]
  %8 = getelementptr i8, ptr %0, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_pio3_get_schmitt_trig(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = shl nuw i32 1, %1
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_pio3_disable_schmitt_trig(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = or i32 %4, %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x5_get_drivestrength(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 15
  %4 = select i1 %3, i32 280, i32 276
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = shl i32 %1, 1
  %8 = add i32 %7, -32
  %9 = select i1 %3, i32 %8, i32 %7
  %10 = lshr i32 %6, %9
  %11 = and i32 %10, 3
  %12 = sub nuw nsw i32 96, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_sam9x5_set_drivestrength(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = sub i32 96, %2
  %7 = icmp ugt i32 %1, 15
  %8 = select i1 %7, i32 280, i32 276
  %9 = getelementptr i8, ptr %0, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  %11 = shl i32 %1, 1
  %12 = add i32 %11, -32
  %13 = select i1 %7, i32 %12, i32 %11
  %14 = shl i32 3, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %10, %15
  %17 = shl i32 %6, %13
  %18 = or i32 %16, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %18) #9, !srcloc !9
  br label %19

19:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alt_gpio_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at91_gpio_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = shl nuw i32 1, %8
  switch i32 %1, label %39 [
    i32 1, label %10
    i32 2, label %16
    i32 8, label %22
    i32 4, label %28
    i32 3, label %34
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_desc, ptr %12, i32 0, i32 3
  store ptr @handle_simple_irq, ptr %13, align 4
  %14 = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #9, !srcloc !9
  %15 = getelementptr i8, ptr %6, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #9, !srcloc !9
  br label %43

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 3
  store ptr @handle_simple_irq, ptr %19, align 4
  %20 = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %9) #9, !srcloc !9
  %21 = getelementptr i8, ptr %6, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %9) #9, !srcloc !9
  br label %43

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 3
  store ptr @handle_level_irq, ptr %25, align 4
  %26 = getelementptr i8, ptr %6, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %9) #9, !srcloc !9
  %27 = getelementptr i8, ptr %6, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %9) #9, !srcloc !9
  br label %43

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.irq_desc, ptr %30, i32 0, i32 3
  store ptr @handle_level_irq, ptr %31, align 4
  %32 = getelementptr i8, ptr %6, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %9) #9, !srcloc !9
  %33 = getelementptr i8, ptr %6, i32 212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %9) #9, !srcloc !9
  br label %43

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.irq_desc, ptr %36, i32 0, i32 3
  store ptr @handle_simple_irq, ptr %37, align 4
  %38 = getelementptr i8, ptr %6, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %9) #9, !srcloc !9
  br label %45

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %41) #10
  br label %45

43:                                               ; preds = %28, %22, %16, %10
  %44 = getelementptr i8, ptr %6, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %9) #9, !srcloc !9
  br label %45

45:                                               ; preds = %43, %39, %34
  %46 = phi i32 [ -22, %39 ], [ 0, %34 ], [ 0, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_set_deglitch(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = select i1 %2, i32 32, i32 36
  %5 = getelementptr i8, ptr %0, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %1) #9, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_get_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = and i32 %4, %1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 120
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = and i32 %9, %1
  %11 = add i32 %10, 1
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_set_A_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_set_B_periph(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #9, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @at91_mux_get_deglitch(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = shl nuw i32 1, %1
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gpio_irq_type(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = icmp eq i32 %1, 0
  %4 = icmp eq i32 %1, 3
  %5 = or i1 %3, %4
  %6 = select i1 %5, i32 0, i32 -22
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x60_get_drivestrength(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 280
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = shl nuw i32 1, %1
  %6 = and i32 %4, %5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_sam9x60_set_drivestrength(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, -3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 280
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !8
  %9 = icmp eq i32 %2, 1
  %10 = shl nuw i32 1, %1
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = or i32 %8, %10
  %14 = select i1 %9, i32 %12, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %14) #9, !srcloc !9
  br label %15

15:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_sam9x60_get_slewrate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 272
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !8
  %5 = xor i32 %4, -1
  %6 = lshr i32 %5, %1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_sam9x60_set_slewrate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 272
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = icmp eq i32 %2, 1
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = or i32 %7, %9
  %13 = select i1 %8, i32 %11, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %13) #9, !srcloc !9
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pinctrl_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 40, i32 noundef 3520) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %323, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %323, label %11

11:                                               ; preds = %7
  store ptr %4, ptr %5, align 4
  %12 = tail call ptr @of_match_device(ptr noundef nonnull @at91_pinctrl_of_match, ptr noundef %4) #9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 9
  store ptr %14, ptr %15, align 4
  %16 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 6
  %21 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 8
  br label %22

22:                                               ; preds = %44, %18
  %23 = phi ptr [ %16, %18 ], [ %45, %44 ]
  %24 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %23, ptr noundef nonnull @.str.30) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %23) #9
  br i1 %27, label %39, label %44

28:                                               ; preds = %22
  %29 = load i32, ptr %20, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %20, align 4
  %31 = tail call ptr @of_get_next_child(ptr noundef nonnull %23, ptr noundef null) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %33, %28
  %34 = phi i32 [ %36, %33 ], [ 0, %28 ]
  %35 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %36 = add i32 %34, 1
  %37 = tail call ptr @of_get_next_child(ptr noundef nonnull %23, ptr noundef nonnull %35) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %28, %26
  %40 = phi ptr [ %19, %26 ], [ %21, %28 ], [ %21, %33 ]
  %41 = phi i32 [ 1, %26 ], [ 0, %28 ], [ %36, %33 ]
  %42 = load i32, ptr %40, align 4
  %43 = add i32 %42, %41
  store i32 %43, ptr %40, align 4
  br label %44

44:                                               ; preds = %39, %26
  %45 = tail call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %23) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %22

47:                                               ; preds = %44, %11
  %48 = load i32, ptr @gpio_banks, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25) #10
  br label %323

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !10
  %52 = call ptr @of_get_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.27, ptr noundef nonnull %3) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 4
  %56 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.28, i32 noundef %56) #10
  br label %85

57:                                               ; preds = %51
  %58 = load i32, ptr %3, align 4
  %59 = lshr i32 %58, 2
  store i32 %59, ptr %3, align 4
  %60 = icmp ult i32 %58, 4
  %61 = load i32, ptr @gpio_banks, align 4
  br i1 %60, label %69, label %62

62:                                               ; preds = %57
  %63 = freeze i32 %59
  %64 = freeze i32 %61
  %65 = sdiv i32 %63, %64
  %66 = mul i32 %65, %64
  %67 = sub i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62, %57
  %70 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.29, i32 noundef %61) #10
  br label %85

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 4
  store i32 %65, ptr %72, align 4
  %73 = and i32 %58, -4
  %74 = load ptr, ptr %5, align 4
  %75 = call noalias ptr @devm_kmalloc(ptr noundef %74, i32 noundef %73, i32 noundef 3520) #9
  %76 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 3
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load i32, ptr %3, align 4
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.27, ptr noundef nonnull %75, i32 noundef %79, i32 noundef 0) #9
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %5, align 4
  %84 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.28, i32 noundef %84) #10
  br label %85

85:                                               ; preds = %82, %71, %69, %54
  %86 = phi i32 [ %80, %82 ], [ -12, %71 ], [ -22, %54 ], [ -22, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %323

87:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %88 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 12) #9
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %92, label %94, !prof !11

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 5
  store ptr null, ptr %93, align 4
  br label %323

94:                                               ; preds = %87
  %95 = extractvalue { i32, i1 } %90, 0
  %96 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %95, i32 noundef 3520) #9
  %97 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 5
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %323, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 8
  %101 = load i32, ptr %100, align 4
  %102 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %101, i32 16) #9
  %103 = extractvalue { i32, i1 } %102, 1
  br i1 %103, label %104, label %106, !prof !11

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 7
  store ptr null, ptr %105, align 4
  br label %323

106:                                              ; preds = %99
  %107 = extractvalue { i32, i1 } %102, 0
  %108 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %107, i32 noundef 3520) #9
  %109 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 7
  store ptr %108, ptr %109, align 4
  %110 = icmp eq ptr %108, null
  br i1 %110, label %323, label %111

111:                                              ; preds = %106
  %112 = call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef null) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %240, label %114

114:                                              ; preds = %236, %111
  %115 = phi ptr [ %238, %236 ], [ %112, %111 ]
  %116 = phi i32 [ %237, %236 ], [ 0, %111 ]
  %117 = call i32 @of_device_is_compatible(ptr noundef nonnull %115, ptr noundef nonnull @.str.30) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %236

119:                                              ; preds = %114
  %120 = add i32 %116, 1
  %121 = load ptr, ptr %97, align 4
  %122 = getelementptr %struct.at91_pmx_func, ptr %121, i32 %116
  %123 = load ptr, ptr %115, align 4
  store ptr %123, ptr %122, align 4
  %124 = call ptr @of_get_next_child(ptr noundef nonnull %115, ptr noundef null) #9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = getelementptr %struct.at91_pmx_func, ptr %121, i32 %116, i32 2
  store i32 0, ptr %127, align 4
  br label %137

128:                                              ; preds = %128, %119
  %129 = phi i32 [ %131, %128 ], [ 0, %119 ]
  %130 = phi ptr [ %132, %128 ], [ %124, %119 ]
  %131 = add i32 %129, 1
  %132 = call ptr @of_get_next_child(ptr noundef nonnull %115, ptr noundef nonnull %130) #9
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %128

134:                                              ; preds = %128
  %135 = getelementptr %struct.at91_pmx_func, ptr %121, i32 %116, i32 2
  store i32 %131, ptr %135, align 4
  %136 = icmp eq i32 %131, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134, %126
  %138 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.31) #10
  br label %234

139:                                              ; preds = %134
  %140 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %131, i32 4) #9
  %141 = extractvalue { i32, i1 } %140, 1
  br i1 %141, label %142, label %144, !prof !11

142:                                              ; preds = %139
  %143 = getelementptr %struct.at91_pmx_func, ptr %121, i32 %116, i32 1
  store ptr null, ptr %143, align 4
  br label %234

144:                                              ; preds = %139
  %145 = load ptr, ptr %5, align 4
  %146 = extractvalue { i32, i1 } %140, 0
  %147 = call noalias ptr @devm_kmalloc(ptr noundef %145, i32 noundef %146, i32 noundef 3520) #9
  %148 = getelementptr %struct.at91_pmx_func, ptr %121, i32 %116, i32 1
  store ptr %147, ptr %148, align 4
  %149 = icmp eq ptr %147, null
  br i1 %149, label %234, label %150

150:                                              ; preds = %144
  %151 = call ptr @of_get_next_child(ptr noundef nonnull %115, ptr noundef null) #9
  %152 = icmp eq ptr %151, null
  br i1 %152, label %236, label %153

153:                                              ; preds = %230, %150
  %154 = phi i32 [ %231, %230 ], [ 0, %150 ]
  %155 = phi ptr [ %232, %230 ], [ %151, %150 ]
  %156 = load ptr, ptr %155, align 4
  %157 = load ptr, ptr %148, align 4
  %158 = getelementptr ptr, ptr %157, i32 %154
  store ptr %156, ptr %158, align 4
  %159 = load ptr, ptr %109, align 4
  %160 = load i32, ptr @at91_pinctrl_parse_functions.grp_index, align 4
  %161 = add i32 %160, 1
  store i32 %161, ptr @at91_pinctrl_parse_functions.grp_index, align 4
  %162 = getelementptr %struct.at91_pin_group, ptr %159, i32 %160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %163 = load ptr, ptr %155, align 4
  store ptr %163, ptr %162, align 4
  %164 = call ptr @of_get_property(ptr noundef nonnull %155, ptr noundef nonnull @.str.32, ptr noundef nonnull %2) #9
  %165 = load i32, ptr %2, align 4
  %166 = lshr i32 %165, 2
  store i32 %166, ptr %2, align 4
  %167 = icmp ugt i32 %165, 3
  %168 = and i32 %165, 12
  %169 = icmp eq i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %173, label %171

171:                                              ; preds = %153
  %172 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.33) #10
  br label %228

173:                                              ; preds = %153
  %174 = lshr i32 %165, 4
  %175 = getelementptr %struct.at91_pin_group, ptr %159, i32 %160, i32 3
  store i32 %174, ptr %175, align 4
  %176 = and i32 %165, -16
  %177 = load ptr, ptr %5, align 4
  %178 = call noalias ptr @devm_kmalloc(ptr noundef %177, i32 noundef %176, i32 noundef 3520) #9
  %179 = getelementptr %struct.at91_pin_group, ptr %159, i32 %160, i32 1
  store ptr %178, ptr %179, align 4
  %180 = load i32, ptr %175, align 4
  %181 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %180, i32 4) #9
  %182 = extractvalue { i32, i1 } %181, 1
  br i1 %182, label %183, label %185, !prof !11

183:                                              ; preds = %173
  %184 = getelementptr %struct.at91_pin_group, ptr %159, i32 %160, i32 2
  store ptr null, ptr %184, align 4
  br label %228

185:                                              ; preds = %173
  %186 = load ptr, ptr %5, align 4
  %187 = extractvalue { i32, i1 } %181, 0
  %188 = call noalias ptr @devm_kmalloc(ptr noundef %186, i32 noundef %187, i32 noundef 3520) #9
  %189 = getelementptr %struct.at91_pin_group, ptr %159, i32 %160, i32 2
  store ptr %188, ptr %189, align 4
  %190 = load ptr, ptr %179, align 4
  %191 = icmp eq ptr %190, null
  %192 = icmp eq ptr %188, null
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %228, label %194

194:                                              ; preds = %185
  %195 = load i32, ptr %2, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %230

197:                                              ; preds = %223, %194
  %198 = phi ptr [ %227, %223 ], [ %188, %194 ]
  %199 = phi i32 [ %224, %223 ], [ 0, %194 ]
  %200 = phi i32 [ %220, %223 ], [ 0, %194 ]
  %201 = phi ptr [ %226, %223 ], [ %164, %194 ]
  %202 = phi ptr [ %225, %223 ], [ %178, %194 ]
  %203 = getelementptr i32, ptr %201, i32 1
  %204 = load i32, ptr %201, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204) #9
  store i32 %205, ptr %202, align 4
  %206 = getelementptr i32, ptr %201, i32 2
  %207 = load i32, ptr %203, align 4
  %208 = call i32 @llvm.bswap.i32(i32 %207) #9
  %209 = getelementptr inbounds %struct.at91_pmx_pin, ptr %202, i32 0, i32 1
  store i32 %208, ptr %209, align 4
  %210 = shl i32 %205, 5
  %211 = add i32 %208, %210
  %212 = getelementptr i32, ptr %198, i32 %199
  store i32 %211, ptr %212, align 4
  %213 = getelementptr i32, ptr %201, i32 3
  %214 = load i32, ptr %206, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214) #9
  %216 = getelementptr inbounds %struct.at91_pmx_pin, ptr %202, i32 0, i32 2
  store i32 %215, ptr %216, align 4
  %217 = load i32, ptr %213, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217) #9
  %219 = getelementptr inbounds %struct.at91_pmx_pin, ptr %202, i32 0, i32 3
  store i32 %218, ptr %219, align 4
  %220 = add i32 %200, 4
  %221 = load i32, ptr %2, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %197
  %224 = add i32 %199, 1
  %225 = getelementptr %struct.at91_pmx_pin, ptr %202, i32 1
  %226 = getelementptr i32, ptr %201, i32 4
  %227 = load ptr, ptr %189, align 4
  br label %197

228:                                              ; preds = %185, %183, %171
  %229 = phi i32 [ -12, %183 ], [ -22, %171 ], [ -12, %185 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  call void @of_node_put(ptr noundef nonnull %155) #9
  br label %234

230:                                              ; preds = %197, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %231 = add i32 %154, 1
  %232 = call ptr @of_get_next_child(ptr noundef nonnull %115, ptr noundef nonnull %155) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %236, label %153

234:                                              ; preds = %228, %144, %142, %137
  %235 = phi i32 [ -12, %142 ], [ %229, %228 ], [ -22, %137 ], [ -12, %144 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.26) #10
  call void @of_node_put(ptr noundef nonnull %115) #9
  br label %323

236:                                              ; preds = %230, %150, %114
  %237 = phi i32 [ %116, %114 ], [ %120, %150 ], [ %120, %230 ]
  %238 = call ptr @of_get_next_child(ptr noundef nonnull %9, ptr noundef nonnull %115) #9
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %114

240:                                              ; preds = %236, %111
  %241 = load i32, ptr @gpio_banks, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %243, %240
  %244 = phi i32 [ %250, %243 ], [ 0, %240 ]
  %245 = phi i32 [ %251, %243 ], [ 0, %240 ]
  %246 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %245
  %247 = load ptr, ptr %246, align 4
  %248 = icmp ne ptr %247, null
  %249 = zext i1 %248 to i32
  %250 = add i32 %244, %249
  %251 = add nuw nsw i32 %245, 1
  %252 = icmp eq i32 %251, %241
  br i1 %252, label %253, label %243

253:                                              ; preds = %243, %240
  %254 = phi i32 [ 0, %240 ], [ %250, %243 ]
  %255 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 2
  %256 = load i32, ptr %255, align 4
  %257 = icmp slt i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %254, i32 noundef %256) #10
  call void @devm_kfree(ptr noundef %4, ptr noundef nonnull %5) #9
  br label %323

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load ptr, ptr %4, align 4
  br label %265

265:                                              ; preds = %263, %259
  %266 = phi ptr [ %264, %263 ], [ %261, %259 ]
  store ptr %266, ptr @at91_pinctrl_desc, align 4
  %267 = shl i32 %241, 5
  store i32 %267, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 2), align 4
  %268 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %267, i32 12) #9
  %269 = extractvalue { i32, i1 } %268, 1
  br i1 %269, label %270, label %271, !prof !11

270:                                              ; preds = %265
  store ptr null, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 1), align 4
  br label %323

271:                                              ; preds = %265
  %272 = extractvalue { i32, i1 } %268, 0
  %273 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %272, i32 noundef 3520) #9
  store ptr %273, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @at91_pinctrl_desc, i32 0, i32 1), align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %323, label %275

275:                                              ; preds = %271
  %276 = load i32, ptr @gpio_banks, align 4
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %293, %275
  %279 = phi i32 [ %291, %293 ], [ 0, %275 ]
  %280 = phi i32 [ %294, %293 ], [ 0, %275 ]
  %281 = phi ptr [ %289, %293 ], [ %273, %275 ]
  %282 = add nuw i32 %280, 65
  br label %283

283:                                              ; preds = %283, %278
  %284 = phi i32 [ %279, %278 ], [ %291, %283 ]
  %285 = phi i32 [ 0, %278 ], [ %290, %283 ]
  %286 = phi ptr [ %281, %278 ], [ %289, %283 ]
  store i32 %284, ptr %286, align 4
  %287 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, i32 noundef %282, i32 noundef %285) #9
  %288 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %286, i32 0, i32 1
  store ptr %287, ptr %288, align 4
  %289 = getelementptr %struct.pinctrl_pin_desc, ptr %286, i32 1
  %290 = add nuw nsw i32 %285, 1
  %291 = add i32 %284, 1
  %292 = icmp eq i32 %290, 32
  br i1 %292, label %293, label %283

293:                                              ; preds = %283
  %294 = add nuw nsw i32 %280, 1
  %295 = load i32, ptr @gpio_banks, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %278, label %297

297:                                              ; preds = %293, %275
  %298 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %298, align 8
  %299 = call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull @at91_pinctrl_desc, ptr noundef nonnull %5) #9
  %300 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 1
  store ptr %299, ptr %300, align 4
  %301 = icmp ugt ptr %299, inttoptr (i32 -4096 to ptr)
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = load i32, ptr @gpio_banks, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %308, label %322

305:                                              ; preds = %297
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23) #10
  %306 = load ptr, ptr %300, align 4
  %307 = ptrtoint ptr %306 to i32
  br label %323

308:                                              ; preds = %318, %302
  %309 = phi i32 [ %319, %318 ], [ %303, %302 ]
  %310 = phi i32 [ %320, %318 ], [ 0, %302 ]
  %311 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %310
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %308
  %315 = load ptr, ptr %300, align 4
  %316 = getelementptr inbounds %struct.at91_gpio_chip, ptr %312, i32 0, i32 1
  call void @pinctrl_add_gpio_range(ptr noundef %315, ptr noundef %316) #9
  %317 = load i32, ptr @gpio_banks, align 4
  br label %318

318:                                              ; preds = %314, %308
  %319 = phi i32 [ %309, %308 ], [ %317, %314 ]
  %320 = add nuw nsw i32 %310, 1
  %321 = icmp slt i32 %320, %319
  br i1 %321, label %308, label %322

322:                                              ; preds = %318, %302
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.24) #10
  br label %323

323:                                              ; preds = %322, %305, %271, %270, %258, %234, %106, %104, %94, %92, %85, %50, %7, %1
  %324 = phi i32 [ -517, %258 ], [ %307, %305 ], [ 0, %322 ], [ -12, %1 ], [ -12, %271 ], [ -12, %270 ], [ -12, %104 ], [ -12, %92 ], [ %86, %85 ], [ -12, %106 ], [ -12, %94 ], [ -19, %7 ], [ %235, %234 ], [ -22, %50 ]
  ret i32 %324
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.at91_pinctrl, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at91_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.at91_pinctrl, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.at91_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.at91_pin_group, ptr %11, i32 %1, i32 2
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.at91_pin_group, ptr %14, i32 %1, i32 3
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ 0, %9 ], [ -22, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef %12) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i32 %17, 1
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %24, label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ 0, %10 ], [ %14, %13 ]
  %18 = getelementptr %struct.at91_pin_group, ptr %12, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strcmp(ptr noundef %19, ptr noundef %6) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13

22:                                               ; preds = %16
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %22, %13, %4
  %25 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.35, ptr noundef %1) #10
  br label %71

26:                                               ; preds = %22
  %27 = getelementptr %struct.at91_pin_group, ptr %12, i32 %17, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 28) #9
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %71, label %33, !prof !11

33:                                               ; preds = %26
  %34 = load ptr, ptr %30, align 4
  %35 = extractvalue { i32, i1 } %31, 0
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38

38:                                               ; preds = %33
  store ptr %36, ptr %2, align 4
  store i32 %29, ptr %3, align 4
  %39 = tail call ptr @of_get_parent(ptr noundef %1) #9
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load ptr, ptr %30, align 4
  tail call void @devm_kfree(ptr noundef %42, ptr noundef nonnull %36) #9
  br label %71

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.pinctrl_map, ptr %36, i32 0, i32 2
  store i32 2, ptr %44, align 4
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.pinctrl_map, ptr %36, i32 0, i32 4
  %47 = getelementptr inbounds %struct.pinctrl_map, ptr %36, i32 0, i32 4, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  %48 = load ptr, ptr %1, align 4
  store ptr %48, ptr %46, align 4
  tail call void @of_node_put(ptr noundef nonnull %39) #9
  %49 = getelementptr %struct.pinctrl_map, ptr %36, i32 1
  %50 = load i32, ptr %27, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %43
  %53 = getelementptr %struct.at91_pin_group, ptr %12, i32 %17, i32 2
  %54 = getelementptr %struct.at91_pin_group, ptr %12, i32 %17, i32 1
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi i32 [ 0, %52 ], [ %68, %55 ]
  %57 = getelementptr %struct.pinctrl_map, ptr %49, i32 %56
  %58 = getelementptr inbounds %struct.pinctrl_map, ptr %57, i32 0, i32 2
  store i32 3, ptr %58, align 4
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr i32, ptr %59, i32 %56
  %61 = load i32, ptr %60, align 4
  %62 = tail call ptr @pin_get_name(ptr noundef %0, i32 noundef %61) #9
  %63 = getelementptr inbounds %struct.pinctrl_map, ptr %57, i32 0, i32 4
  store ptr %62, ptr %63, align 4
  %64 = load ptr, ptr %54, align 4
  %65 = getelementptr %struct.at91_pmx_pin, ptr %64, i32 %56, i32 3
  %66 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %63, i32 0, i32 1
  store ptr %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %63, i32 0, i32 2
  store i32 1, ptr %67, align 4
  %68 = add nuw i32 %56, 1
  %69 = load i32, ptr %27, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %55, label %71

71:                                               ; preds = %55, %43, %41, %33, %26, %24
  %72 = phi i32 [ -22, %41 ], [ -22, %24 ], [ -12, %33 ], [ -12, %26 ], [ 0, %43 ], [ 0, %55 ]
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @at91_dt_free_map(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pmx_get_funcs_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.at91_pinctrl, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at91_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.at91_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.at91_pmx_func, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pmx_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.at91_pmx_func, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.at91_pmx_func, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.at91_pinctrl, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr @gpio_banks, align 4
  %14 = getelementptr inbounds %struct.at91_pinctrl, ptr %4, i32 0, i32 4
  %15 = getelementptr inbounds %struct.at91_pinctrl, ptr %4, i32 0, i32 3
  br label %18

16:                                               ; preds = %69
  %17 = getelementptr inbounds %struct.at91_pinctrl, ptr %4, i32 0, i32 9
  br i1 %11, label %120, label %72

18:                                               ; preds = %69, %12
  %19 = phi i32 [ 0, %12 ], [ %70, %69 ]
  %20 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %13
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.36, ptr noundef %25, i32 noundef %19, i32 noundef %21, i32 noundef %13) #10
  br label %120

27:                                               ; preds = %18
  %28 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %21
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.37, ptr noundef %33, i32 noundef %19, i32 noundef %21) #10
  br label %120

35:                                               ; preds = %27
  %36 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %19, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 31
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.38, ptr noundef %41, i32 noundef %19, i32 noundef %37, i32 noundef 32) #10
  br label %120

43:                                               ; preds = %35
  %44 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %19, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = add i32 %45, -1
  %49 = load i32, ptr %14, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.39, ptr noundef %53, i32 noundef %19, i32 noundef %48, i32 noundef %49) #10
  br label %120

55:                                               ; preds = %47
  %56 = load ptr, ptr %15, align 4
  %57 = mul i32 %49, %21
  %58 = add i32 %57, %48
  %59 = getelementptr i32, ptr %56, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = shl nuw i32 1, %37
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = getelementptr %struct.at91_pin_group, ptr %6, i32 %2
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %4, align 4
  %68 = add i32 %21, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.40, ptr noundef %66, i32 noundef %19, i32 noundef %48, i32 noundef %68, i32 noundef %37) #10
  br label %120

69:                                               ; preds = %55, %43
  %70 = add nuw i32 %19, 1
  %71 = icmp eq i32 %70, %10
  br i1 %71, label %16, label %18

72:                                               ; preds = %117, %16
  %73 = phi i32 [ %118, %117 ], [ 0, %16 ]
  %74 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %117, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.at91_gpio_chip, ptr %77, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %117, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %73, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = shl nuw i32 1, %85
  %87 = getelementptr i8, ptr %81, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %86) #9, !srcloc !9
  %88 = getelementptr %struct.at91_pmx_pin, ptr %8, i32 %73, i32 2
  %89 = load i32, ptr %88, align 4
  switch i32 %89, label %115 [
    i32 0, label %90
    i32 1, label %92
    i32 2, label %96
    i32 3, label %100
    i32 4, label %106
  ]

90:                                               ; preds = %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %81, i32 %86) #9, !srcloc !9
  %91 = getelementptr i8, ptr %81, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %86) #9, !srcloc !9
  br label %112

92:                                               ; preds = %83
  %93 = load ptr, ptr %17, align 4
  %94 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  tail call void %95(ptr noundef nonnull %81, i32 noundef %86) #9
  br label %112

96:                                               ; preds = %83
  %97 = load ptr, ptr %17, align 4
  %98 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef nonnull %81, i32 noundef %86) #9
  br label %112

100:                                              ; preds = %83
  %101 = load ptr, ptr %17, align 4
  %102 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %120, label %105

105:                                              ; preds = %100
  tail call void %103(ptr noundef nonnull %81, i32 noundef %86) #9
  br label %112

106:                                              ; preds = %83
  %107 = load ptr, ptr %17, align 4
  %108 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  tail call void %109(ptr noundef nonnull %81, i32 noundef %86) #9
  br label %112

112:                                              ; preds = %111, %105, %96, %92, %90
  %113 = load i32, ptr %88, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112, %83
  %116 = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %86) #9, !srcloc !9
  br label %117

117:                                              ; preds = %115, %112, %79, %72
  %118 = add nuw i32 %73, 1
  %119 = icmp eq i32 %118, %10
  br i1 %119, label %120, label %72

120:                                              ; preds = %117, %106, %100, %64, %51, %39, %31, %23, %16, %3
  %121 = phi i32 [ -6, %31 ], [ -22, %64 ], [ -22, %51 ], [ -22, %39 ], [ -22, %23 ], [ 0, %16 ], [ 0, %3 ], [ -22, %100 ], [ -22, %106 ], [ 0, %117 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_gpio_request_enable(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.41) #10
  br label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.42) #10
  br label %22

14:                                               ; preds = %8
  %15 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %10) #9
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %10, i32 0, i32 19
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %2, %17
  %19 = shl nuw i32 1, %18
  %20 = getelementptr inbounds %struct.at91_gpio_chip, ptr %15, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #9, !srcloc !9
  br label %22

22:                                               ; preds = %14, %12, %6
  %23 = phi i32 [ 0, %14 ], [ -22, %12 ], [ -22, %6 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !10
  store i32 0, ptr %2, align 4
  %6 = lshr i32 %1, 5
  %7 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %111, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.at91_gpio_chip, ptr %8, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %111, label %14

14:                                               ; preds = %10
  %15 = and i32 %1, 31
  %16 = getelementptr i8, ptr %12, i32 88
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !8
  %18 = shl nuw i32 1, %15
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %2, align 4
  %23 = or i32 %22, 2
  store i32 %23, ptr %2, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = getelementptr i8, ptr %12, i32 104
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !8
  %27 = and i32 %26, %18
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, ptr %2, align 4
  %31 = or i32 %30, 1
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = tail call zeroext i1 %36(ptr noundef nonnull %12, i32 noundef %15) #9
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, ptr %2, align 4
  %42 = or i32 %41, 4
  store i32 %42, ptr %2, align 4
  br label %43

43:                                               ; preds = %40, %38, %32
  %44 = load ptr, ptr %33, align 4
  %45 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = call zeroext i1 %46(ptr noundef nonnull %12, i32 noundef %15, ptr noundef nonnull %4) #9
  br i1 %49, label %50, label %56

50:                                               ; preds = %48
  %51 = load i32, ptr %4, align 4
  %52 = shl i32 %51, 17
  %53 = load i32, ptr %2, align 4
  %54 = or i32 %52, %53
  %55 = or i32 %54, 65536
  store i32 %55, ptr %2, align 4
  br label %56

56:                                               ; preds = %50, %48, %43
  %57 = load ptr, ptr %33, align 4
  %58 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %57, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = call zeroext i1 %59(ptr noundef nonnull %12, i32 noundef %15) #9
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i32, ptr %2, align 4
  %65 = or i32 %64, 8
  store i32 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %63, %61, %56
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %67, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = call zeroext i1 %69(ptr noundef nonnull %12, i32 noundef %15) #9
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load i32, ptr %2, align 4
  %75 = or i32 %74, 16
  store i32 %75, ptr %2, align 4
  br label %76

76:                                               ; preds = %73, %71, %66
  %77 = load ptr, ptr %33, align 4
  %78 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %77, i32 0, i32 13
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = call i32 %79(ptr noundef nonnull %12, i32 noundef %15) #9
  %83 = shl i32 %82, 5
  %84 = load i32, ptr %2, align 4
  %85 = or i32 %84, %83
  store i32 %85, ptr %2, align 4
  %86 = load ptr, ptr %33, align 4
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi ptr [ %86, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %88, i32 0, i32 15
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = call i32 %90(ptr noundef nonnull %12, i32 noundef %15) #9
  %94 = shl i32 %93, 9
  %95 = load i32, ptr %2, align 4
  %96 = or i32 %95, %94
  store i32 %96, ptr %2, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = getelementptr i8, ptr %12, i32 56
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !8
  %100 = getelementptr i8, ptr %12, i32 24
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #9, !srcloc !8
  %102 = and i32 %101, %18
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = lshr i32 %99, %15
  %106 = shl i32 %105, 8
  %107 = and i32 %106, 256
  %108 = load i32, ptr %2, align 4
  %109 = or i32 %107, %108
  %110 = or i32 %109, 128
  store i32 %110, ptr %2, align 4
  br label %111

111:                                              ; preds = %104, %97, %10, %3
  %112 = phi i32 [ -22, %10 ], [ 0, %104 ], [ 0, %97 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %104, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %1, 5
  %11 = getelementptr [5 x ptr], ptr @gpio_chips, i32 0, i32 %10
  %12 = getelementptr inbounds %struct.at91_pinctrl, ptr %5, i32 0, i32 9
  br label %13

13:                                               ; preds = %101, %9
  %14 = phi i32 [ 0, %9 ], [ %102, %101 ]
  %15 = getelementptr i32, ptr %2, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %104, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.at91_gpio_chip, ptr %17, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %19
  %24 = and i32 %16, 8
  %25 = and i32 %16, 9
  %26 = icmp eq i32 %25, 9
  br i1 %26, label %104, label %27

27:                                               ; preds = %23
  %28 = and i32 %16, 1
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %16, 128
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %16, 256
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 52, i32 48
  %35 = getelementptr i8, ptr %21, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %7) #9, !srcloc !9
  %36 = select i1 %31, i32 20, i32 16
  %37 = getelementptr i8, ptr %21, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %7) #9, !srcloc !9
  br i1 %29, label %40, label %38

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %21, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %7) #9, !srcloc !9
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i32 [ 100, %38 ], [ 96, %27 ]
  %42 = getelementptr i8, ptr %21, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %7) #9, !srcloc !9
  %43 = and i32 %16, 2
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 84, i32 80
  %46 = getelementptr i8, ptr %21, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %7) #9, !srcloc !9
  %47 = load ptr, ptr %12, align 4
  %48 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = and i32 %16, 4
  %53 = icmp ne i32 %52, 0
  tail call void %49(ptr noundef nonnull %21, i32 noundef %7, i1 noundef zeroext %53) #9
  %54 = load ptr, ptr %12, align 4
  br label %55

55:                                               ; preds = %51, %40
  %56 = phi ptr [ %54, %51 ], [ %47, %40 ]
  %57 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = and i32 %16, 65536
  %62 = icmp ne i32 %61, 0
  %63 = lshr i32 %16, 17
  %64 = and i32 %63, 16383
  tail call void %58(ptr noundef nonnull %21, i32 noundef %7, i1 noundef zeroext %62, i32 noundef %64) #9
  %65 = load ptr, ptr %12, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = phi ptr [ %65, %60 ], [ %56, %55 ]
  %68 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %67, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = icmp ne i32 %24, 0
  tail call void %69(ptr noundef nonnull %21, i32 noundef %7, i1 noundef zeroext %72) #9
  %73 = load ptr, ptr %12, align 4
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi ptr [ %73, %71 ], [ %67, %66 ]
  %76 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %75, i32 0, i32 12
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = and i32 %16, 16
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  tail call void %77(ptr noundef nonnull %21, i32 noundef %7) #9
  %83 = load ptr, ptr %12, align 4
  br label %84

84:                                               ; preds = %82, %74
  %85 = phi ptr [ %83, %82 ], [ %75, %74 ]
  %86 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %85, i32 0, i32 14
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = lshr i32 %16, 5
  %91 = and i32 %90, 3
  tail call void %87(ptr noundef nonnull %21, i32 noundef %6, i32 noundef %91) #9
  %92 = load ptr, ptr %12, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi ptr [ %92, %89 ], [ %85, %84 ]
  %95 = getelementptr inbounds %struct.at91_pinctrl_mux_ops, ptr %94, i32 0, i32 16
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = lshr i32 %16, 9
  %100 = and i32 %99, 1
  tail call void %96(ptr noundef nonnull %21, i32 noundef %6, i32 noundef %100) #9
  br label %101

101:                                              ; preds = %98, %93
  %102 = add nuw i32 %14, 1
  %103 = icmp eq i32 %102, %3
  br i1 %103, label %104, label %13

104:                                              ; preds = %101, %23, %19, %13, %4
  %105 = phi i32 [ 0, %4 ], [ -22, %13 ], [ 0, %101 ], [ -22, %23 ], [ -22, %19 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_pinconf_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call i32 @at91_pinconf_get(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4)
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = and i32 %6, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %16

12:                                               ; preds = %3
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.44) #9
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 2, %15 ], [ 1, %9 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.45) #9
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %26

20:                                               ; preds = %9
  %21 = and i32 %6, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %28

23:                                               ; preds = %12
  %24 = and i32 %6, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23, %16
  %27 = phi i32 [ 1, %23 ], [ %17, %16 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi i32 [ %27, %26 ], [ 0, %20 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.46) #9
  %30 = add nuw nsw i32 %29, 1
  br label %31

31:                                               ; preds = %28, %16
  %32 = phi i32 [ %30, %28 ], [ %17, %16 ]
  %33 = and i32 %6, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %41

35:                                               ; preds = %20
  %36 = and i32 %6, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %43

38:                                               ; preds = %23
  %39 = and i32 %6, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38, %31
  %42 = phi i32 [ 1, %38 ], [ %32, %31 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ 0, %35 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.47) #9
  %45 = add nuw nsw i32 %44, 1
  br label %46

46:                                               ; preds = %43, %31
  %47 = phi i32 [ %45, %43 ], [ %32, %31 ]
  %48 = and i32 %6, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %56

50:                                               ; preds = %35
  %51 = and i32 %6, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %58

53:                                               ; preds = %38
  %54 = and i32 %6, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ 1, %53 ], [ %47, %46 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %57, %56 ], [ 0, %50 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.48) #9
  %60 = add nuw nsw i32 %59, 1
  br label %61

61:                                               ; preds = %58, %50, %46
  %62 = phi i32 [ %60, %58 ], [ %47, %46 ], [ 0, %50 ]
  %63 = and i32 %6, 96
  switch i32 %63, label %83 [
    i32 32, label %66
    i32 64, label %68
    i32 96, label %72
  ]

64:                                               ; preds = %53
  %65 = and i32 %6, 96
  switch i32 %65, label %87 [
    i32 32, label %76
    i32 64, label %70
    i32 96, label %74
  ]

66:                                               ; preds = %61
  %67 = icmp eq i32 %62, 0
  br i1 %67, label %79, label %76

68:                                               ; preds = %61
  %69 = icmp eq i32 %62, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %62, %68 ], [ 1, %64 ]
  br label %76

72:                                               ; preds = %61
  %73 = icmp eq i32 %62, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %72, %64
  %75 = phi i32 [ %62, %72 ], [ 1, %64 ]
  br label %76

76:                                               ; preds = %74, %70, %66, %64
  %77 = phi ptr [ @.str.51, %74 ], [ @.str.50, %70 ], [ @.str.49, %64 ], [ @.str.49, %66 ]
  %78 = phi i32 [ %75, %74 ], [ %71, %70 ], [ 1, %64 ], [ %62, %66 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %79

79:                                               ; preds = %76, %72, %68, %66
  %80 = phi ptr [ @.str.49, %66 ], [ @.str.50, %68 ], [ @.str.51, %72 ], [ %77, %76 ]
  %81 = phi i32 [ 0, %66 ], [ 0, %68 ], [ 0, %72 ], [ %78, %76 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull %80) #9
  %82 = add nuw nsw i32 %81, 1
  br label %83

83:                                               ; preds = %79, %61
  %84 = phi i32 [ %62, %61 ], [ %82, %79 ]
  %85 = and i32 %6, 512
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %97, label %90

87:                                               ; preds = %64
  %88 = and i32 %6, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %92

90:                                               ; preds = %83
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %90, %87
  %93 = phi i32 [ %84, %90 ], [ 1, %87 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %93, %92 ], [ 0, %90 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.52) #9
  %96 = add nuw nsw i32 %95, 1
  br label %97

97:                                               ; preds = %94, %83
  %98 = phi i32 [ %96, %94 ], [ %84, %83 ]
  %99 = and i32 %6, 65536
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %104

101:                                              ; preds = %87
  %102 = and i32 %6, 65536
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %106

104:                                              ; preds = %97
  %105 = icmp eq i32 %98, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %104, %101
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.43) #9
  br label %107

107:                                              ; preds = %106, %104
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.53) #9
  %108 = lshr i32 %6, 17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.54, i32 noundef %108) #9
  br label %109

109:                                              ; preds = %107, %101, %97
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @at91_pinconf_group_dbg_show(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #7 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_mux_sama5d3_get_drivestrength(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 15
  %4 = select i1 %3, i32 284, i32 280
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = shl i32 %1, 1
  %8 = add i32 %7, -32
  %9 = select i1 %3, i32 %8, i32 %7
  %10 = lshr i32 %6, %9
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 32, i32 %11
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_mux_sama5d3_set_drivestrength(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %1, 15
  %7 = select i1 %6, i32 284, i32 280
  %8 = getelementptr i8, ptr %0, i32 %7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = shl i32 %1, 1
  %11 = add i32 %10, -32
  %12 = select i1 %6, i32 %11, i32 %10
  %13 = shl i32 3, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = shl i32 %2, %12
  %17 = or i32 %15, %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %17) #9, !srcloc !9
  br label %18

18:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i64 3867430}
!9 = !{i64 3867012}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2152631222, i64 2152631718, i64 2152631259, i64 2152631315, i64 2152631349, i64 2152631373, i64 2152631414, i64 2152631435, i64 2152631463, i64 2152631497}
