; ModuleID = '/llk/IR/drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm8xxx_gpio = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, i32 }
%struct.pm8xxx_pin_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_ssbi_gpio__210_855_pm8xxx_gpio_driver_init6 = internal global ptr @pm8xxx_gpio_driver_init, section ".initcall6.init", align 4
@pm8xxx_gpio_driver = internal global %struct.platform_driver { ptr @pm8xxx_gpio_probe, ptr @pm8xxx_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pm8xxx_gpio_driver_exit = internal global ptr @pm8xxx_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [74 x i8] c"pinctrl_ssbi_gpio.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [58 x i8] c"pinctrl_ssbi_gpio.description=Qualcomm PM8xxx GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [62 x i8] c"pinctrl_ssbi_gpio.file=drivers/pinctrl/qcom/pinctrl-ssbi-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [33 x i8] c"pinctrl_ssbi_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"qcom-ssbi-gpio\00", align 1
@pm8xxx_gpio_of_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8038-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 44 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8917-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 38 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 44 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"parent regmap unavailable\0A\00", align 1
@pm8xxx_pinctrl_desc = internal unnamed_addr constant %struct.pinctrl_desc { ptr @.str.6, ptr null, i32 0, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@pm8xxx_groups = internal constant [44 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], align 4
@pm8xxx_gpio_bindings = internal constant [2 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.65, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.66, i32 129, i32 0 }], align 4
@pm8xxx_conf_items = internal constant [2 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.67, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.68, ptr null, i8 1 }], align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"couldn't register pm8xxx gpio driver\0A\00", align 1
@pm8xxx_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_gpio_direction_input, ptr @pm8xxx_gpio_direction_output, ptr @pm8xxx_gpio_get, ptr null, ptr @pm8xxx_gpio_set, ptr null, ptr null, ptr null, ptr @pm8xxx_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pm8xxx_gpio_of_xlate }, align 4
@pm8xxx_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.94, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_ack_parent, ptr @irq_chip_unmask_parent, ptr null, ptr null, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"failed register gpiochip\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pm8xxx_gpio\00", align 1
@pm8xxx_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pm8xxx_get_groups_count, ptr @pm8xxx_get_group_name, ptr @pm8xxx_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@pm8xxx_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pm8xxx_get_functions_count, ptr @pm8xxx_get_function_name, ptr @pm8xxx_get_function_groups, ptr @pm8xxx_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@pm8xxx_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pm8xxx_pin_config_get, ptr @pm8xxx_pin_config_set, ptr null, ptr null, ptr null }, align 4
@pm8xxx_gpio_functions = internal unnamed_addr constant [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"paired\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"func1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"func2\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dtest1\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"dtest2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"dtest3\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"dtest4\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"failed to write register\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"invalid pull-up strength\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"invalid drive strength\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"unsupported config parameter: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"failed to select bank %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"failed to read register %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio16\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gpio17\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gpio18\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gpio19\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gpio20\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"gpio21\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"gpio22\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"gpio23\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"gpio24\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"gpio25\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"gpio26\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"gpio27\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"gpio28\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"gpio29\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"gpio30\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"gpio31\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"gpio32\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"gpio33\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"gpio34\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"gpio35\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"gpio36\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"gpio37\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"gpio38\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"gpio39\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"gpio40\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"gpio41\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"gpio42\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"gpio43\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"gpio44\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"qcom,drive-strength\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"qcom,pull-up-strength\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"drive-strength\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"pull up strength\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pm8xxx_gpio_dbg_show_one.modes = internal unnamed_addr constant [4 x ptr] [ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], align 4
@.str.70 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@pm8xxx_gpio_dbg_show_one.biases = internal unnamed_addr constant [6 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 4
@.str.74 = private unnamed_addr constant [13 x i8] c"pull-up 30uA\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"pull-up 1.5uA\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"pull-up 31.5uA\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"pull-up 1.5uA + 30uA boost\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"pull-down 10uA\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"no pull\00", align 1
@pm8xxx_gpio_dbg_show_one.buffer_types = internal unnamed_addr constant [2 x ptr] [ptr @.str.80, ptr @.str.81], align 4
@.str.80 = private unnamed_addr constant [10 x i8] c"push-pull\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@pm8xxx_gpio_dbg_show_one.strengths = internal unnamed_addr constant [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], align 4
@.str.82 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c" gpio%-2d:\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c" ---\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c" %-4s\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c" VIN%d\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c" %-27s\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c" %-10s\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c" inverted\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"ssbi-gpio\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_pm8xxx_gpio_driver_exit, ptr @__initcall__kmod_pinctrl_ssbi_gpio__210_855_pm8xxx_gpio_driver_init6, ptr @pm8xxx_gpio_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_gpio_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_gpio_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 364, i32 noundef 3520) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %288, label %13

13:                                               ; preds = %1
  store ptr %10, ptr %11, align 4
  %14 = tail call ptr @device_get_match_data(ptr noundef %10) #13
  %15 = ptrtoint ptr %14 to i32
  %16 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @dev_get_regmap(ptr noundef %18, ptr noundef null) #13
  %20 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1) #14
  br label %288

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %24, ptr noundef nonnull align 4 dereferenceable(44) @pm8xxx_pinctrl_desc, i32 44, i1 false)
  %25 = load i32, ptr %16, align 4
  %26 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4, i32 2
  store i32 %25, ptr %26, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 12) #13
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %288, label %29, !prof !8

29:                                               ; preds = %23
  %30 = extractvalue { i32, i1 } %27, 0
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %30, i32 noundef 3520) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %288, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %26, align 4
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 16) #13
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %288, label %37, !prof !8

37:                                               ; preds = %33
  %38 = extractvalue { i32, i1 } %35, 0
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %38, i32 noundef 3520) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %288, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %26, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %204, label %44

44:                                               ; preds = %190, %41
  %45 = phi i32 [ %201, %190 ], [ 0, %41 ]
  %46 = add i32 %45, 336
  %47 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45
  store i32 %46, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4
  %48 = load ptr, ptr %20, align 4
  %49 = call i32 @regmap_write(ptr noundef %48, i32 noundef %46, i32 noundef 0) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.19, i32 noundef 0) #14
  br label %62

53:                                               ; preds = %44
  %54 = load ptr, ptr %20, align 4
  %55 = load i32, ptr %47, align 4
  %56 = call i32 @regmap_read(ptr noundef %54, i32 noundef %55, ptr noundef nonnull %9) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.20, i32 noundef 0) #14
  br label %62

60:                                               ; preds = %53
  %61 = load i32, ptr %9, align 4
  br label %62

62:                                               ; preds = %60, %58, %51
  %63 = phi i32 [ %49, %51 ], [ %56, %58 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %288, label %65

65:                                               ; preds = %62
  %66 = trunc i32 %63 to i8
  %67 = lshr i8 %66, 1
  %68 = and i8 %67, 7
  %69 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 1
  store i8 %68, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 16, ptr %8, align 4
  %70 = load ptr, ptr %20, align 4
  %71 = load i32, ptr %47, align 4
  %72 = call i32 @regmap_write(ptr noundef %70, i32 noundef %71, i32 noundef 16) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %65
  %75 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.19, i32 noundef 1) #14
  br label %85

76:                                               ; preds = %65
  %77 = load ptr, ptr %20, align 4
  %78 = load i32, ptr %47, align 4
  %79 = call i32 @regmap_read(ptr noundef %77, i32 noundef %78, ptr noundef nonnull %8) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.20, i32 noundef 1) #14
  br label %85

83:                                               ; preds = %76
  %84 = load i32, ptr %8, align 4
  br label %85

85:                                               ; preds = %83, %81, %74
  %86 = phi i32 [ %72, %74 ], [ %79, %81 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %288, label %88

88:                                               ; preds = %85
  %89 = trunc i32 %86 to i8
  %90 = lshr i8 %89, 2
  %91 = and i8 %90, 3
  %92 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 2
  store i8 %91, ptr %92, align 1
  %93 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 3
  %94 = lshr i8 %89, 1
  %95 = and i8 %94, 1
  store i8 %95, ptr %93, align 2
  %96 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 4
  %97 = and i8 %89, 1
  store i8 %97, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 32, ptr %7, align 4
  %98 = load ptr, ptr %20, align 4
  %99 = load i32, ptr %47, align 4
  %100 = call i32 @regmap_write(ptr noundef %98, i32 noundef %99, i32 noundef 32) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %88
  %103 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.19, i32 noundef 2) #14
  br label %113

104:                                              ; preds = %88
  %105 = load ptr, ptr %20, align 4
  %106 = load i32, ptr %47, align 4
  %107 = call i32 @regmap_read(ptr noundef %105, i32 noundef %106, ptr noundef nonnull %7) #13
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.20, i32 noundef 2) #14
  br label %113

111:                                              ; preds = %104
  %112 = load i32, ptr %7, align 4
  br label %113

113:                                              ; preds = %111, %109, %102
  %114 = phi i32 [ %100, %102 ], [ %107, %109 ], [ %112, %111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %288, label %116

116:                                              ; preds = %113
  %117 = trunc i32 %114 to i8
  %118 = lshr i8 %117, 1
  %119 = and i8 %118, 7
  %120 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 5
  store i8 %119, ptr %120, align 4
  %121 = icmp ult i8 %119, 4
  %122 = select i1 %121, i8 %119, i8 0
  %123 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 6
  store i8 %122, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 48, ptr %6, align 4
  %124 = load ptr, ptr %20, align 4
  %125 = load i32, ptr %47, align 4
  %126 = call i32 @regmap_write(ptr noundef %124, i32 noundef %125, i32 noundef 48) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %116
  %129 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.19, i32 noundef 3) #14
  br label %139

130:                                              ; preds = %116
  %131 = load ptr, ptr %20, align 4
  %132 = load i32, ptr %47, align 4
  %133 = call i32 @regmap_read(ptr noundef %131, i32 noundef %132, ptr noundef nonnull %6) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.20, i32 noundef 3) #14
  br label %139

137:                                              ; preds = %130
  %138 = load i32, ptr %6, align 4
  br label %139

139:                                              ; preds = %137, %135, %128
  %140 = phi i32 [ %126, %128 ], [ %133, %135 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %288, label %142

142:                                              ; preds = %139
  %143 = trunc i32 %140 to i8
  %144 = lshr i8 %143, 2
  %145 = and i8 %144, 3
  %146 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 7
  store i8 %145, ptr %146, align 2
  %147 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 8
  %148 = and i8 %143, 1
  store i8 %148, ptr %147, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 64, ptr %5, align 4
  %149 = load ptr, ptr %20, align 4
  %150 = load i32, ptr %47, align 4
  %151 = call i32 @regmap_write(ptr noundef %149, i32 noundef %150, i32 noundef 64) #13
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %142
  %154 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.19, i32 noundef 4) #14
  br label %164

155:                                              ; preds = %142
  %156 = load ptr, ptr %20, align 4
  %157 = load i32, ptr %47, align 4
  %158 = call i32 @regmap_read(ptr noundef %156, i32 noundef %157, ptr noundef nonnull %5) #13
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  %161 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.20, i32 noundef 4) #14
  br label %164

162:                                              ; preds = %155
  %163 = load i32, ptr %5, align 4
  br label %164

164:                                              ; preds = %162, %160, %153
  %165 = phi i32 [ %151, %153 ], [ %158, %160 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %288, label %167

167:                                              ; preds = %164
  %168 = trunc i32 %165 to i8
  %169 = lshr i8 %168, 1
  %170 = and i8 %169, 7
  %171 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 9
  store i8 %170, ptr %171, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 80, ptr %4, align 4
  %172 = load ptr, ptr %20, align 4
  %173 = load i32, ptr %47, align 4
  %174 = call i32 @regmap_write(ptr noundef %172, i32 noundef %173, i32 noundef 80) #13
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %167
  %177 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.19, i32 noundef 5) #14
  br label %187

178:                                              ; preds = %167
  %179 = load ptr, ptr %20, align 4
  %180 = load i32, ptr %47, align 4
  %181 = call i32 @regmap_read(ptr noundef %179, i32 noundef %180, ptr noundef nonnull %4) #13
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.20, i32 noundef 5) #14
  br label %187

185:                                              ; preds = %178
  %186 = load i32, ptr %4, align 4
  br label %187

187:                                              ; preds = %185, %183, %176
  %188 = phi i32 [ %174, %176 ], [ %181, %183 ], [ %186, %185 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %288, label %190

190:                                              ; preds = %187
  %191 = getelementptr %struct.pm8xxx_pin_data, ptr %39, i32 %45, i32 10
  %192 = trunc i32 %188 to i8
  %193 = lshr i8 %192, 3
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, ptr %191, align 1
  %196 = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %45
  store i32 %45, ptr %196, align 4
  %197 = getelementptr [44 x ptr], ptr @pm8xxx_groups, i32 0, i32 %45
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %45, i32 1
  store ptr %198, ptr %199, align 4
  %200 = getelementptr %struct.pinctrl_pin_desc, ptr %31, i32 %45, i32 2
  store ptr %47, ptr %200, align 4
  %201 = add nuw i32 %45, 1
  %202 = load i32, ptr %26, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %44, label %204

204:                                              ; preds = %190, %41
  %205 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4, i32 1
  store ptr %31, ptr %205, align 4
  %206 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4, i32 7
  store i32 2, ptr %206, align 4
  %207 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4, i32 8
  store ptr @pm8xxx_gpio_bindings, ptr %207, align 4
  %208 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 4, i32 9
  store ptr @pm8xxx_conf_items, ptr %208, align 4
  %209 = call ptr @devm_pinctrl_register(ptr noundef %10, ptr noundef %24, ptr noundef nonnull %11) #13
  %210 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 2
  store ptr %209, ptr %210, align 4
  %211 = icmp ugt ptr %209, inttoptr (i32 -4096 to ptr)
  br i1 %211, label %212, label %215

212:                                              ; preds = %204
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.2) #14
  %213 = load ptr, ptr %210, align 4
  %214 = ptrtoint ptr %213 to i32
  br label %288

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %216, ptr noundef nonnull align 4 dereferenceable(304) @pm8xxx_gpio_template, i32 304, i1 false)
  %217 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 19
  store i32 -1, ptr %217, align 4
  %218 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 2
  store ptr %10, ptr %218, align 4
  %219 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 40
  store i32 2, ptr %219, align 4
  %220 = load ptr, ptr %11, align 4
  %221 = getelementptr inbounds %struct.device, ptr %220, i32 0, i32 3
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %215
  %225 = load ptr, ptr %220, align 4
  br label %226

226:                                              ; preds = %224, %215
  %227 = phi ptr [ %225, %224 ], [ %222, %215 ]
  store ptr %227, ptr %216, align 4
  %228 = load i32, ptr %16, align 4
  %229 = trunc i32 %228 to i16
  %230 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 20
  store i16 %229, ptr %230, align 4
  %231 = getelementptr inbounds %struct.device, ptr %220, i32 0, i32 25
  %232 = load ptr, ptr %231, align 8
  %233 = call ptr @of_irq_find_parent(ptr noundef %232) #13
  %234 = icmp eq ptr %233, null
  br i1 %234, label %288, label %235

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.device_node, ptr %233, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #13
  %237 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %237, i8 0, i64 68, i1 false) #13
  store ptr %236, ptr %3, align 4
  %238 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  %239 = icmp eq ptr %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %235
  call void @of_node_put(ptr noundef nonnull %233) #13
  br label %245

241:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  %242 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %242, i8 0, i64 68, i1 false) #13
  store ptr %236, ptr %2, align 4
  %243 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  call void @of_node_put(ptr noundef nonnull %233) #13
  %244 = icmp eq ptr %243, null
  br i1 %244, label %288, label %245

245:                                              ; preds = %241, %240
  %246 = phi ptr [ %238, %240 ], [ %243, %241 ]
  %247 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37
  store ptr @pm8xxx_irq_chip, ptr %247, align 4
  %248 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %248, align 4
  %249 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_level_irq, ptr %249, align 4
  %250 = load ptr, ptr %11, align 4
  %251 = getelementptr inbounds %struct.device, ptr %250, i32 0, i32 25
  %252 = load ptr, ptr %251, align 8
  %253 = icmp eq ptr %252, null
  %254 = getelementptr inbounds %struct.device_node, ptr %252, i32 0, i32 3
  %255 = select i1 %253, ptr null, ptr %254
  %256 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 3
  store ptr %255, ptr %256, align 4
  %257 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 4
  store ptr %246, ptr %257, align 4
  %258 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 5
  store ptr @pm8xxx_child_to_parent_hwirq, ptr %258, align 4
  %259 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 6
  store ptr @gpiochip_populate_parent_fwspec_twocell, ptr %259, align 4
  %260 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 7
  store ptr @pm8xxx_child_offset_to_irq, ptr %260, align 4
  %261 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %11, i32 0, i32 3, i32 37, i32 8, i32 9
  store ptr @pm8xxx_domain_translate, ptr %261, align 4
  %262 = call i32 @gpiochip_add_data_with_key(ptr noundef %216, ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #13
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %245
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.3) #14
  br label %288

265:                                              ; preds = %245
  %266 = load ptr, ptr %11, align 4
  %267 = getelementptr inbounds %struct.device, ptr %266, i32 0, i32 25
  %268 = load ptr, ptr %267, align 8
  %269 = call ptr @of_find_property(ptr noundef %268, ptr noundef nonnull @.str.4, ptr noundef null) #13
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %286

271:                                              ; preds = %265
  %272 = load ptr, ptr %11, align 4
  %273 = getelementptr inbounds %struct.device, ptr %272, i32 0, i32 3
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load ptr, ptr %272, align 4
  br label %278

278:                                              ; preds = %276, %271
  %279 = phi ptr [ %277, %276 ], [ %274, %271 ]
  %280 = load i16, ptr %230, align 4
  %281 = zext i16 %280 to i32
  %282 = call i32 @gpiochip_add_pin_range(ptr noundef %216, ptr noundef %279, i32 noundef 0, i32 noundef 0, i32 noundef %281) #13
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %278
  %285 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %285, ptr noundef nonnull @.str.5) #14
  call void @gpiochip_remove(ptr noundef %216) #13
  br label %288

286:                                              ; preds = %278, %265
  %287 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %287, align 8
  br label %288

288:                                              ; preds = %286, %284, %264, %241, %226, %212, %187, %164, %139, %113, %85, %62, %37, %33, %29, %23, %22, %1
  %289 = phi i32 [ %214, %212 ], [ %262, %264 ], [ 0, %286 ], [ %282, %284 ], [ -6, %22 ], [ -12, %1 ], [ -12, %29 ], [ -12, %37 ], [ -6, %226 ], [ -6, %241 ], [ -12, %23 ], [ -12, %33 ], [ %63, %62 ], [ %86, %85 ], [ %114, %113 ], [ %140, %139 ], [ %165, %164 ], [ %188, %187 ]
  ret i32 %289
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8xxx_child_to_parent_hwirq(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #6 {
  %6 = add i32 %1, 192
  store i32 %6, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_twocell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_child_offset_to_irq(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 20
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ugt i32 %12, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = add i32 %12, -1
  store i32 %20, ptr %2, align 4
  %21 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %23

23:                                               ; preds = %19, %14, %10, %4
  %24 = phi i32 [ 0, %19 ], [ -22, %14 ], [ -22, %10 ], [ -22, %4 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [44 x ptr], ptr @pm8xxx_groups, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %1
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #13
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_get_functions_count(ptr nocapture noundef readnone %0) #7 {
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [8 x ptr], ptr @pm8xxx_gpio_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  store ptr @pm8xxx_groups, ptr %2, align 4
  %6 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 9
  store i8 %9, ptr %10, align 4
  %11 = shl i32 %1, 1
  %12 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %8, align 4
  %15 = and i32 %11, 62
  %16 = or i32 %15, 192
  %17 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %14, i32 noundef %16) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.15) #14
  br label %21

21:                                               ; preds = %19, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 255
  %11 = trunc i32 %9 to i8
  switch i8 %11, label %62 [
    i8 1, label %12
    i8 3, label %16
    i8 5, label %20
    i8 -127, label %24
    i8 2, label %27
    i8 12, label %31
    i8 17, label %35
    i8 21, label %43
    i8 -128, label %46
    i8 8, label %49
    i8 6, label %53
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %57, label %62

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 4
  br i1 %19, label %57, label %62

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = icmp ugt i8 %22, 3
  br i1 %23, label %62, label %57

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 6
  %26 = load i8, ptr %25, align 1
  br label %57

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 8
  %29 = load i8, ptr %28, align 1, !range !9
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %62, label %57

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %57, label %62

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 4
  %42 = load i8, ptr %41, align 1, !range !9
  br label %57

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 1
  %45 = load i8, ptr %44, align 4
  br label %57

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 7
  %48 = load i8, ptr %47, align 2
  br label %57

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 3
  %51 = load i8, ptr %50, align 2, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %62

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 3
  %55 = load i8, ptr %54, align 2, !range !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %49, %46, %43, %40, %35, %31, %27, %24, %20, %16, %12
  %58 = phi i8 [ %48, %46 ], [ %45, %43 ], [ %42, %40 ], [ %26, %24 ], [ 1, %12 ], [ 1, %16 ], [ 1, %20 ], [ 1, %27 ], [ 1, %31 ], [ 0, %35 ], [ 1, %49 ], [ 1, %53 ]
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 8
  %61 = or i32 %60, %10
  store i32 %61, ptr %2, align 4
  br label %62

62:                                               ; preds = %57, %53, %49, %31, %27, %20, %16, %12, %3
  %63 = phi i32 [ 0, %57 ], [ -22, %12 ], [ -22, %16 ], [ -22, %20 ], [ -22, %27 ], [ -22, %31 ], [ -22, %49 ], [ -22, %53 ], [ -22, %3 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %1, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %168, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 3
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 7
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 2
  %16 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 4
  %17 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 8
  %18 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 6
  %19 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 5
  br label %20

20:                                               ; preds = %57, %11
  %21 = phi i8 [ 0, %11 ], [ %59, %57 ]
  %22 = phi i32 [ 0, %11 ], [ %60, %57 ]
  %23 = getelementptr i32, ptr %2, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %24 to i8
  switch i8 %26, label %54 [
    i8 1, label %29
    i8 3, label %30
    i8 -127, label %31
    i8 5, label %27
    i8 2, label %39
    i8 12, label %40
    i8 17, label %41
    i8 21, label %44
    i8 -128, label %46
    i8 8, label %52
    i8 6, label %53
  ]

27:                                               ; preds = %20
  %28 = load i8, ptr %18, align 1
  br label %37

29:                                               ; preds = %20
  store i8 5, ptr %19, align 4
  store i8 0, ptr %17, align 1
  br label %57

30:                                               ; preds = %20
  store i8 4, ptr %19, align 4
  store i8 0, ptr %17, align 1
  br label %57

31:                                               ; preds = %20
  %32 = icmp ugt i32 %24, 1023
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.16) #14
  br label %168

35:                                               ; preds = %31
  %36 = trunc i32 %25 to i8
  store i8 %36, ptr %18, align 1
  br label %37

37:                                               ; preds = %35, %27
  %38 = phi i8 [ %28, %27 ], [ %36, %35 ]
  store i8 %38, ptr %19, align 4
  store i8 0, ptr %17, align 1
  br label %57

39:                                               ; preds = %20
  store i8 1, ptr %17, align 1
  br label %57

40:                                               ; preds = %20
  store i8 0, ptr %15, align 1
  br label %57

41:                                               ; preds = %20
  store i8 2, ptr %15, align 1
  %42 = icmp ugt i32 %24, 255
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %16, align 1
  br label %57

44:                                               ; preds = %20
  %45 = trunc i32 %25 to i8
  store i8 %45, ptr %14, align 4
  br label %57

46:                                               ; preds = %20
  %47 = icmp ugt i32 %24, 1023
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17) #14
  br label %168

50:                                               ; preds = %46
  %51 = trunc i32 %25 to i8
  store i8 %51, ptr %13, align 2
  br label %57

52:                                               ; preds = %20
  store i8 0, ptr %12, align 2
  br label %57

53:                                               ; preds = %20
  store i8 1, ptr %12, align 2
  br label %57

54:                                               ; preds = %20
  %55 = and i32 %24, 255
  %56 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.18, i32 noundef %55) #14
  br label %168

57:                                               ; preds = %53, %52, %50, %44, %41, %40, %39, %37, %30, %29
  %58 = phi i8 [ 12, %29 ], [ 12, %30 ], [ 12, %37 ], [ 8, %39 ], [ 3, %40 ], [ 3, %41 ], [ 1, %44 ], [ 8, %50 ], [ 2, %52 ], [ 2, %53 ]
  %59 = or i8 %21, %58
  %60 = add nuw i32 %22, 1
  %61 = icmp eq i32 %60, %3
  br i1 %61, label %62, label %20

62:                                               ; preds = %57
  %63 = zext i8 %59 to i32
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 1
  %68 = load i8, ptr %67, align 4
  %69 = shl i8 %68, 1
  %70 = or i8 %69, -127
  %71 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %9, align 4
  %74 = zext i8 %70 to i32
  %75 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef %73, i32 noundef %74) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  %78 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.15) #14
  br label %79

79:                                               ; preds = %77, %66, %62
  %80 = and i32 %63, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = shl i8 %84, 2
  %86 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 3
  %87 = load i8, ptr %86, align 2, !range !9
  %88 = shl nuw nsw i8 %87, 1
  %89 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 4
  %90 = load i8, ptr %89, align 1, !range !9
  %91 = or i8 %85, %88
  %92 = or i8 %91, %90
  %93 = or i8 %92, -112
  %94 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr %9, align 4
  %97 = zext i8 %93 to i32
  %98 = tail call i32 @regmap_write(ptr noundef %95, i32 noundef %96, i32 noundef %97) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %82
  %101 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.15) #14
  br label %102

102:                                              ; preds = %100, %82, %79
  %103 = and i32 %63, 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 5
  %107 = load i8, ptr %106, align 4
  %108 = shl i8 %107, 1
  %109 = or i8 %108, -96
  %110 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %9, align 4
  %113 = zext i8 %109 to i32
  %114 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef %112, i32 noundef %113) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  %117 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.15) #14
  br label %118

118:                                              ; preds = %116, %105, %102
  %119 = and i32 %63, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %137, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 7
  %123 = load i8, ptr %122, align 2
  %124 = shl i8 %123, 2
  %125 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 8
  %126 = load i8, ptr %125, align 1, !range !9
  %127 = or i8 %126, %124
  %128 = or i8 %127, -80
  %129 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %9, align 4
  %132 = zext i8 %128 to i32
  %133 = tail call i32 @regmap_write(ptr noundef %130, i32 noundef %131, i32 noundef %132) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %121
  %136 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.15) #14
  br label %137

137:                                              ; preds = %135, %121, %118
  %138 = and i32 %63, 16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 9
  %142 = load i8, ptr %141, align 4
  %143 = shl i8 %142, 1
  %144 = or i8 %143, -64
  %145 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load i32, ptr %9, align 4
  %148 = zext i8 %144 to i32
  %149 = tail call i32 @regmap_write(ptr noundef %146, i32 noundef %147, i32 noundef %148) #13
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %140
  %152 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.15) #14
  br label %153

153:                                              ; preds = %151, %140, %137
  %154 = and i32 %63, 32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 10
  %158 = load i8, ptr %157, align 1, !range !9
  %159 = icmp eq i8 %158, 0
  %160 = select i1 %159, i32 216, i32 208
  %161 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %5, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = load i32, ptr %9, align 4
  %164 = tail call i32 @regmap_write(ptr noundef %162, i32 noundef %163, i32 noundef %160) #13
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %156
  %167 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.15) #14
  br label %168

168:                                              ; preds = %166, %156, %153, %54, %48, %33, %4
  %169 = phi i32 [ -22, %54 ], [ -22, %48 ], [ -22, %33 ], [ 0, %153 ], [ 0, %156 ], [ 0, %166 ], [ 0, %4 ]
  ret i32 %169
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %3, i32 0, i32 4, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %7, i32 0, i32 2
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %7, align 4
  %12 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %11, i32 noundef 144) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15) #14
  br label %16

16:                                               ; preds = %14, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  store i8 2, ptr %9, align 1
  %10 = icmp ne i32 %2, 0
  %11 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 4
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 1
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 3
  %14 = load i8, ptr %13, align 2, !range !9
  %15 = shl nuw nsw i8 %14, 1
  %16 = or i8 %15, %12
  %17 = or i8 %16, -104
  %18 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %8, align 4
  %21 = zext i8 %17 to i32
  %22 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %20, i32 noundef %21) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.15) #14
  br label %26

26:                                               ; preds = %24, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !10
  %9 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 4
  %14 = load i8, ptr %13, align 1, !range !9
  %15 = zext i8 %14 to i32
  br label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef %1) #13
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = call i32 @irq_get_irqchip_state(i32 noundef %19, i32 noundef 3, ptr noundef nonnull %3) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8, ptr %3, align 1, !range !9
  %26 = zext i8 %25 to i32
  br label %27

27:                                               ; preds = %24, %21, %16, %12
  %28 = phi i32 [ %15, %12 ], [ %22, %21 ], [ %26, %24 ], [ -22, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne i32 %2, 0
  %10 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 4
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 1
  %12 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = shl i8 %13, 2
  %15 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 3
  %16 = load i8, ptr %15, align 2, !range !9
  %17 = shl nuw nsw i8 %16, 1
  %18 = or i8 %14, %11
  %19 = or i8 %18, %17
  %20 = or i8 %19, -112
  %21 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %8, align 4
  %24 = zext i8 %20 to i32
  %25 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %23, i32 noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15) #14
  br label %29

29:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %59, label %6

6:                                                ; preds = %55, %2
  %7 = phi i32 [ %13, %55 ], [ 0, %2 ]
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.pm8xxx_gpio, ptr %8, i32 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %7, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add nuw nsw i32 %7, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.86, i32 noundef %13) #13
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 8
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr [4 x ptr], ptr @pm8xxx_gpio_dbg_show_one.modes, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 9
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = getelementptr [8 x ptr], ptr @pm8xxx_gpio_functions, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %30) #13
  %31 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 5
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = getelementptr [6 x ptr], ptr @pm8xxx_gpio_dbg_show_one.biases, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %35) #13
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 3
  %37 = load i8, ptr %36, align 2, !range !9
  %38 = zext i8 %37 to i32
  %39 = getelementptr [2 x ptr], ptr @pm8xxx_gpio_dbg_show_one.buffer_types, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %40) #13
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 4
  %42 = load i8, ptr %41, align 1, !range !9
  %43 = icmp eq i8 %42, 0
  %44 = select i1 %43, ptr @.str.85, ptr @.str.83
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.88, ptr noundef nonnull %44) #13
  %45 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 7
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr [4 x ptr], ptr @pm8xxx_gpio_dbg_show_one.strengths, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.89, ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 10
  %51 = load i8, ptr %50, align 1, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %17, %6
  %54 = phi ptr [ @.str.87, %6 ], [ @.str.93, %17 ]
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %54) #13
  br label %55

55:                                               ; preds = %53, %17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.69) #13
  %56 = load i16, ptr %3, align 4
  %57 = zext i16 %56 to i32
  %58 = icmp ult i32 %13, %57
  br i1 %58, label %6, label %59

59:                                               ; preds = %55, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_gpio_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #11 {
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 40
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %15, %12 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
