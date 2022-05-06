; ModuleID = '/llk/IR/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
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
%struct.pmic_mpp_state = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pmic_mpp_pad = type { i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_spmi_mpp__206_986_pmic_mpp_driver_init6 = internal global ptr @pmic_mpp_driver_init, section ".initcall6.init", align 4
@pmic_mpp_driver = internal global %struct.platform_driver { ptr @pmic_mpp_probe, ptr @pmic_mpp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pmic_mpp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pmic_mpp_driver_exit = internal global ptr @pmic_mpp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [60 x i8] c"pinctrl_spmi_mpp.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [71 x i8] c"pinctrl_spmi_mpp.description=Qualcomm SPMI PMIC MPP pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias209 = internal constant [46 x i8] c"pinctrl_spmi_mpp.alias=platform:qcom-spmi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [60 x i8] c"pinctrl_spmi_mpp.file=drivers/pinctrl/qcom/pinctrl-spmi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [32 x i8] c"pinctrl_spmi_mpp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"qcom-spmi-mpp\00", align 1
@pmic_mpp_of_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8019-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8841-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8950-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8950-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8994-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pma8084-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"missing base address\00", align 1
@pmic_mpp_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pmic_mpp_get_groups_count, ptr @pmic_mpp_get_group_name, ptr @pmic_mpp_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@pmic_mpp_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pmic_mpp_get_functions_count, ptr @pmic_mpp_get_function_name, ptr @pmic_mpp_get_function_groups, ptr @pmic_mpp_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@pmic_mpp_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pmic_mpp_config_get, ptr @pmic_mpp_config_set, ptr null, ptr @pmic_mpp_config_dbg_show, ptr null }, align 4
@pmic_mpp_bindings = internal constant [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.28, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.29, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.30, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.31, i32 131, i32 0 }], align 4
@pmic_conf_items = internal constant [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.32, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.33, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.34, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.35, ptr null, i8 0 }], align 4
@pmic_mpp_groups = internal constant [8 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@pmic_mpp_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @pmic_mpp_direction_input, ptr @pmic_mpp_direction_output, ptr @pmic_mpp_get, ptr null, ptr @pmic_mpp_set, ptr null, ptr null, ptr null, ptr @pmic_mpp_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pmic_mpp_of_xlate }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"spmi-mpp\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"can't add gpio chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@pmic_mpp_functions = internal unnamed_addr constant [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"write 0x%x failed\0A\00", align 1
@pmic_mpp_config_dbg_show.biases = internal unnamed_addr constant [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"0.6kOhm\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"10kOhm\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"30kOhm\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" mpp%-2d:\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" ---\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" %-4s\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" %-7s\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c" vin-%d\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" %-8s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c" dtest%d\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c" paired\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"read 0x%x failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"qcom,amux-route\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"qcom,analog-level\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"qcom,dtest\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"qcom,paired\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"analog mux\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"analog level\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"dtest\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"paired\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"mpp1\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"mpp2\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"mpp3\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"mpp4\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"mpp5\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"mpp6\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"mpp7\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"mpp8\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"unknown MPP type 0x%x at 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"unknown MPP direction\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias209, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_pmic_mpp_driver_exit, ptr @__initcall__kmod_pinctrl_spmi_mpp__206_986_pmic_mpp_driver_init6, ptr @pmic_mpp_driver_exit], section "llvm.metadata"
@switch.table.pmic_mpp_probe = private unnamed_addr constant [13 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8], align 4
@switch.table.pmic_mpp_probe.48 = private unnamed_addr constant [7 x i8] c"\01\00\01\01\01\00\00", align 1
@switch.table.pmic_mpp_probe.49 = private unnamed_addr constant [7 x i8] c"\00\01\01\01\00\01\01", align 1
@switch.table.pmic_mpp_probe.50 = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2], align 4
@switch.table.pmic_mpp_config_get = private unnamed_addr constant [3 x i32] [i32 600, i32 10000, i32 30000], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pmic_mpp_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic_mpp_driver, ptr noundef null) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pmic_mpp_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic_mpp_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #14
  store i32 0, ptr %13, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %13, i32 noundef 1, i32 noundef 0) #14
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #15
  br label %334

20:                                               ; preds = %1
  %21 = call ptr @device_get_match_data(ptr noundef %14) #14
  %22 = ptrtoint ptr %21 to i32
  %23 = icmp ugt ptr %21, inttoptr (i32 8 to ptr)
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %20
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/qcom/pinctrl-spmi-mpp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 845, 0\0A.popsection", ""() #14, !srcloc !10
  unreachable

25:                                               ; preds = %20
  %26 = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 452, i32 noundef 3520) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %334, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %26, ptr %29, align 8
  store ptr %14, ptr %26, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr @dev_get_regmap(ptr noundef %31, ptr noundef null) #14
  %33 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 12) #14
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %334, label %36, !prof !9

36:                                               ; preds = %28
  %37 = extractvalue { i32, i1 } %34, 0
  %38 = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %37, i32 noundef 3520) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %334, label %40

40:                                               ; preds = %36
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 40) #14
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %334, label %43, !prof !9

43:                                               ; preds = %40
  %44 = extractvalue { i32, i1 } %41, 0
  %45 = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %44, i32 noundef 3520) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %334, label %47

47:                                               ; preds = %43
  %48 = call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 44, i32 noundef 3520) #14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %334, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 3
  store ptr @pmic_mpp_pinctrl_ops, ptr %51, align 4
  %52 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 4
  store ptr @pmic_mpp_pinmux_ops, ptr %52, align 4
  %53 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 5
  store ptr @pmic_mpp_pinconf_ops, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 6
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load ptr, ptr %14, align 4
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi ptr [ %59, %58 ], [ %56, %50 ]
  store ptr %61, ptr %48, align 4
  %62 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 1
  store ptr %38, ptr %62, align 4
  %63 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 2
  store i32 %22, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 7
  store i32 4, ptr %64, align 4
  %65 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 8
  store ptr @pmic_mpp_bindings, ptr %65, align 4
  %66 = getelementptr inbounds %struct.pinctrl_desc, ptr %48, i32 0, i32 9
  store ptr @pmic_conf_items, ptr %66, align 4
  %67 = icmp sgt ptr %21, null
  br i1 %67, label %68, label %260

68:                                               ; preds = %60
  %69 = call i32 @llvm.smax.i32(i32 %22, i32 1)
  br label %70

70:                                               ; preds = %251, %68
  %71 = phi i32 [ %255, %251 ], [ 0, %68 ]
  %72 = phi ptr [ %256, %251 ], [ %38, %68 ]
  %73 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71
  %74 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %72, i32 0, i32 2
  store ptr %73, ptr %74, align 4
  store i32 %71, ptr %72, align 4
  %75 = getelementptr [8 x ptr], ptr @pmic_mpp_groups, i32 0, i32 %71
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %72, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  %78 = load i32, ptr %13, align 4
  %79 = shl i32 %71, 8
  %80 = add i32 %78, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, ptr %73, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #14
  store i32 0, ptr %12, align 4, !annotation !8
  %82 = load ptr, ptr %33, align 4
  %83 = and i32 %80, 65535
  %84 = add nuw nsw i32 %83, 4
  %85 = call i32 @regmap_read(ptr noundef %82, i32 noundef %84, ptr noundef nonnull %12) #14
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.27, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  br label %334

89:                                               ; preds = %70
  %90 = load i32, ptr %12, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #14
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %334, label %92

92:                                               ; preds = %89
  %93 = icmp eq i32 %90, 17
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %26, align 4
  %96 = load i16, ptr %73, align 4
  %97 = zext i16 %96 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.44, i32 noundef %90, i32 noundef %97) #15
  br label %334

98:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #14
  store i32 0, ptr %11, align 4, !annotation !8
  %99 = load ptr, ptr %33, align 4
  %100 = load i16, ptr %73, align 4
  %101 = zext i16 %100 to i32
  %102 = add nuw nsw i32 %101, 5
  %103 = call i32 @regmap_read(ptr noundef %99, i32 noundef %102, ptr noundef nonnull %11) #14
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.27, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  br label %334

107:                                              ; preds = %98
  %108 = load i32, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #14
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %334, label %110

110:                                              ; preds = %107
  %111 = add i32 %108, -3
  %112 = icmp ult i32 %111, 13
  br i1 %112, label %117, label %113

113:                                              ; preds = %117, %110
  %114 = load ptr, ptr %26, align 4
  %115 = load i16, ptr %73, align 4
  %116 = zext i16 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.45, i32 noundef %108, i32 noundef %116) #15
  br label %334

117:                                              ; preds = %110
  %118 = trunc i32 %111 to i16
  %119 = lshr i16 4127, %118
  %120 = and i16 %119, 1
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %113, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds [13 x i32], ptr @switch.table.pmic_mpp_probe, i32 0, i32 %111
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 7
  store i32 %124, ptr %125, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !8
  %126 = load ptr, ptr %33, align 4
  %127 = load i16, ptr %73, align 4
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %128, 64
  %130 = call i32 @regmap_read(ptr noundef %126, i32 noundef %129, ptr noundef nonnull %10) #14
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.27, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  br label %334

134:                                              ; preds = %122
  %135 = load i32, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %334, label %137

137:                                              ; preds = %134
  %138 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 2
  %139 = trunc i32 %135 to i8
  %140 = and i8 %139, 1
  store i8 %140, ptr %138, align 1
  %141 = lshr i32 %135, 4
  %142 = and i32 %141, 7
  %143 = icmp eq i32 %142, 7
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.46) #15
  br label %334

146:                                              ; preds = %137
  %147 = getelementptr inbounds [7 x i8], ptr @switch.table.pmic_mpp_probe.48, i32 0, i32 %142
  %148 = load i8, ptr %147, align 1
  %149 = getelementptr inbounds [7 x i8], ptr @switch.table.pmic_mpp_probe.49, i32 0, i32 %142
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr inbounds [7 x i32], ptr @switch.table.pmic_mpp_probe.50, i32 0, i32 %142
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 4
  store i8 %148, ptr %153, align 1
  %154 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 3
  store i8 %150, ptr %154, align 4
  %155 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 12
  store i32 %152, ptr %155, align 4
  %156 = lshr i32 %135, 1
  %157 = and i32 %156, 7
  %158 = icmp ugt i32 %157, 3
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = add nuw nsw i32 %157, 1
  %161 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 14
  store i32 %160, ptr %161, align 4
  br label %166

162:                                              ; preds = %146
  %163 = icmp eq i32 %157, 1
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 5
  store i8 1, ptr %165, align 2
  br label %166

166:                                              ; preds = %164, %162, %159
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !8
  %167 = load ptr, ptr %33, align 4
  %168 = load i16, ptr %73, align 4
  %169 = zext i16 %168 to i32
  %170 = add nuw nsw i32 %169, 65
  %171 = call i32 @regmap_read(ptr noundef %167, i32 noundef %170, ptr noundef nonnull %9) #14
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.27, i32 noundef 65) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  br label %334

175:                                              ; preds = %166
  %176 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %334, label %178

178:                                              ; preds = %175
  %179 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 8
  %180 = and i32 %176, 7
  store i32 %180, ptr %179, align 4
  %181 = and i32 %108, -3
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %199, label %183

183:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !annotation !8
  %184 = load ptr, ptr %33, align 4
  %185 = load i16, ptr %73, align 4
  %186 = zext i16 %185 to i32
  %187 = add nuw nsw i32 %186, 66
  %188 = call i32 @regmap_read(ptr noundef %184, i32 noundef %187, ptr noundef nonnull %8) #14
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.27, i32 noundef 66) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  br label %334

192:                                              ; preds = %183
  %193 = load i32, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %334, label %195

195:                                              ; preds = %192
  %196 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 11
  %197 = and i32 %193, 7
  store i32 %197, ptr %196, align 4
  %198 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 6
  store i8 1, ptr %198, align 1
  br label %199

199:                                              ; preds = %195, %178
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store i32 0, ptr %7, align 4, !annotation !8
  %200 = load ptr, ptr %33, align 4
  %201 = load i16, ptr %73, align 4
  %202 = zext i16 %201 to i32
  %203 = add nuw nsw i32 %202, 74
  %204 = call i32 @regmap_read(ptr noundef %200, i32 noundef %203, ptr noundef nonnull %7) #14
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %207, ptr noundef nonnull @.str.27, i32 noundef 74) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %334

208:                                              ; preds = %199
  %209 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %334, label %211

211:                                              ; preds = %208
  %212 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 9
  %213 = and i32 %209, 7
  store i32 %213, ptr %212, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !8
  %214 = load ptr, ptr %33, align 4
  %215 = load i16, ptr %73, align 4
  %216 = zext i16 %215 to i32
  %217 = add nuw nsw i32 %216, 76
  %218 = call i32 @regmap_read(ptr noundef %214, i32 noundef %217, ptr noundef nonnull %6) #14
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %211
  %221 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.27, i32 noundef 76) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %334

222:                                              ; preds = %211
  %223 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %334, label %225

225:                                              ; preds = %222
  %226 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 13
  store i32 %223, ptr %226, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !8
  %227 = load ptr, ptr %33, align 4
  %228 = load i16, ptr %73, align 4
  %229 = zext i16 %228 to i32
  %230 = add nuw nsw i32 %229, 72
  %231 = call i32 @regmap_read(ptr noundef %227, i32 noundef %230, ptr noundef nonnull %5) #14
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %225
  %234 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.27, i32 noundef 72) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %334

235:                                              ; preds = %225
  %236 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %334, label %238

238:                                              ; preds = %235
  %239 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 10
  store i32 %236, ptr %239, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %240 = load ptr, ptr %33, align 4
  %241 = load i16, ptr %73, align 4
  %242 = zext i16 %241 to i32
  %243 = add nuw nsw i32 %242, 70
  %244 = call i32 @regmap_read(ptr noundef %240, i32 noundef %243, ptr noundef nonnull %4) #14
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %238
  %247 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %247, ptr noundef nonnull @.str.27, i32 noundef 70) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %334

248:                                              ; preds = %238
  %249 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %334, label %251

251:                                              ; preds = %248
  %252 = icmp ne i32 %249, 0
  %253 = getelementptr %struct.pmic_mpp_pad, ptr %45, i32 %71, i32 1
  %254 = zext i1 %252 to i8
  store i8 %254, ptr %253, align 2
  %255 = add nuw nsw i32 %71, 1
  %256 = getelementptr %struct.pinctrl_pin_desc, ptr %72, i32 1
  %257 = icmp eq i32 %255, %69
  br i1 %257, label %258, label %70

258:                                              ; preds = %251
  %259 = load ptr, ptr %55, align 4
  br label %260

260:                                              ; preds = %258, %60
  %261 = phi ptr [ %259, %258 ], [ %56, %60 ]
  %262 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %262, ptr noundef nonnull align 4 dereferenceable(304) @pmic_mpp_gpio_template, i32 304, i1 false)
  %263 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 2
  store ptr %14, ptr %263, align 4
  %264 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 19
  store i32 -1, ptr %264, align 4
  %265 = trunc i32 %22 to i16
  %266 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 20
  store i16 %265, ptr %266, align 4
  %267 = icmp eq ptr %261, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load ptr, ptr %14, align 4
  br label %270

270:                                              ; preds = %268, %260
  %271 = phi ptr [ %269, %268 ], [ %261, %260 ]
  store ptr %271, ptr %262, align 4
  %272 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 40
  store i32 2, ptr %272, align 4
  %273 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 23
  store i8 0, ptr %273, align 4
  %274 = call ptr @devm_pinctrl_register(ptr noundef %14, ptr noundef nonnull %48, ptr noundef nonnull %26) #14
  %275 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 2
  store ptr %274, ptr %275, align 4
  %276 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  br i1 %276, label %277, label %279

277:                                              ; preds = %270
  %278 = ptrtoint ptr %274 to i32
  br label %334

279:                                              ; preds = %270
  %280 = load ptr, ptr %26, align 4
  %281 = getelementptr inbounds %struct.device, ptr %280, i32 0, i32 25
  %282 = load ptr, ptr %281, align 8
  %283 = call ptr @of_irq_find_parent(ptr noundef %282) #14
  %284 = icmp eq ptr %283, null
  br i1 %284, label %334, label %285

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.device_node, ptr %283, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #14
  %287 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %287, i8 0, i64 68, i1 false) #14
  store ptr %286, ptr %3, align 4
  %288 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #14
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void @of_node_put(ptr noundef nonnull %283) #14
  br label %295

291:                                              ; preds = %285
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #14
  %292 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %292, i8 0, i64 68, i1 false) #14
  store ptr %286, ptr %2, align 4
  %293 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #14
  call void @of_node_put(ptr noundef nonnull %283) #14
  %294 = icmp eq ptr %293, null
  br i1 %294, label %334, label %295

295:                                              ; preds = %291, %290
  %296 = phi ptr [ %288, %290 ], [ %293, %291 ]
  %297 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4
  %298 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 1
  store ptr @.str.3, ptr %298, align 4
  %299 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 6
  store ptr @irq_chip_ack_parent, ptr %299, align 4
  %300 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 7
  store ptr @irq_chip_mask_parent, ptr %300, align 4
  %301 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 9
  store ptr @irq_chip_unmask_parent, ptr %301, align 4
  %302 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 13
  store ptr @irq_chip_set_type_parent, ptr %302, align 4
  %303 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 14
  store ptr @irq_chip_set_wake_parent, ptr %303, align 4
  %304 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 4, i32 33
  store i32 4, ptr %304, align 4
  %305 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37
  store ptr %297, ptr %305, align 4
  %306 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %306, align 4
  %307 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_level_irq, ptr %307, align 4
  %308 = load ptr, ptr %26, align 4
  %309 = getelementptr inbounds %struct.device, ptr %308, i32 0, i32 25
  %310 = load ptr, ptr %309, align 8
  %311 = icmp eq ptr %310, null
  %312 = getelementptr inbounds %struct.device_node, ptr %310, i32 0, i32 3
  %313 = select i1 %311, ptr null, ptr %312
  %314 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 3
  store ptr %313, ptr %314, align 4
  %315 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 4
  store ptr %296, ptr %315, align 4
  %316 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 5
  store ptr @pmic_mpp_child_to_parent_hwirq, ptr %316, align 4
  %317 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 6
  store ptr @gpiochip_populate_parent_fwspec_fourcell, ptr %317, align 4
  %318 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 7
  store ptr @pmic_mpp_child_offset_to_irq, ptr %318, align 4
  %319 = getelementptr inbounds %struct.pmic_mpp_state, ptr %26, i32 0, i32 3, i32 37, i32 8, i32 9
  store ptr @pmic_mpp_domain_translate, ptr %319, align 4
  %320 = call i32 @gpiochip_add_data_with_key(ptr noundef %262, ptr noundef %26, ptr noundef null, ptr noundef null) #14
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %295
  %323 = load ptr, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %323, ptr noundef nonnull @.str.4) #15
  br label %334

324:                                              ; preds = %295
  %325 = load ptr, ptr %55, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = load ptr, ptr %14, align 4
  br label %329

329:                                              ; preds = %327, %324
  %330 = phi ptr [ %328, %327 ], [ %325, %324 ]
  %331 = call i32 @gpiochip_add_pin_range(ptr noundef %262, ptr noundef %330, i32 noundef 0, i32 noundef 0, i32 noundef %22) #14
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %334, label %333

333:                                              ; preds = %329
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5) #15
  call void @gpiochip_remove(ptr noundef %262) #14
  br label %334

334:                                              ; preds = %333, %329, %322, %291, %279, %277, %248, %246, %235, %233, %222, %220, %208, %206, %192, %190, %175, %173, %144, %134, %132, %113, %107, %105, %94, %89, %87, %47, %43, %40, %36, %28, %25, %19
  %335 = phi i32 [ %17, %19 ], [ %278, %277 ], [ %320, %322 ], [ %331, %333 ], [ -12, %25 ], [ -12, %36 ], [ -12, %43 ], [ -12, %47 ], [ -6, %279 ], [ -6, %291 ], [ 0, %329 ], [ -12, %28 ], [ -12, %40 ], [ %244, %246 ], [ %231, %233 ], [ %218, %220 ], [ %204, %206 ], [ %188, %190 ], [ %171, %173 ], [ %130, %132 ], [ %103, %105 ], [ %85, %87 ], [ -19, %144 ], [ -19, %113 ], [ -19, %94 ], [ %90, %89 ], [ %108, %107 ], [ %135, %134 ], [ %176, %175 ], [ %193, %192 ], [ %209, %208 ], [ %223, %222 ], [ %236, %235 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #14
  ret i32 %335
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pmic_mpp_state, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pmic_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #6 {
  %6 = add i32 %1, 192
  store i32 %6, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_fourcell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_child_offset_to_irq(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
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
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_groups_count(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pmic_mpp_get_group_name(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pinctrl_desc, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 1
  %8 = load ptr, ptr %7, align 4
  ret ptr %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_group_pins(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %1
  store ptr %9, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #14
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_functions_count(ptr nocapture noundef readnone %0) #7 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pmic_mpp_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [3 x ptr], ptr @pmic_mpp_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_function_groups(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  store ptr @pmic_mpp_groups, ptr %2, align 4
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %2, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %10, i32 0, i32 12
  store i32 %1, ptr %11, align 4
  %12 = tail call fastcc i32 @pmic_mpp_write_mode_ctl(ptr noundef %4, ptr noundef %10)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %10, i32 0, i32 1
  %16 = load i8, ptr %15, align 2, !range !11
  %17 = shl nuw i8 %16, 7
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.pmic_mpp_state, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load i16, ptr %10, align 4
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, 70
  %24 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %23, i32 noundef %18) #14
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef 70) #15
  br label %28

28:                                               ; preds = %26, %14, %3
  %29 = phi i32 [ %12, %3 ], [ %24, %14 ], [ %24, %26 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pmic_mpp_write_mode_ctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %25 [
    i32 1, label %5
    i32 0, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 4
  %7 = load i8, ptr %6, align 1, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 3
  %11 = load i8, ptr %10, align 4, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 64, %9 ], [ 80, %5 ]
  br label %25

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !11
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 3
  %21 = load i8, ptr %20, align 4, !range !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 0, %19 ], [ 16, %15 ]
  br label %25

25:                                               ; preds = %23, %19, %13, %9, %2
  %26 = phi i32 [ 48, %9 ], [ %14, %13 ], [ 32, %19 ], [ %24, %23 ], [ 96, %2 ]
  %27 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 14
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = shl i32 %28, 1
  %32 = add i32 %31, 6
  br label %38

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 5
  %35 = load i8, ptr %34, align 2, !range !11
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 0, i32 2
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i32 [ %32, %30 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %1, i32 0, i32 2
  %41 = load i8, ptr %40, align 1, !range !11
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %26
  %44 = or i32 %43, %42
  %45 = getelementptr inbounds %struct.pmic_mpp_state, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load i16, ptr %1, align 4
  %48 = zext i16 %47 to i32
  %49 = add nuw nsw i32 %48, 64
  %50 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %49, i32 noundef %44) #14
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.9, i32 noundef 64) #15
  br label %54

54:                                               ; preds = %52, %38
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_config_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) #8 {
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 255
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = trunc i32 %4 to i8
  switch i8 %12, label %59 [
    i8 1, label %13
    i8 5, label %17
    i8 2, label %21
    i8 21, label %25
    i8 12, label %28
    i8 17, label %32
    i8 -126, label %36
    i8 -128, label %39
    i8 -125, label %42
    i8 9, label %46
    i8 -127, label %49
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %55, label %59

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %52, label %59

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 1
  %23 = load i8, ptr %22, align 2, !range !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %55, label %59

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  br label %55

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 4
  %30 = load i8, ptr %29, align 1, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %59, label %55

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 2
  %34 = load i8, ptr %33, align 1, !range !11
  %35 = zext i8 %34 to i32
  br label %55

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  br label %55

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  br label %55

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 5
  %44 = load i8, ptr %43, align 2, !range !11
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %59, label %55

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 13
  %48 = load i32, ptr %47, align 4
  br label %55

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  br label %55

52:                                               ; preds = %17
  %53 = getelementptr inbounds [3 x i32], ptr @switch.table.pmic_mpp_config_get, i32 0, i32 %19
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %49, %46, %42, %39, %36, %32, %28, %25, %21, %13
  %56 = phi i32 [ %51, %49 ], [ %48, %46 ], [ %41, %39 ], [ %38, %36 ], [ %35, %32 ], [ %27, %25 ], [ 1, %13 ], [ 1, %21 ], [ 1, %28 ], [ 1, %42 ], [ %54, %52 ]
  %57 = shl i32 %56, 8
  %58 = or i32 %57, %5
  store i32 %58, ptr %2, align 4
  br label %59

59:                                               ; preds = %55, %42, %28, %21, %17, %13, %3
  %60 = phi i32 [ 0, %55 ], [ -22, %13 ], [ -22, %17 ], [ -22, %21 ], [ -22, %28 ], [ -22, %42 ], [ -22, %3 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %1, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 1
  store i8 1, ptr %12, align 2
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %60, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 5
  %16 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 10
  %17 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 9
  %18 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 13
  %19 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 14
  %20 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 3
  %21 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 2
  %22 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 4
  %23 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 7
  %24 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 8
  %25 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 11
  br label %26

26:                                               ; preds = %57, %14
  %27 = phi i32 [ 0, %14 ], [ %58, %57 ]
  %28 = getelementptr i32, ptr %2, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 8
  %31 = trunc i32 %29 to i8
  switch i8 %31, label %128 [
    i8 1, label %32
    i8 5, label %33
    i8 2, label %37
    i8 21, label %38
    i8 12, label %42
    i8 17, label %45
    i8 -126, label %48
    i8 9, label %49
    i8 -128, label %50
    i8 -127, label %53
    i8 -125, label %54
  ]

32:                                               ; preds = %26
  store i32 3, ptr %25, align 4
  br label %57

33:                                               ; preds = %26
  switch i32 %30, label %128 [
    i32 600, label %34
    i32 10000, label %35
    i32 30000, label %36
  ]

34:                                               ; preds = %33
  store i32 0, ptr %25, align 4
  br label %57

35:                                               ; preds = %33
  store i32 1, ptr %25, align 4
  br label %57

36:                                               ; preds = %33
  store i32 2, ptr %25, align 4
  br label %57

37:                                               ; preds = %26
  store i8 0, ptr %12, align 2
  br label %57

38:                                               ; preds = %26
  %39 = load i32, ptr %23, align 4
  %40 = icmp ult i32 %30, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %38
  store i32 %30, ptr %24, align 4
  br label %57

42:                                               ; preds = %26
  %43 = icmp ugt i32 %29, 255
  %44 = zext i1 %43 to i8
  store i8 %44, ptr %22, align 1
  br label %57

45:                                               ; preds = %26
  store i8 1, ptr %20, align 4
  %46 = icmp ugt i32 %29, 255
  %47 = zext i1 %46 to i8
  store i8 %47, ptr %21, align 1
  br label %57

48:                                               ; preds = %26
  store i32 %30, ptr %19, align 4
  br label %57

49:                                               ; preds = %26
  store i32 %30, ptr %18, align 4
  br label %57

50:                                               ; preds = %26
  %51 = icmp ugt i32 %29, 1791
  br i1 %51, label %128, label %52

52:                                               ; preds = %50
  store i32 %30, ptr %17, align 4
  br label %57

53:                                               ; preds = %26
  store i32 %30, ptr %16, align 4
  br label %57

54:                                               ; preds = %26
  %55 = icmp ugt i32 %29, 255
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %15, align 2
  br label %57

57:                                               ; preds = %54, %53, %52, %49, %48, %45, %42, %41, %37, %36, %35, %34, %32
  %58 = add nuw i32 %27, 1
  %59 = icmp eq i32 %58, %3
  br i1 %59, label %60, label %26

60:                                               ; preds = %57, %4
  %61 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.pmic_mpp_state, ptr %5, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load i16, ptr %11, align 4
  %66 = zext i16 %65 to i32
  %67 = add nuw nsw i32 %66, 65
  %68 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef %67, i32 noundef %62) #14
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %124, label %70

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 6
  %72 = load i8, ptr %71, align 1, !range !11
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr %63, align 4
  %78 = load i16, ptr %11, align 4
  %79 = zext i16 %78 to i32
  %80 = add nuw nsw i32 %79, 66
  %81 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef %80, i32 noundef %76) #14
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %74, %70
  %84 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 7
  %87 = load ptr, ptr %63, align 4
  %88 = load i16, ptr %11, align 4
  %89 = zext i16 %88 to i32
  %90 = add nuw nsw i32 %89, 74
  %91 = tail call i32 @regmap_write(ptr noundef %87, i32 noundef %90, i32 noundef %86) #14
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %124, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 10
  %95 = load i32, ptr %94, align 4
  %96 = load ptr, ptr %63, align 4
  %97 = load i16, ptr %11, align 4
  %98 = zext i16 %97 to i32
  %99 = add nuw nsw i32 %98, 72
  %100 = tail call i32 @regmap_write(ptr noundef %96, i32 noundef %99, i32 noundef %95) #14
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %124, label %102

102:                                              ; preds = %93
  %103 = tail call fastcc i32 @pmic_mpp_write_mode_ctl(ptr noundef %5, ptr noundef %11)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %128, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 13
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %63, align 4
  %109 = load i16, ptr %11, align 4
  %110 = zext i16 %109 to i32
  %111 = add nuw nsw i32 %110, 76
  %112 = tail call i32 @regmap_write(ptr noundef %108, i32 noundef %111, i32 noundef %107) #14
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %105
  %115 = load i8, ptr %12, align 2, !range !11
  %116 = shl nuw i8 %115, 7
  %117 = zext i8 %116 to i32
  %118 = load ptr, ptr %63, align 4
  %119 = load i16, ptr %11, align 4
  %120 = zext i16 %119 to i32
  %121 = add nuw nsw i32 %120, 70
  %122 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef %121, i32 noundef %117) #14
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %114, %105, %93, %83, %74, %60
  %125 = phi i32 [ 65, %60 ], [ 66, %74 ], [ 74, %83 ], [ 72, %93 ], [ 76, %105 ], [ 70, %114 ]
  %126 = phi i32 [ %68, %60 ], [ %81, %74 ], [ %91, %83 ], [ %100, %93 ], [ %112, %105 ], [ %122, %114 ]
  %127 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.9, i32 noundef %125) #15
  br label %128

128:                                              ; preds = %124, %114, %102, %50, %38, %33, %26
  %129 = phi i32 [ %103, %102 ], [ %122, %114 ], [ %126, %124 ], [ -22, %33 ], [ -22, %38 ], [ -22, %50 ], [ -22, %26 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_mpp_config_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %2, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = add i32 %2, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %12) #14
  %13 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 1
  %14 = load i8, ptr %13, align 2, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.15) #14
  br label %73

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 4
  %19 = load i8, ptr %18, align 1, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.pmic_mpp_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i16, ptr %11, align 4
  %25 = zext i16 %24 to i32
  %26 = add nuw nsw i32 %25, 16
  %27 = call i32 @regmap_read(ptr noundef %23, i32 noundef %26, ptr noundef nonnull %4) #14
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %73

31:                                               ; preds = %21
  %32 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 2
  %36 = trunc i32 %32 to i8
  %37 = and i8 %36, 1
  store i8 %37, ptr %35, align 1
  br label %38

38:                                               ; preds = %34, %17
  %39 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 3
  %40 = load i8, ptr %39, align 4, !range !11
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %42) #14
  %43 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr [3 x ptr], ptr @pmic_mpp_functions, i32 0, i32 %44
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %46) #14
  %47 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %48) #14
  %49 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 10
  %50 = load i32, ptr %49, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %50) #14
  %51 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 6
  %52 = load i8, ptr %51, align 1, !range !11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 11
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr [4 x ptr], ptr @pmic_mpp_config_dbg_show.biases, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %58) #14
  br label %59

59:                                               ; preds = %54, %38
  %60 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 2
  %61 = load i8, ptr %60, align 1, !range !11
  %62 = icmp eq i8 %61, 0
  %63 = select i1 %62, ptr @.str.24, ptr @.str.23
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %63) #14
  %64 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 14
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %65) #14
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %11, i32 0, i32 5
  %70 = load i8, ptr %69, align 2, !range !11
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.26) #14
  br label %73

73:                                               ; preds = %72, %68, %31, %29, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 268, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pmic_mpp_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @pmic_mpp_config_set(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %6 = shl i32 %2, 8
  %7 = or i32 %6, 17
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pmic_mpp_state, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @pmic_mpp_config_set(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pmic_mpp_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.pmic_mpp_state, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pinctrl_desc, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %12, i32 0, i32 4
  %14 = load i8, ptr %13, align 1, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %12, i32 0, i32 2
  %18 = load i8, ptr %17, align 1, !range !11
  br label %36

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.pmic_mpp_state, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i16, ptr %12, align 4
  %23 = zext i16 %22 to i32
  %24 = add nuw nsw i32 %23, 16
  %25 = call i32 @regmap_read(ptr noundef %21, i32 noundef %24, ptr noundef nonnull %3) #14
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %39

29:                                               ; preds = %19
  %30 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %12, i32 0, i32 2
  %34 = trunc i32 %30 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %33, align 1
  br label %36

36:                                               ; preds = %32, %16
  %37 = phi i8 [ %18, %16 ], [ %35, %32 ]
  %38 = zext i8 %37 to i32
  br label %39

39:                                               ; preds = %36, %29, %27
  %40 = phi i32 [ %38, %36 ], [ %30, %29 ], [ %25, %27 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_mpp_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %6 = shl i32 %2, 8
  %7 = or i32 %6, 17
  store i32 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.pmic_mpp_state, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @pmic_mpp_config_set(ptr noundef %9, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pmic_mpp_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %1) #14
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pmic_mpp_state, ptr %3, i32 0, i32 2
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %12, %9 ]
  %11 = load ptr, ptr %8, align 4
  tail call void @pmic_mpp_config_dbg_show(ptr noundef %11, ptr noundef %0, i32 noundef %10)
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.47) #14
  %12 = add nuw nsw i32 %10, 1
  %13 = load i16, ptr %4, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %9, label %16

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #12 {
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

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152436229, i64 2152436733, i64 2152436266, i64 2152436322, i64 2152436356, i64 2152436380, i64 2152436421, i64 2152436442, i64 2152436470, i64 2152436504}
!11 = !{i8 0, i8 2}
