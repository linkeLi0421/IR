; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-stmfx.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-stmfx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.stmfx_pinctrl = type { ptr, ptr, ptr, %struct.pinctrl_desc, %struct.gpio_chip, %struct.irq_chip, %struct.mutex, i32, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stmfx = type { ptr, ptr, ptr, i32, ptr, %struct.mutex, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_stmfx__211_841_stmfx_pinctrl_driver_init6 = internal global ptr @stmfx_pinctrl_driver_init, section ".initcall6.init", align 4
@stmfx_pinctrl_driver = internal global %struct.platform_driver { ptr @stmfx_pinctrl_probe, ptr @stmfx_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stmfx_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_pinctrl_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_stmfx_pinctrl_driver_exit = internal global ptr @stmfx_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description212 = internal constant [52 x i8] c"pinctrl_stmfx.description=STMFX pinctrl/GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [62 x i8] c"pinctrl_stmfx.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [49 x i8] c"pinctrl_stmfx.file=drivers/pinctrl/pinctrl-stmfx\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [29 x i8] c"pinctrl_stmfx.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"stmfx-pinctrl\00", align 1
@stmfx_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmfx-0300-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@stmfx_pinctrl_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"missing required gpio-ranges property\0A\00", align 1
@stmfx_pinctrl_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&pctl->lock\00", align 1
@stmfx_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @stmfx_pinctrl_get_groups_count, ptr @stmfx_pinctrl_get_group_name, ptr @stmfx_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@stmfx_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @stmfx_pinconf_get, ptr @stmfx_pinconf_set, ptr null, ptr null, ptr @stmfx_pinconf_dbg_show, ptr null, ptr null }, align 4
@stmfx_pins = internal constant [24 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.33, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.34, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.35, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.36, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.37, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.38, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.39, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.40, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.48, ptr null }], align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"pinctrl enable failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stmfx-gpio\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"gpio_chip registration failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot request irq%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%ld GPIOs available\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"pin %d is not available\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"output %s \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"open drain %s internal pull-up \00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"without\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"push pull no pull \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"input %s \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"with internal pull-%s \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"gpio7\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"gpio8\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"gpio9\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gpio10\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"gpio11\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"gpio12\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"gpio13\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"gpio14\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"gpio15\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"agpio0\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"agpio1\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"agpio2\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"agpio3\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"agpio4\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"agpio5\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"agpio6\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"agpio7\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"registers backup failure\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"registers restoration failure\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_stmfx_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_stmfx__211_841_stmfx_pinctrl_driver_init6, ptr @stmfx_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmfx_pinctrl_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmfx_pinctrl_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %5, align 4
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 544, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %116, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %13, align 8
  store ptr %12, ptr %9, align 4
  %14 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 1
  store ptr %5, ptr %14, align 4
  %15 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.2) #9
  br label %116

19:                                               ; preds = %11
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %116, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @stmfx_pinctrl_probe.__key) #8
  %24 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3
  store ptr @.str, ptr %24, align 4
  %25 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 3
  store ptr @stmfx_pinctrl_ops, ptr %25, align 4
  %26 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 5
  store ptr @stmfx_pinconf_ops, ptr %26, align 4
  %27 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 1
  store ptr @stmfx_pins, ptr %27, align 4
  %28 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 2
  store i32 24, ptr %28, align 4
  %29 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 6
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 3, i32 10
  store i8 1, ptr %30, align 4
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 2
  %33 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %31, ptr noundef %24, ptr noundef nonnull %9, ptr noundef %32) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %22
  %36 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.4) #9
  br label %116

37:                                               ; preds = %22
  %38 = load ptr, ptr %32, align 4
  %39 = tail call i32 @pinctrl_enable(ptr noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.5) #9
  br label %116

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4
  store ptr @.str.6, ptr %44, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 2
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 7
  store ptr @stmfx_gpio_get_direction, ptr %47, align 4
  %48 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 8
  store ptr @stmfx_gpio_direction_input, ptr %48, align 4
  %49 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 9
  store ptr @stmfx_gpio_direction_output, ptr %49, align 4
  %50 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 10
  store ptr @stmfx_gpio_get, ptr %50, align 4
  %51 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 12
  store ptr @stmfx_gpio_set, ptr %51, align 4
  %52 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 14
  store ptr @gpiochip_generic_config, ptr %52, align 4
  %53 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 19
  store i32 -1, ptr %53, align 4
  %54 = load i32, ptr %28, align 4
  %55 = trunc i32 %54 to i16
  %56 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 20
  store i16 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 23
  store i8 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load ptr, ptr %45, align 4
  br label %63

63:                                               ; preds = %61, %43
  %64 = phi ptr [ %62, %61 ], [ %59, %43 ]
  %65 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5
  %66 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 1
  store ptr %64, ptr %66, align 4
  %67 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 7
  store ptr @stmfx_pinctrl_irq_mask, ptr %67, align 4
  %68 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 9
  store ptr @stmfx_pinctrl_irq_unmask, ptr %68, align 4
  %69 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 13
  store ptr @stmfx_pinctrl_irq_set_type, ptr %69, align 4
  %70 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 15
  store ptr @stmfx_pinctrl_irq_bus_lock, ptr %70, align 4
  %71 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 16
  store ptr @stmfx_pinctrl_irq_bus_sync_unlock, ptr %71, align 4
  %72 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 22
  store ptr @stmfx_gpio_irq_request_resources, ptr %72, align 4
  %73 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 5, i32 23
  store ptr @stmfx_gpio_irq_release_resources, ptr %73, align 4
  %74 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37
  store ptr %65, ptr %74, align 4
  %75 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 13
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 15
  store i32 0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 16
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 10
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %79, align 4
  %80 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 4, i32 37, i32 18
  store i8 1, ptr %80, align 4
  %81 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %45, ptr noundef %44, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %63
  %84 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.7) #9
  br label %116

85:                                               ; preds = %63
  %86 = load ptr, ptr %32, align 4
  %87 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 7
  store i32 65535, ptr %87, align 4
  %88 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %86, i32 noundef 16) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, ptr %87, align 4
  %92 = or i32 %91, 983040
  store i32 %92, ptr %87, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi i32 [ 3, %90 ], [ 1, %85 ]
  %95 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %86, i32 noundef 20) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = or i32 %94, 4
  %99 = load i32, ptr %87, align 4
  %100 = or i32 %99, 15728640
  store i32 %100, ptr %87, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i32 [ %98, %97 ], [ %94, %93 ]
  %103 = load ptr, ptr %14, align 4
  %104 = tail call i32 @stmfx_function_enable(ptr noundef %103, i32 noundef %102) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load ptr, ptr %9, align 4
  %108 = load ptr, ptr %66, align 4
  %109 = tail call i32 @devm_request_threaded_irq(ptr noundef %107, i32 noundef %20, ptr noundef null, ptr noundef nonnull @stmfx_pinctrl_irq_thread_fn, i32 noundef 8192, ptr noundef %108, ptr noundef nonnull %9) #8
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %9, align 4
  br i1 %110, label %113, label %112

112:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.8, i32 noundef %20) #9
  br label %116

113:                                              ; preds = %106
  %114 = load i32, ptr %87, align 4
  %115 = tail call i32 @__sw_hweight32(i32 noundef %114) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.9, i32 noundef %115) #9
  br label %116

116:                                              ; preds = %113, %112, %101, %83, %41, %35, %19, %17, %1
  %117 = phi i32 [ %33, %35 ], [ %39, %41 ], [ %81, %83 ], [ %109, %112 ], [ 0, %113 ], [ -22, %17 ], [ -12, %1 ], [ -6, %19 ], [ %104, %101 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @stmfx_function_disable(ptr noundef %5, i32 noundef 7) #8
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 3
  %6 = add nuw nsw i32 %5, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stmfx, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %6, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = and i32 %1, 7
  %15 = load i32, ptr %3, align 4
  %16 = xor i32 %15, -1
  %17 = lshr i32 %16, %14
  %18 = and i32 %17, 1
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi i32 [ %11, %2 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = lshr i32 %1, 3
  %5 = add nuw nsw i32 %4, 96
  %6 = and i32 %1, 7
  %7 = shl nuw nsw i32 1, %6
  %8 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmfx, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %5, i32 noundef %7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 3
  %6 = add nuw nsw i32 %5, 96
  %7 = and i32 %1, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %10 = icmp eq i32 %2, 0
  %11 = select i1 %10, i32 112, i32 108
  %12 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stmfx, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = add nuw nsw i32 %11, %5
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %16, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %18 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.stmfx, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %6, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 3
  %6 = add nuw nsw i32 %5, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stmfx, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %6, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %1, 7
  %14 = load i32, ptr %3, align 4
  %15 = lshr i32 %14, %13
  %16 = and i32 %15, 1
  %17 = select i1 %12, i32 %16, i32 %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 112, i32 108
  %7 = and i32 %1, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stmfx, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = lshr i32 %1, 3
  %14 = add nuw nsw i32 %6, %13
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %6, 7
  %9 = shl nuw nsw i32 1, %8
  %10 = getelementptr %struct.stmfx_pinctrl, ptr %4, i32 0, i32 8, i32 %7
  %11 = load i8, ptr %10, align 1
  %12 = trunc i32 %9 to i8
  %13 = xor i8 %12, -1
  %14 = and i8 %11, %13
  store i8 %14, ptr %10, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %6, 7
  %9 = shl nuw nsw i32 1, %8
  %10 = getelementptr %struct.stmfx_pinctrl, ptr %4, i32 0, i32 8, i32 %7
  %11 = load i8, ptr %10, align 1
  %12 = trunc i32 %9 to i8
  %13 = or i8 %11, %12
  store i8 %13, ptr %10, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 7
  %11 = shl nuw nsw i32 1, %10
  %12 = lshr i32 %9, 3
  %13 = and i32 %1, 3
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr %struct.stmfx_pinctrl, ptr %5, i32 0, i32 10, i32 %12
  %16 = load i8, ptr %15, align 1
  %17 = trunc i32 %11 to i8
  %18 = xor i8 %17, -1
  %19 = and i8 %16, %18
  %20 = or i8 %16, %17
  %21 = select i1 %14, i8 %19, i8 %20
  %22 = select i1 %14, ptr @handle_level_irq, ptr @handle_edge_irq
  store i8 %21, ptr %15, align 1
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.irq_desc, ptr %24, i32 0, i32 3
  store ptr %22, ptr %25, align 4
  %26 = and i32 %1, 5
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr %struct.stmfx_pinctrl, ptr %5, i32 0, i32 9, i32 %12
  %29 = load i8, ptr %28, align 1
  %30 = trunc i32 %11 to i8
  %31 = xor i8 %30, -1
  %32 = and i8 %29, %31
  %33 = or i8 %29, %30
  %34 = select i1 %27, i8 %32, i8 %33
  store i8 %34, ptr %28, align 1
  %35 = icmp eq i32 %13, 3
  %36 = getelementptr %struct.stmfx_pinctrl, ptr %5, i32 0, i32 11, i32 %12
  %37 = load i8, ptr %36, align 1
  %38 = trunc i32 %11 to i8
  %39 = or i8 %37, %38
  %40 = and i8 %37, %38
  %41 = select i1 %35, i8 %39, i8 %40
  store i8 %41, ptr %36, align 1
  br label %42

42:                                               ; preds = %7, %2
  %43 = phi i32 [ -22, %2 ], [ 0, %7 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_bus_lock(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_bus_sync_unlock(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %7, 7
  %10 = shl nuw nsw i32 1, %9
  %11 = getelementptr %struct.stmfx_pinctrl, ptr %5, i32 0, i32 11, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %1
  %17 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %18 = add nuw nsw i32 %8, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.stmfx, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @regmap_read(ptr noundef %22, i32 noundef %18, ptr noundef nonnull %2) #8
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %2, align 4
  %26 = lshr i32 %25, %9
  %27 = and i32 %26, 1
  %28 = select i1 %24, i32 %27, i32 %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr %struct.stmfx_pinctrl, ptr %5, i32 0, i32 9, i32 %8
  %31 = load i8, ptr %30, align 1
  %32 = trunc i32 %10 to i8
  %33 = xor i8 %32, -1
  %34 = and i8 %31, %33
  %35 = or i8 %31, %32
  %36 = select i1 %29, i8 %35, i8 %34
  store i8 %36, ptr %30, align 1
  br label %37

37:                                               ; preds = %16, %1
  %38 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stmfx, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 10
  %43 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 76, ptr noundef %42, i32 noundef 3) #8
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr inbounds %struct.stmfx, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 9
  %48 = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 80, ptr noundef %47, i32 noundef 3) #8
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.stmfx, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 8
  %53 = call i32 @regmap_bulk_write(ptr noundef %51, i32 noundef 72, ptr noundef %52, i32 noundef 3) #8
  %54 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %54) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_irq_request_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %7 = lshr i32 %5, 3
  %8 = add nuw nsw i32 %7, 96
  %9 = and i32 %5, 7
  %10 = shl nuw nsw i32 1, %9
  %11 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stmfx, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, ptr %4, align 4
  %19 = tail call i32 @gpiochip_reqres_irq(ptr noundef %3, i32 noundef %18) #8
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ %19, %17 ], [ %15, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_gpio_irq_release_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %3, i32 noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_irq_thread_fn(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  %8 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmfx, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 12, ptr noundef nonnull %5, i32 noundef 3) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.stmfx, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 72, ptr noundef nonnull %6, i32 noundef 3) #8
  %19 = load i8, ptr %5, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %24, %20
  %26 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 16
  %30 = or i32 %29, %25
  store i32 %30, ptr %7, align 4
  %31 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 4, i32 20
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %33, i32 noundef 0) #8
  %35 = load i16, ptr %31, align 4
  %36 = zext i16 %35 to i32
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %14
  %39 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 4, i32 37, i32 1
  %40 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 4
  br label %41

41:                                               ; preds = %84, %38
  %42 = phi i32 [ %34, %38 ], [ %88, %84 ]
  %43 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %44 = call ptr @__irq_resolve_mapping(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %4) #8
  %45 = icmp eq ptr %44, null
  %46 = load i32, ptr %4, align 4
  %47 = select i1 %45, i32 0, i32 %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @handle_nested_irq(i32 noundef %47) #8
  %48 = lshr i32 %42, 3
  %49 = and i32 %42, 7
  %50 = shl nuw nsw i32 1, %49
  %51 = getelementptr %struct.stmfx_pinctrl, ptr %1, i32 0, i32 11, i32 %48
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %50, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %41
  %57 = call ptr @gpiochip_get_data(ptr noundef %40) #8
  %58 = add nuw nsw i32 %48, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.stmfx, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @regmap_read(ptr noundef %62, i32 noundef %58, ptr noundef nonnull %3) #8
  %64 = icmp eq i32 %63, 0
  %65 = load i32, ptr %3, align 4
  %66 = lshr i32 %65, %49
  %67 = and i32 %66, 1
  %68 = select i1 %64, i32 %67, i32 %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %56
  %71 = icmp eq i32 %68, 0
  %72 = getelementptr %struct.stmfx_pinctrl, ptr %1, i32 0, i32 9, i32 %48
  %73 = load i8, ptr %72, align 1
  %74 = trunc i32 %50 to i8
  %75 = and i8 %73, %74
  %76 = or i8 %73, %74
  %77 = select i1 %71, i8 %76, i8 %75
  %78 = select i1 %71, i32 %50, i32 0
  store i8 %77, ptr %72, align 1
  %79 = load ptr, ptr %8, align 4
  %80 = getelementptr inbounds %struct.stmfx, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = add nuw nsw i32 %48, 80
  %83 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef %82, i32 noundef %50, i32 noundef %78, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %84

84:                                               ; preds = %70, %56, %41
  %85 = load i16, ptr %31, align 4
  %86 = zext i16 %85 to i32
  %87 = add nuw i32 %42, 1
  %88 = call i32 @_find_next_bit_le(ptr noundef nonnull %7, i32 noundef %86, i32 noundef %87) #8
  %89 = load i16, ptr %31, align 4
  %90 = zext i16 %89 to i32
  %91 = icmp ult i32 %88, %90
  br i1 %91, label %41, label %92

92:                                               ; preds = %84, %14
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr inbounds %struct.stmfx, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 8
  %97 = call i32 @regmap_bulk_write(ptr noundef %95, i32 noundef 72, ptr noundef %96, i32 noundef 3) #8
  br label %98

98:                                               ; preds = %92, %2
  %99 = phi i32 [ 1, %92 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %99
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmfx_pinctrl_get_groups_count(ptr nocapture noundef readnone %0) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal noalias ptr @stmfx_pinctrl_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmfx_pinctrl_get_group_pins(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #5 {
  ret i32 -524
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 255
  %10 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %0, i32 noundef %1) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %106, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %7, i32 0, i32 4
  %14 = tail call ptr @gpiochip_get_data(ptr noundef %13) #8
  %15 = lshr i32 %1, 3
  %16 = add nuw nsw i32 %15, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.stmfx, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @regmap_read(ptr noundef %20, i32 noundef %16, ptr noundef nonnull %6) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = and i32 %1, 7
  %25 = load i32, ptr %6, align 4
  %26 = xor i32 %25, -1
  %27 = lshr i32 %26, %24
  %28 = and i32 %27, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %33

29:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %30 = icmp slt i32 %21, 0
  br i1 %30, label %106, label %31

31:                                               ; preds = %29
  %32 = and i32 %1, 7
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi i32 [ %32, %31 ], [ %24, %23 ]
  %35 = phi i32 [ %21, %31 ], [ %28, %23 ]
  %36 = icmp eq i32 %35, 1
  %37 = add nuw nsw i32 %15, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %38 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %7, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stmfx, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @regmap_read(ptr noundef %41, i32 noundef %37, ptr noundef nonnull %5) #8
  %43 = icmp eq i32 %42, 0
  %44 = load i32, ptr %5, align 4
  %45 = lshr i32 %44, %34
  %46 = and i32 %45, 1
  %47 = select i1 %43, i32 %46, i32 %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %106, label %49

49:                                               ; preds = %33
  %50 = add nuw nsw i32 %15, 104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr inbounds %struct.stmfx, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @regmap_read(ptr noundef %53, i32 noundef %50, ptr noundef nonnull %4) #8
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr %4, align 4
  %57 = lshr i32 %56, %34
  %58 = and i32 %57, 1
  %59 = select i1 %55, i32 %58, i32 %54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %49
  %62 = trunc i32 %8 to i8
  switch i8 %62, label %106 [
    i8 1, label %63
    i8 3, label %71
    i8 5, label %77
    i8 6, label %82
    i8 8, label %91
    i8 17, label %98
  ]

63:                                               ; preds = %61
  br i1 %36, label %68, label %64

64:                                               ; preds = %63
  %65 = icmp ne i32 %47, 0
  %66 = icmp ne i32 %59, 0
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %102, label %70

68:                                               ; preds = %63
  %69 = icmp eq i32 %47, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %68, %64
  br label %102

71:                                               ; preds = %61
  %72 = icmp ne i32 %47, 0
  %73 = icmp eq i32 %59, 0
  %74 = select i1 %36, i1 %72, i1 false
  %75 = select i1 %74, i1 %73, i1 false
  %76 = zext i1 %75 to i32
  br label %102

77:                                               ; preds = %61
  %78 = icmp ne i32 %47, 0
  %79 = icmp ne i32 %59, 0
  %80 = select i1 %78, i1 %79, i1 false
  %81 = zext i1 %80 to i32
  br label %102

82:                                               ; preds = %61
  %83 = xor i1 %36, true
  %84 = icmp ne i32 %47, 0
  %85 = xor i1 %84, true
  %86 = select i1 %36, i1 true, i1 %85
  %87 = select i1 %83, i1 true, i1 %84
  %88 = select i1 %86, i1 %87, i1 false
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  br label %102

91:                                               ; preds = %61
  %92 = icmp ne i32 %47, 0
  %93 = select i1 %36, i1 true, i1 %92
  %94 = xor i1 %93, true
  %95 = select i1 %36, i1 %92, i1 false
  %96 = select i1 %94, i1 true, i1 %95
  %97 = zext i1 %96 to i32
  br label %102

98:                                               ; preds = %61
  br i1 %36, label %106, label %99

99:                                               ; preds = %98
  %100 = call i32 @stmfx_gpio_get(ptr noundef %13, i32 noundef %1)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %99, %91, %82, %77, %71, %70, %68, %64
  %103 = phi i32 [ 0, %68 ], [ 1, %70 ], [ %76, %71 ], [ %81, %77 ], [ %100, %99 ], [ %90, %82 ], [ %97, %91 ], [ 0, %64 ]
  %104 = shl i32 %103, 8
  %105 = or i32 %104, %9
  store i32 %105, ptr %2, align 4
  br label %106

106:                                              ; preds = %102, %99, %98, %61, %49, %33, %29, %3
  %107 = phi i32 [ 0, %102 ], [ -22, %3 ], [ %21, %29 ], [ %47, %33 ], [ %59, %49 ], [ -22, %98 ], [ %100, %99 ], [ -524, %61 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %0, i32 noundef %1) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 4
  %10 = lshr i32 %1, 3
  %11 = add nuw nsw i32 %10, 100
  %12 = and i32 %1, 7
  %13 = shl nuw nsw i32 1, %12
  %14 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %5, i32 0, i32 1
  %15 = add nuw nsw i32 %10, 104
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %8
  %18 = add nuw nsw i32 %10, 96
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %1) #9
  br label %83

22:                                               ; preds = %80, %17
  %23 = phi i32 [ 0, %17 ], [ %81, %80 ]
  %24 = getelementptr i32, ptr %2, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %83 [
    i8 4, label %27
    i8 1, label %27
    i8 8, label %27
    i8 3, label %33
    i8 5, label %45
    i8 6, label %57
    i8 17, label %63
  ]

27:                                               ; preds = %22, %22, %22
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr inbounds %struct.stmfx, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %11, i32 noundef %13, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %80, label %83

33:                                               ; preds = %22
  %34 = load ptr, ptr %14, align 4
  %35 = getelementptr inbounds %struct.stmfx, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %11, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %33
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.stmfx, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef %15, i32 noundef %13, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %80, label %83

45:                                               ; preds = %22
  %46 = load ptr, ptr %14, align 4
  %47 = getelementptr inbounds %struct.stmfx, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %11, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %45
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr inbounds %struct.stmfx, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %15, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %80, label %83

57:                                               ; preds = %22
  %58 = load ptr, ptr %14, align 4
  %59 = getelementptr inbounds %struct.stmfx, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %11, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %80, label %83

63:                                               ; preds = %22
  %64 = tail call ptr @gpiochip_get_data(ptr noundef %9) #8
  %65 = tail call ptr @gpiochip_get_data(ptr noundef %9) #8
  %66 = icmp ult i32 %25, 256
  %67 = select i1 %66, i32 112, i32 108
  %68 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %65, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.stmfx, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = add nuw nsw i32 %67, %10
  %73 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %72, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %74 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %64, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.stmfx, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %18, i32 noundef %13, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %63, %57, %51, %39, %27
  %81 = add nuw i32 %23, 1
  %82 = icmp eq i32 %81, %3
  br i1 %82, label %83, label %22

83:                                               ; preds = %80, %63, %57, %51, %45, %39, %33, %27, %22, %19, %8
  %84 = phi i32 [ -22, %19 ], [ 0, %8 ], [ %31, %27 ], [ %37, %33 ], [ %43, %39 ], [ %49, %45 ], [ %55, %51 ], [ %61, %57 ], [ %78, %63 ], [ -524, %22 ], [ 0, %80 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmfx_pinconf_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %9 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %0, i32 noundef %2) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %8, i32 0, i32 4
  %13 = tail call ptr @gpiochip_get_data(ptr noundef %12) #8
  %14 = lshr i32 %2, 3
  %15 = add nuw nsw i32 %14, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.stmfx, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %19, i32 noundef %15, ptr noundef nonnull %7) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = and i32 %2, 7
  %24 = load i32, ptr %7, align 4
  %25 = xor i32 %24, -1
  %26 = lshr i32 %25, %23
  %27 = and i32 %26, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %32

28:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %29 = icmp slt i32 %20, 0
  br i1 %29, label %90, label %30

30:                                               ; preds = %28
  %31 = and i32 %2, 7
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %31, %30 ], [ %23, %22 ]
  %34 = phi i32 [ 1, %30 ], [ %27, %22 ]
  %35 = add nuw nsw i32 %14, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %36 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %8, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.stmfx, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = call i32 @regmap_read(ptr noundef %39, i32 noundef %35, ptr noundef nonnull %6) #8
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %6, align 4
  %43 = lshr i32 %42, %33
  %44 = and i32 %43, 1
  %45 = select i1 %41, i32 %44, i32 %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %90, label %47

47:                                               ; preds = %32
  %48 = add nuw nsw i32 %14, 104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %49 = load ptr, ptr %36, align 4
  %50 = getelementptr inbounds %struct.stmfx, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regmap_read(ptr noundef %51, i32 noundef %48, ptr noundef nonnull %5) #8
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %5, align 4
  %55 = lshr i32 %54, %33
  %56 = and i32 %55, 1
  %57 = select i1 %53, i32 %56, i32 %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %47
  %60 = call ptr @gpiochip_get_data(ptr noundef %12) #8
  %61 = add nuw nsw i32 %14, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %62 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %60, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.stmfx, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = call i32 @regmap_read(ptr noundef %65, i32 noundef %61, ptr noundef nonnull %4) #8
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr %4, align 4
  %69 = lshr i32 %68, %33
  %70 = and i32 %69, 1
  %71 = select i1 %67, i32 %70, i32 %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %59
  %74 = icmp eq i32 %34, 0
  %75 = icmp eq i32 %71, 0
  %76 = select i1 %75, ptr @.str.13, ptr @.str.12
  br i1 %74, label %77, label %83

77:                                               ; preds = %73
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %76) #8
  %78 = icmp eq i32 %45, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = icmp eq i32 %57, 0
  %81 = select i1 %80, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %81) #8
  br label %90

82:                                               ; preds = %77
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  br label %90

83:                                               ; preds = %73
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %76) #8
  %84 = icmp eq i32 %45, 0
  %85 = icmp eq i32 %57, 0
  br i1 %84, label %88, label %86

86:                                               ; preds = %83
  %87 = select i1 %85, ptr @.str.21, ptr @.str.20
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %87) #8
  br label %90

88:                                               ; preds = %83
  %89 = select i1 %85, ptr @.str.24, ptr @.str.23
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %89) #8
  br label %90

90:                                               ; preds = %88, %86, %82, %79, %59, %47, %32, %28, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmfx_function_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmfx_function_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 12
  %9 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 16, ptr noundef %8, i32 noundef 3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.stmfx, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 13
  %16 = tail call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 96, ptr noundef %15, i32 noundef 3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.stmfx, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 14
  %23 = tail call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 100, ptr noundef %22, i32 noundef 3) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.stmfx, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 15
  %30 = tail call i32 @regmap_bulk_read(ptr noundef %28, i32 noundef 104, ptr noundef %29, i32 noundef 3) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25, %18, %11, %1
  %33 = phi i32 [ %30, %25 ], [ %23, %18 ], [ %16, %11 ], [ %9, %1 ]
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.49) #9
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ %33, %32 ], [ 0, %25 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 13
  %9 = tail call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 96, ptr noundef %8, i32 noundef 3) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.stmfx, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 14
  %16 = tail call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef 100, ptr noundef %15, i32 noundef 3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.stmfx, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 15
  %23 = tail call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 104, ptr noundef %22, i32 noundef 3) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %18
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.stmfx, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 12
  %30 = tail call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 108, ptr noundef %29, i32 noundef 3) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %25
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.stmfx, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 10
  %37 = tail call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 76, ptr noundef %36, i32 noundef 3) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.stmfx, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 9
  %44 = tail call i32 @regmap_bulk_write(ptr noundef %42, i32 noundef 80, ptr noundef %43, i32 noundef 3) #8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.stmfx, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %3, i32 0, i32 8
  %51 = tail call i32 @regmap_bulk_write(ptr noundef %49, i32 noundef 72, ptr noundef %50, i32 noundef 3) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %39, %32, %25, %18, %11, %1
  %54 = phi i32 [ %51, %46 ], [ %44, %39 ], [ %37, %32 ], [ %30, %25 ], [ %23, %18 ], [ %16, %11 ], [ %9, %1 ]
  %55 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.50) #9
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i32 [ %54, %53 ], [ 0, %46 ]
  ret i32 %57
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
