; ModuleID = '/llk/IR/drivers/pinctrl/samsung/pinctrl-samsung.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-samsung.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pin_config = type { ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.samsung_pinctrl_of_match_data = type { ptr, i32 }
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
%struct.samsung_pin_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.samsung_pin_bank_data = type { ptr, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.samsung_retention_data = type { ptr, i32, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.samsung_pin_group = type { ptr, ptr, i8, i8 }
%struct.samsung_pmx_func = type { ptr, ptr, i8, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.samsung_retention_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr }

@__initcall__kmod_pinctrl_samsung__206_1311_samsung_pinctrl_drv_register2 = internal global ptr @samsung_pinctrl_drv_register, section ".initcall2.init", align 4
@samsung_pinctrl_driver = internal global %struct.platform_driver { ptr @samsung_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @samsung_pinctrl_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"samsung-pinctrl\00", align 1
@samsung_pinctrl_dt_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos3250-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos3250_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4x12-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4x12_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5260-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5260_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_of_data }, %struct.of_device_id zeroinitializer], align 4
@samsung_pinctrl_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr @samsung_pinctrl_suspend, ptr @samsung_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"driver data not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get mem%d resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to ioremap %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@pin_base = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"pinctrl\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get alias id\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid alias id %d\0A\00", align 1
@samsung_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @samsung_get_group_count, ptr @samsung_get_group_name, ptr @samsung_get_group_pins, ptr @samsung_pin_dbg_show, ptr @samsung_dt_node_to_map, ptr @samsung_dt_free_map }, align 4
@samsung_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @samsung_get_functions_count, ptr @samsung_pinmux_get_fname, ptr @samsung_pinmux_get_groups, ptr @samsung_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@samsung_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @samsung_pinconf_get, ptr @samsung_pinconf_set, ptr @samsung_pinconf_group_get, ptr @samsung_pinconf_group_set, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" %s(0x%lx)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"CON\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"DAT\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"PUD\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"DRV\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CON_PDN\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"PUD_PDN\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"samsung,pin-function\00", align 1
@cfg_params = internal unnamed_addr constant [5 x %struct.pin_config] [%struct.pin_config { ptr @.str.21, i32 2 }, %struct.pin_config { ptr @.str.22, i32 3 }, %struct.pin_config { ptr @.str.23, i32 4 }, %struct.pin_config { ptr @.str.24, i32 5 }, %struct.pin_config { ptr @.str.25, i32 1 }], align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"could not parse property %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"samsung,pins\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"could not parse property samsung,pins\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"samsung,pin-pud\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"samsung,pin-drv\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"samsung,pin-con-pdn\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"samsung,pin-pud-pdn\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"samsung,pin-val\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"drivers/pinctrl/samsung/pinctrl-samsung.c\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"failed to parse pin groups\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"failed to parse pin functions\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"invalid pin list in %pOFn node\00", align 1
@.str.30 = private unnamed_addr constant [44 x i8] c"failed to read pin name %d from %pOFn node\0A\00", align 1
@samsung_gpiolib_chip = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @samsung_gpio_direction_input, ptr @samsung_gpio_direction_output, ptr @samsung_gpio_get, ptr null, ptr @samsung_gpio_set, ptr null, ptr null, ptr @samsung_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.31 = private unnamed_addr constant [49 x i8] c"failed to register gpio_chip %s, error code: %d\0A\00", align 1
@exynos3250_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos4210_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos4x12_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5250_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5260_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5410_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@exynos5420_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@s5pv210_of_data = external dso_local constant %struct.samsung_pinctrl_of_match_data, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_samsung__206_1311_samsung_pinctrl_drv_register2], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_drv_register() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_pinctrl_driver, ptr noundef null) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x ptr], align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 112, i32 noundef 3520) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %488, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  store i64 0, ptr %2, align 8, !annotation !8
  %9 = tail call i32 @of_alias_get_id(ptr noundef %8, ptr noundef nonnull @.str.5) #10
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #11
  br label %153

12:                                               ; preds = %6
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %3) #10
  %14 = getelementptr inbounds %struct.samsung_pinctrl_of_match_data, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %9) #11
  br label %153

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %153, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 15
  store ptr %24, ptr %25, align 4
  %26 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 16
  store ptr %27, ptr %28, align 4
  %29 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 436) #10
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %34, label %36, !prof !9

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 10
  store ptr null, ptr %35, align 4
  br label %153

36:                                               ; preds = %22
  %37 = extractvalue { i32, i1 } %32, 0
  %38 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %37, i32 noundef 3520) #10
  %39 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 10
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %153, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -2
  %45 = icmp ult i32 %44, -3
  br i1 %45, label %153, label %46

46:                                               ; preds = %41
  %47 = icmp eq i32 %43, -1
  br i1 %47, label %68, label %48

48:                                               ; preds = %63, %46
  %49 = phi i32 [ %64, %63 ], [ 0, %46 ]
  %50 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %49) #10
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %49) #11
  br label %153

53:                                               ; preds = %48
  %54 = load i32, ptr %50, align 4
  %55 = getelementptr inbounds %struct.resource, ptr %50, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 1, %54
  %58 = add i32 %57, %56
  %59 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %54, i32 noundef %58) #10
  %60 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %49
  store ptr %59, ptr %60, align 4
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %50) #11
  br label %153

63:                                               ; preds = %53
  %64 = add nuw i32 %49, 1
  %65 = load i32, ptr %42, align 4
  %66 = add i32 %65, 1
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %48, label %68

68:                                               ; preds = %63, %46
  %69 = load i32, ptr %29, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load ptr, ptr %2, align 8
  br label %123

73:                                               ; preds = %68
  %74 = load ptr, ptr %20, align 4
  %75 = load ptr, ptr %39, align 4
  %76 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 13
  %77 = load ptr, ptr %2, align 8
  br label %78

78:                                               ; preds = %78, %73
  %79 = phi i32 [ 0, %73 ], [ %118, %78 ]
  %80 = phi ptr [ %75, %73 ], [ %120, %78 ]
  %81 = phi ptr [ %74, %73 ], [ %119, %78 ]
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 2
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 3
  store i8 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 4
  %90 = load i8, ptr %89, align 2
  %91 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 5
  store i8 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 6
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 7
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 8
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 9
  store ptr %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 18
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 13
  store ptr %4, ptr %105, align 4
  %106 = load i32, ptr %76, align 4
  %107 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 10
  store i32 %106, ptr %107, align 4
  %108 = zext i8 %87 to i32
  %109 = load i32, ptr %76, align 4
  %110 = add i32 %109, %108
  store i32 %110, ptr %76, align 4
  %111 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 4
  store ptr %77, ptr %111, align 4
  %112 = getelementptr inbounds %struct.samsung_pin_bank_data, ptr %81, i32 0, i32 2
  %113 = load i8, ptr %112, align 4
  %114 = zext i8 %113 to i32
  %115 = getelementptr [2 x ptr], ptr %2, i32 0, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.samsung_pin_bank, ptr %80, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  %118 = add nuw i32 %79, 1
  %119 = getelementptr %struct.samsung_pin_bank_data, ptr %81, i32 1
  %120 = getelementptr %struct.samsung_pin_bank, ptr %80, i32 1
  %121 = load i32, ptr %29, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %78, label %123

123:                                              ; preds = %78, %71
  %124 = phi ptr [ %72, %71 ], [ %77, %78 ]
  %125 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 1
  store ptr %124, ptr %125, align 4
  %126 = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef null) #10
  %127 = icmp eq ptr %126, null
  br i1 %127, label %155, label %128

128:                                              ; preds = %150, %123
  %129 = phi ptr [ %151, %150 ], [ %126, %123 ]
  %130 = tail call ptr @of_find_property(ptr noundef nonnull %129, ptr noundef nonnull @.str.4, ptr noundef null) #10
  %131 = icmp eq ptr %130, null
  br i1 %131, label %150, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %31, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %39, align 4
  br label %137

137:                                              ; preds = %145, %135
  %138 = phi i32 [ %146, %145 ], [ 0, %135 ]
  %139 = phi ptr [ %147, %145 ], [ %136, %135 ]
  %140 = getelementptr inbounds %struct.samsung_pin_bank, ptr %139, i32 0, i32 9
  %141 = load ptr, ptr %140, align 4
  %142 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %129, ptr noundef %141) #10
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.samsung_pin_bank, ptr %139, i32 0, i32 12
  store ptr %129, ptr %144, align 4
  br label %150

145:                                              ; preds = %137
  %146 = add nuw i32 %138, 1
  %147 = getelementptr %struct.samsung_pin_bank, ptr %139, i32 1
  %148 = load i32, ptr %31, align 4
  %149 = icmp ult i32 %146, %148
  br i1 %149, label %137, label %150

150:                                              ; preds = %145, %143, %132, %128
  %151 = tail call ptr @of_get_next_child(ptr noundef %8, ptr noundef nonnull %129) #10
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %128

153:                                              ; preds = %62, %52, %41, %36, %34, %18, %17, %11
  %154 = phi ptr [ inttoptr (i32 -2 to ptr), %17 ], [ inttoptr (i32 -2 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %41 ], [ inttoptr (i32 -12 to ptr), %36 ], [ inttoptr (i32 -12 to ptr), %34 ], [ inttoptr (i32 -2 to ptr), %18 ], [ inttoptr (i32 -22 to ptr), %52 ], [ inttoptr (i32 -5 to ptr), %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %162

155:                                              ; preds = %150, %123
  %156 = load i32, ptr @pin_base, align 4
  %157 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 12
  store i32 %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 13
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, %156
  store i32 %160, ptr @pin_base, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %161 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %165

162:                                              ; preds = %155, %153
  %163 = phi ptr [ %154, %153 ], [ %20, %155 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  %164 = ptrtoint ptr %163 to i32
  br label %488

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 2
  store ptr %3, ptr %166, align 4
  %167 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #10
  %168 = icmp slt i32 %167, 0
  %169 = icmp ne i32 %167, -6
  %170 = and i1 %168, %169
  br i1 %170, label %488, label %171

171:                                              ; preds = %165
  %172 = icmp sgt i32 %167, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 3
  store i32 %167, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %187, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.samsung_retention_data, ptr %177, i32 0, i32 4
  %181 = load ptr, ptr %180, align 4
  %182 = tail call ptr %181(ptr noundef nonnull %4, ptr noundef nonnull %177) #10
  %183 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 14
  store ptr %182, ptr %183, align 4
  %184 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = ptrtoint ptr %182 to i32
  br label %488

187:                                              ; preds = %179, %175
  %188 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4
  store ptr @.str, ptr %188, align 4
  %189 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 6
  store ptr null, ptr %189, align 4
  %190 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 3
  store ptr @samsung_pctrl_ops, ptr %190, align 4
  %191 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 4
  store ptr @samsung_pinmux_ops, ptr %191, align 4
  %192 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 5
  store ptr @samsung_pinconf_ops, ptr %192, align 4
  %193 = load i32, ptr %158, align 4
  %194 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %193, i32 12) #10
  %195 = extractvalue { i32, i1 } %194, 1
  br i1 %195, label %488, label %196, !prof !9

196:                                              ; preds = %187
  %197 = extractvalue { i32, i1 } %194, 0
  %198 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %197, i32 noundef 3520) #10
  %199 = icmp eq ptr %198, null
  br i1 %199, label %488, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 1
  store ptr %198, ptr %201, align 4
  %202 = load i32, ptr %158, align 4
  %203 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 4, i32 2
  store i32 %202, ptr %203, align 4
  %204 = icmp eq i32 %202, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %200
  %206 = load i32, ptr %157, align 4
  br label %207

207:                                              ; preds = %207, %205
  %208 = phi i32 [ 0, %205 ], [ %211, %207 ]
  %209 = phi ptr [ %198, %205 ], [ %212, %207 ]
  %210 = add i32 %208, %206
  store i32 %210, ptr %209, align 4
  %211 = add nuw i32 %208, 1
  %212 = getelementptr %struct.pinctrl_pin_desc, ptr %209, i32 1
  %213 = icmp eq i32 %211, %202
  br i1 %213, label %214, label %207

214:                                              ; preds = %207, %200
  %215 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %202, i32 10) #10
  %216 = extractvalue { i32, i1 } %215, 1
  %217 = extractvalue { i32, i1 } %215, 0
  %218 = select i1 %216, i32 -1, i32 %217
  %219 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %218, i32 noundef 3520) #10
  %220 = icmp eq ptr %219, null
  br i1 %220, label %488, label %221

221:                                              ; preds = %214
  %222 = load i32, ptr %31, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %256, label %224

224:                                              ; preds = %251, %221
  %225 = phi i32 [ %252, %251 ], [ %222, %221 ]
  %226 = phi i32 [ %254, %251 ], [ 0, %221 ]
  %227 = phi ptr [ %253, %251 ], [ %219, %221 ]
  %228 = load ptr, ptr %39, align 4
  %229 = getelementptr %struct.samsung_pin_bank, ptr %228, i32 %226, i32 3
  %230 = load i8, ptr %229, align 4
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %251, label %232

232:                                              ; preds = %224
  %233 = getelementptr %struct.samsung_pin_bank, ptr %228, i32 %226, i32 9
  %234 = getelementptr %struct.samsung_pin_bank, ptr %228, i32 %226, i32 10
  br label %235

235:                                              ; preds = %235, %232
  %236 = phi i32 [ 0, %232 ], [ %245, %235 ]
  %237 = phi ptr [ %227, %232 ], [ %244, %235 ]
  %238 = load ptr, ptr %233, align 4
  %239 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %237, ptr noundef nonnull @.str.8, ptr noundef %238, i32 noundef %236) #10
  %240 = load i32, ptr %234, align 4
  %241 = getelementptr %struct.pinctrl_pin_desc, ptr %198, i32 %240
  %242 = getelementptr %struct.pinctrl_pin_desc, ptr %241, i32 %236
  %243 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %242, i32 0, i32 1
  store ptr %237, ptr %243, align 4
  %244 = getelementptr i8, ptr %237, i32 10
  %245 = add nuw nsw i32 %236, 1
  %246 = load i8, ptr %229, align 4
  %247 = zext i8 %246 to i32
  %248 = icmp ult i32 %245, %247
  br i1 %248, label %235, label %249

249:                                              ; preds = %235
  %250 = load i32, ptr %31, align 4
  br label %251

251:                                              ; preds = %249, %224
  %252 = phi i32 [ %225, %224 ], [ %250, %249 ]
  %253 = phi ptr [ %227, %224 ], [ %244, %249 ]
  %254 = add nuw i32 %226, 1
  %255 = icmp ult i32 %254, %252
  br i1 %255, label %224, label %256

256:                                              ; preds = %251, %221
  %257 = load i32, ptr %203, align 4
  %258 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %257, i32 12) #10
  %259 = extractvalue { i32, i1 } %258, 1
  br i1 %259, label %383, label %260, !prof !9

260:                                              ; preds = %256
  %261 = extractvalue { i32, i1 } %258, 0
  %262 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %261, i32 noundef 3520) #10
  %263 = icmp eq ptr %262, null
  br i1 %263, label %383, label %264

264:                                              ; preds = %260
  %265 = load i32, ptr %203, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %281, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %201, align 4
  br label %269

269:                                              ; preds = %269, %267
  %270 = phi i32 [ %277, %269 ], [ 0, %267 ]
  %271 = phi ptr [ %278, %269 ], [ %268, %267 ]
  %272 = phi ptr [ %279, %269 ], [ %262, %267 ]
  %273 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %271, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  store ptr %274, ptr %272, align 4
  %275 = getelementptr inbounds %struct.samsung_pin_group, ptr %272, i32 0, i32 1
  store ptr %271, ptr %275, align 4
  %276 = getelementptr inbounds %struct.samsung_pin_group, ptr %272, i32 0, i32 2
  store i8 1, ptr %276, align 4
  %277 = add nuw i32 %270, 1
  %278 = getelementptr %struct.pinctrl_pin_desc, ptr %271, i32 1
  %279 = getelementptr %struct.samsung_pin_group, ptr %272, i32 1
  %280 = icmp eq i32 %277, %265
  br i1 %280, label %281, label %269

281:                                              ; preds = %269, %264
  %282 = icmp ugt ptr %262, inttoptr (i32 -4096 to ptr)
  br i1 %282, label %383, label %283

283:                                              ; preds = %281
  %284 = load ptr, ptr %7, align 8
  %285 = tail call ptr @of_get_next_child(ptr noundef %284, ptr noundef null) #10
  %286 = icmp eq ptr %285, null
  br i1 %286, label %321, label %287

287:                                              ; preds = %317, %283
  %288 = phi i32 [ %318, %317 ], [ 0, %283 ]
  %289 = phi ptr [ %319, %317 ], [ %285, %283 ]
  %290 = tail call ptr @of_get_next_child(ptr noundef nonnull %289, ptr noundef null) #10
  %291 = icmp eq ptr %290, null
  br i1 %291, label %300, label %292

292:                                              ; preds = %292, %287
  %293 = phi i32 [ %295, %292 ], [ 0, %287 ]
  %294 = phi ptr [ %296, %292 ], [ %290, %287 ]
  %295 = add i32 %293, 1
  %296 = tail call ptr @of_get_next_child(ptr noundef nonnull %289, ptr noundef nonnull %294) #10
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %292

298:                                              ; preds = %292
  %299 = icmp eq i32 %295, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %298, %287
  %301 = tail call ptr @of_find_property(ptr noundef nonnull %289, ptr noundef nonnull @.str.17, ptr noundef null) #10
  %302 = icmp ne ptr %301, null
  %303 = zext i1 %302 to i32
  %304 = add i32 %288, %303
  br label %317

305:                                              ; preds = %298
  %306 = tail call ptr @of_get_next_child(ptr noundef nonnull %289, ptr noundef null) #10
  %307 = icmp eq ptr %306, null
  br i1 %307, label %317, label %308

308:                                              ; preds = %308, %305
  %309 = phi ptr [ %315, %308 ], [ %306, %305 ]
  %310 = phi i32 [ %314, %308 ], [ %288, %305 ]
  %311 = tail call ptr @of_find_property(ptr noundef nonnull %309, ptr noundef nonnull @.str.17, ptr noundef null) #10
  %312 = icmp ne ptr %311, null
  %313 = zext i1 %312 to i32
  %314 = add i32 %310, %313
  %315 = tail call ptr @of_get_next_child(ptr noundef nonnull %289, ptr noundef nonnull %309) #10
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %308

317:                                              ; preds = %308, %305, %300
  %318 = phi i32 [ %304, %300 ], [ %288, %305 ], [ %314, %308 ]
  %319 = tail call ptr @of_get_next_child(ptr noundef %284, ptr noundef nonnull %289) #10
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %287

321:                                              ; preds = %317, %283
  %322 = phi i32 [ 0, %283 ], [ %318, %317 ]
  %323 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %322, i32 16) #10
  %324 = extractvalue { i32, i1 } %323, 1
  br i1 %324, label %383, label %325, !prof !9

325:                                              ; preds = %321
  %326 = extractvalue { i32, i1 } %323, 0
  %327 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %326, i32 noundef 3520) #10
  %328 = icmp eq ptr %327, null
  br i1 %328, label %383, label %329

329:                                              ; preds = %325
  %330 = tail call ptr @of_get_next_child(ptr noundef %284, ptr noundef null) #10
  %331 = icmp eq ptr %330, null
  br i1 %331, label %379, label %332

332:                                              ; preds = %371, %329
  %333 = phi i32 [ %373, %371 ], [ 0, %329 ]
  %334 = phi ptr [ %374, %371 ], [ %330, %329 ]
  %335 = phi ptr [ %372, %371 ], [ %327, %329 ]
  %336 = tail call ptr @of_get_next_child(ptr noundef nonnull %334, ptr noundef null) #10
  %337 = icmp eq ptr %336, null
  br i1 %337, label %346, label %338

338:                                              ; preds = %338, %332
  %339 = phi i32 [ %341, %338 ], [ 0, %332 ]
  %340 = phi ptr [ %342, %338 ], [ %336, %332 ]
  %341 = add i32 %339, 1
  %342 = tail call ptr @of_get_next_child(ptr noundef nonnull %334, ptr noundef nonnull %340) #10
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %338

344:                                              ; preds = %338
  %345 = icmp eq i32 %341, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %344, %332
  %347 = tail call fastcc i32 @samsung_pinctrl_create_function(ptr noundef %3, ptr noundef nonnull %334, ptr noundef %335) #10
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %376, label %349

349:                                              ; preds = %346
  %350 = icmp ne i32 %347, 0
  %351 = zext i1 %350 to i32
  %352 = getelementptr %struct.samsung_pmx_func, ptr %335, i32 %351
  %353 = add i32 %333, %351
  br label %371

354:                                              ; preds = %344
  %355 = tail call ptr @of_get_next_child(ptr noundef nonnull %334, ptr noundef null) #10
  %356 = icmp eq ptr %355, null
  br i1 %356, label %371, label %357

357:                                              ; preds = %364, %354
  %358 = phi ptr [ %369, %364 ], [ %355, %354 ]
  %359 = phi i32 [ %368, %364 ], [ %333, %354 ]
  %360 = phi ptr [ %367, %364 ], [ %335, %354 ]
  %361 = tail call fastcc i32 @samsung_pinctrl_create_function(ptr noundef %3, ptr noundef nonnull %358, ptr noundef %360) #10
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %357
  tail call void @of_node_put(ptr noundef nonnull %358) #10
  br label %376

364:                                              ; preds = %357
  %365 = icmp ne i32 %361, 0
  %366 = zext i1 %365 to i32
  %367 = getelementptr %struct.samsung_pmx_func, ptr %360, i32 %366
  %368 = add i32 %359, %366
  %369 = tail call ptr @of_get_next_child(ptr noundef nonnull %334, ptr noundef nonnull %358) #10
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %357

371:                                              ; preds = %364, %354, %349
  %372 = phi ptr [ %352, %349 ], [ %335, %354 ], [ %367, %364 ]
  %373 = phi i32 [ %353, %349 ], [ %333, %354 ], [ %368, %364 ]
  %374 = tail call ptr @of_get_next_child(ptr noundef %284, ptr noundef nonnull %334) #10
  %375 = icmp eq ptr %374, null
  br i1 %375, label %379, label %332

376:                                              ; preds = %363, %346
  %377 = phi i32 [ %361, %363 ], [ %347, %346 ]
  tail call void @of_node_put(ptr noundef nonnull %334) #10
  %378 = inttoptr i32 %377 to ptr
  br label %379

379:                                              ; preds = %376, %371, %329
  %380 = phi i32 [ 0, %329 ], [ 0, %376 ], [ %373, %371 ]
  %381 = phi ptr [ %327, %329 ], [ %378, %376 ], [ %327, %371 ]
  %382 = icmp ugt ptr %381, inttoptr (i32 -4096 to ptr)
  br i1 %382, label %383, label %386

383:                                              ; preds = %379, %325, %321, %281, %260, %256
  %384 = phi ptr [ @.str.27, %281 ], [ @.str.27, %260 ], [ @.str.27, %256 ], [ @.str.28, %379 ], [ @.str.28, %325 ], [ @.str.28, %321 ]
  %385 = phi ptr [ %262, %281 ], [ inttoptr (i32 -22 to ptr), %260 ], [ inttoptr (i32 -22 to ptr), %256 ], [ %381, %379 ], [ inttoptr (i32 -12 to ptr), %325 ], [ inttoptr (i32 -12 to ptr), %321 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %384) #11
  br label %423

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 6
  store ptr %262, ptr %387, align 4
  %388 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 7
  store i32 %265, ptr %388, align 4
  %389 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 8
  store ptr %381, ptr %389, align 4
  %390 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 9
  store i32 %380, ptr %390, align 4
  %391 = tail call ptr @devm_pinctrl_register(ptr noundef %3, ptr noundef %188, ptr noundef %4) #10
  %392 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 5
  store ptr %391, ptr %392, align 4
  %393 = icmp ugt ptr %391, inttoptr (i32 -4096 to ptr)
  br i1 %393, label %397, label %394

394:                                              ; preds = %386
  %395 = load i32, ptr %31, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %474, label %399

397:                                              ; preds = %386
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #11
  %398 = load ptr, ptr %392, align 4
  br label %423

399:                                              ; preds = %399, %394
  %400 = phi i32 [ %420, %399 ], [ 0, %394 ]
  %401 = load ptr, ptr %39, align 4
  %402 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 9
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16
  %405 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 1
  store ptr %403, ptr %405, align 4
  %406 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 2
  store i32 %400, ptr %406, align 4
  %407 = load i32, ptr %157, align 4
  %408 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 10
  %409 = load i32, ptr %408, align 4
  %410 = add i32 %409, %407
  %411 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 4
  store i32 %410, ptr %411, align 4
  %412 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 3
  store i32 %410, ptr %412, align 4
  %413 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 3
  %414 = load i8, ptr %413, align 4
  %415 = zext i8 %414 to i32
  %416 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 5
  store i32 %415, ptr %416, align 4
  %417 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 15
  %418 = getelementptr %struct.samsung_pin_bank, ptr %401, i32 %400, i32 16, i32 7
  store ptr %417, ptr %418, align 4
  %419 = load ptr, ptr %392, align 4
  tail call void @pinctrl_add_gpio_range(ptr noundef %419, ptr noundef %404) #10
  %420 = add nuw i32 %400, 1
  %421 = load i32, ptr %31, align 4
  %422 = icmp ult i32 %420, %421
  br i1 %422, label %399, label %429

423:                                              ; preds = %397, %383
  %424 = phi ptr [ %398, %397 ], [ %385, %383 ]
  %425 = ptrtoint ptr %424 to i32
  %426 = icmp eq ptr %424, null
  br i1 %426, label %427, label %488

427:                                              ; preds = %423
  %428 = load i32, ptr %31, align 4
  br label %429

429:                                              ; preds = %427, %399
  %430 = phi i32 [ %428, %427 ], [ %421, %399 ]
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %474, label %432

432:                                              ; preds = %429
  %433 = load ptr, ptr %39, align 4
  br label %434

434:                                              ; preds = %453, %432
  %435 = phi i32 [ 0, %432 ], [ %454, %453 ]
  %436 = phi ptr [ %433, %432 ], [ %455, %453 ]
  %437 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %437, ptr noundef nonnull align 4 dereferenceable(304) @samsung_gpiolib_chip, i32 304, i1 false) #10
  %438 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 16, i32 3
  %439 = load i32, ptr %438, align 4
  %440 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 15, i32 19
  store i32 %439, ptr %440, align 4
  %441 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 3
  %442 = load i8, ptr %441, align 4
  %443 = zext i8 %442 to i16
  %444 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 15, i32 20
  store i16 %443, ptr %444, align 4
  %445 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 15, i32 2
  store ptr %3, ptr %445, align 4
  %446 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 12
  %447 = load ptr, ptr %446, align 4
  %448 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 15, i32 39
  store ptr %447, ptr %448, align 4
  %449 = getelementptr inbounds %struct.samsung_pin_bank, ptr %436, i32 0, i32 9
  %450 = load ptr, ptr %449, align 4
  store ptr %450, ptr %437, align 4
  %451 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %437, ptr noundef %436, ptr noundef null, ptr noundef null) #10
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %458

453:                                              ; preds = %434
  %454 = add nuw i32 %435, 1
  %455 = getelementptr %struct.samsung_pin_bank, ptr %436, i32 1
  %456 = load i32, ptr %31, align 4
  %457 = icmp ult i32 %454, %456
  br i1 %457, label %434, label %474

458:                                              ; preds = %434
  %459 = load ptr, ptr %437, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef %459, i32 noundef %451) #11
  %460 = load i32, ptr %31, align 4
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %488, label %462

462:                                              ; preds = %458
  %463 = load ptr, ptr %39, align 4
  %464 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 5
  br label %465

465:                                              ; preds = %465, %462
  %466 = phi i32 [ 0, %462 ], [ %470, %465 ]
  %467 = phi ptr [ %463, %462 ], [ %471, %465 ]
  %468 = load ptr, ptr %464, align 4
  %469 = getelementptr inbounds %struct.samsung_pin_bank, ptr %467, i32 0, i32 16
  tail call void @pinctrl_remove_gpio_range(ptr noundef %468, ptr noundef %469) #10
  %470 = add nuw i32 %466, 1
  %471 = getelementptr %struct.samsung_pin_bank, ptr %467, i32 1
  %472 = load i32, ptr %31, align 4
  %473 = icmp ult i32 %470, %472
  br i1 %473, label %465, label %488

474:                                              ; preds = %453, %429, %394
  %475 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 4
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = tail call i32 %476(ptr noundef nonnull %4) #10
  br label %480

480:                                              ; preds = %478, %474
  %481 = getelementptr %struct.samsung_pin_ctrl, ptr %19, i32 %9, i32 5
  %482 = load ptr, ptr %481, align 4
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484

484:                                              ; preds = %480
  %485 = tail call i32 %482(ptr noundef nonnull %4) #10
  br label %486

486:                                              ; preds = %484, %480
  %487 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %487, align 8
  br label %488

488:                                              ; preds = %486, %465, %458, %423, %214, %196, %187, %185, %165, %162, %1
  %489 = phi i32 [ %164, %162 ], [ %186, %185 ], [ 0, %486 ], [ -12, %1 ], [ %167, %165 ], [ %425, %423 ], [ %451, %458 ], [ -12, %196 ], [ -12, %214 ], [ -12, %187 ], [ %451, %465 ]
  ret i32 %489
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_get_group_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @samsung_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.samsung_pin_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.samsung_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.samsung_pin_group, ptr %10, i32 %1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4
  %5 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = lshr i32 %8, 8
  %10 = and i32 %9, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %10) #10
  br label %11

11:                                               ; preds = %7, %3
  store i32 1, ptr %4, align 4
  %12 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %4, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %17) #10
  br label %18

18:                                               ; preds = %14, %11
  store i32 2, ptr %4, align 4
  %19 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  %23 = lshr i32 %22, 8
  %24 = and i32 %23, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef %24) #10
  br label %25

25:                                               ; preds = %21, %18
  store i32 3, ptr %4, align 4
  %26 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %4, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, i32 noundef %31) #10
  br label %32

32:                                               ; preds = %28, %25
  store i32 4, ptr %4, align 4
  %33 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %4, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %35, %32
  store i32 5, ptr %4, align 4
  %40 = call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext false) #10
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %4, align 4
  %44 = lshr i32 %43, 8
  %45 = and i32 %44, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16, i32 noundef %45) #10
  br label %46

46:                                               ; preds = %42, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #2 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  store i32 0, ptr %5, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %7 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %4
  %10 = phi i32 [ %12, %9 ], [ 0, %4 ]
  %11 = phi ptr [ %13, %9 ], [ %7, %4 ]
  %12 = add i32 %10, 1
  %13 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %11) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %9

15:                                               ; preds = %9
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15, %4
  %18 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = call fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %19, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %3)
  br label %50

21:                                               ; preds = %15
  %22 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  br label %26

26:                                               ; preds = %47, %24
  %27 = phi ptr [ %22, %24 ], [ %48, %47 ]
  %28 = load ptr, ptr %25, align 4
  %29 = call fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %28, ptr noundef nonnull %27, ptr noundef %2, ptr noundef nonnull %5, ptr noundef %3)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load ptr, ptr %2, align 4
  %33 = load i32, ptr %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %43, %31
  %36 = phi i32 [ %44, %43 ], [ 0, %31 ]
  %37 = getelementptr %struct.pinctrl_map, ptr %32, i32 %36, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr %struct.pinctrl_map, ptr %32, i32 %36, i32 4, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #10
  br label %43

43:                                               ; preds = %40, %35
  %44 = add nuw i32 %36, 1
  %45 = icmp eq i32 %44, %33
  br i1 %45, label %46, label %35

46:                                               ; preds = %43, %31
  tail call void @kfree(ptr noundef %32) #10
  tail call void @of_node_put(ptr noundef nonnull %27) #10
  br label %50

47:                                               ; preds = %26
  %48 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %27) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %26

50:                                               ; preds = %47, %46, %21, %17
  %51 = phi i32 [ %29, %46 ], [ %20, %17 ], [ 0, %21 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %13, %3
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  %7 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #10
  br label %13

13:                                               ; preds = %10, %5
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %3
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %8 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %7, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %1, %9
  %11 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %7, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.samsung_pin_bank, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %10
  br i1 %15, label %34, label %16

16:                                               ; preds = %25, %4
  %17 = phi i32 [ %28, %25 ], [ %14, %4 ]
  %18 = phi ptr [ %26, %25 ], [ %12, %4 ]
  %19 = getelementptr inbounds %struct.samsung_pin_bank, ptr %18, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = add i32 %17, -1
  %23 = add i32 %22, %21
  %24 = icmp ult i32 %23, %10
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = getelementptr %struct.samsung_pin_bank, ptr %18, i32 1
  %27 = getelementptr %struct.samsung_pin_bank, ptr %18, i32 1, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %10
  br i1 %29, label %30, label %16

30:                                               ; preds = %25, %16
  %31 = phi ptr [ %26, %25 ], [ %18, %16 ]
  %32 = getelementptr inbounds %struct.samsung_pin_bank, ptr %31, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %4
  %35 = phi i32 [ %14, %4 ], [ %33, %30 ]
  %36 = phi ptr [ %12, %4 ], [ %31, %30 ]
  %37 = getelementptr inbounds %struct.samsung_pin_bank, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.samsung_pin_bank, ptr %36, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %38, i32 %40
  %42 = sub i32 %10, %35
  %43 = load ptr, ptr %36, align 4
  %44 = icmp ugt i32 %6, 5
  br i1 %44, label %76, label %45

45:                                               ; preds = %34
  %46 = getelementptr [6 x i8], ptr %43, i32 0, i32 %6
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %45
  %50 = zext i8 %47 to i32
  %51 = getelementptr %struct.samsung_pin_bank_type, ptr %43, i32 0, i32 1, i32 %6
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.samsung_pin_bank, ptr %36, i32 0, i32 18
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #10
  %56 = shl nsw i32 -1, %50
  %57 = xor i32 %56, -1
  %58 = mul i32 %42, %50
  %59 = getelementptr i8, ptr %41, i32 %53
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br i1 %3, label %61, label %70

61:                                               ; preds = %49
  %62 = load i32, ptr %2, align 4
  %63 = lshr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = shl i32 %57, %58
  %66 = xor i32 %65, -1
  %67 = and i32 %60, %66
  %68 = shl i32 %64, %58
  %69 = or i32 %68, %67
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %69) #10, !srcloc !13
  br label %75

70:                                               ; preds = %49
  %71 = lshr i32 %60, %58
  %72 = and i32 %71, %57
  %73 = shl i32 %72, 8
  %74 = or i32 %73, %6
  store i32 %74, ptr %2, align 4
  br label %75

75:                                               ; preds = %70, %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #10
  br label %76

76:                                               ; preds = %75, %45, %34
  %77 = phi i32 [ 0, %75 ], [ -22, %45 ], [ -22, %34 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @samsung_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %8 = icmp sgt i32 %7, -1
  br label %9

9:                                                ; preds = %30, %5
  %10 = phi i32 [ 0, %5 ], [ %33, %30 ]
  %11 = phi i32 [ 0, %5 ], [ %32, %30 ]
  %12 = phi ptr [ null, %5 ], [ %31, %30 ]
  %13 = getelementptr [5 x %struct.pin_config], ptr @cfg_params, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %14, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 0) #10
  switch i32 %16, label %29 [
    i32 0, label %17
    i32 -22, label %30
  ]

17:                                               ; preds = %9
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr [5 x %struct.pin_config], ptr @cfg_params, i32 0, i32 %10, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %11, 1
  %22 = shl i32 %21, 2
  %23 = call noalias ptr @krealloc(ptr noundef %12, i32 noundef %22, i32 noundef 3264) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %113, label %25

25:                                               ; preds = %17
  %26 = shl i32 %18, 8
  %27 = or i32 %26, %20
  %28 = getelementptr i32, ptr %23, i32 %11
  store i32 %27, ptr %28, align 4
  br label %30

29:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %14) #11
  br label %30

30:                                               ; preds = %29, %25, %9
  %31 = phi ptr [ %12, %29 ], [ %12, %9 ], [ %23, %25 ]
  %32 = phi i32 [ %11, %29 ], [ %11, %9 ], [ %21, %25 ]
  %33 = add nuw nsw i32 %10, 1
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %9

35:                                               ; preds = %30
  %36 = icmp eq i32 %32, 0
  %37 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #11
  br label %113

40:                                               ; preds = %35
  %41 = xor i32 %7, -1
  %42 = lshr i32 %41, 31
  %43 = xor i1 %36, true
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = mul nuw i32 %37, %45
  %47 = load i32, ptr %3, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add i32 %48, %46
  %50 = icmp ugt i32 %49, %47
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load ptr, ptr %2, align 4
  %53 = mul i32 %49, 28
  %54 = call noalias ptr @krealloc(ptr noundef %52, i32 noundef %53, i32 noundef 3264) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %113, label %56

56:                                               ; preds = %51
  %57 = getelementptr %struct.pinctrl_map, ptr %54, i32 %47
  %58 = sub i32 %49, %47
  %59 = mul i32 %58, 28
  call void @llvm.memset.p0.i32(ptr align 4 %57, i8 0, i32 %59, i1 false) #10
  store ptr %54, ptr %2, align 4
  store i32 %49, ptr %3, align 4
  br label %60

60:                                               ; preds = %56, %40
  %61 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #10
  %62 = call ptr @of_prop_next_string(ptr noundef %61, ptr noundef null) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %113, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %66 = shl i32 %32, 2
  br label %67

67:                                               ; preds = %110, %64
  %68 = phi ptr [ %62, %64 ], [ %111, %110 ]
  br i1 %8, label %69, label %86

69:                                               ; preds = %67
  %70 = load i32, ptr %4, align 4
  %71 = load i32, ptr %3, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74, !prof !9

73:                                               ; preds = %69
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 105, i32 noundef 9, ptr noundef null) #10
  br label %113

74:                                               ; preds = %69
  %75 = load ptr, ptr %65, align 4
  %76 = load ptr, ptr %2, align 4
  %77 = getelementptr %struct.pinctrl_map, ptr %76, i32 %70, i32 2
  store i32 2, ptr %77, align 4
  %78 = load ptr, ptr %2, align 4
  %79 = load i32, ptr %4, align 4
  %80 = getelementptr %struct.pinctrl_map, ptr %78, i32 %79, i32 4
  store ptr %68, ptr %80, align 4
  %81 = load ptr, ptr %2, align 4
  %82 = load i32, ptr %4, align 4
  %83 = getelementptr %struct.pinctrl_map, ptr %81, i32 %82, i32 4, i32 0, i32 1
  store ptr %75, ptr %83, align 4
  %84 = load i32, ptr %4, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %4, align 4
  br label %86

86:                                               ; preds = %74, %67
  br i1 %36, label %110, label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %4, align 4
  %89 = load i32, ptr %3, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92, !prof !9

91:                                               ; preds = %87
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 123, i32 noundef 9, ptr noundef null) #10
  br label %113

92:                                               ; preds = %87
  %93 = call ptr @kmemdup(ptr noundef %31, i32 noundef %66, i32 noundef 3264) #10
  %94 = icmp eq ptr %93, null
  br i1 %94, label %113, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %2, align 4
  %97 = load i32, ptr %4, align 4
  %98 = getelementptr %struct.pinctrl_map, ptr %96, i32 %97, i32 2
  store i32 4, ptr %98, align 4
  %99 = load ptr, ptr %2, align 4
  %100 = load i32, ptr %4, align 4
  %101 = getelementptr %struct.pinctrl_map, ptr %99, i32 %100, i32 4
  store ptr %68, ptr %101, align 4
  %102 = load ptr, ptr %2, align 4
  %103 = load i32, ptr %4, align 4
  %104 = getelementptr %struct.pinctrl_map, ptr %102, i32 %103, i32 4, i32 0, i32 1
  store ptr %93, ptr %104, align 4
  %105 = load ptr, ptr %2, align 4
  %106 = load i32, ptr %4, align 4
  %107 = getelementptr %struct.pinctrl_map, ptr %105, i32 %106, i32 4, i32 0, i32 2
  store i32 %32, ptr %107, align 4
  %108 = load i32, ptr %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %4, align 4
  br label %110

110:                                              ; preds = %95, %86
  %111 = call ptr @of_prop_next_string(ptr noundef %61, ptr noundef nonnull %68) #10
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %67

113:                                              ; preds = %110, %92, %91, %73, %60, %51, %39, %17
  %114 = phi ptr [ %31, %39 ], [ %31, %51 ], [ %31, %73 ], [ %31, %91 ], [ %31, %60 ], [ %31, %92 ], [ %31, %110 ], [ %12, %17 ]
  %115 = phi i32 [ %37, %39 ], [ -12, %51 ], [ -28, %73 ], [ -28, %91 ], [ 0, %60 ], [ 0, %110 ], [ -12, %92 ], [ -12, %17 ]
  call void @kfree(ptr noundef %114) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %115
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_get_functions_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %2, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @samsung_pinmux_get_fname(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.samsung_pmx_func, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinmux_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.samsung_pmx_func, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.samsung_pmx_func, ptr %10, i32 %1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.samsung_pin_group, ptr %8, i32 %2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.samsung_pin_bank, ptr %16, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %14
  br i1 %19, label %38, label %20

20:                                               ; preds = %29, %3
  %21 = phi i32 [ %32, %29 ], [ %18, %3 ]
  %22 = phi ptr [ %30, %29 ], [ %16, %3 ]
  %23 = getelementptr inbounds %struct.samsung_pin_bank, ptr %22, i32 0, i32 3
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = add i32 %21, -1
  %27 = add i32 %26, %25
  %28 = icmp ult i32 %27, %14
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = getelementptr %struct.samsung_pin_bank, ptr %22, i32 1
  %31 = getelementptr %struct.samsung_pin_bank, ptr %22, i32 1, i32 10
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, %14
  br i1 %33, label %34, label %20

34:                                               ; preds = %29, %20
  %35 = phi ptr [ %30, %29 ], [ %22, %20 ]
  %36 = getelementptr inbounds %struct.samsung_pin_bank, ptr %35, i32 0, i32 10
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %3
  %39 = phi i32 [ %18, %3 ], [ %37, %34 ]
  %40 = phi ptr [ %16, %3 ], [ %35, %34 ]
  %41 = getelementptr inbounds %struct.samsung_pin_bank, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.samsung_pin_bank, ptr %40, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = sub i32 %14, %39
  %47 = load ptr, ptr %40, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = mul i32 %46, %49
  %51 = icmp ugt i32 %50, 31
  %52 = add i32 %50, -32
  %53 = select i1 %51, i32 4, i32 0
  %54 = getelementptr i8, ptr %45, i32 %53
  %55 = select i1 %51, i32 %52, i32 %50
  %56 = shl nsw i32 -1, %49
  %57 = xor i32 %56, -1
  %58 = getelementptr inbounds %struct.samsung_pin_bank, ptr %40, i32 0, i32 18
  %59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %58) #10
  %60 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %47, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr i8, ptr %54, i32 %62
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %65 = shl i32 %57, %55
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = getelementptr %struct.samsung_pmx_func, ptr %6, i32 %1, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = shl i32 %69, %55
  %71 = or i32 %67, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %72 = load i8, ptr %60, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr i8, ptr %54, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %14, label %9

6:                                                ; preds = %9
  %7 = add nuw i32 %10, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = getelementptr i32, ptr %2, i32 %10
  %12 = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %1, ptr noundef %11, i1 noundef zeroext true)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %9, %6, %4
  %15 = phi i32 [ 0, %4 ], [ 0, %6 ], [ %12, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.samsung_pin_group, ptr %6, i32 %1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %9, ptr noundef %2, i1 noundef zeroext false) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.samsung_pin_group, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.samsung_pin_group, ptr %7, i32 %1, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %3, 0
  br label %15

15:                                               ; preds = %30, %13
  %16 = phi ptr [ %7, %13 ], [ %31, %30 ]
  %17 = phi i32 [ 0, %13 ], [ %32, %30 ]
  %18 = getelementptr i32, ptr %9, i32 %17
  %19 = load i32, ptr %18, align 4
  br i1 %14, label %30, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %25, %20 ], [ 0, %15 ]
  %22 = getelementptr i32, ptr %2, i32 %21
  %23 = tail call fastcc i32 @samsung_pinconf_rw(ptr noundef %0, i32 noundef %19, ptr noundef %22, i1 noundef zeroext true) #10
  %24 = icmp slt i32 %23, 0
  %25 = add nuw i32 %21, 1
  %26 = icmp eq i32 %25, %3
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %20

28:                                               ; preds = %20
  %29 = load ptr, ptr %6, align 4
  br label %30

30:                                               ; preds = %28, %15
  %31 = phi ptr [ %29, %28 ], [ %16, %15 ]
  %32 = add nuw nsw i32 %17, 1
  %33 = getelementptr %struct.samsung_pin_group, ptr %31, i32 %1, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %15, label %37

37:                                               ; preds = %30, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @samsung_pinctrl_create_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.samsung_pmx_func, ptr %2, i32 0, i32 3
  %6 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %5, i32 noundef 1, i32 noundef 0) #10
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %1) #11
  br label %38

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %2, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %17, label %19, !prof !9

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.samsung_pmx_func, ptr %2, i32 0, i32 1
  store ptr null, ptr %18, align 4
  br label %38

19:                                               ; preds = %12
  %20 = extractvalue { i32, i1 } %15, 0
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %20, i32 noundef 3520) #10
  %22 = getelementptr inbounds %struct.samsung_pmx_func, ptr %2, i32 0, i32 1
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %29, %19
  %25 = phi i32 [ %33, %29 ], [ 0, %19 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  %26 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %25) #10
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %25, ptr noundef %1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %38

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 4
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr ptr, ptr %31, i32 %25
  store ptr %30, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %33 = add nuw nsw i32 %25, 1
  %34 = icmp eq i32 %33, %9
  br i1 %34, label %35, label %24

35:                                               ; preds = %29
  %36 = trunc i32 %9 to i8
  %37 = getelementptr inbounds %struct.samsung_pmx_func, ptr %2, i32 0, i32 2
  store i8 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %28, %19, %17, %11, %3
  %39 = phi i32 [ -22, %11 ], [ %26, %28 ], [ 1, %35 ], [ 0, %3 ], [ -12, %19 ], [ -12, %17 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.samsung_pin_bank, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.samsung_pin_bank, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %7, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %12, i32 %15
  %17 = load i8, ptr %7, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nsw i32 -1, %18
  %20 = xor i32 %19, -1
  %21 = mul i32 %18, %1
  %22 = icmp ugt i32 %21, 31
  %23 = add i32 %21, -32
  %24 = select i1 %22, i32 %23, i32 %21
  %25 = select i1 %22, i32 4, i32 0
  %26 = getelementptr i8, ptr %16, i32 %25
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %28 = shl i32 %20, %24
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %30) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.samsung_pin_bank, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.samsung_pin_bank, ptr %7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr %struct.samsung_pin_bank_type, ptr %8, i32 0, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %19 = shl nuw i32 1, %1
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %2, 0
  %23 = or i32 %18, %19
  %24 = select i1 %22, i32 %21, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %25 = load i8, ptr %14, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %13, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #10, !srcloc !13
  %28 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.samsung_pin_bank, ptr %28, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  %35 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %29, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = load i8, ptr %29, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nsw i32 -1, %40
  %42 = xor i32 %41, -1
  %43 = mul i32 %40, %1
  %44 = icmp ugt i32 %43, 31
  %45 = add i32 %43, -32
  %46 = select i1 %44, i32 %45, i32 %43
  %47 = select i1 %44, i32 4, i32 0
  %48 = getelementptr i8, ptr %38, i32 %47
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %50 = shl i32 %42, %46
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = shl nuw i32 1, %46
  %54 = or i32 %52, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %54) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr i8, ptr %6, i32 %8
  %10 = getelementptr %struct.samsung_pin_bank_type, ptr %4, i32 0, i32 1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %15 = lshr i32 %14, %1
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @samsung_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.samsung_pin_bank, ptr %4, i32 0, i32 18
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.samsung_pin_bank, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.samsung_pin_bank, ptr %7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = getelementptr %struct.samsung_pin_bank_type, ptr %8, i32 0, i32 1, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %19 = shl nuw i32 1, %1
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %2, 0
  %23 = or i32 %18, %19
  %24 = select i1 %22, i32 %21, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %25 = load i8, ptr %14, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %13, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %24) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_gpio_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %5, i32 noundef %1, ptr noundef null) #10
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -6, i32 %8
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ -6, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_remove_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %105, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 10
  br label %9

9:                                                ; preds = %101, %7
  %10 = phi i32 [ 0, %7 ], [ %102, %101 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10
  %13 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = load ptr, ptr %12, align 4
  %19 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1
  %20 = getelementptr i8, ptr %18, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %101, label %23

23:                                               ; preds = %9
  %24 = load i8, ptr %18, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %19, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %17, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %31 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 0
  store i32 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = getelementptr i8, ptr %18, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %17, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %42 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 1
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %36, %32
  %44 = getelementptr i8, ptr %18, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = getelementptr %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %17, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %53 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 2
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %43
  %55 = getelementptr i8, ptr %18, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr i8, ptr %17, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %64 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 3
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i8, ptr %20, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = getelementptr %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr i8, ptr %17, i32 %71
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %74 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 4
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = getelementptr i8, ptr %18, i32 5
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.samsung_pin_bank_type, ptr %18, i32 0, i32 1, i32 5
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = getelementptr i8, ptr %17, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %85 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 5
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %79, %75
  %87 = load i8, ptr %18, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 3
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = mul nuw nsw i32 %91, %88
  %93 = icmp ugt i32 %92, 32
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i8, ptr %19, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr i8, ptr %17, i32 4
  %98 = getelementptr i8, ptr %97, i32 %96
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  %100 = getelementptr %struct.samsung_pin_bank, ptr %11, i32 %10, i32 19, i32 6
  store i32 %99, ptr %100, align 4
  br label %101

101:                                              ; preds = %94, %86, %9
  %102 = add nuw i32 %10, 1
  %103 = load i32, ptr %4, align 4
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %9, label %105

105:                                              ; preds = %101, %1
  %106 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void %107(ptr noundef %3) #10
  br label %110

110:                                              ; preds = %109, %105
  %111 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 14
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %112, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void %116(ptr noundef %3) #10
  br label %119

119:                                              ; preds = %118, %114, %110
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @samsung_pinctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %3) #10
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %114, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 10
  br label %14

14:                                               ; preds = %110, %12
  %15 = phi i32 [ %10, %12 ], [ %111, %110 ]
  %16 = phi i32 [ 0, %12 ], [ %112, %110 ]
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16
  %19 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %20, i32 %22
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr inbounds %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1
  %26 = getelementptr i8, ptr %24, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %110, label %29

29:                                               ; preds = %14
  %30 = load i8, ptr %24, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 3
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, %31
  %36 = icmp ugt i32 %35, 32
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %38 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = load i8, ptr %25, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr i8, ptr %23, i32 4
  %43 = getelementptr i8, ptr %42, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %39) #10, !srcloc !13
  %44 = load i8, ptr %24, align 1
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i8 [ %30, %29 ], [ %44, %37 ]
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %49 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 0
  %50 = load i32, ptr %49, align 4
  %51 = load i8, ptr %25, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr i8, ptr %23, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #10, !srcloc !13
  br label %54

54:                                               ; preds = %48, %45
  %55 = getelementptr i8, ptr %24, i32 1
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %59 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr i8, ptr %23, i32 %63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %60) #10, !srcloc !13
  br label %65

65:                                               ; preds = %58, %54
  %66 = getelementptr i8, ptr %24, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %70 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr i8, ptr %23, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %71) #10, !srcloc !13
  br label %76

76:                                               ; preds = %69, %65
  %77 = getelementptr i8, ptr %24, i32 3
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %81 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = getelementptr i8, ptr %23, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %82) #10, !srcloc !13
  br label %87

87:                                               ; preds = %80, %76
  %88 = load i8, ptr %26, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %91 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1, i32 4
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr i8, ptr %23, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %92) #10, !srcloc !13
  br label %97

97:                                               ; preds = %90, %87
  %98 = getelementptr i8, ptr %24, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %102 = getelementptr %struct.samsung_pin_bank, ptr %17, i32 %16, i32 19, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr %struct.samsung_pin_bank_type, ptr %24, i32 0, i32 1, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr i8, ptr %23, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %103) #10, !srcloc !13
  br label %108

108:                                              ; preds = %101, %97
  %109 = load i32, ptr %9, align 4
  br label %110

110:                                              ; preds = %108, %14
  %111 = phi i32 [ %109, %108 ], [ %15, %14 ]
  %112 = add nuw i32 %16, 1
  %113 = icmp ult i32 %112, %111
  br i1 %113, label %14, label %114

114:                                              ; preds = %110, %8
  %115 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 14
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.samsung_retention_ctrl, ptr %116, i32 0, i32 6
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  tail call void %120(ptr noundef %3) #10
  br label %123

123:                                              ; preds = %122, %118, %114
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(1) }

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
!10 = !{i64 3653649}
!11 = !{i64 2152414093}
!12 = !{i64 2152414381}
!13 = !{i64 3653231}
!14 = !{i64 2152412872}
!15 = !{i64 2152413081}
!16 = !{i64 2152416743}
!17 = !{i64 2152416917}
!18 = !{i64 2152415212}
!19 = !{i64 2152415420}
!20 = !{i64 2152416451}
!21 = !{i64 2152427587}
!22 = !{i64 2152427966}
!23 = !{i64 2152432006}
!24 = !{i64 2152433726}
