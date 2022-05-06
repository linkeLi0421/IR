; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-at91-pio4.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-at91-pio4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_pioctrl_data = type { i32, i32, i32 }
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
%struct.atmel_pioctrl = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atmel_group = type { ptr, i32 }
%struct.atmel_pin = type { i32, i32, i32, i32, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.anon.64 = type { i32, i32, [32 x i32] }

@__initcall__kmod_pinctrl_at91_pio4__210_1252_atmel_pinctrl_driver_init6 = internal global ptr @atmel_pinctrl_driver_init, section ".initcall6.init", align 4
@atmel_pinctrl_driver = internal global %struct.platform_driver { ptr @atmel_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @atmel_pctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"pinctrl-at91-pio4\00", align 1
@atmel_pctrl_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5d2_pioctrl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @microchip_sama7g5_pioctrl_data }, %struct.of_device_id zeroinitializer], align 4
@atmel_pctrl_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr @atmel_pctrl_suspend, ptr @atmel_pctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unknown compatible string\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@atmel_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str.12, ptr null, i32 0, ptr @atmel_pctlops, ptr @atmel_pmxops, ptr @atmel_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@atmel_custom_bindings = internal constant [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.38, i32 128, i32 0 }], align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"P%c%d\00", align 1
@atmel_gpio_chip = internal global %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_gpio_direction_input, ptr @atmel_gpio_direction_output, ptr @atmel_gpio_get, ptr @atmel_gpio_get_multiple, ptr @atmel_gpio_set, ptr @atmel_gpio_set_multiple, ptr null, ptr @atmel_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"missing irq resource for group %c\0A\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"can't add the irq domain\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"atmel gpio\00", align 1
@atmel_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @atmel_gpio_irq_ack, ptr @atmel_gpio_irq_mask, ptr null, ptr @atmel_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @atmel_gpio_irq_set_type, ptr @atmel_gpio_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to prepare and enable clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"failed to add gpiochip\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to add gpio pin range\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"atmel pinctrl initialized\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"atmel_pinctrl\00", align 1
@atmel_pctlops = internal constant %struct.pinctrl_ops { ptr @atmel_pctl_get_groups_count, ptr @atmel_pctl_get_group_name, ptr @atmel_pctl_get_group_pins, ptr null, ptr @atmel_pctl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@atmel_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @atmel_pmx_get_functions_count, ptr @atmel_pmx_get_function_name, ptr @atmel_pmx_get_function_groups, ptr @atmel_pmx_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@atmel_confops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @atmel_conf_pin_config_group_get, ptr @atmel_conf_pin_config_group_set, ptr @atmel_conf_pin_config_dbg_show, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"can't create maps for node %pOF\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"%pOF: could not parse node property\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"no pins found in node %pOF\0A\00", align 1
@atmel_functions = internal unnamed_addr constant [8 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"drive strength not updated (incorrect value)\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"unsupported configuration parameter: %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c" (%s, ioset %u) \00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"pull-up\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"pull-down\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"debounce\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"open-drain\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"schmitt\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"slew-rate\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"medium-drive\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"high-drive\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"low-drive\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"atmel,drive-strength\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"no bank associated to irq %u\0A\00", align 1
@atmel_sama5d2_pioctrl_data = internal constant %struct.atmel_pioctrl_data { i32 4, i32 32, i32 0 }, align 4
@microchip_sama7g5_pioctrl_data = internal constant %struct.atmel_pioctrl_data { i32 5, i32 8, i32 1 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_at91_pio4__210_1252_atmel_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atmel_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pinctrl_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 64, i32 noundef 3520) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %251, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 13
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 14
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %10, align 8
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_pctrl_of_match, ptr noundef %8) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  br label %251

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = shl i32 %17, 5
  %20 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.atmel_pioctrl_data, ptr %16, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = add i32 %19, -32
  store i32 %25, ptr %20, align 4
  %26 = load i32, ptr %21, align 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %20, align 4
  br label %28

28:                                               ; preds = %24, %14
  %29 = getelementptr inbounds %struct.atmel_pioctrl_data, ptr %16, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  store ptr %32, ptr %3, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = ptrtoint ptr %32 to i32
  br label %251

36:                                               ; preds = %28
  %37 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #9
  %38 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #10
  %41 = load ptr, ptr %38, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %251

43:                                               ; preds = %36
  %44 = load i32, ptr %20, align 4
  %45 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 4) #9
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %47, label %49, !prof !8

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  store ptr null, ptr %48, align 4
  br label %251

49:                                               ; preds = %43
  %50 = extractvalue { i32, i1 } %45, 0
  %51 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %50, i32 noundef 3520) #9
  %52 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %251, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %20, align 4
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 12) #9
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %251, label %58, !prof !8

58:                                               ; preds = %54
  %59 = extractvalue { i32, i1 } %56, 0
  %60 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %59, i32 noundef 3520) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %251, label %62

62:                                               ; preds = %58
  store ptr %60, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 1), align 4
  %63 = load i32, ptr %20, align 4
  store i32 %63, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 7), align 4
  store ptr @atmel_custom_bindings, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @atmel_pinctrl_desc, i32 0, i32 8), align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #9
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %251, label %66, !prof !8

66:                                               ; preds = %62
  %67 = extractvalue { i32, i1 } %64, 0
  %68 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %67, i32 noundef 3520) #9
  %69 = icmp eq ptr %68, null
  br i1 %69, label %251, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 5
  store ptr %68, ptr %71, align 4
  %72 = load i32, ptr %20, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 8) #9
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %75, label %77, !prof !8

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 4
  store ptr null, ptr %76, align 4
  br label %251

77:                                               ; preds = %70
  %78 = extractvalue { i32, i1 } %73, 0
  %79 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %78, i32 noundef 3520) #9
  %80 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 4
  store ptr %79, ptr %80, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %251, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %20, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %82
  %86 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #9
  %87 = load ptr, ptr %52, align 4
  store ptr %86, ptr %87, align 4
  %88 = load ptr, ptr %52, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %251, label %91

91:                                               ; preds = %118, %85
  %92 = phi ptr [ %125, %118 ], [ %89, %85 ]
  %93 = phi i32 [ %115, %118 ], [ 0, %85 ]
  %94 = phi ptr [ %119, %118 ], [ %79, %85 ]
  %95 = freeze i32 %93
  %96 = sdiv i32 %95, 32
  %97 = mul i32 %96, 32
  %98 = sub i32 %95, %97
  %99 = getelementptr %struct.atmel_group, ptr %94, i32 %93
  store i32 %93, ptr %92, align 4
  %100 = load ptr, ptr %52, align 4
  %101 = getelementptr ptr, ptr %100, i32 %93
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.atmel_pin, ptr %102, i32 0, i32 3
  store i32 %96, ptr %103, align 4
  %104 = load ptr, ptr %52, align 4
  %105 = getelementptr ptr, ptr %104, i32 %93
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.atmel_pin, ptr %106, i32 0, i32 4
  store i32 %98, ptr %107, align 4
  %108 = getelementptr %struct.pinctrl_pin_desc, ptr %60, i32 %93
  store i32 %93, ptr %108, align 4
  %109 = add nsw i32 %96, 65
  %110 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %109, i32 noundef %98) #9
  %111 = getelementptr %struct.pinctrl_pin_desc, ptr %60, i32 %93, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr ptr, ptr %68, i32 %93
  store ptr %110, ptr %112, align 4
  store ptr %110, ptr %99, align 4
  %113 = load i32, ptr %108, align 4
  %114 = getelementptr %struct.atmel_group, ptr %94, i32 %93, i32 1
  store i32 %113, ptr %114, align 4
  %115 = add nuw i32 %93, 1
  %116 = load i32, ptr %20, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %91
  %119 = load ptr, ptr %80, align 4
  %120 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #9
  %121 = load ptr, ptr %52, align 4
  %122 = getelementptr ptr, ptr %121, i32 %115
  store ptr %120, ptr %122, align 4
  %123 = load ptr, ptr %52, align 4
  %124 = getelementptr ptr, ptr %123, i32 %115
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %251, label %91

127:                                              ; preds = %91, %82
  %128 = phi i32 [ 0, %82 ], [ %116, %91 ]
  %129 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 8
  store ptr @atmel_gpio_chip, ptr %129, align 4
  %130 = trunc i32 %128 to i16
  store i16 %130, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 20), align 4
  %131 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load ptr, ptr %2, align 4
  br label %136

136:                                              ; preds = %134, %127
  %137 = phi ptr [ %135, %134 ], [ %132, %127 ]
  store ptr %137, ptr @atmel_gpio_chip, align 4
  store ptr %2, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 2), align 4
  %138 = load ptr, ptr %71, align 4
  store ptr %138, ptr getelementptr inbounds (%struct.gpio_chip, ptr @atmel_gpio_chip, i32 0, i32 22), align 4
  %139 = load i32, ptr %18, align 4
  %140 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %139, i32 4) #9
  %141 = extractvalue { i32, i1 } %140, 1
  br i1 %141, label %142, label %144, !prof !8

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 11
  store ptr null, ptr %143, align 4
  br label %251

144:                                              ; preds = %136
  %145 = extractvalue { i32, i1 } %140, 0
  %146 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %145, i32 noundef 3520) #9
  %147 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 11
  store ptr %146, ptr %147, align 4
  %148 = icmp eq ptr %146, null
  br i1 %148, label %251, label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %18, align 4
  %151 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %150, i32 136) #9
  %152 = extractvalue { i32, i1 } %151, 1
  br i1 %152, label %153, label %155, !prof !8

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 12
  store ptr null, ptr %154, align 4
  br label %251

155:                                              ; preds = %149
  %156 = extractvalue { i32, i1 } %151, 0
  %157 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %156, i32 noundef 3520) #9
  %158 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 12
  store ptr %157, ptr %158, align 4
  %159 = icmp eq ptr %157, null
  br i1 %159, label %251, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %18, align 4
  %162 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %161, i32 4) #9
  %163 = extractvalue { i32, i1 } %162, 1
  br i1 %163, label %164, label %166, !prof !8

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 10
  store ptr null, ptr %165, align 4
  br label %251

166:                                              ; preds = %160
  %167 = extractvalue { i32, i1 } %162, 0
  %168 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %167, i32 noundef 3520) #9
  %169 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 10
  store ptr %168, ptr %169, align 4
  %170 = icmp eq ptr %168, null
  br i1 %170, label %251, label %171

171:                                              ; preds = %166
  %172 = load i32, ptr %18, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %180, %171
  %175 = phi i32 [ %185, %180 ], [ 0, %171 ]
  %176 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 1024, i32 noundef %175) #9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = add i32 %175, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %179) #10
  br label %251

180:                                              ; preds = %174
  %181 = load i32, ptr %176, align 4
  %182 = load ptr, ptr %169, align 4
  %183 = getelementptr i32, ptr %182, i32 %175
  store i32 %181, ptr %183, align 4
  %184 = load i32, ptr %176, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %184, ptr noundef nonnull @atmel_gpio_irq_handler, ptr noundef nonnull %3) #9
  %185 = add nuw i32 %175, 1
  %186 = load i32, ptr %18, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %174, label %188

188:                                              ; preds = %180, %171
  %189 = load ptr, ptr %7, align 8
  %190 = load ptr, ptr %129, align 4
  %191 = getelementptr inbounds %struct.gpio_chip, ptr %190, i32 0, i32 20
  %192 = load i16, ptr %191, align 4
  %193 = zext i16 %192 to i32
  %194 = icmp eq ptr %189, null
  %195 = getelementptr inbounds %struct.device_node, ptr %189, i32 0, i32 3
  %196 = select i1 %194, ptr null, ptr %195
  %197 = tail call ptr @__irq_domain_add(ptr noundef %196, i32 noundef %193, i32 noundef %193, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #9
  %198 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 9
  store ptr %197, ptr %198, align 4
  %199 = icmp eq ptr %197, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #10
  br label %251

201:                                              ; preds = %188
  %202 = getelementptr inbounds %struct.irq_domain, ptr %197, i32 0, i32 1
  store ptr @.str.6, ptr %202, align 4
  %203 = load i32, ptr %20, align 4
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %213, label %205

205:                                              ; preds = %205, %201
  %206 = phi i32 [ %210, %205 ], [ 0, %201 ]
  %207 = load ptr, ptr %198, align 4
  %208 = tail call i32 @irq_create_mapping_affinity(ptr noundef %207, i32 noundef %206, ptr noundef null) #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %208, ptr noundef nonnull @atmel_gpio_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  %209 = tail call i32 @irq_set_chip_data(i32 noundef %208, ptr noundef nonnull %3) #9
  %210 = add nuw i32 %206, 1
  %211 = load i32, ptr %20, align 4
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %205, label %213

213:                                              ; preds = %205, %201
  %214 = load ptr, ptr %38, align 4
  %215 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %214)
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %213
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #10
  br label %248

218:                                              ; preds = %213
  %219 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @atmel_pinctrl_desc, ptr noundef nonnull %3) #9
  %220 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 3
  store ptr %219, ptr %220, align 4
  %221 = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = ptrtoint ptr %219 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #10
  br label %245

224:                                              ; preds = %218
  %225 = load ptr, ptr %129, align 4
  %226 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %225, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #9
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #10
  br label %245

229:                                              ; preds = %224
  %230 = load ptr, ptr %129, align 4
  %231 = load ptr, ptr %131, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load ptr, ptr %2, align 4
  br label %235

235:                                              ; preds = %233, %229
  %236 = phi ptr [ %234, %233 ], [ %231, %229 ]
  %237 = getelementptr inbounds %struct.gpio_chip, ptr %230, i32 0, i32 20
  %238 = load i16, ptr %237, align 4
  %239 = zext i16 %238 to i32
  %240 = tail call i32 @gpiochip_add_pin_range(ptr noundef %230, ptr noundef %236, i32 noundef 0, i32 noundef 0, i32 noundef %239) #9
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %235
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #10
  %243 = load ptr, ptr %129, align 4
  tail call void @gpiochip_remove(ptr noundef %243) #9
  br label %245

244:                                              ; preds = %235
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11) #10
  br label %251

245:                                              ; preds = %242, %228, %222
  %246 = phi i32 [ %223, %222 ], [ %226, %228 ], [ %240, %242 ]
  %247 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %247) #9
  tail call void @clk_unprepare(ptr noundef %247) #9
  br label %248

248:                                              ; preds = %245, %217
  %249 = phi i32 [ %215, %217 ], [ %246, %245 ]
  %250 = load ptr, ptr %198, align 4
  tail call void @irq_domain_remove(ptr noundef %250) #9
  br label %251

251:                                              ; preds = %248, %244, %200, %178, %166, %164, %155, %153, %144, %142, %118, %85, %77, %75, %66, %62, %58, %54, %49, %47, %40, %34, %13, %1
  %252 = phi i32 [ %35, %34 ], [ %42, %40 ], [ -22, %178 ], [ %249, %248 ], [ 0, %244 ], [ -19, %200 ], [ -19, %13 ], [ -12, %1 ], [ -12, %49 ], [ -12, %58 ], [ -12, %66 ], [ -12, %77 ], [ -12, %144 ], [ -12, %155 ], [ -12, %166 ], [ -12, %47 ], [ -12, %75 ], [ -12, %142 ], [ -12, %153 ], [ -12, %164 ], [ -12, %54 ], [ -12, %62 ], [ -12, %85 ], [ -12, %118 ]
  ret i32 %252
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  %10 = getelementptr inbounds %struct.atmel_pioctrl, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.atmel_pioctrl, ptr %7, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i32 [ 0, %13 ], [ %22, %21 ]
  %18 = getelementptr i32, ptr %15, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %5
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = add nuw i32 %17, 1
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %26, label %16

24:                                               ; preds = %16
  %25 = icmp slt i32 %17, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24, %21, %1
  %27 = getelementptr inbounds %struct.atmel_pioctrl, ptr %7, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, i32 noundef %5) #10
  br label %101

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %35(ptr noundef %38) #9
  br label %47

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %41(ptr noundef %42) #9
  %43 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call void %44(ptr noundef %42) #9
  br label %47

47:                                               ; preds = %46, %39, %37, %29
  %48 = shl i32 %17, 6
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr i8, ptr %49, i32 %48
  %51 = getelementptr i8, ptr %50, i32 44
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #9
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr i8, ptr %53, i32 %48
  %55 = getelementptr i8, ptr %54, i32 40
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !9
  %57 = and i32 %52, %56
  store i32 %57, ptr %3, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %92, label %59

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.atmel_pioctrl, ptr %7, i32 0, i32 8
  %61 = shl i32 %17, 5
  br label %74

62:                                               ; preds = %77, %74
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr i8, ptr %63, i32 %48
  %65 = getelementptr i8, ptr %64, i32 44
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #9, !srcloc !9
  store i32 %66, ptr %3, align 4
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i8, ptr %67, i32 %48
  %69 = getelementptr i8, ptr %68, i32 40
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !9
  %71 = load i32, ptr %3, align 4
  %72 = and i32 %71, %70
  store i32 %72, ptr %3, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %62, %59
  %75 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #9
  %76 = icmp slt i32 %75, 32
  br i1 %76, label %77, label %62

77:                                               ; preds = %77, %74
  %78 = phi i32 [ %90, %77 ], [ %75, %74 ]
  %79 = load ptr, ptr %60, align 4
  %80 = add i32 %78, %61
  %81 = call ptr @gpiochip_get_data(ptr noundef %79) #9
  %82 = getelementptr inbounds %struct.atmel_pioctrl, ptr %81, i32 0, i32 9
  %83 = load ptr, ptr %82, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  %84 = call ptr @__irq_resolve_mapping(ptr noundef %83, i32 noundef %80, ptr noundef nonnull %2) #9
  %85 = icmp eq ptr %84, null
  %86 = load i32, ptr %2, align 4
  %87 = select i1 %85, i32 0, i32 %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %88 = call i32 @generic_handle_irq(i32 noundef %87) #9
  %89 = add nsw i32 %78, 1
  %90 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %89) #9
  %91 = icmp slt i32 %90, 32
  br i1 %91, label %77, label %62

92:                                               ; preds = %62, %47
  %93 = load ptr, ptr %30, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.irq_chip, ptr %9, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi ptr [ %97, %95 ], [ %93, %92 ]
  %100 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %99(ptr noundef %100) #9
  br label %101

101:                                              ; preds = %98, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pctl_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.atmel_pioctrl, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atmel_pctl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.atmel_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pctl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.atmel_pioctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.atmel_group, ptr %7, i32 %1, i32 1
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pctl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %5, align 4
  %6 = call fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %16, %8
  %12 = phi ptr [ %17, %16 ], [ %9, %8 ]
  %13 = call fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %3)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @of_node_put(ptr noundef nonnull %12) #9
  br label %21

16:                                               ; preds = %11
  %17 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %12) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %11

19:                                               ; preds = %8
  %20 = icmp slt i32 %6, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %13, %15 ], [ %6, %19 ]
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %23, i32 noundef %24) #9
  %25 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.13, ptr noundef %1) #10
  br label %27

27:                                               ; preds = %21, %19, %16, %4
  %28 = phi i32 [ %22, %21 ], [ %6, %19 ], [ 0, %4 ], [ %13, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atmel_pctl_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store ptr null, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !10
  %9 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %104, label %11

11:                                               ; preds = %5
  %12 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %6) #9
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef %1) #10
  br label %104

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.property, ptr %9, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 2
  %21 = icmp ult i32 %19, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef %1) #10
  br label %101

25:                                               ; preds = %17
  %26 = load i32, ptr %6, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 2
  %29 = mul nuw nsw i32 %28, %20
  %30 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %29) #9
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %101

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %34 = call i32 @llvm.umax.i32(i32 %20, i32 1)
  br label %35

35:                                               ; preds = %97, %32
  %36 = phi i32 [ 0, %32 ], [ %99, %97 ]
  %37 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %36, ptr noundef nonnull %8) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %35
  %40 = load i32, ptr %8, align 4
  %41 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %42 = and i32 %40, 255
  %43 = lshr i32 %40, 16
  %44 = and i32 %43, 15
  %45 = icmp ugt i32 %44, 7
  br i1 %45, label %101, label %46

46:                                               ; preds = %39
  %47 = getelementptr [8 x ptr], ptr @atmel_functions, i32 0, i32 %44
  %48 = load ptr, ptr %47, align 4
  %49 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %50 = getelementptr inbounds %struct.atmel_pioctrl, ptr %49, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %101, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.atmel_pioctrl, ptr %49, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %61, %53
  %57 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %58 = getelementptr %struct.atmel_group, ptr %55, i32 %57, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, %42
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = add nuw i32 %57, 1
  %63 = icmp eq i32 %62, %51
  br i1 %63, label %101, label %56

64:                                               ; preds = %56
  %65 = getelementptr %struct.atmel_group, ptr %55, i32 %57
  %66 = icmp eq ptr %65, null
  br i1 %66, label %101, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %65, align 4
  %69 = getelementptr inbounds %struct.atmel_pioctrl, ptr %41, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr ptr, ptr %70, i32 %42
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.atmel_pin, ptr %72, i32 0, i32 1
  store i32 %44, ptr %73, align 4
  %74 = lshr i32 %40, 20
  %75 = and i32 %74, 15
  %76 = load ptr, ptr %69, align 4
  %77 = getelementptr ptr, ptr %76, i32 %42
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.atmel_pin, ptr %78, i32 0, i32 2
  store i32 %75, ptr %79, align 4
  %80 = load ptr, ptr %33, align 4
  %81 = getelementptr inbounds %struct.atmel_pioctrl, ptr %41, i32 0, i32 14
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %80, %82
  %84 = select i1 %83, ptr %1, ptr %80
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %69, align 4
  %87 = getelementptr ptr, ptr %86, i32 %42
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.atmel_pin, ptr %88, i32 0, i32 5
  store ptr %85, ptr %89, align 4
  %90 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %68, ptr noundef %48) #9
  %91 = load i32, ptr %6, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %67
  %94 = load ptr, ptr %7, align 4
  %95 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %68, ptr noundef %94, i32 noundef %91, i32 noundef 4) #9
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93, %67
  %98 = phi i32 [ %95, %93 ], [ 0, %67 ]
  %99 = add nuw nsw i32 %36, 1
  %100 = icmp eq i32 %99, %34
  br i1 %100, label %101, label %35

101:                                              ; preds = %97, %93, %64, %61, %46, %39, %35, %25, %22
  %102 = phi i32 [ %30, %25 ], [ -22, %22 ], [ -22, %61 ], [ %98, %97 ], [ %37, %35 ], [ %95, %93 ], [ -22, %39 ], [ -22, %64 ], [ -22, %46 ]
  %103 = load ptr, ptr %7, align 4
  call void @kfree(ptr noundef %103) #9
  br label %104

104:                                              ; preds = %101, %14, %5
  %105 = phi i32 [ %12, %14 ], [ %102, %101 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @atmel_pmx_get_functions_count(ptr nocapture noundef readnone %0) #7 {
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @atmel_pmx_get_function_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [8 x ptr], ptr @atmel_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pmx_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.atmel_pioctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.atmel_pioctrl, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.atmel_group, ptr %6, i32 %2, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.atmel_pioctrl, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr ptr, ptr %11, i32 %8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.atmel_pin, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.atmel_pin, ptr %13, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = shl i32 %15, 6
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = shl nuw i32 1, %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %21) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %22 = getelementptr i8, ptr %20, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !9
  %24 = and i32 %23, -8
  %25 = and i32 %1, 7
  %26 = or i32 %24, %25
  %27 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %28 = getelementptr inbounds %struct.atmel_pioctrl, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 %8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.atmel_pin, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.atmel_pin, ptr %31, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = shl i32 %33, 6
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = shl nuw i32 1, %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %40 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %26) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_conf_pin_config_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.atmel_group, ptr %8, i32 %1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %12 = getelementptr inbounds %struct.atmel_pioctrl, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.atmel_pin, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.atmel_pin, ptr %15, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  %21 = shl i32 %17, 6
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = shl nuw i32 1, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %24 = getelementptr i8, ptr %22, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  %26 = trunc i32 %5 to i8
  switch i8 %26, label %57 [
    i8 5, label %27
    i8 3, label %30
    i8 1, label %33
    i8 6, label %36
    i8 14, label %39
    i8 24, label %42
    i8 -128, label %49
  ]

27:                                               ; preds = %3
  %28 = and i32 %25, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %57, label %54

30:                                               ; preds = %3
  %31 = and i32 %25, 1536
  %32 = icmp eq i32 %31, 1024
  br i1 %32, label %54, label %57

33:                                               ; preds = %3
  %34 = and i32 %25, 1536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %54, label %57

36:                                               ; preds = %3
  %37 = and i32 %25, 16384
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %54

39:                                               ; preds = %3
  %40 = and i32 %25, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %54

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = and i32 %25, 2048
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %54

49:                                               ; preds = %3
  %50 = and i32 %25, 196608
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = lshr exact i32 %50, 8
  br label %54

54:                                               ; preds = %52, %46, %39, %36, %33, %30, %27
  %55 = phi i32 [ %53, %52 ], [ 256, %27 ], [ 256, %30 ], [ 256, %33 ], [ 256, %36 ], [ 256, %39 ], [ 256, %46 ]
  %56 = or i32 %55, %6
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %54, %49, %46, %42, %39, %36, %33, %30, %27, %3
  %58 = phi i32 [ 0, %54 ], [ -22, %27 ], [ -22, %30 ], [ -22, %33 ], [ -22, %36 ], [ -22, %39 ], [ -95, %42 ], [ -22, %46 ], [ -22, %49 ], [ -524, %3 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_conf_pin_config_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.atmel_pioctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.atmel_group, ptr %7, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.atmel_pioctrl, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.atmel_pin, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.atmel_pin, ptr %14, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = shl i32 %16, 6
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = shl nuw i32 1, %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %22) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %23 = getelementptr i8, ptr %21, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = getelementptr inbounds %struct.atmel_pioctrl, ptr %5, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = or i32 %24, 2048
  %29 = select i1 %27, i32 %24, i32 %28
  %30 = icmp eq i32 %3, 0
  br i1 %30, label %102, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %33 = and i32 %9, 31
  %34 = shl nuw i32 1, %33
  %35 = shl i32 %9, 1
  %36 = and i32 %35, -64
  br label %37

37:                                               ; preds = %98, %31
  %38 = phi i32 [ 0, %31 ], [ %100, %98 ]
  %39 = phi i32 [ %29, %31 ], [ %99, %98 ]
  %40 = getelementptr i32, ptr %2, i32 %38
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 8
  %43 = trunc i32 %41 to i8
  switch i8 %43, label %95 [
    i8 1, label %44
    i8 5, label %46
    i8 3, label %49
    i8 6, label %52
    i8 14, label %58
    i8 11, label %64
    i8 17, label %70
    i8 24, label %79
    i8 -128, label %86
  ]

44:                                               ; preds = %37
  %45 = and i32 %39, -1537
  br label %98

46:                                               ; preds = %37
  %47 = and i32 %39, -1537
  %48 = or i32 %47, 512
  br label %98

49:                                               ; preds = %37
  %50 = and i32 %39, -1537
  %51 = or i32 %50, 1024
  br label %98

52:                                               ; preds = %37
  %53 = icmp ult i32 %41, 256
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = and i32 %39, -16385
  br label %98

56:                                               ; preds = %52
  %57 = or i32 %39, 16384
  br label %98

58:                                               ; preds = %37
  %59 = icmp ult i32 %41, 256
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = or i32 %39, 32768
  br label %98

62:                                               ; preds = %58
  %63 = and i32 %39, -32769
  br label %98

64:                                               ; preds = %37
  %65 = icmp ult i32 %41, 256
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = and i32 %39, -12289
  br label %98

68:                                               ; preds = %64
  %69 = or i32 %39, 12288
  br label %98

70:                                               ; preds = %37
  %71 = or i32 %39, 256
  %72 = icmp ult i32 %41, 256
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i8, ptr %73, i32 %36
  br i1 %72, label %75, label %77

75:                                               ; preds = %70
  %76 = getelementptr i8, ptr %74, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %34) #9, !srcloc !11
  br label %98

77:                                               ; preds = %70
  %78 = getelementptr i8, ptr %74, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %34) #9, !srcloc !11
  br label %98

79:                                               ; preds = %37
  %80 = load i32, ptr %25, align 4
  %81 = icmp ne i32 %80, 0
  %82 = icmp ult i32 %41, 256
  %83 = select i1 %81, i1 %82, i1 false
  %84 = and i32 %39, -2049
  %85 = select i1 %83, i32 %84, i32 %39
  br label %98

86:                                               ; preds = %37
  %87 = add nsw i32 %42, -1
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = and i32 %39, -196609
  %91 = shl nuw nsw i32 %42, 16
  %92 = or i32 %91, %90
  br label %98

93:                                               ; preds = %86
  %94 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.25) #10
  br label %98

95:                                               ; preds = %37
  %96 = and i32 %41, 255
  %97 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.26, i32 noundef %96) #10
  br label %98

98:                                               ; preds = %95, %93, %89, %79, %77, %75, %68, %66, %62, %60, %56, %54, %49, %46, %44
  %99 = phi i32 [ %39, %95 ], [ %39, %93 ], [ %92, %89 ], [ %71, %75 ], [ %71, %77 ], [ %67, %66 ], [ %69, %68 ], [ %61, %60 ], [ %63, %62 ], [ %55, %54 ], [ %57, %56 ], [ %51, %49 ], [ %48, %46 ], [ %45, %44 ], [ %85, %79 ]
  %100 = add nuw i32 %38, 1
  %101 = icmp eq i32 %100, %3
  br i1 %101, label %102, label %37

102:                                              ; preds = %98, %4
  %103 = phi i32 [ %29, %4 ], [ %99, %98 ]
  %104 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %105 = getelementptr inbounds %struct.atmel_pioctrl, ptr %104, i32 0, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr ptr, ptr %106, i32 %9
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.atmel_pin, ptr %108, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.atmel_pin, ptr %108, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %104, align 4
  %114 = shl i32 %110, 6
  %115 = getelementptr i8, ptr %113, i32 %114
  %116 = shl nuw i32 1, %112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %116) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %117 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %103) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_conf_pin_config_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %3
  %13 = icmp eq ptr %8, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %10, i32 noundef %16) #9
  br label %17

17:                                               ; preds = %14, %12
  %18 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %19 = getelementptr inbounds %struct.atmel_pioctrl, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr ptr, ptr %20, i32 %2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atmel_pin, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.atmel_pin, ptr %22, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %18, align 4
  %28 = shl i32 %24, 6
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = shl nuw i32 1, %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %30) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %31 = getelementptr i8, ptr %29, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !9
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  br label %36

36:                                               ; preds = %35, %17
  %37 = and i32 %32, 1024
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.30) #9
  br label %40

40:                                               ; preds = %39, %36
  %41 = and i32 %32, 4096
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.31) #9
  br label %44

44:                                               ; preds = %43, %40
  %45 = and i32 %32, 16384
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32) #9
  br label %48

48:                                               ; preds = %47, %44
  %49 = and i32 %32, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33) #9
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = and i32 %32, 2048
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.34) #9
  br label %60

60:                                               ; preds = %59, %52
  %61 = and i32 %32, 196608
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = icmp eq i32 %61, 196608
  %65 = select i1 %64, ptr @.str.36, ptr @.str.37
  %66 = icmp eq i32 %61, 131072
  %67 = select i1 %66, ptr @.str.35, ptr %65
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull %67) #9
  br label %68

68:                                               ; preds = %63, %60, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = load ptr, ptr %3, align 4
  %14 = shl i32 %9, 6
  %15 = getelementptr i8, ptr %13, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #9, !srcloc !11
  %16 = load i32, ptr %8, align 4
  %17 = load ptr, ptr %3, align 4
  %18 = shl i32 %16, 6
  %19 = getelementptr i8, ptr %17, i32 %18
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !9
  %22 = and i32 %21, -257
  %23 = load i32, ptr %8, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = shl i32 %23, 6
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %22) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 20, i32 16
  %13 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = load ptr, ptr %4, align 4
  %17 = shl i32 %10, 6
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #9, !srcloc !11
  %20 = load i32, ptr %9, align 4
  %21 = load i32, ptr %13, align 4
  %22 = shl nuw i32 1, %21
  %23 = load ptr, ptr %4, align 4
  %24 = shl i32 %20, 6
  %25 = getelementptr i8, ptr %23, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #9, !srcloc !11
  %26 = load i32, ptr %9, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = shl i32 %26, 6
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = getelementptr i8, ptr %29, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !9
  %32 = or i32 %31, 256
  %33 = load i32, ptr %9, align 4
  %34 = load ptr, ptr %4, align 4
  %35 = shl i32 %33, 6
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %32) #9, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = shl i32 %9, 6
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !9
  %15 = getelementptr inbounds %struct.atmel_pin, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %14, %16
  %18 = and i32 %17, 1
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_get_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 31
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %2, i8 0, i32 %9, i1 false) #9
  %10 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %31, %3
  %14 = phi i32 [ %32, %31 ], [ %11, %3 ]
  %15 = phi i32 [ %33, %31 ], [ 0, %3 ]
  %16 = getelementptr i32, ptr %1, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  %21 = shl i32 %15, 6
  %22 = getelementptr i8, ptr %20, i32 8
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = load i32, ptr %16, align 4
  %26 = and i32 %25, %24
  %27 = getelementptr i32, ptr %2, i32 %15
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = load i32, ptr %10, align 4
  br label %31

31:                                               ; preds = %19, %13
  %32 = phi i32 [ %14, %13 ], [ %30, %19 ]
  %33 = add nuw i32 %15, 1
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %13, label %35

35:                                               ; preds = %31, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr ptr, ptr %6, i32 %1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 20, i32 16
  %13 = getelementptr inbounds %struct.atmel_pin, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = load ptr, ptr %4, align 4
  %17 = shl i32 %10, 6
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr i8, ptr %18, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_gpio_set_multiple(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %30, %3
  %9 = phi i32 [ %31, %30 ], [ %6, %3 ]
  %10 = phi i32 [ %32, %30 ], [ 0, %3 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %8
  %15 = getelementptr i32, ptr %2, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %12
  %18 = load ptr, ptr %4, align 4
  %19 = shl i32 %10, 6
  %20 = getelementptr i8, ptr %18, i32 16
  %21 = getelementptr i8, ptr %20, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %17) #9, !srcloc !11
  %22 = load i32, ptr %11, align 4
  %23 = load i32, ptr %15, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  %28 = getelementptr i8, ptr %27, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #9, !srcloc !11
  %29 = load i32, ptr %5, align 4
  br label %30

30:                                               ; preds = %14, %8
  %31 = phi i32 [ %9, %8 ], [ %29, %14 ]
  %32 = add nuw i32 %10, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %8, label %34

34:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !10
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %3) #9
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @atmel_gpio_irq_ack(ptr nocapture noundef %0) #7 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr ptr, ptr %5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = load ptr, ptr %3, align 4
  %16 = shl i32 %11, 6
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atmel_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr ptr, ptr %5, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.atmel_pin, ptr %9, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %13
  %15 = load ptr, ptr %3, align 4
  %16 = shl i32 %11, 6
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr ptr, ptr %6, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.atmel_pin, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.atmel_pin, ptr %10, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = load ptr, ptr %4, align 4
  %17 = shl i32 %12, 6
  %18 = getelementptr i8, ptr %16, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %15) #9, !srcloc !11
  %19 = load i32, ptr %11, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = shl i32 %19, 6
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #9, !srcloc !9
  %25 = and i32 %24, -117440513
  switch i32 %1, label %57 [
    i32 1, label %26
    i32 2, label %31
    i32 3, label %35
    i32 8, label %40
    i32 4, label %45
  ]

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.irq_desc, ptr %28, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %29, align 4
  %30 = or i32 %25, 16777216
  br label %50

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.irq_desc, ptr %33, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %34, align 4
  br label %50

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.irq_desc, ptr %37, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %38, align 4
  %39 = or i32 %25, 33554432
  br label %50

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.irq_desc, ptr %42, i32 0, i32 3
  store ptr @handle_level_irq, ptr %43, align 4
  %44 = or i32 %25, 50331648
  br label %50

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.irq_desc, ptr %47, i32 0, i32 3
  store ptr @handle_level_irq, ptr %48, align 4
  %49 = or i32 %25, 67108864
  br label %50

50:                                               ; preds = %45, %40, %35, %31, %26
  %51 = phi i32 [ %49, %45 ], [ %44, %40 ], [ %39, %35 ], [ %25, %31 ], [ %30, %26 ]
  %52 = load i32, ptr %11, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = shl i32 %52, 6
  %55 = getelementptr i8, ptr %53, i32 %54
  %56 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %51) #9, !srcloc !11
  br label %57

57:                                               ; preds = %50, %2
  %58 = phi i32 [ 0, %50 ], [ -22, %2 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = and i32 %6, 31
  %9 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i32, ptr %10, i32 %7
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef %1) #9
  %14 = icmp eq i32 %1, 0
  %15 = shl nuw i32 1, %8
  br i1 %14, label %22, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i32, ptr %18, i32 %7
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %15
  store i32 %21, ptr %19, align 4
  br label %29

22:                                               ; preds = %2
  %23 = xor i32 %15, -1
  %24 = getelementptr inbounds %struct.atmel_pioctrl, ptr %4, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i32, ptr %25, i32 %7
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %22, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pctrl_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 12
  %9 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 11
  br label %10

10:                                               ; preds = %45, %7
  %11 = phi i32 [ 0, %7 ], [ %46, %45 ]
  %12 = load ptr, ptr %3, align 4
  %13 = shl i32 %11, 6
  %14 = getelementptr i8, ptr %12, i32 40
  %15 = getelementptr i8, ptr %14, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !9
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr %struct.anon.64, ptr %17, i32 %11
  store i32 %16, ptr %18, align 4
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i32, ptr %19, i32 %11
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, -1
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = getelementptr i8, ptr %24, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #9, !srcloc !11
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr i8, ptr %26, i32 24
  %28 = getelementptr i8, ptr %27, i32 %13
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !9
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr %struct.anon.64, ptr %30, i32 %11, i32 1
  store i32 %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %32, %10
  %33 = phi i32 [ 0, %10 ], [ %43, %32 ]
  %34 = shl nuw i32 1, %33
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr i8, ptr %35, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !11
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr i8, ptr %37, i32 %13
  %39 = getelementptr i8, ptr %38, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #9, !srcloc !9
  %41 = load ptr, ptr %8, align 4
  %42 = getelementptr %struct.anon.64, ptr %41, i32 %11, i32 2, i32 %33
  store i32 %40, ptr %42, align 4
  %43 = add nuw nsw i32 %33, 1
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %32

45:                                               ; preds = %32
  %46 = add nuw i32 %11, 1
  %47 = load i32, ptr %4, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %10, label %49

49:                                               ; preds = %45, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_pctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.atmel_pioctrl, ptr %3, i32 0, i32 12
  br label %9

9:                                                ; preds = %37, %7
  %10 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.anon.64, ptr %11, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = shl i32 %10, 6
  %16 = getelementptr i8, ptr %14, i32 32
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #9, !srcloc !11
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr %struct.anon.64, ptr %18, i32 %10, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = getelementptr i8, ptr %22, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #9, !srcloc !11
  br label %24

24:                                               ; preds = %24, %9
  %25 = phi i32 [ 0, %9 ], [ %35, %24 ]
  %26 = shl nuw i32 1, %25
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !11
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr %struct.anon.64, ptr %29, i32 %10, i32 2, i32 %25
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %3, align 4
  %33 = getelementptr i8, ptr %32, i32 %15
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #9, !srcloc !11
  %35 = add nuw nsw i32 %25, 1
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %24

37:                                               ; preds = %24
  %38 = add nuw i32 %10, 1
  %39 = load i32, ptr %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %9, label %41

41:                                               ; preds = %37, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 3741750}
!10 = !{!"auto-init"}
!11 = !{i64 3741332}
!12 = !{i64 2152515017}
!13 = !{i64 2152515602}
