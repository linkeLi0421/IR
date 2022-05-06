; ModuleID = '/llk/IR/drivers/pinctrl/nomadik/pinctrl-abx500.c_pt.bc'
source_filename = "../drivers/pinctrl/nomadik/pinctrl-abx500.c"
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.abx500_pinctrl = type { ptr, ptr, ptr, %struct.gpio_chip, ptr, ptr, i32 }
%struct.abx500_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.abx500_pinrange = type { i32, i32, i32 }
%struct.abx500_gpio_irq_cluster = type { i32, i32, i32 }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }
%struct.alternate_functions = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.abx500_pingroup = type { ptr, ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.abx500_function = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_abx500__247_1101_abx500_gpio_init1 = internal global ptr @abx500_gpio_init, section ".initcall1.init", align 4
@abx500_gpio_driver = internal global %struct.platform_driver { ptr @abx500_gpio_probe, ptr @abx500_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @abx500_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"abx500-gpio\00", align 1
@abx500_gpio_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8505-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"gpio dt node missing\0A\00", align 1
@abx500gpio_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @abx500_gpio_direction_input, ptr @abx500_gpio_direction_output, ptr @abx500_gpio_get, ptr null, ptr @abx500_gpio_set, ptr null, ptr null, ptr @abx500_gpio_to_irq, ptr @abx500_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"gpio dt not matching\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Unsupported pinctrl sub driver (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid SOC data\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to add gpiochip: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"added gpiochip\0A\00", align 1
@abx500_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str.32, ptr null, i32 0, ptr @abx500_pinctrl_ops, ptr @abx500_pinmux_ops, ptr @abx500_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"could not register abx500 pinctrl driver\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"registered pin controller\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"initialized abx500 pinctrl driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s write reg, %x offset %x failed (%d)\0A\00", align 1
@__func__.abx500_gpio_set_bits = private unnamed_addr constant [21 x i8] c"abx500_gpio_set_bits\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%s failed (%d)\0A\00", align 1
@__func__.abx500_gpio_direction_output = private unnamed_addr constant [29 x i8] c"abx500_gpio_direction_output\00", align 1
@__func__.abx500_gpio_get = private unnamed_addr constant [16 x i8] c"abx500_gpio_get\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"%s read reg =%x, offset=%x failed (%d)\0A\00", align 1
@__func__.abx500_gpio_get_bit = private unnamed_addr constant [20 x i8] c"abx500_gpio_get_bit\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"%s write failed (%d)\0A\00", align 1
@__func__.abx500_gpio_set = private unnamed_addr constant [16 x i8] c"abx500_gpio_set\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"altA\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"altB\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"altC\00", align 1
@__const.abx500_gpio_dbg_show_one.modes = private unnamed_addr constant [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"pull down\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"pull none\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"pull up\00", align 1
@__const.abx500_gpio_dbg_show_one.pull_up_down = private unnamed_addr constant [4 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.19, ptr @.str.20], align 4
@.str.21 = private unnamed_addr constant [27 x i8] c" gpio-%-3d (%-20.20s) %-3s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" %-9s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.abx500_gpio_dbg_show_one = private unnamed_addr constant [25 x i8] c"abx500_gpio_dbg_show_one\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"alt_bitX value not in correct range (-1 to 7)\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"if alt_bit2 is used, alt_bit1 can't be unused\0A\00", align 1
@__func__.abx500_get_mode = private unnamed_addr constant [16 x i8] c"abx500_get_mode\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"pinctrl-abx500\00", align 1
@abx500_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @abx500_get_groups_cnt, ptr @abx500_get_group_name, ptr @abx500_get_group_pins, ptr @abx500_pin_dbg_show, ptr @abx500_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@abx500_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @abx500_pmx_get_funcs_cnt, ptr @abx500_pmx_get_func_name, ptr @abx500_pmx_get_func_groups, ptr @abx500_pmx_set, ptr @abx500_gpio_request_enable, ptr @abx500_gpio_disable_free, ptr null, i8 0 }, align 4
@abx500_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @abx500_pin_config_get, ptr @abx500_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"GPIO%d\00", align 1
@__func__.abx500_pmx_set = private unnamed_addr constant [15 x i8] c"abx500_pmx_set\00", align 1
@__func__.abx500_set_mode = private unnamed_addr constant [16 x i8] c"abx500_set_mode\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"%s failed to locate range\0A\00", align 1
@__func__.abx500_gpio_request_enable = private unnamed_addr constant [27 x i8] c"abx500_gpio_request_enable\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"%s setting altfunc failed\0A\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"illegal configuration requested\0A\00", align 1
@__func__.abx500_pin_config_set = private unnamed_addr constant [22 x i8] c"abx500_pin_config_set\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_abx500__247_1101_abx500_gpio_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @abx500_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @abx500_gpio_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  br label %95

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 328, i32 noundef 3520) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %95, label %10

10:                                               ; preds = %7
  store ptr %2, ptr %8, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %16, ptr noundef nonnull align 4 dereferenceable(304) @abx500gpio_chip, i32 304, i1 false)
  %17 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 3, i32 2
  store ptr %2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 3, i32 19
  store i32 -1, ptr %18, align 4
  %19 = tail call ptr @of_match_device(ptr noundef nonnull @abx500_gpio_match, ptr noundef %2) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  br label %95

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.of_device_id, ptr %19, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  switch i32 %25, label %30 [
    i32 0, label %26
    i32 1, label %28
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 2
  tail call void @abx500_pinctrl_ab8500_init(ptr noundef %27) #10
  br label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 2
  tail call void @abx500_pinctrl_ab8505_init(ptr noundef %29) #10
  br label %31

30:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %25) #11
  br label %95

31:                                               ; preds = %28, %26
  %32 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #11
  br label %95

36:                                               ; preds = %31
  %37 = tail call fastcc i32 @abx500_get_gpio_num(ptr noundef nonnull %33)
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 3, i32 20
  store i16 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %33, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %33, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %16, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %46) #11
  br label %95

49:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.6) #11
  %50 = load ptr, ptr %32, align 4
  %51 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @abx500_pinctrl_desc, i32 0, i32 1), align 4
  %53 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %50, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  store i32 %54, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @abx500_pinctrl_desc, i32 0, i32 2), align 4
  %55 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull @abx500_pinctrl_desc, ptr noundef nonnull %8) #10
  %56 = getelementptr inbounds %struct.abx500_pinctrl, ptr %8, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #11
  %59 = load ptr, ptr %56, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %93

61:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.8) #11
  %62 = load ptr, ptr %32, align 4
  %63 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %74

68:                                               ; preds = %83
  %69 = add nuw i32 %76, 1
  %70 = load ptr, ptr %32, align 4
  %71 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68, %66
  %75 = phi ptr [ %62, %66 ], [ %70, %68 ]
  %76 = phi i32 [ 0, %66 ], [ %69, %68 ]
  %77 = load ptr, ptr %75, align 4
  %78 = getelementptr %struct.abx500_pinrange, ptr %77, i32 %76
  %79 = load ptr, ptr %67, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load ptr, ptr %2, align 4
  br label %83

83:                                               ; preds = %81, %74
  %84 = phi ptr [ %82, %81 ], [ %79, %74 ]
  %85 = load i32, ptr %78, align 4
  %86 = add i32 %85, -1
  %87 = getelementptr %struct.abx500_pinrange, ptr %77, i32 %76, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = tail call i32 @gpiochip_add_pin_range(ptr noundef %16, ptr noundef %84, i32 noundef %86, i32 noundef %85, i32 noundef %88) #10
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %93, label %68

91:                                               ; preds = %68, %61
  %92 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %92, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9) #11
  br label %95

93:                                               ; preds = %83, %58
  %94 = phi i32 [ %60, %58 ], [ %89, %83 ]
  tail call void @gpiochip_remove(ptr noundef %16) #10
  br label %95

95:                                               ; preds = %93, %91, %48, %35, %30, %21, %7, %6
  %96 = phi i32 [ -22, %30 ], [ %46, %48 ], [ %94, %93 ], [ 0, %91 ], [ -22, %35 ], [ -19, %21 ], [ -19, %6 ], [ -12, %7 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abx500_pinctrl_ab8500_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abx500_pinctrl_ab8505_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @abx500_get_gpio_num(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %21, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %22, %7 ]
  %10 = phi i32 [ 0, %5 ], [ %20, %7 ]
  %11 = getelementptr %struct.abx500_pinrange, ptr %6, i32 %9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.abx500_pinrange, ptr %6, i32 %9, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, -1
  %16 = add i32 %15, %14
  %17 = icmp eq i32 %9, 0
  %18 = tail call i32 @llvm.umin.i32(i32 %12, i32 %8)
  %19 = tail call i32 @llvm.umax.i32(i32 %16, i32 %10)
  %20 = select i1 %17, i32 %16, i32 %19
  %21 = select i1 %17, i32 %12, i32 %18
  %22 = add nuw i32 %9, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %7

24:                                               ; preds = %7
  %25 = add i32 %20, 1
  %26 = sub i32 %25, %21
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ %26, %24 ], [ 1, %1 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = and i32 %1, 7
  %5 = lshr i32 %1, 3
  %6 = trunc i32 %5 to i8
  %7 = add i8 %6, 16
  %8 = load ptr, ptr %3, align 4
  %9 = shl nuw nsw i32 1, %4
  %10 = trunc i32 %9 to i8
  %11 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %8, i8 noundef zeroext 16, i8 noundef zeroext %7, i8 noundef zeroext %10, i8 noundef zeroext 0) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 4
  %15 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %15, i32 noundef %1, i32 noundef %11) #11
  br label %16

16:                                               ; preds = %13, %2
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = and i32 %1, 7
  %7 = lshr i32 %1, 3
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, 16
  %10 = load ptr, ptr %5, align 4
  %11 = shl nuw nsw i32 1, %6
  %12 = trunc i32 %11 to i8
  %13 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %12) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %17 = add i8 %8, 48
  %18 = load ptr, ptr %16, align 4
  %19 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %18, i8 noundef zeroext 16, i8 noundef zeroext %17, i8 noundef zeroext %12, i8 noundef zeroext %12) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15, %3
  %22 = phi ptr [ %5, %3 ], [ %16, %15 ]
  %23 = phi i8 [ %9, %3 ], [ %17, %15 ]
  %24 = phi i32 [ %13, %3 ], [ %19, %15 ]
  %25 = load ptr, ptr %22, align 4
  %26 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %26, i32 noundef %1, i32 noundef %24) #11
  %27 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_gpio_direction_output, i32 noundef %24) #11
  br label %39

28:                                               ; preds = %15
  %29 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %30 = add i8 %8, 32
  %31 = load ptr, ptr %29, align 4
  %32 = shl i32 %2, %6
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %31, i8 noundef zeroext 16, i8 noundef zeroext %30, i8 noundef zeroext %12, i8 noundef zeroext %33) #10
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load ptr, ptr %29, align 4
  %38 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %38, i32 noundef %1, i32 noundef %34) #11
  br label %39

39:                                               ; preds = %36, %28, %21
  %40 = phi i32 [ %24, %21 ], [ %34, %28 ], [ %34, %36 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %7 = add i32 %1, 255
  %8 = and i32 %7, 255
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %10 = lshr i32 %8, 3
  %11 = trunc i32 %10 to i8
  %12 = add nuw nsw i8 %11, 16
  %13 = load ptr, ptr %9, align 4
  %14 = call i32 @abx500_get_register_interruptible(ptr noundef %13, i8 noundef zeroext 16, i8 noundef zeroext %12, ptr noundef nonnull %5) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load ptr, ptr %9, align 4
  %18 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %18, i32 noundef %8, i32 noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %63

19:                                               ; preds = %2
  %20 = and i32 %7, 7
  %21 = load i8, ptr %5, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 1, %20
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %26 = call ptr @gpiochip_get_data(ptr noundef %0) #10
  br i1 %25, label %43, label %27

27:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %28 = or i8 %11, 32
  %29 = load ptr, ptr %26, align 4
  %30 = call i32 @abx500_get_register_interruptible(ptr noundef %29, i8 noundef zeroext 16, i8 noundef zeroext %28, ptr noundef nonnull %4) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %26, align 4
  %34 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %34, i32 noundef %8, i32 noundef %30) #11
  br label %40

35:                                               ; preds = %27
  %36 = load i8, ptr %4, align 1
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %37, %20
  %39 = and i32 %38, 1
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i32 [ 0, %32 ], [ %39, %35 ]
  %42 = phi i32 [ %30, %32 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  br label %59

43:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %44 = or i8 %11, 64
  %45 = load ptr, ptr %26, align 4
  %46 = call i32 @abx500_get_register_interruptible(ptr noundef %45, i8 noundef zeroext 16, i8 noundef zeroext %44, ptr noundef nonnull %3) #10
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load ptr, ptr %26, align 4
  %50 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %50, i32 noundef %8, i32 noundef %46) #11
  br label %56

51:                                               ; preds = %43
  %52 = load i8, ptr %3, align 1
  %53 = zext i8 %52 to i32
  %54 = lshr i32 %53, %20
  %55 = and i32 %54, 1
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ 0, %48 ], [ %55, %51 ]
  %58 = phi i32 [ %46, %48 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %59

59:                                               ; preds = %56, %40
  %60 = phi i32 [ %57, %56 ], [ %41, %40 ]
  %61 = phi i32 [ %58, %56 ], [ %42, %40 ]
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %16
  %64 = phi i32 [ %14, %16 ], [ %61, %59 ]
  %65 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_gpio_get, i32 noundef %64) #11
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %64, %63 ], [ %60, %59 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @abx500_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = and i32 %1, 7
  %7 = lshr i32 %1, 3
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, 32
  %10 = load ptr, ptr %5, align 4
  %11 = shl nuw nsw i32 1, %6
  %12 = trunc i32 %11 to i8
  %13 = shl i32 %2, %6
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %14) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load ptr, ptr %5, align 4
  %19 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %19, i32 noundef %1, i32 noundef %15) #11
  %20 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.abx500_gpio_set, i32 noundef %15) #11
  br label %21

21:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = add i32 %1, 1
  %5 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %30, %8
  %12 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %13 = getelementptr %struct.abx500_gpio_irq_cluster, ptr %10, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %4, %14
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = getelementptr %struct.abx500_gpio_irq_cluster, ptr %10, i32 %12, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %4, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = sub i32 %4, %14
  %22 = getelementptr %struct.abx500_gpio_irq_cluster, ptr %10, i32 %12, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ab8500, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @irq_create_mapping_affinity(ptr noundef %28, i32 noundef %24, ptr noundef null) #10
  br label %33

30:                                               ; preds = %16, %11
  %31 = add nuw nsw i32 %12, 1
  %32 = icmp eq i32 %31, %6
  br i1 %32, label %33, label %11

33:                                               ; preds = %30, %20, %2
  %34 = phi i32 [ %29, %20 ], [ -22, %2 ], [ -22, %30 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @abx500_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %2
  %12 = phi i32 [ %14, %11 ], [ 0, %2 ]
  %13 = phi i32 [ %15, %11 ], [ %4, %2 ]
  %14 = add nuw nsw i32 %12, 1
  tail call fastcc void @abx500_gpio_dbg_show_one(ptr noundef %0, ptr noundef %7, ptr noundef %1, i32 noundef %14, i32 noundef %13)
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  %15 = add i32 %13, 1
  %16 = load i16, ptr %8, align 4
  %17 = zext i16 %16 to i32
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %11, label %19

19:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @abx500_gpio_set_bits(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %6 = and i32 %2, 7
  %7 = lshr i32 %2, 3
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, %1
  %10 = load ptr, ptr %5, align 4
  %11 = shl nuw nsw i32 1, %6
  %12 = trunc i32 %11 to i8
  %13 = shl i32 %3, %6
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext %9, i8 noundef zeroext %12, i8 noundef zeroext %14) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 4
  %19 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %19, i32 noundef %2, i32 noundef %15) #11
  br label %20

20:                                               ; preds = %17, %4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @abx500_gpio_dbg_show_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %1) #10
  %12 = add i32 %3, -1
  %13 = tail call ptr @gpiochip_is_requested(ptr noundef %2, i32 noundef %12) #10
  %14 = and i32 %12, 255
  %15 = tail call ptr @gpiochip_get_data(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1, !annotation !8
  %16 = lshr i32 %14, 3
  %17 = trunc i32 %16 to i8
  %18 = add nuw nsw i8 %17, 16
  %19 = load ptr, ptr %15, align 4
  %20 = call i32 @abx500_get_register_interruptible(ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext %18, ptr noundef nonnull %10) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load ptr, ptr %15, align 4
  %24 = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %24, i32 noundef %14, i32 noundef %20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  br label %170

25:                                               ; preds = %5
  %26 = and i32 %12, 7
  %27 = load i8, ptr %10, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 1, %26
  %30 = and i32 %29, %28
  %31 = icmp eq i32 %30, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, ptr @.str.22, ptr %13
  %34 = select i1 %31, ptr @.str.24, ptr @.str.23
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %4, ptr noundef %33, ptr noundef nonnull %34) #10
  br i1 %31, label %35, label %51

35:                                               ; preds = %25
  %36 = call ptr @gpiochip_get_data(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %37 = add nuw nsw i8 %17, 48
  %38 = load ptr, ptr %36, align 4
  %39 = call i32 @abx500_get_register_interruptible(ptr noundef %38, i8 noundef zeroext 16, i8 noundef zeroext %37, ptr noundef nonnull %9) #10
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load ptr, ptr %36, align 4
  %43 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %43, i32 noundef %14, i32 noundef %39) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  br label %170

44:                                               ; preds = %35
  %45 = load i8, ptr %9, align 1
  %46 = zext i8 %45 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %47 = lshr i32 %46, %26
  %48 = and i32 %47, 1
  %49 = getelementptr [4 x ptr], ptr @__const.abx500_gpio_dbg_show_one.pull_up_down, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %50) #10
  br label %57

51:                                               ; preds = %25
  %52 = getelementptr inbounds %struct.gpio_chip, ptr %2, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %2, i32 noundef %3) #10
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %56) #10
  br label %57

57:                                               ; preds = %51, %44
  %58 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %1) #10
  %59 = getelementptr inbounds %struct.abx500_pinctrl, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %60, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr %struct.alternate_functions, ptr %62, i32 %3
  %64 = getelementptr inbounds i8, ptr %63, i32 4
  %65 = load i8, ptr %64, align 4
  %66 = getelementptr inbounds i8, ptr %63, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr inbounds i8, ptr %63, i32 6
  %69 = load i8, ptr %68, align 2
  %70 = getelementptr inbounds i8, ptr %63, i32 7
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds i8, ptr %63, i32 8
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %65, -1
  br i1 %74, label %164, label %75

75:                                               ; preds = %57
  %76 = sext i8 %65 to i32
  %77 = add i32 %3, 2047
  %78 = lshr i32 %77, 3
  %79 = trunc i32 %78 to i8
  %80 = call ptr @gpiochip_get_data(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !8
  %81 = ashr i8 %65, 3
  %82 = add i8 %81, %79
  %83 = load ptr, ptr %80, align 4
  %84 = call i32 @abx500_get_register_interruptible(ptr noundef %83, i8 noundef zeroext 16, i8 noundef zeroext %82, ptr noundef nonnull %8) #10
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load ptr, ptr %80, align 4
  %88 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %88, i32 noundef %76, i32 noundef %84) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  br label %161

89:                                               ; preds = %75
  %90 = and i32 %76, 7
  %91 = load i8, ptr %8, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 1, %90
  %94 = and i32 %93, %92
  %95 = icmp ne i32 %94, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %96 = sext i8 %67 to i32
  %97 = add i8 %67, -8
  %98 = icmp ult i8 %97, -9
  %99 = sext i8 %69 to i32
  %100 = icmp slt i8 %69, -1
  %101 = select i1 %98, i1 true, i1 %100
  %102 = icmp sgt i8 %69, 7
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %89
  %105 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.30) #11
  br label %168

106:                                              ; preds = %89
  %107 = icmp ne i8 %69, -1
  %108 = icmp eq i8 %67, -1
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.31) #11
  br label %168

112:                                              ; preds = %106
  %113 = icmp eq i8 %69, -1
  %114 = select i1 %108, i1 %113, i1 false
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = zext i1 %95 to i32
  br label %164

117:                                              ; preds = %112
  br i1 %95, label %164, label %118

118:                                              ; preds = %117
  %119 = call ptr @gpiochip_get_data(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !8
  %120 = ashr i8 %67, 3
  %121 = add nsw i8 %120, 80
  %122 = load ptr, ptr %119, align 4
  %123 = call i32 @abx500_get_register_interruptible(ptr noundef %122, i8 noundef zeroext 16, i8 noundef zeroext %121, ptr noundef nonnull %7) #10
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load ptr, ptr %119, align 4
  %127 = zext i8 %121 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %127, i32 noundef %96, i32 noundef %123) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  br label %161

128:                                              ; preds = %118
  %129 = and i32 %96, 7
  %130 = load i8, ptr %7, align 1
  %131 = zext i8 %130 to i32
  %132 = shl nuw nsw i32 1, %129
  %133 = and i32 %132, %131
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  br i1 %107, label %136, label %154

136:                                              ; preds = %128
  %137 = call ptr @gpiochip_get_data(ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  %138 = lshr i8 %69, 3
  %139 = add nuw nsw i8 %138, 80
  %140 = load ptr, ptr %137, align 4
  %141 = call i32 @abx500_get_register_interruptible(ptr noundef %140, i8 noundef zeroext 16, i8 noundef zeroext %139, ptr noundef nonnull %6) #10
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load ptr, ptr %137, align 4
  %145 = zext i8 %139 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.abx500_gpio_get_bit, i32 noundef %145, i32 noundef %99, i32 noundef %141) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  br label %161

146:                                              ; preds = %136
  %147 = and i32 %99, 7
  %148 = load i8, ptr %6, align 1
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 1, %147
  %151 = and i32 %150, %149
  %152 = icmp eq i32 %151, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %153 = select i1 %152, i8 0, i8 2
  br label %154

154:                                              ; preds = %146, %128
  %155 = phi i8 [ %153, %146 ], [ 0, %128 ]
  %156 = or i8 %155, %135
  %157 = icmp eq i8 %156, %71
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = icmp eq i8 %156, %73
  %160 = select i1 %159, i32 2, i32 3
  br label %164

161:                                              ; preds = %143, %125, %86
  %162 = phi i32 [ %84, %86 ], [ %123, %125 ], [ %141, %143 ]
  %163 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_get_mode, i32 noundef %162) #11
  br label %168

164:                                              ; preds = %158, %154, %117, %115, %57
  %165 = phi i32 [ %160, %158 ], [ 1, %154 ], [ 0, %117 ], [ 0, %57 ], [ %116, %115 ]
  %166 = getelementptr [4 x ptr], ptr @__const.abx500_gpio_dbg_show_one.modes, i32 0, i32 %165
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %164, %161, %110, %104
  %169 = phi ptr [ %167, %164 ], [ @.str.29, %104 ], [ @.str.29, %110 ], [ @.str.29, %161 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %169) #10
  br label %173

170:                                              ; preds = %41, %22
  %171 = phi i32 [ %39, %41 ], [ %20, %22 ]
  %172 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_gpio_dbg_show_one, i32 noundef %171) #11
  br label %173

173:                                              ; preds = %170, %168
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_get_groups_cnt(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.abx500_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @abx500_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.abx500_pingroup, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.abx500_pingroup, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.abx500_pingroup, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @abx500_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 3, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %2, -1
  %9 = add i32 %8, %7
  tail call fastcc void @abx500_gpio_dbg_show_one(ptr noundef %1, ptr noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %10 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %120, %4
  %13 = phi ptr [ %121, %120 ], [ %10, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4
  %14 = call i32 @of_property_read_string(ptr noundef nonnull %13, ptr noundef nonnull @.str.33, ptr noundef nonnull %6) #10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = call i32 @of_property_read_string_helper(ptr noundef nonnull %13, ptr noundef nonnull @.str.34, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %111, label %19

19:                                               ; preds = %16
  %20 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %17) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %111, label %22

22:                                               ; preds = %19
  %23 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.34, ptr noundef null) #10
  %24 = call ptr @of_prop_next_string(ptr noundef %23, ptr noundef null) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %31, %22
  %27 = phi ptr [ %43, %31 ], [ %24, %22 ]
  %28 = load i32, ptr %3, align 4
  %29 = load i32, ptr %9, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %111, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %6, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr %struct.pinctrl_map, ptr %33, i32 %28, i32 2
  store i32 2, ptr %34, align 4
  %35 = load ptr, ptr %2, align 4
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr %struct.pinctrl_map, ptr %35, i32 %36, i32 4
  store ptr %27, ptr %37, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = load i32, ptr %3, align 4
  %40 = getelementptr %struct.pinctrl_map, ptr %38, i32 %39, i32 4, i32 0, i32 1
  store ptr %32, ptr %40, align 4
  %41 = load i32, ptr %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %3, align 4
  %43 = call ptr @of_prop_next_string(ptr noundef %23, ptr noundef nonnull %27) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %26

45:                                               ; preds = %31, %22, %12
  %46 = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %13, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %47 = load i32, ptr %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %114, label %49

49:                                               ; preds = %45
  %50 = call i32 @of_property_read_string_helper(ptr noundef nonnull %13, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %111, label %52

52:                                               ; preds = %49
  %53 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3, i32 noundef %50) #10
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %111, label %55

55:                                               ; preds = %52
  %56 = call ptr @of_find_property(ptr noundef nonnull %13, ptr noundef nonnull @.str.35, ptr noundef null) #10
  %57 = call ptr @of_prop_next_string(ptr noundef %56, ptr noundef null) #10
  %58 = icmp eq ptr %57, null
  br i1 %58, label %113, label %59

59:                                               ; preds = %94, %55
  %60 = phi ptr [ %109, %94 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %61 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %62 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %60, ptr noundef nonnull @.str.36, ptr noundef nonnull %5) #10
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.abx500_pinctrl, ptr %61, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %66, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = load i32, ptr %5, align 4
  br label %74

74:                                               ; preds = %82, %70
  %75 = phi i32 [ 0, %70 ], [ %83, %82 ]
  %76 = getelementptr %struct.pinctrl_pin_desc, ptr %72, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %73
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr %struct.pinctrl_pin_desc, ptr %72, i32 %75, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %85

82:                                               ; preds = %74
  %83 = add nuw i32 %75, 1
  %84 = icmp eq i32 %83, %68
  br i1 %84, label %85, label %74

85:                                               ; preds = %82, %79, %64, %59
  %86 = phi ptr [ %81, %79 ], [ null, %59 ], [ null, %64 ], [ null, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %87 = load i32, ptr %3, align 4
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %111, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr %7, align 4
  %92 = call ptr @kmemdup(ptr noundef %91, i32 noundef 4, i32 noundef 3264) #10
  %93 = icmp eq ptr %92, null
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %2, align 4
  %96 = load i32, ptr %3, align 4
  %97 = getelementptr %struct.pinctrl_map, ptr %95, i32 %96, i32 2
  store i32 3, ptr %97, align 4
  %98 = load ptr, ptr %2, align 4
  %99 = load i32, ptr %3, align 4
  %100 = getelementptr %struct.pinctrl_map, ptr %98, i32 %99, i32 4
  store ptr %86, ptr %100, align 4
  %101 = load ptr, ptr %2, align 4
  %102 = load i32, ptr %3, align 4
  %103 = getelementptr %struct.pinctrl_map, ptr %101, i32 %102, i32 4, i32 0, i32 1
  store ptr %92, ptr %103, align 4
  %104 = load ptr, ptr %2, align 4
  %105 = load i32, ptr %3, align 4
  %106 = getelementptr %struct.pinctrl_map, ptr %104, i32 %105, i32 4, i32 0, i32 2
  store i32 1, ptr %106, align 4
  %107 = load i32, ptr %3, align 4
  %108 = add i32 %107, 1
  store i32 %108, ptr %3, align 4
  %109 = call ptr @of_prop_next_string(ptr noundef %56, ptr noundef nonnull %60) #10
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %59

111:                                              ; preds = %90, %85, %52, %49, %26, %19, %16
  %112 = phi i32 [ -28, %85 ], [ -12, %90 ], [ -28, %26 ], [ %50, %49 ], [ %53, %52 ], [ %20, %19 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %116

113:                                              ; preds = %94, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %120

114:                                              ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %115 = icmp slt i32 %46, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %114, %111
  %117 = phi i32 [ %112, %111 ], [ %46, %114 ]
  %118 = load ptr, ptr %2, align 4
  %119 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %118, i32 noundef %119) #10
  call void @of_node_put(ptr noundef nonnull %13) #10
  br label %123

120:                                              ; preds = %114, %113
  %121 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %13) #10
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %12

123:                                              ; preds = %120, %116, %4
  %124 = phi i32 [ %117, %116 ], [ 0, %4 ], [ 0, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_pmx_get_funcs_cnt(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.abx500_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @abx500_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.abx500_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.abx500_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_pmx_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.abx500_function, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.abx500_function, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.abx500_pingroup, ptr %9, i32 %2, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %3
  %14 = getelementptr %struct.abx500_pingroup, ptr %9, i32 %2, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.abx500_pingroup, ptr %9, i32 %2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call fastcc i32 @abx500_set_mode(ptr noundef %0, ptr noundef %5, i32 noundef %20, i32 noundef %11)
  %22 = load i32, ptr %14, align 4
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %24, %17
  %25 = phi i32 [ %31, %24 ], [ 1, %17 ]
  %26 = load i32, ptr %10, align 4
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr i32, ptr %27, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = tail call fastcc i32 @abx500_set_mode(ptr noundef %0, ptr noundef %5, i32 noundef %29, i32 noundef %26)
  %31 = add nuw i32 %25, 1
  %32 = load i32, ptr %14, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %24, label %34

34:                                               ; preds = %24, %17
  %35 = phi i32 [ %21, %17 ], [ %30, %24 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_pmx_set, i32 noundef %35) #11
  br label %39

39:                                               ; preds = %37, %34, %13, %3
  %40 = phi i32 [ -22, %3 ], [ %35, %37 ], [ %35, %34 ], [ 0, %13 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 4
  br label %12

12:                                               ; preds = %22, %10
  %13 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %14 = getelementptr %struct.abx500_pinrange, ptr %11, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %2
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.abx500_pinrange, ptr %11, i32 %13, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %15
  %21 = icmp ugt i32 %20, %2
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %12
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %37, label %12

25:                                               ; preds = %17, %3
  %26 = phi i32 [ 0, %3 ], [ %13, %17 ]
  %27 = phi ptr [ null, %3 ], [ %14, %17 ]
  %28 = icmp eq i32 %26, %8
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.abx500_pinctrl, ptr %4, i32 0, i32 3
  %33 = getelementptr inbounds %struct.abx500_pinrange, ptr %27, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = tail call fastcc i32 @abx500_set_mode(ptr noundef %31, ptr noundef %32, i32 noundef %2, i32 noundef %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29, %25, %22
  %38 = phi ptr [ @.str.37, %25 ], [ @.str.38, %29 ], [ @.str.37, %22 ]
  %39 = phi i32 [ -19, %25 ], [ %35, %29 ], [ -19, %22 ]
  %40 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull %38, ptr noundef nonnull @__func__.abx500_gpio_request_enable) #11
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i32 [ %35, %29 ], [ %39, %37 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @abx500_gpio_disable_free(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @abx500_set_mode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.abx500_pinctrl_soc_data, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.alternate_functions, ptr %9, i32 %2
  %11 = getelementptr inbounds i8, ptr %10, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds i8, ptr %10, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = getelementptr inbounds i8, ptr %10, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds i8, ptr %10, i32 8
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds i8, ptr %10, i32 9
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i32 %3, 1
  %22 = icmp eq i8 %12, -1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %121, label %24

24:                                               ; preds = %4
  %25 = getelementptr inbounds i8, ptr %10, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i32 %3, 2
  %28 = sext i8 %26 to i32
  %29 = icmp eq i8 %26, -1
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %121, label %31

31:                                               ; preds = %24
  %32 = icmp eq i32 %3, 3
  %33 = sext i8 %14 to i32
  %34 = icmp eq i8 %14, -1
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %121, label %36

36:                                               ; preds = %31
  %37 = add i32 %2, -1
  switch i32 %3, label %121 [
    i32 0, label %38
    i32 1, label %52
    i32 2, label %69
    i32 3, label %90
  ]

38:                                               ; preds = %36
  %39 = xor i1 %29, true
  %40 = zext i1 %39 to i32
  %41 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %42 = and i32 %37, 7
  %43 = lshr i32 %37, 3
  %44 = trunc i32 %43 to i8
  %45 = load ptr, ptr %41, align 4
  %46 = shl nuw nsw i32 1, %42
  %47 = trunc i32 %46 to i8
  %48 = shl nuw nsw i32 %40, %42
  %49 = trunc i32 %48 to i8
  %50 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %45, i8 noundef zeroext 16, i8 noundef zeroext %44, i8 noundef zeroext %47, i8 noundef zeroext %49) #10
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %112, label %121

52:                                               ; preds = %36
  br i1 %29, label %67, label %53

53:                                               ; preds = %52
  %54 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %37, i32 noundef 0)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %118, label %56

56:                                               ; preds = %53
  %57 = zext i8 %16 to i32
  %58 = and i32 %57, 1
  %59 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %28, i32 noundef %58)
  %60 = icmp sgt i32 %59, -1
  %61 = icmp ne i8 %14, -1
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %109

63:                                               ; preds = %56
  %64 = lshr i32 %57, 1
  %65 = and i32 %64, 1
  %66 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %33, i32 noundef %65)
  br label %109

67:                                               ; preds = %52
  %68 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %37, i32 noundef 1)
  br label %109

69:                                               ; preds = %36
  %70 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %71 = and i32 %37, 7
  %72 = lshr i32 %37, 3
  %73 = trunc i32 %72 to i8
  %74 = load ptr, ptr %70, align 4
  %75 = shl nuw nsw i32 1, %71
  %76 = trunc i32 %75 to i8
  %77 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %74, i8 noundef zeroext 16, i8 noundef zeroext %73, i8 noundef zeroext %76, i8 noundef zeroext 0) #10
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %69
  %80 = zext i8 %18 to i32
  %81 = and i32 %80, 1
  %82 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %28, i32 noundef %81)
  %83 = icmp sgt i32 %82, -1
  %84 = icmp ne i8 %14, -1
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = lshr i32 %80, 1
  %88 = and i32 %87, 1
  %89 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %33, i32 noundef %88)
  br label %109

90:                                               ; preds = %36
  %91 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %92 = and i32 %37, 7
  %93 = lshr i32 %37, 3
  %94 = trunc i32 %93 to i8
  %95 = load ptr, ptr %91, align 4
  %96 = shl nuw nsw i32 1, %92
  %97 = trunc i32 %96 to i8
  %98 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %95, i8 noundef zeroext 16, i8 noundef zeroext %94, i8 noundef zeroext %97, i8 noundef zeroext 0) #10
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %90
  %101 = zext i8 %20 to i32
  %102 = and i32 %101, 1
  %103 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %33, i32 noundef %102)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %100
  %106 = lshr i32 %101, 1
  %107 = and i32 %106, 1
  %108 = tail call fastcc i32 @abx500_gpio_set_bits(ptr noundef %1, i8 noundef zeroext 80, i32 noundef %33, i32 noundef %107)
  br label %109

109:                                              ; preds = %105, %86, %79, %67, %63, %56
  %110 = phi i32 [ %108, %105 ], [ %89, %86 ], [ %82, %79 ], [ %66, %63 ], [ %59, %56 ], [ %68, %67 ]
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %118, label %121

112:                                              ; preds = %90, %69, %38
  %113 = phi ptr [ %41, %38 ], [ %70, %69 ], [ %91, %90 ]
  %114 = phi i32 [ %43, %38 ], [ %72, %69 ], [ %93, %90 ]
  %115 = phi i32 [ %50, %38 ], [ %77, %69 ], [ %98, %90 ]
  %116 = load ptr, ptr %113, align 4
  %117 = and i32 %114, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %117, i32 noundef %37, i32 noundef %115) #11
  br label %118

118:                                              ; preds = %112, %109, %100, %53
  %119 = phi i32 [ %110, %109 ], [ %54, %53 ], [ %103, %100 ], [ %115, %112 ]
  %120 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_set_mode, i32 noundef %119) #11
  br label %121

121:                                              ; preds = %118, %109, %38, %36, %31, %24, %4
  %122 = phi i32 [ -22, %31 ], [ -22, %24 ], [ -22, %4 ], [ -22, %36 ], [ %119, %118 ], [ %110, %109 ], [ %50, %38 ]
  ret i32 %122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @abx500_pin_config_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @abx500_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 3
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %83, label %8

8:                                                ; preds = %4
  %9 = add i32 %1, -1
  %10 = and i32 %9, 7
  %11 = lshr i32 %9, 3
  %12 = trunc i32 %11 to i8
  %13 = add i8 %12, 16
  %14 = shl nuw nsw i32 1, %10
  %15 = trunc i32 %14 to i8
  %16 = zext i8 %13 to i32
  %17 = add i8 %12, 48
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.abx500_pinctrl, ptr %5, i32 0, i32 3, i32 2
  br label %20

20:                                               ; preds = %73, %8
  %21 = phi i32 [ 0, %8 ], [ %75, %73 ]
  %22 = phi i32 [ -22, %8 ], [ %74, %73 ]
  %23 = getelementptr i32, ptr %2, i32 %21
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 255
  %26 = add nsw i32 %25, -1
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 31)
  switch i32 %27, label %71 [
    i32 0, label %28
    i32 1, label %40
    i32 2, label %56
    i32 8, label %68
  ]

28:                                               ; preds = %20
  %29 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %30, i8 noundef zeroext 16, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %79, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %35, i8 noundef zeroext 16, i8 noundef zeroext %17, i8 noundef zeroext %15, i8 noundef zeroext %15) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %18, i32 noundef %9, i32 noundef %36) #11
  br label %73

40:                                               ; preds = %20
  %41 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %42, i8 noundef zeroext 16, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %40
  %46 = icmp ult i32 %24, 256
  %47 = zext i1 %46 to i32
  %48 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %49 = load ptr, ptr %48, align 4
  %50 = shl nuw nsw i32 %47, %10
  %51 = trunc i32 %50 to i8
  %52 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %49, i8 noundef zeroext 16, i8 noundef zeroext %17, i8 noundef zeroext %15, i8 noundef zeroext %51) #10
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %45
  %55 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %18, i32 noundef %9, i32 noundef %52) #11
  br label %73

56:                                               ; preds = %20
  %57 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %58, i8 noundef zeroext 16, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0) #10
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @gpiochip_get_data(ptr noundef %6) #10
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %63, i8 noundef zeroext 16, i8 noundef zeroext %13, i8 noundef zeroext %15, i8 noundef zeroext 0) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load ptr, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %16, i32 noundef %9, i32 noundef %64) #11
  br label %73

68:                                               ; preds = %20
  %69 = lshr i32 %24, 8
  %70 = tail call i32 @abx500_gpio_direction_output(ptr noundef %6, i32 noundef %9, i32 noundef %69)
  br label %73

71:                                               ; preds = %20
  %72 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.39) #11
  br label %73

73:                                               ; preds = %71, %68, %66, %61, %54, %45, %38, %33
  %74 = phi i32 [ %22, %71 ], [ %70, %68 ], [ %36, %33 ], [ %36, %38 ], [ %52, %45 ], [ %52, %54 ], [ %64, %61 ], [ %64, %66 ]
  %75 = add nuw i32 %21, 1
  %76 = icmp eq i32 %75, %3
  br i1 %76, label %77, label %20

77:                                               ; preds = %73
  %78 = icmp slt i32 %74, 0
  br i1 %78, label %83, label %86

79:                                               ; preds = %56, %40, %28
  %80 = phi ptr [ %29, %28 ], [ %41, %40 ], [ %57, %56 ]
  %81 = phi i32 [ %31, %28 ], [ %43, %40 ], [ %59, %56 ]
  %82 = load ptr, ptr %80, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.abx500_gpio_set_bits, i32 noundef %16, i32 noundef %9, i32 noundef %81) #11
  br label %83

83:                                               ; preds = %79, %77, %4
  %84 = phi i32 [ %74, %77 ], [ -22, %4 ], [ %81, %79 ]
  %85 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.abx500_pin_config_set, i32 noundef %84) #11
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi i32 [ %84, %83 ], [ %74, %77 ]
  ret i32 %87
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
