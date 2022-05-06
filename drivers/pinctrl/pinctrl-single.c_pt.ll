; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-single.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-single.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type {}
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcs_conf_type = type { ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcs_soc_data = type { i32, i32, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.pcs_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, %struct.pcs_soc_data, %struct.raw_spinlock, %struct.mutex, i32, i32, i32, i32, i32, i8, i32, %struct.pcs_data, %struct.list_head, %struct.list_head, %struct.irq_chip, ptr, %struct.pinctrl_desc, ptr, ptr }
%struct.pcs_data = type { ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pcs_gpiofunc_range = type { i32, i32, i32, %struct.list_head }
%struct.pcs_pdata = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pcs_func_vals = type { ptr, i32, i32 }
%struct.pcs_function = type { ptr, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pcs_conf_vals = type { i32, i32, i32, i32, i32 }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_setting_mux = type { i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.pcs_interrupt = type { ptr, i32, i32, %struct.list_head }

@__initcall__kmod_pinctrl_single__210_1988_pcs_driver_init6 = internal global ptr @pcs_driver_init, section ".initcall6.init", align 4
@pcs_driver = internal global %struct.platform_driver { ptr @pcs_probe, ptr @pcs_remove, ptr null, ptr @pinctrl_single_suspend, ptr @pinctrl_single_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcs_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pcs_driver_exit = internal global ptr @pcs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [55 x i8] c"pinctrl_single.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [86 x i8] c"pinctrl_single.description=One-register-per-pin type device tree based pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [51 x i8] c"pinctrl_single.file=drivers/pinctrl/pinctrl-single\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [30 x i8] c"pinctrl_single.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"pinctrl-single\00", align 1
@pcs_of_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_omap_wkup }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_dra7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437-padconf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single_am437x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pinctrl-single\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinctrl_single }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pinconf-single\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pinconf_single }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"drivers/pinctrl/pinctrl-single.c\00", align 1
@pcs_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&pcs->mutex\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"pinctrl-single,register-width\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"register width not specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pinctrl-single,function-mask\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"pinctrl-single,function-off\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"pinctrl-single,bit-per-mux\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"unable to patch #pinctrl-cells\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"could not get resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"could not get mem_region\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"could not ioremap\0A\00", align 1
@pcs_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @pcs_pin_dbg_show, ptr @pcs_dt_node_to_map, ptr @pcs_dt_free_map }, align 4
@pcs_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @pcs_set_mux, ptr @pcs_request_gpio, ptr null, ptr null, i8 0 }, align 4
@pcs_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @pcs_pinconf_get, ptr @pcs_pinconf_set, ptr @pcs_pinconf_group_get, ptr @pcs_pinconf_group_set, ptr @pcs_pinconf_dbg_show, ptr @pcs_pinconf_group_dbg_show, ptr @pcs_pinconf_config_dbg_show }, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"could not register single pinctrl driver\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"initialized with no interrupts\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"%i pins, size %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"#pinctrl-cells\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"please update dts to use %s = <%i>\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"%zx %08x %s \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"no pins entries for %pOFn\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"pinctrl-single,bits\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Invalid number of rows: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"pinconf not supported\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"invalid args_count for spec: %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Invalid mask for %pOFn at 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Invalid submask 0x%x for %pOFn at 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"could not add functions for %pOFn %ux\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"mux offset out of range: 0x%x (0x%x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"pinctrl-single,pins\00", align 1
@pcs_parse_pinconf.prop2 = internal unnamed_addr constant [5 x %struct.pcs_conf_type] [%struct.pcs_conf_type { ptr @.str.28, i32 9 }, %struct.pcs_conf_type { ptr @.str.29, i32 24 }, %struct.pcs_conf_type { ptr @.str.30, i32 12 }, %struct.pcs_conf_type { ptr @.str.31, i32 13 }, %struct.pcs_conf_type { ptr @.str.32, i32 15 }], align 4
@.str.28 = private unnamed_addr constant [30 x i8] c"pinctrl-single,drive-strength\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"pinctrl-single,slew-rate\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"pinctrl-single,input-enable\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"pinctrl-single,input-schmitt\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"pinctrl-single,low-power-mode\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"pinctrl-single,bias-pullup\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"pinctrl-single,bias-pulldown\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"pinctrl-single,input-schmitt-enable\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"mask field of the property can't be 0\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"%s could not find function%i\0A\00", align 1
@__func__.pcs_get_function = private unnamed_addr constant [17 x i8] c"pcs_get_function\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"error adding pins: %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"too many pins, max %i\0A\00", align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"pinctrl-single,gpio-range\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"#pinctrl-single,gpio-range-cells\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"pinctrl\00", align 1
@pcs_irqdomain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @pcs_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pinctrl_single_omap_wkup = internal constant %struct.pcs_soc_data { i32 4, i32 0, i32 16384, i32 32768, ptr null }, align 4
@pinctrl_single_dra7 = internal constant %struct.pcs_soc_data { i32 0, i32 0, i32 16777216, i32 33554432, ptr null }, align 4
@pinctrl_single_am437x = internal constant %struct.pcs_soc_data { i32 12, i32 0, i32 536870912, i32 1073741824, ptr null }, align 4
@pinctrl_single = internal constant %struct.pcs_soc_data zeroinitializer, align 4
@pinconf_single = internal constant %struct.pcs_soc_data { i32 1, i32 0, i32 0, i32 0, ptr null }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_pcs_driver_exit, ptr @__initcall__kmod_pinctrl_single__210_1988_pcs_driver_init6, ptr @pcs_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pcs_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcs_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pcs_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcs_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %4) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1786, i32 noundef 9, ptr noundef null) #9
  br label %287

10:                                               ; preds = %1
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 324, i32 noundef 3520) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %287, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 4
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 5
  store ptr %6, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 10
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.2, ptr noundef nonnull @pcs_probe.__key) #9
  %18 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 20
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 20, i32 1
  store ptr %18, ptr %19, align 4
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 7
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %22, ptr noundef nonnull align 4 dereferenceable(20) %7, i32 20, i1 false)
  %23 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 12
  %24 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef 1, i32 noundef 0) #9
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26

26:                                               ; preds = %13
  %27 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.4) #10
  br label %287

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 13
  %30 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.5, ptr noundef %29, i32 noundef 1, i32 noundef 0) #9
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, ptr %29, align 4
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #9, !range !9
  %35 = lshr i32 %33, %34
  br label %37

36:                                               ; preds = %28
  store i32 0, ptr %29, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %34, %32 ], [ 0, %36 ]
  %39 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %40 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 14
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 16
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 15
  %43 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef %42, i32 noundef 1, i32 noundef 0) #9
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  store i32 -1, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %37
  %47 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %48 = icmp ne ptr %47, null
  %49 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 17
  %50 = zext i1 %48 to i8
  store i8 %50, ptr %49, align 4
  %51 = select i1 %48, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !10
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %78

55:                                               ; preds = %46
  %56 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %51) #10
  %57 = load ptr, ptr %14, align 4
  %58 = call noalias ptr @devm_kmalloc(ptr noundef %57, i32 noundef 52, i32 noundef 3520) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.property, ptr %58, i32 0, i32 1
  store i32 4, ptr %61, align 4
  %62 = load ptr, ptr %14, align 4
  %63 = call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef 4, i32 noundef 3520) #9
  %64 = getelementptr inbounds %struct.property, ptr %58, i32 0, i32 2
  store ptr %63, ptr %64, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = shl nuw nsw i32 %51, 24
  store i32 %67, ptr %63, align 4
  %68 = load ptr, ptr %14, align 4
  %69 = call noalias ptr @devm_kstrdup(ptr noundef %68, ptr noundef nonnull @.str.15, i32 noundef 3264) #9
  store ptr %69, ptr %58, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %60, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %76

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 8
  store ptr %58, ptr %73, align 4
  %74 = call i32 @of_add_property(ptr noundef %6, ptr noundef nonnull %58) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %71
  %77 = phi i32 [ -12, %71 ], [ %74, %72 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  br label %287

78:                                               ; preds = %72, %54
  %79 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %80 = icmp eq ptr %79, null
  %81 = load ptr, ptr %14, align 4
  br i1 %80, label %82, label %83

82:                                               ; preds = %78
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.9) #10
  br label %287

83:                                               ; preds = %78
  %84 = load i32, ptr %79, align 4
  %85 = getelementptr inbounds %struct.resource, ptr %79, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 1, %84
  %88 = add i32 %87, %86
  %89 = call ptr @__devm_request_region(ptr noundef %81, ptr noundef nonnull @iomem_resource, i32 noundef %84, i32 noundef %88, ptr noundef nonnull @.str) #9
  store ptr %89, ptr %11, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.10) #10
  br label %287

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.resource, ptr %89, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %89, align 4
  %97 = add i32 %95, 1
  %98 = sub i32 %97, %96
  %99 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %14, align 4
  %101 = load i32, ptr %89, align 4
  %102 = call ptr @devm_ioremap(ptr noundef %100, i32 noundef %101, i32 noundef %98) #9
  %103 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.11) #10
  br label %287

107:                                              ; preds = %93
  %108 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %108, align 8
  %109 = load i32, ptr %23, align 4
  switch i32 %109, label %117 [
    i32 8, label %112
    i32 16, label %110
    i32 32, label %111
  ]

110:                                              ; preds = %107
  br label %112

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %110, %107
  %113 = phi ptr [ @pcs_readl, %111 ], [ @pcs_readw, %110 ], [ @pcs_readb, %107 ]
  %114 = phi ptr [ @pcs_writel, %111 ], [ @pcs_writew, %110 ], [ @pcs_writeb, %107 ]
  %115 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 25
  store ptr %113, ptr %115, align 4
  %116 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 26
  store ptr %114, ptr %116, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24
  store ptr @.str, ptr %118, align 4
  %119 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 3
  store ptr @pcs_pinctrl_ops, ptr %119, align 4
  %120 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 4
  store ptr @pcs_pinmux_ops, ptr %120, align 4
  %121 = load i32, ptr %21, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 5
  store ptr @pcs_pinconf_ops, ptr %125, align 4
  br label %126

126:                                              ; preds = %124, %117
  %127 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 6
  store ptr null, ptr %127, align 4
  %128 = load i8, ptr %49, align 4, !range !11
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %29, align 4
  %132 = call i32 @llvm.ctlz.i32(i32 %131, i1 false) #9, !range !9
  %133 = sub nuw nsw i32 32, %132
  %134 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 18
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %99, align 4
  %136 = shl i32 %135, 3
  %137 = udiv i32 %136, %133
  br label %142

138:                                              ; preds = %126
  %139 = lshr i32 %109, 3
  %140 = load i32, ptr %99, align 4
  %141 = udiv i32 %140, %139
  br label %142

142:                                              ; preds = %138, %130
  %143 = phi i32 [ %137, %130 ], [ %141, %138 ]
  %144 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %143, i32 12) #9
  %145 = extractvalue { i32, i1 } %144, 1
  br i1 %145, label %146, label %148, !prof !8

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 19
  store ptr null, ptr %147, align 4
  br label %285

148:                                              ; preds = %142
  %149 = load ptr, ptr %14, align 4
  %150 = extractvalue { i32, i1 } %144, 0
  %151 = call noalias ptr @devm_kmalloc(ptr noundef %149, i32 noundef %150, i32 noundef 3520) #9
  %152 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 19
  store ptr %151, ptr %152, align 4
  %153 = icmp eq ptr %151, null
  br i1 %153, label %285, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 1
  store ptr %151, ptr %155, align 4
  %156 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 24, i32 2
  store i32 %143, ptr %156, align 4
  %157 = icmp eq i32 %143, 0
  br i1 %157, label %215, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 18
  %160 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 19, i32 1
  %161 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 9, i32 2
  %162 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 25
  %163 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 26
  br label %168

164:                                              ; preds = %206
  %165 = add nuw i32 %170, 1
  %166 = load i32, ptr %156, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %215

168:                                              ; preds = %164, %158
  %169 = phi i32 [ %143, %158 ], [ %166, %164 ]
  %170 = phi i32 [ 0, %158 ], [ %165, %164 ]
  %171 = load i32, ptr %23, align 4
  %172 = lshr i32 %171, 3
  %173 = load i8, ptr %49, align 4, !range !11
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %168
  %176 = load i32, ptr %159, align 4
  %177 = mul i32 %176, %170
  %178 = lshr i32 %177, 3
  %179 = urem i32 %178, %172
  %180 = sub nsw i32 %178, %179
  br label %183

181:                                              ; preds = %168
  %182 = mul i32 %172, %170
  br label %183

183:                                              ; preds = %181, %175
  %184 = phi i32 [ %180, %175 ], [ %182, %181 ]
  %185 = load i32, ptr %160, align 4
  %186 = icmp ult i32 %185, %169
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.39, i32 noundef %169) #10
  br label %212

189:                                              ; preds = %183
  %190 = load i32, ptr %161, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %162, align 4
  %194 = load ptr, ptr %103, align 4
  %195 = getelementptr i8, ptr %194, i32 %184
  %196 = call i32 %193(ptr noundef %195) #9
  %197 = load i32, ptr %161, align 4
  %198 = and i32 %197, %196
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %192
  %201 = xor i32 %197, -1
  %202 = and i32 %196, %201
  %203 = load ptr, ptr %163, align 4
  %204 = load ptr, ptr %103, align 4
  %205 = getelementptr i8, ptr %204, i32 %184
  call void %203(i32 noundef %202, ptr noundef %205) #9
  br label %206

206:                                              ; preds = %200, %192, %189
  %207 = load ptr, ptr %152, align 4
  %208 = getelementptr %struct.pinctrl_pin_desc, ptr %207, i32 %185
  store i32 %185, ptr %208, align 4
  %209 = load i32, ptr %160, align 4
  %210 = add i32 %209, 1
  store i32 %210, ptr %160, align 4
  %211 = icmp slt i32 %185, 0
  br i1 %211, label %212, label %164

212:                                              ; preds = %206, %187
  %213 = phi i32 [ -12, %187 ], [ %185, %206 ]
  %214 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.38, i32 noundef %213) #10
  br label %285

215:                                              ; preds = %164, %154
  %216 = load ptr, ptr %14, align 4
  %217 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 6
  %218 = call i32 @pinctrl_register_and_init(ptr noundef %118, ptr noundef %216, ptr noundef nonnull %11, ptr noundef %217) #9
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.12) #10
  br label %285

222:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !10
  %223 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %2) #9
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %247

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %227 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  %228 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 2
  br label %229

229:                                              ; preds = %234, %225
  %230 = phi i32 [ 0, %225 ], [ %243, %234 ]
  %231 = load ptr, ptr %14, align 4
  %232 = call noalias ptr @devm_kmalloc(ptr noundef %231, i32 noundef 20, i32 noundef 3520) #9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %246, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %226, align 4
  store i32 %235, ptr %232, align 4
  %236 = load i32, ptr %227, align 4
  %237 = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %232, i32 0, i32 1
  store i32 %236, ptr %237, align 4
  %238 = load i32, ptr %228, align 4
  %239 = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %232, i32 0, i32 2
  store i32 %238, ptr %239, align 4
  call void @mutex_lock(ptr noundef %17) #9
  %240 = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %232, i32 0, i32 3
  %241 = load ptr, ptr %19, align 4
  store ptr %240, ptr %19, align 4
  store ptr %18, ptr %240, align 4
  %242 = getelementptr inbounds %struct.pcs_gpiofunc_range, ptr %232, i32 0, i32 3, i32 1
  store ptr %241, ptr %242, align 4
  store volatile ptr %240, ptr %241, align 4
  call void @mutex_unlock(ptr noundef %17) #9
  %243 = add i32 %230, 1
  %244 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef -1, i32 noundef %243, ptr noundef nonnull %2) #9
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %229, label %247

246:                                              ; preds = %229
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  br label %285

247:                                              ; preds = %234, %222
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %248 = call i32 @irq_of_parse_and_map(ptr noundef %6, i32 noundef 0) #9
  %249 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 9, i32 1
  store i32 %248, ptr %249, align 4
  %250 = icmp eq i32 %248, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = load i32, ptr %21, align 4
  %253 = or i32 %252, 2
  store i32 %253, ptr %21, align 4
  br label %254

254:                                              ; preds = %251, %247
  %255 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %270, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.pcs_pdata, ptr %256, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.pcs_device, ptr %11, i32 0, i32 9, i32 4
  store ptr %260, ptr %263, align 4
  br label %264

264:                                              ; preds = %262, %258
  %265 = load i32, ptr %256, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  store i32 %265, ptr %249, align 4
  %268 = load i32, ptr %21, align 4
  %269 = or i32 %268, 2
  store i32 %269, ptr %21, align 4
  br label %270

270:                                              ; preds = %267, %264, %254
  %271 = load i32, ptr %21, align 4
  %272 = and i32 %271, 2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %270
  %275 = call fastcc i32 @pcs_irq_init_chained_handler(ptr noundef nonnull %11, ptr noundef %6)
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %278, ptr noundef nonnull @.str.13) #10
  br label %279

279:                                              ; preds = %277, %274, %270
  %280 = load ptr, ptr %14, align 4
  %281 = load i32, ptr %156, align 4
  %282 = load i32, ptr %99, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %280, ptr noundef nonnull @.str.14, i32 noundef %281, i32 noundef %282) #10
  %283 = load ptr, ptr %217, align 4
  %284 = call i32 @pinctrl_enable(ptr noundef %283) #9
  br label %287

285:                                              ; preds = %246, %220, %212, %148, %146
  %286 = phi i32 [ %218, %220 ], [ -12, %246 ], [ %213, %212 ], [ -12, %146 ], [ -12, %148 ]
  call fastcc void @pcs_free_resources(ptr noundef nonnull %11)
  br label %287

287:                                              ; preds = %285, %279, %105, %91, %82, %76, %26, %10, %9
  %288 = phi i32 [ -22, %9 ], [ %24, %26 ], [ %77, %76 ], [ %286, %285 ], [ %284, %279 ], [ -19, %105 ], [ -16, %91 ], [ -19, %82 ], [ -12, %10 ]
  ret i32 %288
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call fastcc void @pcs_free_resources(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinctrl_single_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %86, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 12
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 3
  %15 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef %22, i32 noundef 2848) #9
  store ptr %23, ptr %15, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %90, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %12, align 4
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi ptr [ %23, %25 ], [ %16, %11 ]
  %29 = phi i32 [ %26, %25 ], [ %13, %11 ]
  switch i32 %29, label %86 [
    i32 64, label %30
    i32 32, label %49
    i32 16, label %67
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %36 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %28, %34 ], [ %45, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %46, %37 ]
  %40 = load ptr, ptr %35, align 4
  %41 = load ptr, ptr %36, align 4
  %42 = getelementptr i8, ptr %41, i32 %39
  %43 = tail call i32 %40(ptr noundef %42) #9
  %44 = zext i32 %43 to i64
  %45 = getelementptr i64, ptr %38, i32 1
  store i64 %44, ptr %38, align 8
  %46 = add i32 %39, %14
  %47 = load i32, ptr %31, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %37, label %86

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %55 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi ptr [ %28, %53 ], [ %63, %56 ]
  %58 = phi i32 [ 0, %53 ], [ %64, %56 ]
  %59 = load ptr, ptr %54, align 4
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr i8, ptr %60, i32 %58
  %62 = tail call i32 %59(ptr noundef %61) #9
  %63 = getelementptr i32, ptr %57, i32 1
  store i32 %62, ptr %57, align 4
  %64 = add i32 %58, %14
  %65 = load i32, ptr %50, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %56, label %86

67:                                               ; preds = %27
  %68 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %73 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  br label %74

74:                                               ; preds = %74, %71
  %75 = phi ptr [ %28, %71 ], [ %82, %74 ]
  %76 = phi i32 [ 0, %71 ], [ %83, %74 ]
  %77 = load ptr, ptr %72, align 4
  %78 = load ptr, ptr %73, align 4
  %79 = getelementptr i8, ptr %78, i32 %76
  %80 = tail call i32 %77(ptr noundef %79) #9
  %81 = trunc i32 %80 to i16
  %82 = getelementptr i16, ptr %75, i32 1
  store i16 %81, ptr %75, align 2
  %83 = add i32 %76, %14
  %84 = load i32, ptr %68, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %74, label %86

86:                                               ; preds = %74, %67, %56, %49, %37, %30, %27, %6
  %87 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @pinctrl_force_sleep(ptr noundef %88) #9
  br label %90

90:                                               ; preds = %86, %18, %2
  %91 = phi i32 [ %89, %86 ], [ -22, %2 ], [ -12, %18 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinctrl_single_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 3
  switch i32 %12, label %76 [
    i32 64, label %14
    i32 32, label %35
    i32 16, label %55
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 26
  %22 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 1
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi ptr [ %20, %18 ], [ %27, %23 ]
  %25 = phi i32 [ 0, %18 ], [ %32, %23 ]
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i64, ptr %24, i32 1
  %28 = load i64, ptr %24, align 8
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr i8, ptr %30, i32 %25
  tail call void %26(i32 noundef %29, ptr noundef %31) #9
  %32 = add i32 %25, %13
  %33 = load i32, ptr %15, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %23, label %76

35:                                               ; preds = %10
  %36 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 26
  %43 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 1
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi ptr [ %41, %39 ], [ %48, %44 ]
  %46 = phi i32 [ 0, %39 ], [ %52, %44 ]
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr i32, ptr %45, i32 1
  %49 = load i32, ptr %45, align 4
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr i8, ptr %50, i32 %46
  tail call void %47(i32 noundef %49, ptr noundef %51) #9
  %52 = add i32 %46, %13
  %53 = load i32, ptr %36, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %44, label %76

55:                                               ; preds = %10
  %56 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 26
  %63 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 1
  br label %64

64:                                               ; preds = %64, %59
  %65 = phi ptr [ %61, %59 ], [ %68, %64 ]
  %66 = phi i32 [ 0, %59 ], [ %73, %64 ]
  %67 = load ptr, ptr %62, align 4
  %68 = getelementptr i16, ptr %65, i32 1
  %69 = load i16, ptr %65, align 2
  %70 = zext i16 %69 to i32
  %71 = load ptr, ptr %63, align 4
  %72 = getelementptr i8, ptr %71, i32 %66
  tail call void %67(i32 noundef %70, ptr noundef %72) #9
  %73 = add i32 %66, %13
  %74 = load i32, ptr %56, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %64, label %76

76:                                               ; preds = %64, %55, %44, %35, %23, %14, %10, %5
  %77 = getelementptr inbounds %struct.pcs_device, ptr %3, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @pinctrl_force_default(ptr noundef %78) #9
  br label %80

80:                                               ; preds = %76, %1
  %81 = phi i32 [ %79, %76 ], [ -22, %1 ]
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_readb(ptr noundef %0) #2 {
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_writeb(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !14
  tail call void @arm_heavy_mb() #9
  %3 = trunc i32 %0 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %3) #9, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_readw(ptr noundef %0) #2 {
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #9, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !17
  %3 = zext i16 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_writew(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %3 = trunc i32 %0 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %3) #9, !srcloc !19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_readl(ptr noundef %0) #2 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #9, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_writel(i32 noundef %0, ptr noundef %1) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %0) #9, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pcs_irq_init_chained_handler(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9
  %4 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 1
  store i32 -1, ptr %12, align 4
  br label %44

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 21
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 21, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 22, i32 1
  store ptr @.str.42, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 22, i32 6
  store ptr @pcs_irq_mask, ptr %17, align 4
  %18 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 22, i32 7
  store ptr @pcs_irq_mask, ptr %18, align 4
  %19 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 22, i32 9
  store ptr @pcs_irq_unmask, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 22, i32 14
  store ptr @pcs_irq_set_wake, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 1
  %26 = load i32, ptr %25, align 4
  br i1 %24, label %31, label %27

27:                                               ; preds = %13
  %28 = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef nonnull @pcs_irq_handler, ptr noundef null, i32 noundef 82048, ptr noundef nonnull @.str.42, ptr noundef %3) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  store i32 -1, ptr %25, align 4
  br label %44

31:                                               ; preds = %13
  tail call void @irq_set_chained_handler_and_data(i32 noundef %26, ptr noundef nonnull @pcs_irq_chain_handler, ptr noundef %3) #9
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq ptr %1, null
  %36 = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %37 = select i1 %35, ptr null, ptr %36
  %38 = tail call ptr @irq_domain_create_simple(ptr noundef %37, i32 noundef %34, i32 noundef 0, ptr noundef nonnull @pcs_irqdomain_ops, ptr noundef %3) #9
  %39 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 23
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 1
  %43 = load i32, ptr %42, align 4
  tail call void @__irq_set_handler(i32 noundef %43, ptr noundef null, i32 noundef 1, ptr noundef null) #9
  br label %44

44:                                               ; preds = %41, %32, %30, %11
  %45 = phi i32 [ -22, %41 ], [ -22, %11 ], [ %28, %30 ], [ 0, %32 ]
  ret i32 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcs_free_resources(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 9, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 23
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void @irq_domain_remove(ptr noundef nonnull %8) #9
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %4, %6 ]
  %14 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %2) #9
  br label %21

20:                                               ; preds = %12
  tail call void @__irq_set_handler(i32 noundef %13, ptr noundef null, i32 noundef 1, ptr noundef null) #9
  br label %21

21:                                               ; preds = %20, %18, %1
  %22 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  tail call void @pinctrl_unregister(ptr noundef %23) #9
  %24 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pcs_device, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @of_remove_property(ptr noundef %29, ptr noundef nonnull %25) #9
  br label %31

31:                                               ; preds = %27, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_add_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 3
  %8 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 17
  %9 = load i8, ptr %8, align 4, !range !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 18
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %2
  %15 = lshr i32 %14, 3
  %16 = urem i32 %15, %7
  %17 = sub nsw i32 %15, %16
  br label %20

18:                                               ; preds = %3
  %19 = mul i32 %7, %2
  br label %20

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %17, %11 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %21
  %27 = tail call i32 %23(ptr noundef %26) #9
  %28 = load i8, ptr %8, align 4, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %5, align 4
  %34 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 18
  %35 = load i32, ptr %34, align 4
  %36 = udiv i32 %33, %35
  %37 = urem i32 %2, %36
  %38 = mul i32 %37, %35
  %39 = shl i32 %32, %38
  %40 = and i32 %39, %27
  br label %41

41:                                               ; preds = %30, %20
  %42 = phi i32 [ %40, %30 ], [ %27, %20 ]
  %43 = load ptr, ptr %4, align 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %42, ptr noundef nonnull @.str) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca [4 x i32], align 4
  %6 = alloca [2 x i32], align 8
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %10 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 56, i32 noundef 3520) #9
  store ptr %12, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %490, label %14

14:                                               ; preds = %4
  store i32 0, ptr %3, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 4, i32 noundef 3520) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %486, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 17
  %20 = load i8, ptr %19, align 4, !range !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %186, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @pinctrl_count_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.19) #9
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.20, i32 noundef %23) #10
  br label %482

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.21) #10
  br label %482

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = udiv i32 %36, %38
  %40 = load ptr, ptr %10, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 %39) #9
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef -1, i32 noundef 3520) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %482, label %59

46:                                               ; preds = %34
  %47 = extractvalue { i32, i1 } %41, 0
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 12) #9
  %49 = extractvalue { i32, i1 } %48, 1
  %50 = extractvalue { i32, i1 } %48, 0
  %51 = select i1 %49, i32 -1, i32 %50
  %52 = tail call noalias ptr @devm_kmalloc(ptr noundef %40, i32 noundef %51, i32 noundef 3520) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %482, label %54

54:                                               ; preds = %46
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 4) #9
  %56 = extractvalue { i32, i1 } %55, 1
  %57 = extractvalue { i32, i1 } %55, 0
  %58 = select i1 %56, i32 -1, i32 %57
  br label %59

59:                                               ; preds = %54, %43
  %60 = phi ptr [ %52, %54 ], [ %44, %43 ]
  %61 = phi i32 [ %58, %54 ], [ -1, %43 ]
  %62 = load ptr, ptr %10, align 4
  %63 = tail call noalias ptr @devm_kmalloc(ptr noundef %62, i32 noundef %61, i32 noundef 3520) #9
  %64 = icmp eq ptr %63, null
  br i1 %64, label %181, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.of_phandle_args, ptr %8, i32 0, i32 1
  %67 = getelementptr inbounds %struct.of_phandle_args, ptr %8, i32 0, i32 2
  %68 = getelementptr inbounds %struct.of_phandle_args, ptr %8, i32 0, i32 2, i32 1
  %69 = getelementptr inbounds %struct.of_phandle_args, ptr %8, i32 0, i32 2, i32 2
  %70 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 13
  %71 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 1
  %72 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 3
  br label %73

73:                                               ; preds = %140, %65
  %74 = phi i32 [ 0, %65 ], [ %142, %140 ]
  %75 = phi i32 [ 0, %65 ], [ %141, %140 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 72, i1 false) #9, !annotation !10
  %76 = call i32 @pinctrl_parse_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %74, ptr noundef nonnull %8) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %184

78:                                               ; preds = %73
  %79 = load i32, ptr %66, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %135, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %67, align 4
  %83 = load i32, ptr %68, align 4
  %84 = load i32, ptr %69, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %140, label %86

86:                                               ; preds = %81
  %87 = shl i32 %82, 3
  br label %88

88:                                               ; preds = %130, %86
  %89 = phi i32 [ %84, %86 ], [ %101, %130 ]
  %90 = phi i32 [ %75, %86 ], [ %132, %130 ]
  br label %91

91:                                               ; preds = %103, %88
  %92 = phi i32 [ %89, %88 ], [ %101, %103 ]
  %93 = call i32 @llvm.cttz.i32(i32 %92, i1 true) #9, !range !9
  %94 = load i32, ptr %70, align 4
  %95 = shl i32 %94, %93
  %96 = and i32 %95, %92
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %91
  %99 = load i32, ptr %37, align 4
  %100 = xor i32 %95, -1
  %101 = and i32 %92, %100
  %102 = icmp eq i32 %96, %95
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %104, ptr noundef nonnull @.str.24, i32 noundef %96, ptr noundef %1, i32 noundef %82) #10
  %105 = icmp eq i32 %101, 0
  br i1 %105, label %140, label %91

106:                                              ; preds = %98
  %107 = udiv i32 %93, %99
  %108 = and i32 %95, %83
  %109 = getelementptr %struct.pcs_func_vals, ptr %60, i32 %90
  %110 = getelementptr %struct.pcs_func_vals, ptr %60, i32 %90, i32 2
  store i32 %95, ptr %110, align 4
  %111 = load ptr, ptr %71, align 4
  %112 = getelementptr i8, ptr %111, i32 %82
  store ptr %112, ptr %109, align 4
  %113 = getelementptr %struct.pcs_func_vals, ptr %60, i32 %90, i32 1
  store i32 %108, ptr %113, align 4
  %114 = load i32, ptr %72, align 4
  %115 = icmp ugt i32 %114, %82
  br i1 %115, label %118, label %116

116:                                              ; preds = %106
  %117 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.26, i32 noundef %82, i32 noundef %114) #10
  br label %137

118:                                              ; preds = %106
  %119 = load i8, ptr %19, align 4, !range !11
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %118
  %122 = udiv i32 %87, %99
  br label %127

123:                                              ; preds = %118
  %124 = load i32, ptr %35, align 4
  %125 = lshr i32 %124, 3
  %126 = udiv i32 %82, %125
  br label %127

127:                                              ; preds = %123, %121
  %128 = phi i32 [ %122, %121 ], [ %126, %123 ]
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = add nuw i32 %128, %107
  %132 = add i32 %90, 1
  %133 = getelementptr i32, ptr %63, i32 %90
  store i32 %131, ptr %133, align 4
  %134 = icmp eq i32 %101, 0
  br i1 %134, label %140, label %88

135:                                              ; preds = %78
  %136 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.22, i32 noundef %79) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  br label %144

137:                                              ; preds = %127, %116, %91
  %138 = phi ptr [ @.str.25, %116 ], [ @.str.23, %91 ], [ @.str.25, %127 ]
  %139 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull %138, ptr noundef %1, i32 noundef %82) #10
  br label %140

140:                                              ; preds = %137, %130, %103, %81
  %141 = phi i32 [ %75, %81 ], [ %90, %137 ], [ %90, %103 ], [ %132, %130 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  %142 = add nuw nsw i32 %74, 1
  %143 = icmp eq i32 %142, %23
  br i1 %143, label %144, label %73

144:                                              ; preds = %140, %135
  %145 = phi i32 [ %75, %135 ], [ %141, %140 ]
  %146 = load ptr, ptr %1, align 4
  store ptr %146, ptr %16, align 4
  %147 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 11
  call void @mutex_lock(ptr noundef %147) #9
  %148 = load ptr, ptr %1, align 4
  %149 = load ptr, ptr %10, align 4
  %150 = call noalias ptr @devm_kmalloc(ptr noundef %149, i32 noundef 36, i32 noundef 3520) #9
  %151 = icmp eq ptr %150, null
  br i1 %151, label %178, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.pcs_function, ptr %150, i32 0, i32 1
  store ptr %60, ptr %153, align 4
  %154 = getelementptr inbounds %struct.pcs_function, ptr %150, i32 0, i32 2
  store i32 %145, ptr %154, align 4
  store ptr %148, ptr %150, align 4
  %155 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 6
  %156 = load ptr, ptr %155, align 4
  %157 = call i32 @pinmux_generic_add_function(ptr noundef %156, ptr noundef %148, ptr noundef nonnull %16, i32 noundef 1, ptr noundef nonnull %150) #9
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %160, ptr noundef nonnull %150) #9
  br label %178

161:                                              ; preds = %152
  %162 = load ptr, ptr %155, align 4
  %163 = load ptr, ptr %1, align 4
  %164 = call i32 @pinctrl_generic_add_group(ptr noundef %162, ptr noundef %163, ptr noundef nonnull %63, i32 noundef %145, ptr noundef %9) #9
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %175, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr %2, align 4
  %168 = getelementptr inbounds %struct.pinctrl_map, ptr %167, i32 0, i32 2
  store i32 2, ptr %168, align 4
  %169 = load ptr, ptr %1, align 4
  %170 = load ptr, ptr %2, align 4
  %171 = getelementptr inbounds %struct.pinctrl_map, ptr %170, i32 0, i32 4
  store ptr %169, ptr %171, align 4
  %172 = load ptr, ptr %1, align 4
  %173 = load ptr, ptr %2, align 4
  %174 = getelementptr inbounds %struct.pinctrl_map, ptr %173, i32 0, i32 4, i32 0, i32 1
  store ptr %172, ptr %174, align 4
  store i32 1, ptr %3, align 4
  call void @mutex_unlock(ptr noundef %147) #9
  br label %490

175:                                              ; preds = %161
  %176 = load ptr, ptr %155, align 4
  %177 = call i32 @pinmux_generic_remove_function(ptr noundef %176, i32 noundef %157) #9
  br label %178

178:                                              ; preds = %175, %159, %144
  %179 = phi i32 [ %164, %175 ], [ %157, %159 ], [ -12, %144 ]
  call void @mutex_unlock(ptr noundef %147) #9
  %180 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %180, ptr noundef nonnull %63) #9
  br label %181

181:                                              ; preds = %178, %59
  %182 = phi i32 [ %179, %178 ], [ -12, %59 ]
  %183 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %183, ptr noundef nonnull %60) #9
  br label %482

184:                                              ; preds = %73
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  %185 = icmp slt i32 %76, 0
  br i1 %185, label %482, label %490

186:                                              ; preds = %18
  %187 = tail call i32 @pinctrl_count_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.27) #9
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.20, i32 noundef %187) #10
  br label %482

191:                                              ; preds = %186
  %192 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %187, i32 12) #9
  %193 = extractvalue { i32, i1 } %192, 1
  br i1 %193, label %482, label %194, !prof !8

194:                                              ; preds = %191
  %195 = load ptr, ptr %10, align 4
  %196 = extractvalue { i32, i1 } %192, 0
  %197 = tail call noalias ptr @devm_kmalloc(ptr noundef %195, i32 noundef %196, i32 noundef 3520) #9
  %198 = icmp eq ptr %197, null
  br i1 %198, label %482, label %199

199:                                              ; preds = %194
  %200 = shl nuw nsw i32 %187, 2
  %201 = load ptr, ptr %10, align 4
  %202 = tail call noalias ptr @devm_kmalloc(ptr noundef %201, i32 noundef %200, i32 noundef 3520) #9
  %203 = icmp eq ptr %202, null
  br i1 %203, label %477, label %204

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 1
  %206 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2
  %207 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 1
  %208 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 1
  %209 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2, i32 2
  %210 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 3
  %211 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 18
  %212 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 12
  br label %213

213:                                              ; preds = %259, %204
  %214 = phi i32 [ 0, %204 ], [ %260, %259 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false) #9, !annotation !10
  %215 = call i32 @pinctrl_parse_index_with_args(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %214, ptr noundef nonnull %7) #9
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %480

217:                                              ; preds = %213
  %218 = load i32, ptr %205, align 4
  %219 = add i32 %218, -4
  %220 = icmp ult i32 %219, -2
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.22, i32 noundef %218) #10
  br label %258

223:                                              ; preds = %217
  %224 = load i32, ptr %206, align 4
  %225 = load ptr, ptr %207, align 4
  %226 = getelementptr i8, ptr %225, i32 %224
  %227 = getelementptr %struct.pcs_func_vals, ptr %197, i32 %214
  store ptr %226, ptr %227, align 4
  switch i32 %218, label %237 [
    i32 2, label %228
    i32 3, label %230
  ]

228:                                              ; preds = %223
  %229 = load i32, ptr %208, align 4
  br label %234

230:                                              ; preds = %223
  %231 = load i32, ptr %208, align 4
  %232 = load i32, ptr %209, align 4
  %233 = or i32 %232, %231
  br label %234

234:                                              ; preds = %230, %228
  %235 = phi i32 [ %233, %230 ], [ %229, %228 ]
  %236 = getelementptr %struct.pcs_func_vals, ptr %197, i32 %214, i32 1
  store i32 %235, ptr %236, align 4
  br label %237

237:                                              ; preds = %234, %223
  %238 = load i32, ptr %210, align 4
  %239 = icmp ugt i32 %238, %224
  br i1 %239, label %242, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.26, i32 noundef %224, i32 noundef %238) #10
  br label %256

242:                                              ; preds = %237
  %243 = load i8, ptr %19, align 4, !range !11
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = shl i32 %224, 3
  %247 = load i32, ptr %211, align 4
  %248 = udiv i32 %246, %247
  br label %253

249:                                              ; preds = %242
  %250 = load i32, ptr %212, align 4
  %251 = lshr i32 %250, 3
  %252 = udiv i32 %224, %251
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i32 [ %248, %245 ], [ %252, %249 ]
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %240
  %257 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.25, ptr noundef %1, i32 noundef %224) #10
  br label %258

258:                                              ; preds = %256, %221
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  br label %263

259:                                              ; preds = %253
  %260 = add nuw nsw i32 %214, 1
  %261 = getelementptr i32, ptr %202, i32 %214
  store i32 %254, ptr %261, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  %262 = icmp eq i32 %260, %187
  br i1 %262, label %263, label %213

263:                                              ; preds = %259, %258
  %264 = phi i32 [ %214, %258 ], [ %187, %259 ]
  %265 = load ptr, ptr %1, align 4
  store ptr %265, ptr %16, align 4
  %266 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 11
  call void @mutex_lock(ptr noundef %266) #9
  %267 = load ptr, ptr %1, align 4
  %268 = load ptr, ptr %10, align 4
  %269 = call noalias ptr @devm_kmalloc(ptr noundef %268, i32 noundef 36, i32 noundef 3520) #9
  %270 = icmp eq ptr %269, null
  br i1 %270, label %474, label %271

271:                                              ; preds = %263
  %272 = getelementptr inbounds %struct.pcs_function, ptr %269, i32 0, i32 1
  store ptr %197, ptr %272, align 4
  %273 = getelementptr inbounds %struct.pcs_function, ptr %269, i32 0, i32 2
  store i32 %264, ptr %273, align 4
  store ptr %267, ptr %269, align 4
  %274 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 6
  %275 = load ptr, ptr %274, align 4
  %276 = call i32 @pinmux_generic_add_function(ptr noundef %275, ptr noundef %267, ptr noundef nonnull %16, i32 noundef 1, ptr noundef nonnull %269) #9
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %271
  %279 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %279, ptr noundef nonnull %269) #9
  br label %474

280:                                              ; preds = %271
  %281 = load ptr, ptr %274, align 4
  %282 = load ptr, ptr %1, align 4
  %283 = call i32 @pinctrl_generic_add_group(ptr noundef %281, ptr noundef %282, ptr noundef nonnull %202, i32 noundef %264, ptr noundef %9) #9
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %470, label %285

285:                                              ; preds = %280
  %286 = load ptr, ptr %2, align 4
  %287 = getelementptr inbounds %struct.pinctrl_map, ptr %286, i32 0, i32 2
  store i32 2, ptr %287, align 4
  %288 = load ptr, ptr %1, align 4
  %289 = load ptr, ptr %2, align 4
  %290 = getelementptr inbounds %struct.pinctrl_map, ptr %289, i32 0, i32 4
  store ptr %288, ptr %290, align 4
  %291 = load ptr, ptr %1, align 4
  %292 = load ptr, ptr %2, align 4
  %293 = getelementptr inbounds %struct.pinctrl_map, ptr %292, i32 0, i32 4, i32 0, i32 1
  store ptr %291, ptr %293, align 4
  %294 = getelementptr inbounds %struct.pcs_device, ptr %9, i32 0, i32 7
  %295 = load i32, ptr %294, align 4
  %296 = and i32 %295, 1
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %465, label %298

298:                                              ; preds = %285
  %299 = load ptr, ptr %2, align 4
  %300 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #9
  %301 = icmp ne ptr %300, null
  %302 = zext i1 %301 to i32
  %303 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #9
  %304 = icmp ne ptr %303, null
  %305 = zext i1 %304 to i32
  %306 = add nuw nsw i32 %305, %302
  %307 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef null) #9
  %308 = icmp ne ptr %307, null
  %309 = zext i1 %308 to i32
  %310 = add nuw nsw i32 %306, %309
  %311 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef null) #9
  %312 = icmp ne ptr %311, null
  %313 = zext i1 %312 to i32
  %314 = add nuw nsw i32 %310, %313
  %315 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef null) #9
  %316 = icmp ne ptr %315, null
  %317 = zext i1 %316 to i32
  %318 = add nuw nsw i32 %314, %317
  %319 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef null) #9
  %320 = icmp ne ptr %319, null
  %321 = zext i1 %320 to i32
  %322 = add nuw nsw i32 %318, %321
  %323 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef null) #9
  %324 = icmp ne ptr %323, null
  %325 = zext i1 %324 to i32
  %326 = add nuw nsw i32 %322, %325
  %327 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %328 = icmp ne ptr %327, null
  %329 = zext i1 %328 to i32
  %330 = add nuw nsw i32 %326, %329
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %465, label %332

332:                                              ; preds = %298
  %333 = mul nuw nsw i32 %330, 20
  %334 = load ptr, ptr %10, align 4
  %335 = call noalias ptr @devm_kmalloc(ptr noundef %334, i32 noundef %333, i32 noundef 3520) #9
  %336 = getelementptr inbounds %struct.pcs_function, ptr %269, i32 0, i32 5
  store ptr %335, ptr %336, align 4
  %337 = icmp eq ptr %335, null
  br i1 %337, label %467, label %338

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.pcs_function, ptr %269, i32 0, i32 6
  store i32 %330, ptr %339, align 4
  %340 = shl nuw nsw i32 %330, 2
  %341 = load ptr, ptr %10, align 4
  %342 = call noalias ptr @devm_kmalloc(ptr noundef %341, i32 noundef %340, i32 noundef 3520) #9
  %343 = icmp eq ptr %342, null
  br i1 %343, label %467, label %344

344:                                              ; preds = %338
  %345 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  br label %352

346:                                              ; preds = %380
  %347 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 3
  %348 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 1
  %349 = getelementptr inbounds [4 x i32], ptr %5, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !10
  %350 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 0) #9
  %351 = icmp sgt i32 %350, -1
  br i1 %351, label %385, label %407

352:                                              ; preds = %380, %344
  %353 = phi i32 [ 0, %344 ], [ %383, %380 ]
  %354 = phi ptr [ %335, %344 ], [ %382, %380 ]
  %355 = phi ptr [ %342, %344 ], [ %381, %380 ]
  %356 = getelementptr [5 x %struct.pcs_conf_type], ptr @pcs_parse_pinconf.prop2, i32 0, i32 %353
  %357 = load ptr, ptr %356, align 4
  %358 = getelementptr [5 x %struct.pcs_conf_type], ptr @pcs_parse_pinconf.prop2, i32 0, i32 %353, i32 1
  %359 = load i32, ptr %358, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !10
  %360 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef %357, ptr noundef nonnull %6, i32 noundef 2, i32 noundef 0) #9
  %361 = icmp sgt i32 %360, -1
  br i1 %361, label %362, label %380

362:                                              ; preds = %352
  %363 = load i32, ptr %345, align 4
  %364 = load i32, ptr %6, align 8
  %365 = and i32 %364, %363
  store i32 %365, ptr %6, align 8
  %366 = call i32 @llvm.cttz.i32(i32 %363, i1 true) #9, !range !9
  %367 = icmp eq i32 %363, 0
  %368 = select i1 %367, i32 -1, i32 %366
  store i32 %359, ptr %354, align 4
  %369 = getelementptr inbounds %struct.pcs_conf_vals, ptr %354, i32 0, i32 1
  store i32 %365, ptr %369, align 4
  %370 = getelementptr inbounds %struct.pcs_conf_vals, ptr %354, i32 0, i32 2
  store i32 0, ptr %370, align 4
  %371 = getelementptr inbounds %struct.pcs_conf_vals, ptr %354, i32 0, i32 3
  store i32 0, ptr %371, align 4
  %372 = getelementptr inbounds %struct.pcs_conf_vals, ptr %354, i32 0, i32 4
  store i32 %363, ptr %372, align 4
  %373 = getelementptr %struct.pcs_conf_vals, ptr %354, i32 1
  %374 = load i32, ptr %6, align 8
  %375 = lshr i32 %374, %368
  %376 = shl i32 %375, 8
  %377 = and i32 %359, 255
  %378 = or i32 %376, %377
  store i32 %378, ptr %355, align 4
  %379 = getelementptr i32, ptr %355, i32 1
  br label %380

380:                                              ; preds = %362, %352
  %381 = phi ptr [ %379, %362 ], [ %355, %352 ]
  %382 = phi ptr [ %373, %362 ], [ %354, %352 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  %383 = add nuw nsw i32 %353, 1
  %384 = icmp eq i32 %383, 5
  br i1 %384, label %346, label %352

385:                                              ; preds = %346
  %386 = load i32, ptr %347, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  %389 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %389, ptr noundef nonnull @.str.36) #10
  br label %407

390:                                              ; preds = %385
  %391 = load i32, ptr %5, align 4
  %392 = and i32 %391, %386
  %393 = load i32, ptr %348, align 4
  %394 = and i32 %393, %386
  %395 = load i32, ptr %349, align 4
  %396 = and i32 %395, %386
  %397 = icmp eq i32 %392, %394
  %398 = icmp eq i32 %392, %396
  store i32 5, ptr %382, align 4
  %399 = getelementptr inbounds %struct.pcs_conf_vals, ptr %382, i32 0, i32 1
  store i32 %392, ptr %399, align 4
  %400 = getelementptr inbounds %struct.pcs_conf_vals, ptr %382, i32 0, i32 2
  store i32 %394, ptr %400, align 4
  %401 = getelementptr inbounds %struct.pcs_conf_vals, ptr %382, i32 0, i32 3
  store i32 %396, ptr %401, align 4
  %402 = getelementptr inbounds %struct.pcs_conf_vals, ptr %382, i32 0, i32 4
  store i32 %386, ptr %402, align 4
  %403 = getelementptr %struct.pcs_conf_vals, ptr %382, i32 1
  %404 = select i1 %398, i32 5, i32 -5627
  %405 = select i1 %397, i32 261, i32 %404
  store i32 %405, ptr %381, align 4
  %406 = getelementptr i32, ptr %381, i32 1
  br label %407

407:                                              ; preds = %390, %388, %346
  %408 = phi ptr [ %381, %388 ], [ %406, %390 ], [ %381, %346 ]
  %409 = phi ptr [ %382, %388 ], [ %403, %390 ], [ %382, %346 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !10
  %410 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 0) #9
  %411 = icmp sgt i32 %410, -1
  br i1 %411, label %412, label %434

412:                                              ; preds = %407
  %413 = load i32, ptr %347, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %432, label %415

415:                                              ; preds = %412
  %416 = load i32, ptr %5, align 4
  %417 = and i32 %416, %413
  %418 = load i32, ptr %348, align 4
  %419 = and i32 %418, %413
  %420 = load i32, ptr %349, align 4
  %421 = and i32 %420, %413
  %422 = icmp eq i32 %417, %419
  %423 = icmp eq i32 %417, %421
  store i32 3, ptr %409, align 4
  %424 = getelementptr inbounds %struct.pcs_conf_vals, ptr %409, i32 0, i32 1
  store i32 %417, ptr %424, align 4
  %425 = getelementptr inbounds %struct.pcs_conf_vals, ptr %409, i32 0, i32 2
  store i32 %419, ptr %425, align 4
  %426 = getelementptr inbounds %struct.pcs_conf_vals, ptr %409, i32 0, i32 3
  store i32 %421, ptr %426, align 4
  %427 = getelementptr inbounds %struct.pcs_conf_vals, ptr %409, i32 0, i32 4
  store i32 %413, ptr %427, align 4
  %428 = getelementptr %struct.pcs_conf_vals, ptr %409, i32 1
  %429 = select i1 %423, i32 3, i32 -5629
  %430 = select i1 %422, i32 259, i32 %429
  store i32 %430, ptr %408, align 4
  %431 = getelementptr i32, ptr %408, i32 1
  br label %434

432:                                              ; preds = %412
  %433 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %433, ptr noundef nonnull @.str.36) #10
  br label %434

434:                                              ; preds = %432, %415, %407
  %435 = phi ptr [ %408, %432 ], [ %431, %415 ], [ %408, %407 ]
  %436 = phi ptr [ %409, %432 ], [ %428, %415 ], [ %409, %407 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !10
  %437 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef nonnull %5, i32 noundef 4, i32 noundef 0) #9
  %438 = icmp sgt i32 %437, -1
  br i1 %438, label %439, label %459

439:                                              ; preds = %434
  %440 = load i32, ptr %347, align 4
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %457, label %442

442:                                              ; preds = %439
  %443 = load i32, ptr %5, align 4
  %444 = and i32 %443, %440
  %445 = load i32, ptr %348, align 4
  %446 = and i32 %445, %440
  %447 = load i32, ptr %349, align 4
  %448 = and i32 %447, %440
  %449 = icmp eq i32 %444, %446
  %450 = icmp eq i32 %444, %448
  store i32 14, ptr %436, align 4
  %451 = getelementptr inbounds %struct.pcs_conf_vals, ptr %436, i32 0, i32 1
  store i32 %444, ptr %451, align 4
  %452 = getelementptr inbounds %struct.pcs_conf_vals, ptr %436, i32 0, i32 2
  store i32 %446, ptr %452, align 4
  %453 = getelementptr inbounds %struct.pcs_conf_vals, ptr %436, i32 0, i32 3
  store i32 %448, ptr %453, align 4
  %454 = getelementptr inbounds %struct.pcs_conf_vals, ptr %436, i32 0, i32 4
  store i32 %440, ptr %454, align 4
  %455 = select i1 %450, i32 14, i32 -5618
  %456 = select i1 %449, i32 270, i32 %455
  store i32 %456, ptr %435, align 4
  br label %459

457:                                              ; preds = %439
  %458 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %458, ptr noundef nonnull @.str.36) #10
  br label %459

459:                                              ; preds = %457, %442, %434
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %460 = getelementptr %struct.pinctrl_map, ptr %299, i32 1, i32 2
  store i32 4, ptr %460, align 4
  %461 = load ptr, ptr %1, align 4
  %462 = getelementptr %struct.pinctrl_map, ptr %299, i32 1, i32 4
  store ptr %461, ptr %462, align 4
  %463 = getelementptr %struct.pinctrl_map, ptr %299, i32 1, i32 4, i32 0, i32 1
  store ptr %342, ptr %463, align 4
  %464 = getelementptr %struct.pinctrl_map, ptr %299, i32 1, i32 4, i32 0, i32 2
  store i32 %330, ptr %464, align 4
  br label %465

465:                                              ; preds = %459, %298, %285
  %466 = phi i32 [ 2, %459 ], [ 1, %298 ], [ 1, %285 ]
  store i32 %466, ptr %3, align 4
  call void @mutex_unlock(ptr noundef %266) #9
  br label %490

467:                                              ; preds = %338, %332
  %468 = load ptr, ptr %274, align 4
  %469 = call i32 @pinctrl_generic_remove_group(ptr noundef %468, i32 noundef %283) #9
  store i32 1, ptr %3, align 4
  br label %470

470:                                              ; preds = %467, %280
  %471 = phi i32 [ -12, %467 ], [ %283, %280 ]
  %472 = load ptr, ptr %274, align 4
  %473 = call i32 @pinmux_generic_remove_function(ptr noundef %472, i32 noundef %276) #9
  br label %474

474:                                              ; preds = %470, %278, %263
  %475 = phi i32 [ %471, %470 ], [ %276, %278 ], [ -12, %263 ]
  call void @mutex_unlock(ptr noundef %266) #9
  %476 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %476, ptr noundef nonnull %202) #9
  br label %477

477:                                              ; preds = %474, %199
  %478 = phi i32 [ %475, %474 ], [ -12, %199 ]
  %479 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %479, ptr noundef nonnull %197) #9
  br label %482

480:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  %481 = icmp slt i32 %215, 0
  br i1 %481, label %482, label %490

482:                                              ; preds = %480, %477, %194, %191, %189, %184, %181, %46, %43, %32, %25
  %483 = phi i32 [ %76, %184 ], [ -12, %46 ], [ -12, %43 ], [ %182, %181 ], [ -524, %32 ], [ -22, %25 ], [ %215, %480 ], [ -12, %191 ], [ -12, %194 ], [ %478, %477 ], [ -22, %189 ]
  %484 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %484, ptr noundef nonnull @.str.18, ptr noundef %1) #10
  %485 = load ptr, ptr %10, align 4
  call void @devm_kfree(ptr noundef %485, ptr noundef nonnull %16) #9
  br label %486

486:                                              ; preds = %482, %14
  %487 = phi i32 [ %483, %482 ], [ -12, %14 ]
  %488 = load ptr, ptr %10, align 4
  %489 = load ptr, ptr %2, align 4
  call void @devm_kfree(ptr noundef %488, ptr noundef %489) #9
  br label %490

490:                                              ; preds = %486, %480, %465, %184, %166, %4
  %491 = phi i32 [ %487, %486 ], [ -12, %4 ], [ 0, %480 ], [ 0, %184 ], [ 0, %166 ], [ 0, %465 ]
  ret i32 %491
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_dt_free_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void @devm_kfree(ptr noundef %6, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_count_index_with_args(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_parse_index_with_args(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_remove_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_remove_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %1) #9
  %10 = getelementptr inbounds %struct.function_desc, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pcs_function, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pcs_function, ptr %11, i32 0, i32 1
  %19 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 10
  %20 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %21 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 17
  %22 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 26
  br label %23

23:                                               ; preds = %23, %17
  %24 = phi i32 [ 0, %17 ], [ %44, %23 ]
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr %struct.pcs_func_vals, ptr %25, i32 %24
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %28 = load ptr, ptr %20, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = tail call i32 %28(ptr noundef %29) #9
  %31 = load i8, ptr %21, align 4, !range !11
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr %struct.pcs_func_vals, ptr %25, i32 %24, i32 2
  %34 = select i1 %32, ptr %5, ptr %33
  %35 = load i32, ptr %34, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %30, %36
  %38 = getelementptr %struct.pcs_func_vals, ptr %25, i32 %24, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %35
  %41 = or i32 %40, %37
  %42 = load ptr, ptr %22, align 4
  %43 = load ptr, ptr %26, align 4
  tail call void %42(i32 noundef %41, ptr noundef %43) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %27) #9
  %44 = add nuw i32 %24, 1
  %45 = load i32, ptr %14, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %23, label %47

47:                                               ; preds = %23, %13, %8, %3
  %48 = phi i32 [ 0, %3 ], [ -22, %8 ], [ 0, %13 ], [ 0, %23 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_request_gpio(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %76, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 20
  br label %10

10:                                               ; preds = %14, %8
  %11 = phi ptr [ %9, %8 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %76, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -12
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %12, i32 -8
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = icmp ule i32 %19, %2
  %21 = icmp ugt i32 %16, %2
  %22 = or i1 %21, %20
  br i1 %22, label %10, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 3
  %27 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 17
  %28 = load i8, ptr %27, align 4, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %2
  %34 = lshr i32 %33, 3
  %35 = urem i32 %34, %26
  %36 = sub nsw i32 %34, %35
  %37 = udiv i32 %25, %32
  %38 = urem i32 %2, %37
  %39 = mul i32 %38, %32
  %40 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %36
  %45 = tail call i32 %41(ptr noundef %44) #9
  %46 = load i32, ptr %5, align 4
  %47 = shl i32 %46, %39
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = getelementptr i8, ptr %12, i32 -4
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, %39
  %53 = or i32 %49, %52
  br label %68

54:                                               ; preds = %23
  %55 = mul i32 %26, %2
  %56 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 25
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 %55
  %61 = tail call i32 %57(ptr noundef %60) #9
  %62 = load i32, ptr %5, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = getelementptr i8, ptr %12, i32 -4
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %64, %66
  br label %68

68:                                               ; preds = %54, %30
  %69 = phi ptr [ %42, %30 ], [ %58, %54 ]
  %70 = phi i32 [ %36, %30 ], [ %55, %54 ]
  %71 = phi i32 [ %53, %30 ], [ %67, %54 ]
  %72 = getelementptr inbounds %struct.pcs_device, ptr %4, i32 0, i32 26
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr i8, ptr %74, i32 %70
  tail call void %73(i32 noundef %71, ptr noundef %75) #9
  br label %76

76:                                               ; preds = %68, %10, %3
  %77 = phi i32 [ -524, %3 ], [ 0, %68 ], [ 0, %10 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %8 = tail call ptr @radix_tree_lookup(ptr noundef %7, i32 noundef %1) #9
  %9 = getelementptr inbounds %struct.pin_desc, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %14) #9
  %16 = getelementptr inbounds %struct.function_desc, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.pcs_function, ptr %17, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %92, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %2, align 4
  %25 = and i32 %24, 255
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pcs_function, ptr %17, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  br label %33

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.pcs_device, ptr %6, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.pcs_get_function, i32 noundef %14) #10
  br label %92

33:                                               ; preds = %89, %27
  %34 = phi i32 [ 0, %27 ], [ %90, %89 ]
  %35 = getelementptr %struct.pcs_conf_vals, ptr %29, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %25, %36
  br i1 %37, label %46, label %89

38:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 3, ptr %4, align 4
  %39 = call i32 @pcs_pinconf_get(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  store i32 5, ptr %4, align 4
  %42 = call i32 @pcs_pinconf_get(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #9
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %2, align 4
  br label %92

45:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %92

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.pcs_device, ptr %5, i32 0, i32 12
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 3
  %50 = mul i32 %49, %1
  %51 = getelementptr inbounds %struct.pcs_device, ptr %5, i32 0, i32 25
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pcs_device, ptr %5, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %50
  %56 = tail call i32 %52(ptr noundef %55) #9
  %57 = load ptr, ptr %28, align 4
  %58 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %34
  %59 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %34, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %56
  %62 = load i32, ptr %58, align 4
  switch i32 %62, label %88 [
    i32 3, label %66
    i32 5, label %66
    i32 14, label %66
    i32 13, label %63
  ]

63:                                               ; preds = %46
  %64 = load i32, ptr %20, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %87, label %75

66:                                               ; preds = %46, %46, %46
  %67 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %34, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %61, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %34, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %61, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %70
  store i32 0, ptr %2, align 4
  br label %92

75:                                               ; preds = %84, %63
  %76 = phi i32 [ %85, %84 ], [ 0, %63 ]
  %77 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 14
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr %struct.pcs_conf_vals, ptr %57, i32 %76, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %61, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80, %75
  %85 = add nuw i32 %76, 1
  %86 = icmp eq i32 %85, %64
  br i1 %86, label %87, label %75

87:                                               ; preds = %84, %63
  store i32 %61, ptr %2, align 4
  br label %92

88:                                               ; preds = %46
  store i32 %61, ptr %2, align 4
  br label %92

89:                                               ; preds = %33
  %90 = add nuw i32 %34, 1
  %91 = icmp eq i32 %90, %21
  br i1 %91, label %92, label %33

92:                                               ; preds = %89, %88, %87, %80, %74, %70, %66, %45, %44, %30, %19, %3
  %93 = phi i32 [ 0, %44 ], [ -524, %45 ], [ -524, %70 ], [ -524, %66 ], [ 0, %88 ], [ 0, %87 ], [ 0, %74 ], [ -524, %30 ], [ -524, %3 ], [ -524, %19 ], [ -524, %80 ], [ -524, %89 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 2
  %10 = tail call ptr @radix_tree_lookup(ptr noundef %9, i32 noundef %1) #9
  %11 = getelementptr inbounds %struct.pin_desc, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %120, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pinctrl_setting_mux, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %16) #9
  %18 = getelementptr inbounds %struct.function_desc, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %14
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %120, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.pcs_function, ptr %19, i32 0, i32 6
  %25 = getelementptr inbounds %struct.pcs_function, ptr %19, i32 0, i32 5
  %26 = getelementptr inbounds %struct.pcs_device, ptr %7, i32 0, i32 12
  %27 = getelementptr inbounds %struct.pcs_device, ptr %7, i32 0, i32 25
  %28 = getelementptr inbounds %struct.pcs_device, ptr %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.pcs_device, ptr %7, i32 0, i32 26
  %30 = load i32, ptr %24, align 4
  br label %37

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.pcs_device, ptr %8, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.pcs_get_function, i32 noundef %16) #10
  br label %120

34:                                               ; preds = %113
  %35 = add nuw i32 %39, 1
  %36 = icmp eq i32 %35, %3
  br i1 %36, label %120, label %37

37:                                               ; preds = %34, %23
  %38 = phi i32 [ %30, %23 ], [ %118, %34 ]
  %39 = phi i32 [ 0, %23 ], [ %35, %34 ]
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %120, label %41

41:                                               ; preds = %37
  %42 = getelementptr i32, ptr %2, i32 %39
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 255
  %45 = load ptr, ptr %25, align 4
  br label %46

46:                                               ; preds = %110, %41
  %47 = phi i32 [ 0, %41 ], [ %111, %110 ]
  %48 = getelementptr %struct.pcs_conf_vals, ptr %45, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %110

51:                                               ; preds = %46
  %52 = load i32, ptr %26, align 4
  %53 = lshr i32 %52, 3
  %54 = mul i32 %53, %1
  %55 = load ptr, ptr %27, align 4
  %56 = load ptr, ptr %28, align 4
  %57 = getelementptr i8, ptr %56, i32 %54
  %58 = tail call i32 %55(ptr noundef %57) #9
  %59 = load i32, ptr %42, align 4
  %60 = load ptr, ptr %25, align 4
  %61 = getelementptr %struct.pcs_conf_vals, ptr %60, i32 %47
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %120 [
    i32 13, label %63
    i32 9, label %63
    i32 24, label %63
    i32 15, label %63
    i32 12, label %63
    i32 1, label %75
    i32 3, label %78
    i32 5, label %78
    i32 14, label %93
  ]

63:                                               ; preds = %51, %51, %51, %51, %51
  %64 = lshr i32 %59, 8
  %65 = getelementptr %struct.pcs_conf_vals, ptr %60, i32 %47, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @llvm.cttz.i32(i32 %66, i1 true), !range !9
  %68 = icmp eq i32 %66, 0
  %69 = select i1 %68, i32 -1, i32 %67
  %70 = xor i32 %66, -1
  %71 = and i32 %58, %70
  %72 = shl i32 %64, %69
  %73 = and i32 %72, %66
  %74 = or i32 %73, %71
  br label %113

75:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 3, ptr %6, align 4
  %76 = call i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 1) #9
  store i32 5, ptr %6, align 4
  %77 = call i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %113

78:                                               ; preds = %51, %51
  %79 = icmp ult i32 %59, 256
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = getelementptr %struct.pcs_conf_vals, ptr %60, i32 %47, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %58, %83
  br label %105

85:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 3, ptr %5, align 4
  %86 = call i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 1) #9
  store i32 5, ptr %5, align 4
  %87 = call i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %88 = load ptr, ptr %25, align 4
  %89 = getelementptr %struct.pcs_conf_vals, ptr %88, i32 %47, i32 4
  %90 = load i32, ptr %89, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %58, %91
  br label %99

93:                                               ; preds = %51
  %94 = getelementptr %struct.pcs_conf_vals, ptr %60, i32 %47, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %58, %96
  %98 = icmp ult i32 %59, 256
  br i1 %98, label %105, label %99

99:                                               ; preds = %93, %85
  %100 = phi i32 [ %92, %85 ], [ %97, %93 ]
  %101 = phi ptr [ %88, %85 ], [ %60, %93 ]
  %102 = getelementptr %struct.pcs_conf_vals, ptr %101, i32 %47, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, %100
  br label %113

105:                                              ; preds = %93, %80
  %106 = phi i32 [ %84, %80 ], [ %97, %93 ]
  %107 = getelementptr %struct.pcs_conf_vals, ptr %60, i32 %47, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %108, %106
  br label %113

110:                                              ; preds = %46
  %111 = add nuw i32 %47, 1
  %112 = icmp eq i32 %111, %38
  br i1 %112, label %120, label %46

113:                                              ; preds = %105, %99, %75, %63
  %114 = phi i32 [ %104, %99 ], [ %109, %105 ], [ %58, %75 ], [ %74, %63 ]
  %115 = load ptr, ptr %29, align 4
  %116 = load ptr, ptr %28, align 4
  %117 = getelementptr i8, ptr %116, i32 %54
  tail call void %115(i32 noundef %114, ptr noundef %117) #9
  %118 = load i32, ptr %24, align 4
  %119 = icmp ult i32 %47, %118
  br i1 %119, label %34, label %120

120:                                              ; preds = %113, %110, %51, %37, %34, %31, %21, %4
  %121 = phi i32 [ -524, %31 ], [ -524, %4 ], [ 0, %21 ], [ -524, %110 ], [ 0, %34 ], [ -524, %113 ], [ -524, %51 ], [ -524, %37 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @pinctrl_generic_get_group_pins(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %24, %8
  %12 = phi i32 [ %26, %24 ], [ 0, %8 ]
  %13 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i32, ptr %14, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @pcs_pinconf_get(ptr noundef %0, i32 noundef %16, ptr noundef %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = icmp eq i32 %12, 0
  %21 = load i32, ptr %2, align 4
  br i1 %20, label %24, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %13, %21
  br i1 %23, label %24, label %29

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %13, %22 ], [ %21, %19 ]
  %26 = add nuw i32 %12, 1
  %27 = load i32, ptr %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %11, label %29

29:                                               ; preds = %24, %22, %11, %8, %3
  %30 = phi i32 [ %6, %3 ], [ 0, %8 ], [ -524, %11 ], [ -524, %22 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = call i32 @pinctrl_generic_get_group_pins(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = add nuw i32 %17, 1
  %14 = load i32, ptr %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i32, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @pcs_pinconf_set(ptr noundef %0, i32 noundef %20, ptr noundef %2, i32 noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %12, label %23

23:                                               ; preds = %16, %12, %9, %4
  %24 = phi i32 [ %7, %4 ], [ 0, %9 ], [ -524, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @pcs_pinconf_dbg_show(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #8 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @pcs_pinconf_group_dbg_show(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_pinconf_config_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void @pinconf_generic_dump_config(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 88
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pcs_soc_data, ptr %3, i32 0, i32 2
  %11 = getelementptr i8, ptr %3, i32 20
  %12 = getelementptr i8, ptr %3, i32 280
  %13 = getelementptr i8, ptr %3, i32 284
  br label %14

14:                                               ; preds = %34, %9
  %15 = phi ptr [ %7, %9 ], [ %35, %34 ]
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 -12
  %21 = load i32, ptr %10, align 4
  tail call void @_raw_spin_lock(ptr noundef %11) #9
  %22 = load ptr, ptr %12, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 %22(ptr noundef %23) #9
  %25 = xor i32 %21, -1
  %26 = and i32 %24, %25
  %27 = load ptr, ptr %13, align 4
  %28 = load ptr, ptr %20, align 4
  tail call void %27(i32 noundef %26, ptr noundef %28) #9
  %29 = load ptr, ptr %12, align 4
  %30 = load ptr, ptr %20, align 4
  %31 = tail call i32 %29(ptr noundef %30) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %32 = load i16, ptr %11, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %34

34:                                               ; preds = %19, %14
  %35 = load ptr, ptr %15, align 4
  %36 = icmp eq ptr %35, %6
  br i1 %36, label %37, label %14

37:                                               ; preds = %34, %1
  %38 = getelementptr inbounds %struct.pcs_soc_data, ptr %3, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void %39() #9
  br label %42

42:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 88
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pcs_soc_data, ptr %3, i32 0, i32 2
  %11 = getelementptr i8, ptr %3, i32 20
  %12 = getelementptr i8, ptr %3, i32 280
  %13 = getelementptr i8, ptr %3, i32 284
  br label %14

14:                                               ; preds = %33, %9
  %15 = phi ptr [ %7, %9 ], [ %34, %33 ]
  %16 = getelementptr i8, ptr %15, i32 -4
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %5
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %15, i32 -12
  %21 = load i32, ptr %10, align 4
  tail call void @_raw_spin_lock(ptr noundef %11) #9
  %22 = load ptr, ptr %12, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 %22(ptr noundef %23) #9
  %25 = or i32 %24, %21
  %26 = load ptr, ptr %13, align 4
  %27 = load ptr, ptr %20, align 4
  tail call void %26(i32 noundef %25, ptr noundef %27) #9
  %28 = load ptr, ptr %12, align 4
  %29 = load ptr, ptr %20, align 4
  %30 = tail call i32 %28(ptr noundef %29) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %31 = load i16, ptr %11, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %33

33:                                               ; preds = %19, %14
  %34 = load ptr, ptr %15, align 4
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %36, label %14

36:                                               ; preds = %33, %1
  %37 = getelementptr inbounds %struct.pcs_soc_data, ptr %3, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38() #9
  br label %41

41:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 88
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %3, label %43, label %11

11:                                               ; preds = %2
  br i1 %10, label %39, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.pcs_soc_data, ptr %5, i32 0, i32 2
  %14 = getelementptr i8, ptr %5, i32 20
  %15 = getelementptr i8, ptr %5, i32 280
  %16 = getelementptr i8, ptr %5, i32 284
  br label %17

17:                                               ; preds = %36, %12
  %18 = phi ptr [ %9, %12 ], [ %37, %36 ]
  %19 = getelementptr i8, ptr %18, i32 -4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %7
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 -12
  %24 = load i32, ptr %13, align 4
  tail call void @_raw_spin_lock(ptr noundef %14) #9
  %25 = load ptr, ptr %15, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = tail call i32 %25(ptr noundef %26) #9
  %28 = or i32 %27, %24
  %29 = load ptr, ptr %16, align 4
  %30 = load ptr, ptr %23, align 4
  tail call void %29(i32 noundef %28, ptr noundef %30) #9
  %31 = load ptr, ptr %15, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = tail call i32 %31(ptr noundef %32) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %34 = load i16, ptr %14, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %36

36:                                               ; preds = %22, %17
  %37 = load ptr, ptr %18, align 4
  %38 = icmp eq ptr %37, %8
  br i1 %38, label %39, label %17

39:                                               ; preds = %36, %11
  %40 = getelementptr inbounds %struct.pcs_soc_data, ptr %5, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %78, label %76

43:                                               ; preds = %2
  br i1 %10, label %72, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.pcs_soc_data, ptr %5, i32 0, i32 2
  %46 = getelementptr i8, ptr %5, i32 20
  %47 = getelementptr i8, ptr %5, i32 280
  %48 = getelementptr i8, ptr %5, i32 284
  br label %49

49:                                               ; preds = %69, %44
  %50 = phi ptr [ %9, %44 ], [ %70, %69 ]
  %51 = getelementptr i8, ptr %50, i32 -4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %7
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %50, i32 -12
  %56 = load i32, ptr %45, align 4
  tail call void @_raw_spin_lock(ptr noundef %46) #9
  %57 = load ptr, ptr %47, align 4
  %58 = load ptr, ptr %55, align 4
  %59 = tail call i32 %57(ptr noundef %58) #9
  %60 = xor i32 %56, -1
  %61 = and i32 %59, %60
  %62 = load ptr, ptr %48, align 4
  %63 = load ptr, ptr %55, align 4
  tail call void %62(i32 noundef %61, ptr noundef %63) #9
  %64 = load ptr, ptr %47, align 4
  %65 = load ptr, ptr %55, align 4
  %66 = tail call i32 %64(ptr noundef %65) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %67 = load i16, ptr %46, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  br label %69

69:                                               ; preds = %54, %49
  %70 = load ptr, ptr %50, align 4
  %71 = icmp eq ptr %70, %8
  br i1 %71, label %72, label %49

72:                                               ; preds = %69, %43
  %73 = getelementptr inbounds %struct.pcs_soc_data, ptr %5, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %39
  %77 = phi ptr [ %41, %39 ], [ %74, %72 ]
  tail call void %77() #9
  br label %78

78:                                               ; preds = %76, %72, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 88
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 20
  %8 = getelementptr i8, ptr %1, i32 280
  %9 = getelementptr inbounds %struct.pcs_soc_data, ptr %1, i32 0, i32 3
  %10 = getelementptr i8, ptr %1, i32 232
  br label %11

11:                                               ; preds = %29, %6
  %12 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %13 = phi i32 [ 0, %6 ], [ %30, %29 ]
  %14 = getelementptr i8, ptr %12, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %7) #9
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 %15(ptr noundef %16) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %18 = load i16, ptr %7, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %20 = load i32, ptr %9, align 4
  %21 = and i32 %20, %17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %11
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %12, i32 -8
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @generic_handle_domain_irq(ptr noundef %24, i32 noundef %26) #9
  %28 = add i32 %13, 1
  br label %29

29:                                               ; preds = %23, %11
  %30 = phi i32 [ %28, %23 ], [ %13, %11 ]
  %31 = load ptr, ptr %12, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %11

33:                                               ; preds = %29, %2
  %34 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcs_irq_chain_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #9
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #9
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr i8, ptr %3, i32 88
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %51, label %27

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %3, i32 20
  %29 = getelementptr i8, ptr %3, i32 280
  %30 = getelementptr inbounds %struct.pcs_soc_data, ptr %3, i32 0, i32 3
  %31 = getelementptr i8, ptr %3, i32 232
  br label %32

32:                                               ; preds = %48, %27
  %33 = phi ptr [ %25, %27 ], [ %49, %48 ]
  %34 = getelementptr i8, ptr %33, i32 -12
  tail call void @_raw_spin_lock(ptr noundef %28) #9
  %35 = load ptr, ptr %29, align 4
  %36 = load ptr, ptr %34, align 4
  %37 = tail call i32 %35(ptr noundef %36) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  %38 = load i16, ptr %28, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !25
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !27
  %40 = load i32, ptr %30, align 4
  %41 = and i32 %40, %37
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr i8, ptr %33, i32 -8
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @generic_handle_domain_irq(ptr noundef %44, i32 noundef %46) #9
  br label %48

48:                                               ; preds = %43, %32
  %49 = load ptr, ptr %33, align 4
  %50 = icmp eq ptr %49, %24
  br i1 %50, label %51, label %32

51:                                               ; preds = %48, %23
  %52 = load ptr, ptr %6, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi ptr [ %56, %54 ], [ %52, %51 ]
  %59 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %58(ptr noundef %59) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcs_irqdomain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -20
  %7 = load ptr, ptr %6, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 20, i32 noundef 3520) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = getelementptr i8, ptr %5, i32 -32
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %2
  store ptr %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.pcs_interrupt, ptr %8, i32 0, i32 1
  store i32 %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pcs_interrupt, ptr %8, i32 0, i32 2
  store i32 %1, ptr %15, align 4
  %16 = getelementptr i8, ptr %5, i32 24
  tail call void @mutex_lock(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.pcs_interrupt, ptr %8, i32 0, i32 3
  %18 = getelementptr i8, ptr %5, i32 88
  %19 = getelementptr i8, ptr %5, i32 92
  %20 = load ptr, ptr %19, align 4
  store ptr %17, ptr %19, align 4
  store ptr %18, ptr %17, align 4
  %21 = getelementptr inbounds %struct.pcs_interrupt, ptr %8, i32 0, i32 3, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %17, ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef %16) #9
  %22 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #9
  %23 = getelementptr i8, ptr %5, i32 96
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %23, ptr noundef nonnull @handle_level_irq, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #9
  br label %24

24:                                               ; preds = %10, %3
  %25 = phi i32 [ 0, %10 ], [ -12, %3 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_remove_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i32 0, i32 33}
!10 = !{!"auto-init"}
!11 = !{i8 0, i8 2}
!12 = !{i64 2923209}
!13 = !{i64 2152526514}
!14 = !{i64 2152527353}
!15 = !{i64 2922814}
!16 = !{i64 2922591}
!17 = !{i64 2152526834}
!18 = !{i64 2152527593}
!19 = !{i64 2922391}
!20 = !{i64 2923429}
!21 = !{i64 2152527154}
!22 = !{i64 2152527907}
!23 = !{i64 2923011}
!24 = !{i64 2148973854}
!25 = !{i64 2148969678}
!26 = !{i64 2148969753, i64 2148969780, i64 2148969827, i64 2148969849, i64 2148969877, i64 2148969897}
!27 = !{i64 2148996857}
