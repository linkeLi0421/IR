; ModuleID = '/llk/IR/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c"
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
%struct.pm8xxx_mpp = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, %struct.pinctrl_desc, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pm8xxx_pin_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_ssbi_mpp__210_937_pm8xxx_mpp_driver_init6 = internal global ptr @pm8xxx_mpp_driver_init, section ".initcall6.init", align 4
@pm8xxx_mpp_driver = internal global %struct.platform_driver { ptr @pm8xxx_mpp_probe, ptr @pm8xxx_mpp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_mpp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pm8xxx_mpp_driver_exit = internal global ptr @pm8xxx_mpp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [73 x i8] c"pinctrl_ssbi_mpp.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [56 x i8] c"pinctrl_ssbi_mpp.description=Qualcomm PM8xxx MPP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [60 x i8] c"pinctrl_ssbi_mpp.file=drivers/pinctrl/qcom/pinctrl-ssbi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [32 x i8] c"pinctrl_ssbi_mpp.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"qcom-ssbi-mpp\00", align 1
@pm8xxx_mpp_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8038-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8821-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8917-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"parent regmap unavailable\0A\00", align 1
@pm8xxx_pinctrl_desc = internal unnamed_addr constant %struct.pinctrl_desc { ptr @.str.7, ptr null, i32 0, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@pm8xxx_groups = internal constant [12 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 4
@pm8xxx_mpp_bindings = internal constant [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.26, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.27, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.28, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.29, i32 131, i32 0 }], align 4
@pm8xxx_conf_items = internal constant [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.30, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.31, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.32, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.33, ptr null, i8 0 }], align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"couldn't register pm8xxx mpp driver\0A\00", align 1
@pm8xxx_mpp_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_mpp_direction_input, ptr @pm8xxx_mpp_direction_output, ptr @pm8xxx_mpp_get, ptr null, ptr @pm8xxx_mpp_set, ptr null, ptr null, ptr null, ptr @pm8xxx_mpp_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pm8xxx_mpp_of_xlate }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ssbi-mpp\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"qcom,pm8821-mpp\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed register gpiochip\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pm8xxx_mpp\00", align 1
@pm8xxx_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pm8xxx_get_groups_count, ptr @pm8xxx_get_group_name, ptr @pm8xxx_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@pm8xxx_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pm8xxx_get_functions_count, ptr @pm8xxx_get_function_name, ptr @pm8xxx_get_function_groups, ptr @pm8xxx_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@pm8xxx_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pm8xxx_pin_config_get, ptr @pm8xxx_pin_config_set, ptr null, ptr null, ptr null }, align 4
@pm8xxx_mpp_functions = internal unnamed_addr constant [3 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10], align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sink\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to write register\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"unsupported config parameter: %x\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"failed to read register\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"mpp1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mpp2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"mpp3\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"mpp4\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"mpp5\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"mpp6\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"mpp7\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"mpp8\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"mpp9\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"mpp10\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"mpp11\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"mpp12\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"qcom,amux-route\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"qcom,analog-level\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"qcom,dtest\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"qcom,paired\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"analog mux\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"analog level\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"dtest\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"paired\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pm8xxx_mpp_dbg_show_one.aout_lvls = internal unnamed_addr constant [8 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"1v25\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"1v25_2\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"0v625\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"0v3125\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"mpp\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"abus1\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"abus2\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"abus3\00", align 1
@pm8xxx_mpp_dbg_show_one.amuxs = internal unnamed_addr constant [8 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.40, ptr @.str.41, ptr @.str.42], align 4
@.str.43 = private unnamed_addr constant [6 x i8] c"amux5\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"amux6\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"amux7\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"amux8\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"amux9\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c" mpp%-2d:\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c" digital \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"dtest%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"bi-dir high-z\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"bi-dir %dOhm\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"in gpio\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c" analog \00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"out %s \00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"input mux %s\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c" sink %dmA \00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"dtest%d\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_pm8xxx_mpp_driver_exit, ptr @__initcall__kmod_pinctrl_ssbi_mpp__210_937_pm8xxx_mpp_driver_init6, ptr @pm8xxx_mpp_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_mpp_driver, ptr noundef null) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_mpp_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 500, i32 noundef 3520) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %232, label %8

8:                                                ; preds = %1
  store ptr %5, ptr %6, align 4
  %9 = tail call ptr @device_get_match_data(ptr noundef %5) #13
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @dev_get_regmap(ptr noundef %13, ptr noundef null) #13
  %15 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #14
  br label %232

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %19, ptr noundef nonnull align 4 dereferenceable(44) @pm8xxx_pinctrl_desc, i32 44, i1 false)
  %20 = load i32, ptr %11, align 4
  %21 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5, i32 2
  store i32 %20, ptr %21, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 12) #13
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %232, label %24, !prof !8

24:                                               ; preds = %18
  %25 = extractvalue { i32, i1 } %22, 0
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %25, i32 noundef 3520) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %232, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %21, align 4
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 20) #13
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %232, label %32, !prof !8

32:                                               ; preds = %28
  %33 = extractvalue { i32, i1 } %30, 0
  %34 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %33, i32 noundef 3520) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %232, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %21, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %143, label %39

39:                                               ; preds = %134, %36
  %40 = phi i32 [ %140, %134 ], [ 0, %36 ]
  %41 = add i32 %40, 80
  %42 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40
  store i32 %41, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %43 = load ptr, ptr %15, align 4
  %44 = call i32 @regmap_read(ptr noundef %43, i32 noundef %41, ptr noundef nonnull %4) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %132

46:                                               ; preds = %39
  %47 = load i32, ptr %4, align 4
  %48 = lshr i32 %47, 5
  %49 = and i32 %48, 7
  %50 = lshr i32 %47, 2
  %51 = and i32 %50, 7
  %52 = and i32 %47, 3
  switch i32 %49, label %130 [
    i32 0, label %53
    i32 1, label %60
    i32 2, label %71
    i32 3, label %85
    i32 4, label %90
    i32 5, label %101
    i32 6, label %113
    i32 7, label %122
  ]

53:                                               ; preds = %46
  %54 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 0, ptr %54, align 4
  %55 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 2
  store i8 1, ptr %55, align 1
  %56 = trunc i32 %51 to i8
  %57 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 7
  store i8 %56, ptr %57, align 2
  %58 = trunc i32 %52 to i8
  %59 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 8
  store i8 %58, ptr %59, align 1
  br label %134

60:                                               ; preds = %46
  %61 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 0, ptr %61, align 4
  %62 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 3
  store i8 1, ptr %62, align 2
  %63 = trunc i32 %51 to i8
  %64 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 7
  store i8 %63, ptr %64, align 2
  %65 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 6
  %66 = trunc i32 %47 to i8
  %67 = and i8 %66, 1
  store i8 %67, ptr %65, align 1
  %68 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 5
  %69 = lshr i8 %66, 1
  %70 = and i8 %69, 1
  store i8 %70, ptr %68, align 4
  br label %134

71:                                               ; preds = %46
  %72 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 0, ptr %72, align 4
  %73 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 2
  store i8 1, ptr %73, align 1
  %74 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 3
  store i8 1, ptr %74, align 2
  %75 = trunc i32 %51 to i8
  %76 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 7
  store i8 %75, ptr %76, align 2
  switch i32 %52, label %131 [
    i32 0, label %77
    i32 1, label %79
    i32 2, label %81
    i32 3, label %83
  ]

77:                                               ; preds = %71
  %78 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 12
  store i32 600, ptr %78, align 4
  br label %134

79:                                               ; preds = %71
  %80 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 4
  store i8 1, ptr %80, align 1
  br label %134

81:                                               ; preds = %71
  %82 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 12
  store i32 10000, ptr %82, align 4
  br label %134

83:                                               ; preds = %71
  %84 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 12
  store i32 30000, ptr %84, align 4
  br label %134

85:                                               ; preds = %46
  %86 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 1, ptr %86, align 4
  %87 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 2
  store i8 1, ptr %87, align 1
  %88 = trunc i32 %51 to i8
  %89 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 9
  store i8 %88, ptr %89, align 4
  br label %134

90:                                               ; preds = %46
  %91 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 1, ptr %91, align 4
  %92 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 3
  store i8 1, ptr %92, align 2
  %93 = trunc i32 %51 to i8
  %94 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 10
  store i8 %93, ptr %94, align 1
  %95 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 6
  %96 = trunc i32 %47 to i8
  %97 = and i8 %96, 1
  store i8 %97, ptr %95, align 1
  %98 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 5
  %99 = lshr i8 %96, 1
  %100 = and i8 %99, 1
  store i8 %100, ptr %98, align 4
  br label %134

101:                                              ; preds = %46
  %102 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 2, ptr %102, align 4
  %103 = trunc i32 %51 to i8
  %104 = mul nuw nsw i8 %103, 5
  %105 = add nuw nsw i8 %104, 5
  %106 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 11
  store i8 %105, ptr %106, align 2
  %107 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 6
  %108 = trunc i32 %47 to i8
  %109 = and i8 %108, 1
  store i8 %109, ptr %107, align 1
  %110 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 5
  %111 = lshr i8 %108, 1
  %112 = and i8 %111, 1
  store i8 %112, ptr %110, align 4
  br label %134

113:                                              ; preds = %46
  %114 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 2, ptr %114, align 4
  %115 = trunc i32 %52 to i8
  %116 = add nuw nsw i8 %115, 1
  %117 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 8
  store i8 %116, ptr %117, align 1
  %118 = trunc i32 %51 to i8
  %119 = mul nuw nsw i8 %118, 5
  %120 = add nuw nsw i8 %119, 5
  %121 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 11
  store i8 %120, ptr %121, align 2
  br label %134

122:                                              ; preds = %46
  %123 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 1
  store i8 0, ptr %123, align 4
  %124 = trunc i32 %51 to i8
  %125 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 7
  store i8 %124, ptr %125, align 2
  %126 = icmp eq i32 %52, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %122
  %128 = trunc i32 %52 to i8
  %129 = getelementptr %struct.pm8xxx_pin_data, ptr %34, i32 %40, i32 8
  store i8 %128, ptr %129, align 1
  br label %134

130:                                              ; preds = %46
  unreachable

131:                                              ; preds = %71
  unreachable

132:                                              ; preds = %39
  %133 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.13) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %232

134:                                              ; preds = %127, %122, %113, %101, %90, %85, %83, %81, %79, %77, %60, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %135 = getelementptr %struct.pinctrl_pin_desc, ptr %26, i32 %40
  store i32 %40, ptr %135, align 4
  %136 = getelementptr [12 x ptr], ptr @pm8xxx_groups, i32 0, i32 %40
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr %struct.pinctrl_pin_desc, ptr %26, i32 %40, i32 1
  store ptr %137, ptr %138, align 4
  %139 = getelementptr %struct.pinctrl_pin_desc, ptr %26, i32 %40, i32 2
  store ptr %42, ptr %139, align 4
  %140 = add nuw i32 %40, 1
  %141 = load i32, ptr %21, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %39, label %143

143:                                              ; preds = %134, %36
  %144 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5, i32 1
  store ptr %26, ptr %144, align 4
  %145 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5, i32 7
  store i32 4, ptr %145, align 4
  %146 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5, i32 8
  store ptr @pm8xxx_mpp_bindings, ptr %146, align 4
  %147 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 5, i32 9
  store ptr @pm8xxx_conf_items, ptr %147, align 4
  %148 = call ptr @devm_pinctrl_register(ptr noundef %5, ptr noundef %19, ptr noundef nonnull %6) #13
  %149 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 2
  store ptr %148, ptr %149, align 4
  %150 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #14
  %152 = load ptr, ptr %149, align 4
  %153 = ptrtoint ptr %152 to i32
  br label %232

154:                                              ; preds = %143
  %155 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %155, ptr noundef nonnull align 4 dereferenceable(304) @pm8xxx_mpp_template, i32 304, i1 false)
  %156 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 19
  store i32 -1, ptr %156, align 4
  %157 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 2
  store ptr %5, ptr %157, align 4
  %158 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 40
  store i32 2, ptr %158, align 4
  %159 = load ptr, ptr %6, align 4
  %160 = getelementptr inbounds %struct.device, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load ptr, ptr %159, align 4
  br label %165

165:                                              ; preds = %163, %154
  %166 = phi ptr [ %164, %163 ], [ %161, %154 ]
  store ptr %166, ptr %155, align 4
  %167 = load i32, ptr %11, align 4
  %168 = trunc i32 %167 to i16
  %169 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 20
  store i16 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.device, ptr %159, i32 0, i32 25
  %171 = load ptr, ptr %170, align 8
  %172 = call ptr @of_irq_find_parent(ptr noundef %171) #13
  %173 = icmp eq ptr %172, null
  br i1 %173, label %232, label %174

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.device_node, ptr %172, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #13
  %176 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %176, i8 0, i64 68, i1 false) #13
  store ptr %175, ptr %3, align 4
  %177 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #13
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  call void @of_node_put(ptr noundef nonnull %172) #13
  br label %184

180:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  %181 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %181, i8 0, i64 68, i1 false) #13
  store ptr %175, ptr %2, align 4
  %182 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  call void @of_node_put(ptr noundef nonnull %172) #13
  %183 = icmp eq ptr %182, null
  br i1 %183, label %232, label %184

184:                                              ; preds = %180, %179
  %185 = phi ptr [ %177, %179 ], [ %182, %180 ]
  %186 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4
  %187 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4, i32 1
  store ptr @.str.3, ptr %187, align 4
  %188 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4, i32 8
  store ptr @irq_chip_mask_ack_parent, ptr %188, align 4
  %189 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4, i32 9
  store ptr @irq_chip_unmask_parent, ptr %189, align 4
  %190 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4, i32 13
  store ptr @irq_chip_set_type_parent, ptr %190, align 4
  %191 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 4, i32 33
  store i32 20, ptr %191, align 4
  %192 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37
  store ptr %186, ptr %192, align 4
  %193 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 10
  store i32 0, ptr %193, align 4
  %194 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 9
  store ptr @handle_level_irq, ptr %194, align 4
  %195 = load ptr, ptr %6, align 4
  %196 = getelementptr inbounds %struct.device, ptr %195, i32 0, i32 25
  %197 = load ptr, ptr %196, align 8
  %198 = icmp eq ptr %197, null
  %199 = getelementptr inbounds %struct.device_node, ptr %197, i32 0, i32 3
  %200 = select i1 %198, ptr null, ptr %199
  %201 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 3
  store ptr %200, ptr %201, align 4
  %202 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 4
  store ptr %185, ptr %202, align 4
  %203 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %204 = load ptr, ptr %203, align 8
  %205 = call i32 @of_device_is_compatible(ptr noundef %204, ptr noundef nonnull @.str.4) #13
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, ptr @pm8xxx_mpp_child_to_parent_hwirq, ptr @pm8821_mpp_child_to_parent_hwirq
  %208 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 5
  store ptr %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 6
  store ptr @gpiochip_populate_parent_fwspec_twocell, ptr %209, align 4
  %210 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 7
  store ptr @pm8xxx_mpp_child_offset_to_irq, ptr %210, align 4
  %211 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %6, i32 0, i32 3, i32 37, i32 8, i32 9
  store ptr @pm8xxx_mpp_domain_translate, ptr %211, align 4
  %212 = call i32 @gpiochip_add_data_with_key(ptr noundef %155, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #13
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %184
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #14
  br label %232

215:                                              ; preds = %184
  %216 = load ptr, ptr %6, align 4
  %217 = getelementptr inbounds %struct.device, ptr %216, i32 0, i32 3
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load ptr, ptr %216, align 4
  br label %222

222:                                              ; preds = %220, %215
  %223 = phi ptr [ %221, %220 ], [ %218, %215 ]
  %224 = load i16, ptr %169, align 4
  %225 = zext i16 %224 to i32
  %226 = call i32 @gpiochip_add_pin_range(ptr noundef %155, ptr noundef %223, i32 noundef 0, i32 noundef 0, i32 noundef %225) #13
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %222
  %229 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.6) #14
  call void @gpiochip_remove(ptr noundef %155) #13
  br label %232

230:                                              ; preds = %222
  %231 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %231, align 8
  br label %232

232:                                              ; preds = %230, %228, %214, %180, %165, %151, %132, %32, %28, %24, %18, %17, %1
  %233 = phi i32 [ %153, %151 ], [ %212, %214 ], [ %226, %228 ], [ 0, %230 ], [ -6, %17 ], [ -12, %1 ], [ -12, %24 ], [ -12, %32 ], [ %44, %132 ], [ -6, %165 ], [ -6, %180 ], [ -12, %18 ], [ -12, %28 ]
  ret i32 %233
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %3, i32 0, i32 3
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
declare dso_local void @irq_chip_mask_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8821_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #6 {
  %6 = add i32 %1, 24
  store i32 %6, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8xxx_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #6 {
  %6 = add i32 %1, 128
  store i32 %6, ptr %3, align 4
  store i32 %2, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_twocell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_child_offset_to_irq(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = add i32 %1, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_domain_translate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
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
  %3 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [12 x ptr], ptr @pm8xxx_groups, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %5, i32 0, i32 5, i32 1
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
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [3 x ptr], ptr @pm8xxx_mpp_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  store ptr @pm8xxx_groups, ptr %2, align 4
  %6 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %2, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = trunc i32 %1 to i8
  %10 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 1
  store i8 %9, ptr %10, align 4
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %4, ptr noundef %8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pm8xxx_mpp_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  switch i8 %4, label %100 [
    i8 0, label %5
    i8 1, label %44
    i8 2, label %64
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = zext i8 %7 to i32
  %11 = add nsw i32 %10, -1
  br label %38

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 2
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 3
  %18 = load i8, ptr %17, align 2, !range !10
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 4
  %22 = load i8, ptr %21, align 1, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %28 [
    i32 600, label %38
    i32 10000, label %27
  ]

27:                                               ; preds = %24
  br label %38

28:                                               ; preds = %24
  br label %38

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 6
  %31 = load i8, ptr %30, align 1, !range !10
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 5
  %34 = load i8, ptr %33, align 4, !range !10
  %35 = icmp eq i8 %34, 0
  %36 = or i32 %32, 2
  %37 = select i1 %35, i32 %32, i32 %36
  br label %38

38:                                               ; preds = %29, %28, %27, %24, %20, %16, %9
  %39 = phi i32 [ %11, %9 ], [ 2, %27 ], [ 3, %28 ], [ 1, %20 ], [ 0, %24 ], [ %37, %29 ], [ 0, %16 ]
  %40 = phi i32 [ 224, %9 ], [ 64, %27 ], [ 64, %28 ], [ 64, %20 ], [ 64, %24 ], [ 32, %29 ], [ 0, %16 ]
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 7
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  br label %85

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 3
  %46 = load i8, ptr %45, align 2, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 10
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 6
  %53 = load i8, ptr %52, align 1, !range !10
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 5
  %56 = load i8, ptr %55, align 4, !range !10
  %57 = icmp eq i8 %56, 0
  %58 = or i32 %54, 2
  %59 = select i1 %57, i32 %54, i32 %58
  br label %85

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 9
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  br label %85

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 11
  %66 = load i8, ptr %65, align 2
  %67 = udiv i8 %66, 5
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %68, -1
  %70 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 8
  %71 = load i8, ptr %70, align 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = zext i8 %71 to i32
  %75 = add nsw i32 %74, -1
  br label %85

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 6
  %78 = load i8, ptr %77, align 1, !range !10
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %1, i32 0, i32 5
  %81 = load i8, ptr %80, align 4, !range !10
  %82 = icmp eq i8 %81, 0
  %83 = or i32 %79, 2
  %84 = select i1 %82, i32 %79, i32 %83
  br label %85

85:                                               ; preds = %76, %73, %60, %48, %38
  %86 = phi i32 [ %69, %73 ], [ %63, %60 ], [ %43, %38 ], [ %51, %48 ], [ %69, %76 ]
  %87 = phi i32 [ %75, %73 ], [ 0, %60 ], [ %39, %38 ], [ %59, %48 ], [ %84, %76 ]
  %88 = phi i32 [ 192, %73 ], [ 96, %60 ], [ %40, %38 ], [ 128, %48 ], [ 160, %76 ]
  %89 = shl nsw i32 %86, 2
  %90 = or i32 %87, %89
  %91 = or i32 %90, %88
  %92 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load i32, ptr %1, align 4
  %95 = and i32 %91, 255
  %96 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef %94, i32 noundef %95) #13
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %85
  %99 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.11) #14
  br label %100

100:                                              ; preds = %98, %85, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 255
  %11 = trunc i32 %9 to i8
  switch i8 %11, label %55 [
    i8 5, label %12
    i8 2, label %15
    i8 12, label %19
    i8 17, label %23
    i8 21, label %27
    i8 9, label %31
    i8 -127, label %35
    i8 -128, label %39
    i8 -126, label %43
    i8 -125, label %47
  ]

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  br label %51

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 4
  %17 = load i8, ptr %16, align 1, !range !10
  %18 = zext i8 %17 to i32
  br label %51

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %21 = load i8, ptr %20, align 1, !range !10
  %22 = zext i8 %21 to i32
  br label %51

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 6
  %25 = load i8, ptr %24, align 1, !range !10
  %26 = zext i8 %25 to i32
  br label %51

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 7
  %29 = load i8, ptr %28, align 2
  %30 = zext i8 %29 to i32
  br label %51

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 11
  %33 = load i8, ptr %32, align 2
  %34 = zext i8 %33 to i32
  br label %51

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  br label %51

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 9
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  br label %51

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  br label %51

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 5
  %49 = load i8, ptr %48, align 4, !range !10
  %50 = zext i8 %49 to i32
  br label %51

51:                                               ; preds = %47, %43, %39, %35, %31, %27, %23, %19, %15, %12
  %52 = phi i32 [ %50, %47 ], [ %46, %43 ], [ %42, %39 ], [ %38, %35 ], [ %34, %31 ], [ %30, %27 ], [ %26, %23 ], [ %22, %19 ], [ %18, %15 ], [ %14, %12 ]
  %53 = shl i32 %52, 8
  %54 = or i32 %53, %10
  store i32 %54, ptr %2, align 4
  br label %55

55:                                               ; preds = %51, %3
  %56 = phi i32 [ 0, %51 ], [ -22, %3 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %5, i32 0, i32 5, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %1, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %54, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 5
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 10
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 9
  %15 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 8
  %16 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 11
  %17 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 7
  %18 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 3
  %19 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 6
  %20 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 2
  %21 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 4
  %22 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %9, i32 0, i32 12
  br label %23

23:                                               ; preds = %51, %11
  %24 = phi i32 [ 0, %11 ], [ %52, %51 ]
  %25 = getelementptr i32, ptr %2, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 8
  %28 = trunc i32 %26 to i8
  switch i8 %28, label %48 [
    i8 5, label %29
    i8 2, label %30
    i8 12, label %31
    i8 17, label %32
    i8 21, label %35
    i8 9, label %37
    i8 -127, label %39
    i8 -128, label %41
    i8 -126, label %43
    i8 -125, label %45
  ]

29:                                               ; preds = %23
  store i32 %27, ptr %22, align 4
  br label %51

30:                                               ; preds = %23
  store i8 1, ptr %21, align 1
  br label %51

31:                                               ; preds = %23
  store i8 1, ptr %20, align 1
  br label %51

32:                                               ; preds = %23
  store i8 1, ptr %18, align 2
  %33 = icmp ugt i32 %26, 255
  %34 = zext i1 %33 to i8
  store i8 %34, ptr %19, align 1
  br label %51

35:                                               ; preds = %23
  %36 = trunc i32 %27 to i8
  store i8 %36, ptr %17, align 2
  br label %51

37:                                               ; preds = %23
  %38 = trunc i32 %27 to i8
  store i8 %38, ptr %16, align 2
  br label %51

39:                                               ; preds = %23
  %40 = trunc i32 %27 to i8
  store i8 %40, ptr %15, align 1
  br label %51

41:                                               ; preds = %23
  %42 = trunc i32 %27 to i8
  store i8 %42, ptr %14, align 4
  br label %51

43:                                               ; preds = %23
  %44 = trunc i32 %27 to i8
  store i8 %44, ptr %13, align 1
  br label %51

45:                                               ; preds = %23
  %46 = icmp ugt i32 %26, 255
  %47 = zext i1 %46 to i8
  store i8 %47, ptr %12, align 4
  br label %51

48:                                               ; preds = %23
  %49 = and i32 %26, 255
  %50 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.12, i32 noundef %49) #14
  br label %55

51:                                               ; preds = %45, %43, %41, %39, %37, %35, %32, %31, %30, %29
  %52 = add nuw i32 %24, 1
  %53 = icmp eq i32 %52, %3
  br i1 %53, label %54, label %23

54:                                               ; preds = %51, %4
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %5, ptr noundef %9)
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i32 [ -22, %48 ], [ 0, %54 ]
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %3, i32 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  switch i8 %9, label %15 [
    i8 0, label %10
    i8 1, label %12
    i8 2, label %16
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %7, i32 0, i32 2
  store i8 1, ptr %11, align 1
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %7, i32 0, i32 2
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %7, i32 0, i32 3
  store i8 1, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %10, %2
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %3, ptr noundef %7)
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ 0, %15 ], [ -22, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  switch i8 %10, label %15 [
    i8 0, label %13
    i8 1, label %11
    i8 2, label %11
  ]

11:                                               ; preds = %3, %3
  %12 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  store i8 0, ptr %12, align 1
  br label %13

13:                                               ; preds = %11, %3
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 3
  store i8 1, ptr %14, align 2
  br label %15

15:                                               ; preds = %13, %3
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %4, ptr noundef %8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !annotation !9
  %9 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 1, !range !10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 6
  %14 = load i8, ptr %13, align 1, !range !10
  %15 = zext i8 %14 to i32
  br label %27

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 15
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i32 noundef %1) #13
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = call i32 @irq_get_irqchip_state(i32 noundef %19, i32 noundef 3, ptr noundef nonnull %3) #13
  %23 = icmp eq i32 %22, 0
  %24 = load i8, ptr %3, align 1
  %25 = zext i8 %24 to i32
  %26 = select i1 %23, i32 %25, i32 %22
  br label %27

27:                                               ; preds = %21, %16, %12
  %28 = phi i32 [ %26, %21 ], [ %15, %12 ], [ %19, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.pinctrl_pin_desc, ptr %6, i32 %1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne i32 %2, 0
  %10 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %8, i32 0, i32 6
  %11 = zext i1 %9 to i8
  store i8 %11, ptr %10, align 1
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %4, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %101, label %6

6:                                                ; preds = %97, %2
  %7 = phi i32 [ %13, %97 ], [ 0, %2 ]
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %1) #13
  %9 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %8, i32 0, i32 5, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %7, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = add nuw nsw i32 %7, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %13) #13
  %14 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  switch i8 %15, label %97 [
    i8 0, label %16
    i8 1, label %51
    i8 2, label %77
  ]

16:                                               ; preds = %6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.49) #13
  %17 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 8
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %21) #13
  br label %97

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 2
  %24 = load i8, ptr %23, align 1, !range !10
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 3
  %27 = load i8, ptr %26, align 2, !range !10
  %28 = icmp eq i8 %27, 0
  br i1 %25, label %39, label %29

29:                                               ; preds = %22
  br i1 %28, label %38, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 4
  %32 = load i8, ptr %31, align 1, !range !10
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.51) #13
  br label %97

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 12
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %37) #13
  br label %97

38:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.54) #13
  br label %97

39:                                               ; preds = %22
  br i1 %28, label %97, label %40

40:                                               ; preds = %39
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.55) #13
  %41 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 5
  %42 = load i8, ptr %41, align 4, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 6
  %45 = load i8, ptr %44, align 1, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %43, label %47, label %49

47:                                               ; preds = %40
  %48 = select i1 %46, ptr @.str.57, ptr @.str.56
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %48) #13
  br label %97

49:                                               ; preds = %40
  %50 = select i1 %46, ptr @.str.59, ptr @.str.58
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %50) #13
  br label %97

51:                                               ; preds = %6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #13
  %52 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 3
  %53 = load i8, ptr %52, align 2, !range !10
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 10
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr [8 x ptr], ptr @pm8xxx_mpp_dbg_show_one.aout_lvls, i32 0, i32 %58
  %60 = load ptr, ptr %59, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %60) #13
  %61 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 5
  %62 = load i8, ptr %61, align 4, !range !10
  %63 = icmp eq i8 %62, 0
  %64 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 6
  %65 = load i8, ptr %64, align 1, !range !10
  %66 = icmp eq i8 %65, 0
  br i1 %63, label %67, label %69

67:                                               ; preds = %55
  %68 = select i1 %66, ptr @.str.57, ptr @.str.56
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %68) #13
  br label %97

69:                                               ; preds = %55
  %70 = select i1 %66, ptr @.str.59, ptr @.str.58
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %70) #13
  br label %97

71:                                               ; preds = %51
  %72 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 9
  %73 = load i8, ptr %72, align 4
  %74 = zext i8 %73 to i32
  %75 = getelementptr [8 x ptr], ptr @pm8xxx_mpp_dbg_show_one.amuxs, i32 0, i32 %74
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %76) #13
  br label %97

77:                                               ; preds = %6
  %78 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 11
  %79 = load i8, ptr %78, align 2
  %80 = zext i8 %79 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, i32 noundef %80) #13
  %81 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 8
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = zext i8 %82 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %85) #13
  br label %97

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 5
  %88 = load i8, ptr %87, align 4, !range !10
  %89 = icmp eq i8 %88, 0
  %90 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %12, i32 0, i32 6
  %91 = load i8, ptr %90, align 1, !range !10
  %92 = icmp eq i8 %91, 0
  br i1 %89, label %93, label %95

93:                                               ; preds = %86
  %94 = select i1 %92, ptr @.str.57, ptr @.str.56
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %94) #13
  br label %97

95:                                               ; preds = %86
  %96 = select i1 %92, ptr @.str.59, ptr @.str.58
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %96) #13
  br label %97

97:                                               ; preds = %95, %93, %84, %71, %69, %67, %49, %47, %39, %38, %35, %34, %20, %6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.34) #13
  %98 = load i16, ptr %3, align 4
  %99 = zext i16 %98 to i32
  %100 = icmp ult i32 %13, %99
  br i1 %100, label %6, label %101

101:                                              ; preds = %97, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #11 {
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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
