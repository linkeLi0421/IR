; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-as3722.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-as3722.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.as3722_pin_function = type { ptr, ptr, i32, i32 }
%struct.as3722_pingroup = type { ptr, [1 x i32], i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
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
%struct.as3722_pctrl_info = type { ptr, ptr, ptr, %struct.gpio_chip, [8 x i32], ptr, i32, ptr, i32, ptr, i32, [8 x %struct.as3722_gpio_pin_control] }
%struct.as3722_gpio_pin_control = type { i32, i32 }
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }

@__initcall__kmod_pinctrl_as3722__206_625_as3722_pinctrl_driver_init6 = internal global ptr @as3722_pinctrl_driver_init, section ".initcall6.init", align 4
@as3722_pinctrl_driver = internal global %struct.platform_driver { ptr @as3722_pinctrl_probe, ptr @as3722_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @as3722_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_as3722_pinctrl_driver_exit = internal global ptr @as3722_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias207 = internal constant [45 x i8] c"pinctrl_as3722.alias=platform:as3722-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [62 x i8] c"pinctrl_as3722.description=AS3722 pin control and GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author209 = internal constant [60 x i8] c"pinctrl_as3722.author=Laxman Dewangan<ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file210 = internal constant [51 x i8] c"pinctrl_as3722.file=drivers/pinctrl/pinctrl-as3722\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [30 x i8] c"pinctrl_as3722.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"as3722-pinctrl\00", align 1
@as3722_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ams,as3722-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@as3722_pins_desc = internal constant [8 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.4, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.5, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.6, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.7, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.8, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.9, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.10, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.11, ptr null }], align 4
@as3722_pin_function = internal constant [14 x %struct.as3722_pin_function] [%struct.as3722_pin_function { ptr @.str.12, ptr @gpio_groups, i32 8, i32 0 }, %struct.as3722_pin_function { ptr @.str.13, ptr @gpio_groups, i32 8, i32 1 }, %struct.as3722_pin_function { ptr @.str.14, ptr @gpio_groups, i32 8, i32 3 }, %struct.as3722_pin_function { ptr @.str.15, ptr @gpio_groups, i32 8, i32 2 }, %struct.as3722_pin_function { ptr @.str.16, ptr @gpio_groups, i32 8, i32 13 }, %struct.as3722_pin_function { ptr @.str.17, ptr @gpio_groups, i32 8, i32 5 }, %struct.as3722_pin_function { ptr @.str.18, ptr @gpio_groups, i32 8, i32 6 }, %struct.as3722_pin_function { ptr @.str.19, ptr @gpio_groups, i32 8, i32 14 }, %struct.as3722_pin_function { ptr @.str.20, ptr @gpio_groups, i32 8, i32 7 }, %struct.as3722_pin_function { ptr @.str.21, ptr @gpio_groups, i32 8, i32 4 }, %struct.as3722_pin_function { ptr @.str.22, ptr @gpio_groups, i32 8, i32 12 }, %struct.as3722_pin_function { ptr @.str.23, ptr @gpio_groups, i32 8, i32 8 }, %struct.as3722_pin_function { ptr @.str.24, ptr @gpio_groups, i32 8, i32 9 }, %struct.as3722_pin_function { ptr @.str.25, ptr @gpio_groups, i32 8, i32 11 }], align 4
@as3722_pingroups = internal constant [8 x %struct.as3722_pingroup] [%struct.as3722_pingroup { ptr @.str.4, [1 x i32] zeroinitializer, i32 1 }, %struct.as3722_pingroup { ptr @.str.5, [1 x i32] [i32 1], i32 1 }, %struct.as3722_pingroup { ptr @.str.6, [1 x i32] [i32 2], i32 1 }, %struct.as3722_pingroup { ptr @.str.7, [1 x i32] [i32 3], i32 1 }, %struct.as3722_pingroup { ptr @.str.8, [1 x i32] [i32 4], i32 1 }, %struct.as3722_pingroup { ptr @.str.9, [1 x i32] [i32 5], i32 1 }, %struct.as3722_pingroup { ptr @.str.10, [1 x i32] [i32 6], i32 1 }, %struct.as3722_pingroup { ptr @.str.11, [1 x i32] [i32 7], i32 1 }], align 4
@as3722_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @as3722_pinctrl_ops, ptr @as3722_pinmux_ops, ptr @as3722_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@as3722_gpio_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str.32, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @as3722_gpio_direction_input, ptr @as3722_gpio_direction_output, ptr @as3722_gpio_get, ptr null, ptr @as3722_gpio_set, ptr null, ptr null, ptr @as3722_gpio_to_irq, ptr null, ptr null, ptr null, i32 -1, i16 8, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Couldn't register gpiochip, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Couldn't add pin range, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@gpio_groups = internal constant [8 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"interrupt-out\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"gpio-in-interrupt\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"vsup-vbat-low-undebounce-out\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"vsup-vbat-low-debounce-out\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"voltage-in-standby\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"oc-pg-sd0\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"oc-pg-sd6\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"powergood-out\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"pwm-in\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"pwm-out\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"clk32k-out\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"watchdog-in\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"soft-reset-in\00", align 1
@as3722_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @as3722_pinctrl_get_groups_count, ptr @as3722_pinctrl_get_group_name, ptr @as3722_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@as3722_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @as3722_pinctrl_get_funcs_count, ptr @as3722_pinctrl_get_func_name, ptr @as3722_pinctrl_get_func_groups, ptr @as3722_pinctrl_set, ptr @as3722_pinctrl_gpio_request_enable, ptr null, ptr @as3722_pinctrl_gpio_set_direction, i8 0 }, align 4
@as3722_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @as3722_pinconf_get, ptr @as3722_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [34 x i8] c"GPIO%d_CTRL_REG update failed %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"GPIO%d_CTRL update failed %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"%s direction for GPIO %d not supported\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Properties not supported\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"as3722-gpio\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"GPIO_CONTROL%d_REG read failed: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"GPIO_SIGNAL_IN_REG read failed: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"GPIO_SIGNAL_OUT_REG update failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias207, ptr @__UNIQUE_ID_author209, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__exitcall_as3722_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_as3722__206_625_as3722_pinctrl_driver_init6, ptr @as3722_pinctrl_driver_exit], section "llvm.metadata"
@switch.table.as3722_gpio_get = private unnamed_addr constant [8 x i32] [i32 33, i32 32, i32 33, i32 33, i32 33, i32 33, i32 33, i32 32], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3722_pinctrl_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3722_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3722_pinctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @dev_fwnode(ptr noundef %4) #7
  tail call void @device_set_node(ptr noundef %2, ptr noundef %5) #7
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 436, i32 noundef 3520) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  store ptr %2, ptr %6, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 2
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %13, align 8
  %14 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 9
  store ptr @as3722_pins_desc, ptr %14, align 4
  %15 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 10
  store i32 8, ptr %15, align 4
  %16 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 5
  store ptr @as3722_pin_function, ptr %16, align 4
  %17 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 6
  store i32 14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 7
  store ptr @as3722_pingroups, ptr %18, align 4
  %19 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 8
  store i32 8, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %8
  %24 = load ptr, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi ptr [ %24, %23 ], [ %21, %8 ]
  store ptr %26, ptr @as3722_pinctrl_desc, align 4
  store ptr @as3722_pins_desc, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @as3722_pinctrl_desc, i32 0, i32 1), align 4
  store i32 8, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @as3722_pinctrl_desc, i32 0, i32 2), align 4
  %27 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @as3722_pinctrl_desc, ptr noundef nonnull %6) #7
  %28 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #8
  %31 = load ptr, ptr %28, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %49

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %34, ptr noundef nonnull align 4 dereferenceable(304) @as3722_gpio_chip, i32 304, i1 false)
  %35 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %6, i32 0, i32 3, i32 2
  store ptr %2, ptr %35, align 4
  %36 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %34, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %36) #8
  br label %49

39:                                               ; preds = %33
  %40 = load ptr, ptr %20, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi ptr [ %43, %42 ], [ %40, %39 ]
  %46 = tail call i32 @gpiochip_add_pin_range(ptr noundef %34, ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 8) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %46) #8
  tail call void @gpiochip_remove(ptr noundef %34) #7
  br label %49

49:                                               ; preds = %48, %44, %38, %30, %1
  %50 = phi i32 [ %32, %30 ], [ %36, %38 ], [ %46, %48 ], [ -12, %1 ], [ 0, %44 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

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
define internal i32 @as3722_pinctrl_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %2, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @as3722_pinctrl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.as3722_pingroup, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.as3722_pingroup, ptr %7, i32 %1, i32 1
  store ptr %8, ptr %2, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.as3722_pingroup, ptr %9, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_get_funcs_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @as3722_pinctrl_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.as3722_pin_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.as3722_pin_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.as3722_pin_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = add i32 %2, 8
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.as3722_pin_function, ptr %7, i32 %1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 3
  %11 = and i32 %10, 120
  %12 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.as3722, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %5, i32 noundef 120, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.26, i32 noundef %2, i32 noundef %16) #8
  br label %34

20:                                               ; preds = %3
  %21 = getelementptr %struct.as3722_pctrl_info, ptr %4, i32 0, i32 11, i32 %2
  %22 = getelementptr %struct.as3722_pctrl_info, ptr %4, i32 0, i32 11, i32 %2, i32 1
  store i32 %1, ptr %22, align 4
  %23 = add nsw i32 %11, -48
  %24 = lshr exact i32 %23, 3
  switch i32 %24, label %34 [
    i32 0, label %25
    i32 1, label %25
    i32 2, label %25
    i32 6, label %25
    i32 8, label %25
  ]

25:                                               ; preds = %20, %20, %20, %20, %20
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.as3722, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %5, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.27, i32 noundef %2, i32 noundef %29) #8
  br label %34

33:                                               ; preds = %25
  store i32 1, ptr %21, align 4
  br label %34

34:                                               ; preds = %33, %31, %20, %18
  %35 = phi i32 [ %16, %18 ], [ %29, %31 ], [ %16, %20 ], [ %29, %33 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr %struct.as3722_pctrl_info, ptr %4, i32 0, i32 11, i32 %2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 -16
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinctrl_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.as3722_pctrl_info, ptr %5, i32 0, i32 11, i32 %2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %4
  %13 = and i32 %9, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = and i32 %9, 32
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 2, i32 6
  br label %34

19:                                               ; preds = %12
  br i1 %3, label %20, label %27

20:                                               ; preds = %19
  %21 = and i32 %9, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = and i32 %9, 8
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 5
  br label %34

27:                                               ; preds = %19
  %28 = and i32 %9, 8
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 7
  br label %34

31:                                               ; preds = %4
  %32 = load ptr, ptr %5, align 4
  %33 = select i1 %3, ptr @.str.29, ptr @.str.30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.28, ptr noundef nonnull %33, i32 noundef %2) #8
  br label %40

34:                                               ; preds = %27, %23, %20, %15
  %35 = phi i32 [ %30, %27 ], [ %26, %23 ], [ 4, %20 ], [ %18, %15 ]
  %36 = add i32 %2, 8
  %37 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %36, i32 noundef 7, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i32 [ -22, %31 ], [ %39, %34 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %17 [
    i8 1, label %8
    i8 5, label %19
    i8 3, label %14
    i8 6, label %15
    i8 2, label %16
  ]

8:                                                ; preds = %3
  %9 = getelementptr %struct.as3722_pctrl_info, ptr %4, i32 0, i32 11, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 40
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 256, i32 0
  br label %19

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  br label %19

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31) #8
  br label %28

19:                                               ; preds = %16, %15, %14, %8, %3
  %20 = phi i32 [ 0, %16 ], [ 0, %15 ], [ 0, %14 ], [ %13, %8 ], [ 0, %3 ]
  %21 = phi i32 [ 4, %16 ], [ 64, %15 ], [ 8, %14 ], [ 0, %8 ], [ 32, %3 ]
  %22 = getelementptr %struct.as3722_pctrl_info, ptr %4, i32 0, i32 11, i32 %1
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 %20, i32 256
  %27 = or i32 %26, %6
  store i32 %27, ptr %2, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = phi i32 [ -524, %17 ], [ 0, %19 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr %struct.as3722_pctrl_info, ptr %5, i32 0, i32 11, i32 %1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %28, %7
  %11 = phi i32 [ %9, %7 ], [ %29, %28 ]
  %12 = phi i32 [ 0, %7 ], [ %30, %28 ]
  %13 = getelementptr i32, ptr %2, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = trunc i32 %14 to i8
  switch i8 %15, label %26 [
    i8 4, label %28
    i8 1, label %16
    i8 5, label %18
    i8 3, label %20
    i8 2, label %22
    i8 6, label %24
  ]

16:                                               ; preds = %10
  %17 = and i32 %11, -41
  br label %28

18:                                               ; preds = %10
  %19 = or i32 %11, 32
  br label %28

20:                                               ; preds = %10
  %21 = or i32 %11, 8
  br label %28

22:                                               ; preds = %10
  %23 = or i32 %11, 4
  br label %28

24:                                               ; preds = %10
  %25 = or i32 %11, 64
  br label %28

26:                                               ; preds = %10
  %27 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31) #8
  br label %32

28:                                               ; preds = %24, %22, %20, %18, %16, %10
  %29 = phi i32 [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %11, %10 ]
  store i32 %29, ptr %8, align 4
  %30 = add nuw i32 %12, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %10

32:                                               ; preds = %28, %26, %4
  %33 = phi i32 [ -524, %26 ], [ 0, %4 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_gpio_direction_input(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %5) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @as3722_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %4 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %1
  %7 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %6) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = add i32 %1, 8
  %9 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %8, ptr noundef nonnull %3) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %11) #8
  br label %39

15:                                               ; preds = %2
  %16 = load i32, ptr %3, align 4
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %16, 7
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 -9, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds [8 x i32], ptr @switch.table.as3722_gpio_get, i32 0, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %9, align 4
  %28 = call i32 @regmap_read(ptr noundef %27, i32 noundef %26, ptr noundef nonnull %4) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.34, i32 noundef %28) #8
  br label %39

32:                                               ; preds = %24
  %33 = load i32, ptr %4, align 4
  %34 = shl nuw i32 1, %1
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, %18
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %32, %30, %15, %13
  %40 = phi i32 [ %11, %13 ], [ %28, %30 ], [ %38, %32 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @as3722_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = add i32 %1, 8
  %9 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %8, ptr noundef nonnull %4) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %11) #8
  br label %30

15:                                               ; preds = %3
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %17, 0
  %19 = icmp eq i32 %2, 0
  %20 = shl nuw i32 1, %1
  %21 = select i1 %18, i32 0, i32 %20
  %22 = select i1 %18, i32 %20, i32 0
  %23 = select i1 %19, i32 %21, i32 %22
  store i32 %23, ptr %4, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = and i32 %23, 255
  %26 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 32, i32 noundef %20, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.35, i32 noundef %26) #8
  br label %30

30:                                               ; preds = %28, %15, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.as3722_pctrl_info, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.as3722, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_irq_get_virq(ptr noundef %7, i32 noundef %1) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
