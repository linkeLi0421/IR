; ModuleID = '/llk/IR/drivers/pinctrl/nomadik/pinctrl-nomadik.c_pt.bc'
source_filename = "../drivers/pinctrl/nomadik/pinctrl-nomadik.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nmk_cfg_param = type { ptr, i32, ptr, i32 }
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
%struct.nmk_gpio_chip = type { %struct.gpio_chip, %struct.irq_chip, ptr, ptr, i32, ptr, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.nmk_pinctrl = type { ptr, ptr, ptr, ptr }
%struct.nmk_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.prcm_gpiocr_altcx_pin_desc = type { i16, [4 x %struct.prcm_gpiocr_altcx] }
%struct.prcm_gpiocr_altcx = type { i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.nmk_pingroup = type { ptr, ptr, i32, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.nmk_function = type { ptr, ptr, i32 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_nomadik__210_1945_nmk_gpio_init4 = internal global ptr @nmk_gpio_init, section ".initcall4.init", align 4
@__initcall__kmod_pinctrl_nomadik__211_1951_nmk_pinctrl_init1 = internal global ptr @nmk_pinctrl_init, section ".initcall1.init", align 4
@nmk_gpio_driver = internal global %struct.platform_driver { ptr @nmk_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nmk_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@nmk_gpio_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,nomadik-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not populate nmk chip struct\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"st,supports-sleepmode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"nmk%u-%u-%u\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"chip registered\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\013populate \22%pOFn\22: device not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gpio-bank\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"populate: gpio-bank property not found\0A\00", align 1
@nmk_gpio_chips = internal unnamed_addr global [16 x ptr] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"altA\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"altB\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"altC\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"altC1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"altC2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"altC3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"altC4\00", align 1
@__const.nmk_gpio_dbg_show_one.modes = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], align 4
@.str.16 = private unnamed_addr constant [42 x i8] c" gpio-%-3d (%-20.20s) out %s           %s\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@nmk_gpio_dbg_show_one.pulls = internal unnamed_addr constant [2 x ptr] [ptr @.str.21, ptr @.str.22], align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"none        \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"pull enabled\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c" gpio-%-3d (%-20.20s) in  %s %s\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c" VAL %d\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"edge-rising\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"edge-falling\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"edge-undefined\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" irq-%d %s%s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c" wakeup\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nmk_gpio_slpm_lock = internal global %struct.spinlock zeroinitializer, align 4
@nmk_pinctrl_driver = internal global %struct.platform_driver { ptr @nmk_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.31, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nmk_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nmk_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"pinctrl-nomadik\00", align 1
@nmk_pinctrl_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,stn8815-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8540-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@nmk_pinctrl_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr @nmk_pinctrl_suspend, ptr @nmk_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"nomadik-gpio-chips\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"populate NMK GPIO %d \22%pOFn\22\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"could not populate nmk chip struct - continue anyway\0A\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"prcm\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"No PRCM base, assuming no ALT-Cx control is available\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"missing PRCM base address\0A\00", align 1
@nmk_pinctrl_desc = internal global %struct.pinctrl_desc { ptr @.str.31, ptr null, i32 0, ptr @nmk_pinctrl_ops, ptr @nmk_pinmux_ops, ptr @nmk_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.38 = private unnamed_addr constant [43 x i8] c"could not register Nomadik pinctrl driver\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"initialized Nomadik pin control driver\0A\00", align 1
@nmk_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @nmk_get_groups_cnt, ptr @nmk_get_group_name, ptr @nmk_get_group_pins, ptr @nmk_pin_dbg_show, ptr @nmk_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@nmk_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @nmk_pmx_get_funcs_cnt, ptr @nmk_pmx_get_func_name, ptr @nmk_pmx_get_func_groups, ptr @nmk_pmx_set, ptr @nmk_gpio_request_enable, ptr @nmk_gpio_disable_free, ptr null, i8 1 }, align 4
@nmk_pinconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr @nmk_pin_config_get, ptr @nmk_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.40 = private unnamed_addr constant [19 x i8] c"invalid pin offset\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ste,config\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@nmk_cfg_params = internal unnamed_addr constant [8 x %struct.nmk_cfg_param] [%struct.nmk_cfg_param { ptr @.str.45, i32 0, ptr @nmk_pin_input_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.46, i32 0, ptr @nmk_pin_output_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.47, i32 0, ptr @nmk_pin_sleep_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.48, i32 0, ptr @nmk_pin_sleep_input_modes, i32 4 }, %struct.nmk_cfg_param { ptr @.str.49, i32 0, ptr @nmk_pin_sleep_output_modes, i32 3 }, %struct.nmk_cfg_param { ptr @.str.50, i32 0, ptr @nmk_pin_sleep_wakeup_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.51, i32 0, ptr @nmk_pin_gpio_modes, i32 2 }, %struct.nmk_cfg_param { ptr @.str.52, i32 0, ptr @nmk_pin_sleep_pdis_modes, i32 2 }], align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"ste,input\00", align 1
@nmk_pin_input_modes = internal constant [3 x i32] [i32 0, i32 2048, i32 4096], align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"ste,output\00", align 1
@nmk_pin_output_modes = internal constant [3 x i32] [i32 16384, i32 49152, i32 16384], align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"ste,sleep\00", align 1
@nmk_pin_sleep_modes = internal constant [2 x i32] [i32 0, i32 134217728], align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"ste,sleep-input\00", align 1
@nmk_pin_sleep_input_modes = internal constant [4 x i32] [i32 589824, i32 655360, i32 720896, i32 524288], align 4
@.str.49 = private unnamed_addr constant [17 x i8] c"ste,sleep-output\00", align 1
@nmk_pin_sleep_output_modes = internal constant [3 x i32] [i32 3145728, i32 5242880, i32 1048576], align 4
@.str.50 = private unnamed_addr constant [17 x i8] c"ste,sleep-wakeup\00", align 1
@nmk_pin_sleep_wakeup_modes = internal constant [2 x i32] [i32 8192, i32 0], align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"ste,gpio\00", align 1
@nmk_pin_gpio_modes = internal constant [2 x i32] [i32 0, i32 67108864], align 4
@.str.52 = private unnamed_addr constant [23 x i8] c"ste,sleep-pull-disable\00", align 1
@nmk_pin_sleep_pdis_modes = internal constant [2 x i32] [i32 8388608, i32 16777216], align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"GPIO%d\00", align 1
@nmk_pmx_set.slpm = internal unnamed_addr global [16 x i32] zeroinitializer, align 4
@.str.54 = private unnamed_addr constant [47 x i8] c"invalid pin offset %d in group %s at index %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"PRCM GPIOCR: alternate-C%i is invalid\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"PRCM GPIOCR: pin %i: alternate-C%i does not exist\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"invalid range\0A\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"missing GPIO chip in range\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"invalid pin offset %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_pinctrl_nomadik__210_1945_nmk_gpio_init4, ptr @__initcall__kmod_pinctrl_nomadik__211_1951_nmk_pinctrl_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nmk_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nmk_gpio_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nmk_pinctrl_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @nmk_gpio_populate_chip(ptr noundef %4, ptr noundef %0)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  %8 = ptrtoint ptr %5 to i32
  br label %73

9:                                                ; preds = %1
  %10 = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %9
  %17 = icmp ne ptr %10, null
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 7
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 6
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 7
  store ptr @nmk_gpio_get_dir, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 8
  store ptr @nmk_gpio_make_input, ptr %24, align 4
  %25 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 10
  store ptr @nmk_gpio_get_input, ptr %25, align 4
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 9
  store ptr @nmk_gpio_make_output, ptr %26, align 4
  %27 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 12
  store ptr @nmk_gpio_set_output, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 16
  store ptr @nmk_gpio_dbg_show, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 23
  store i8 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 4
  store ptr null, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 6
  store ptr @nmk_gpio_irq_ack, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 7
  store ptr @nmk_gpio_irq_mask, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 9
  store ptr @nmk_gpio_irq_unmask, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 13
  store ptr @nmk_gpio_irq_set_type, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 14
  store ptr @nmk_gpio_irq_set_wake, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 2
  store ptr @nmk_gpio_irq_startup, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 3
  store ptr @nmk_gpio_irq_shutdown, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 33
  store i32 4, ptr %39, align 4
  %40 = load i32, ptr %13, align 4
  %41 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 19
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 20
  %44 = load i16, ptr %43, align 4
  %45 = zext i16 %44 to i32
  %46 = add i32 %42, -1
  %47 = add i32 %46, %45
  %48 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %40, i32 noundef %42, i32 noundef %47) #9
  %49 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 1, i32 1
  store ptr %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37
  store ptr %31, ptr %50, align 4
  %51 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 13
  store ptr @nmk_gpio_irq_handler, ptr %51, align 4
  %52 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 15
  store i32 1, ptr %52, align 4
  %53 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 4, i32 noundef 3520) #9
  %54 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 16
  store ptr %53, ptr %54, align 4
  %55 = icmp eq ptr %53, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %16
  store i32 %14, ptr %53, align 4
  %57 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 10
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 9
  store ptr @handle_edge_irq, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_enable(ptr noundef %60) #9
  %62 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !8
  %66 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %5, i32 0, i32 16
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %59, align 4
  tail call void @clk_disable(ptr noundef %67) #9
  %68 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 39
  store ptr %4, ptr %68, align 4
  %69 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %5, ptr noundef %5, ptr noundef null, ptr noundef null) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %72, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.4) #10
  br label %73

73:                                               ; preds = %71, %56, %16, %9, %7
  %74 = phi i32 [ %8, %7 ], [ 0, %71 ], [ %14, %9 ], [ -12, %16 ], [ %69, %56 ]
  ret i32 %74
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nmk_gpio_populate_chip(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call ptr @of_find_device_by_node(ptr noundef %0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #10
  br label %56

8:                                                ; preds = %2
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.7) #10
  call void @platform_device_put(ptr noundef nonnull %4) #9
  br label %56

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4
  %15 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void @platform_device_put(ptr noundef nonnull %4) #9
  br label %56

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %21 = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 500, i32 noundef 3520) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @platform_device_put(ptr noundef nonnull %4) #9
  br label %56

24:                                               ; preds = %19
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %21, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = shl i32 %25, 5
  %28 = getelementptr inbounds %struct.gpio_chip, ptr %21, i32 0, i32 19
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gpio_chip, ptr %21, i32 0, i32 20
  store i16 32, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %31 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi ptr [ %35, %34 ], [ %32, %24 ]
  store ptr %37, ptr %21, align 4
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %21, i32 0, i32 2
  store ptr %30, ptr %38, align 4
  %39 = call ptr @platform_get_resource(ptr noundef nonnull %4, i32 noundef 512, i32 noundef 0) #9
  %40 = call ptr @devm_ioremap_resource(ptr noundef %20, ptr noundef %39) #9
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @platform_device_put(ptr noundef nonnull %4) #9
  br label %56

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %21, i32 0, i32 2
  store ptr %40, ptr %44, align 4
  %45 = call ptr @clk_get(ptr noundef %30, ptr noundef null) #9
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @platform_device_put(ptr noundef nonnull %4) #9
  br label %56

48:                                               ; preds = %43
  %49 = call i32 @clk_prepare(ptr noundef %45) #9
  %50 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %21, i32 0, i32 3
  store ptr %45, ptr %50, align 4
  %51 = icmp ugt i32 %25, 15
  br i1 %51, label %52, label %53, !prof !10

52:                                               ; preds = %48
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/nomadik/pinctrl-nomadik.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

53:                                               ; preds = %48
  %54 = load i32, ptr %3, align 4
  %55 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %54
  store ptr %21, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %47, %42, %23, %18, %11, %6
  %57 = phi ptr [ inttoptr (i32 -22 to ptr), %11 ], [ %16, %18 ], [ %40, %42 ], [ %45, %47 ], [ %21, %53 ], [ inttoptr (i32 -12 to ptr), %23 ], [ inttoptr (i32 -19 to ptr), %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret ptr %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_get_dir(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  %12 = xor i32 %10, -1
  %13 = lshr i32 %12, %1
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_make_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %7 = shl nuw i32 1, %1
  %8 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #9, !srcloc !14
  %11 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_get_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %10 = lshr i32 %9, %1
  %11 = and i32 %10, 1
  %12 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_make_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %8 = shl nuw i32 1, %1
  %9 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #9, !srcloc !14
  %12 = icmp eq i32 %2, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr %9, align 4
  br i1 %12, label %16, label %14

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %8) #9, !srcloc !14
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %8) #9, !srcloc !14
  br label %18

18:                                               ; preds = %16, %14
  %19 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_set_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #9
  %8 = icmp eq i32 %2, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %9 = shl nuw i32 1, %1
  %10 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br i1 %8, label %14, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %9) #9, !srcloc !14
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %9) #9, !srcloc !14
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %13, %9 ], [ %8, %6 ]
  %11 = phi i32 [ %12, %9 ], [ 0, %6 ]
  tail call fastcc void @nmk_gpio_dbg_show_one(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %11, i32 noundef %10)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8) #9
  %12 = add nuw nsw i32 %11, 1
  %13 = add i32 %10, 1
  %14 = load i16, ptr %3, align 4
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %9, label %17

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_enable(ptr noundef %6) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #9, !srcloc !14
  %14 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 16384
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = and i32 %1, 12
  %14 = icmp eq i32 %13, 0
  %15 = and i1 %14, %12
  br i1 %15, label %16, label %170

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_enable(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 6
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  br i1 %7, label %22, label %53

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 14
  %26 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %24
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 13
  %33 = xor i32 %28, -1
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, %33
  store i32 %35, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %36 = load i32, ptr %32, align 4
  %37 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %36) #9, !srcloc !14
  br label %40

40:                                               ; preds = %31, %22
  %41 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, %28
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = xor i32 %28, -1
  %47 = load i32, ptr %25, align 4
  %48 = and i32 %47, %46
  store i32 %48, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %49 = load i32, ptr %25, align 4
  %50 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #9, !srcloc !14
  br label %54

53:                                               ; preds = %16
  br i1 %9, label %85, label %54

54:                                               ; preds = %53, %45, %40
  %55 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 12
  %58 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 8
  %59 = load i32, ptr %58, align 4
  %60 = shl nuw i32 1, %56
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 11
  %65 = xor i32 %60, -1
  %66 = load i32, ptr %64, align 4
  %67 = and i32 %66, %65
  store i32 %67, ptr %64, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %68 = load i32, ptr %64, align 4
  %69 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %68) #9, !srcloc !14
  br label %72

72:                                               ; preds = %63, %54
  %73 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, %60
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  %78 = xor i32 %60, -1
  %79 = load i32, ptr %57, align 4
  %80 = and i32 %79, %78
  store i32 %80, ptr %57, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %81 = load i32, ptr %57, align 4
  %82 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %81) #9, !srcloc !14
  br label %85

85:                                               ; preds = %77, %72, %53
  %86 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = shl nuw i32 1, %87
  %89 = xor i32 %88, -1
  %90 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 8
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, %89
  store i32 %92, ptr %90, align 4
  %93 = and i32 %1, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %85
  %96 = load i32, ptr %86, align 4
  %97 = shl nuw i32 1, %96
  %98 = or i32 %97, %92
  store i32 %98, ptr %90, align 4
  br label %99

99:                                               ; preds = %95, %85
  %100 = phi i32 [ %98, %95 ], [ %92, %85 ]
  %101 = load i32, ptr %86, align 4
  %102 = shl nuw i32 1, %101
  %103 = xor i32 %102, -1
  %104 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 9
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, %103
  store i32 %106, ptr %104, align 4
  %107 = and i32 %1, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = load i32, ptr %86, align 4
  %111 = shl nuw i32 1, %110
  %112 = or i32 %111, %106
  store i32 %112, ptr %104, align 4
  br label %113

113:                                              ; preds = %109, %99
  %114 = phi i32 [ %112, %109 ], [ %106, %99 ]
  br i1 %7, label %115, label %141

115:                                              ; preds = %113
  %116 = load i32, ptr %86, align 4
  %117 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 14
  %118 = shl nuw i32 1, %116
  %119 = and i32 %100, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 13
  %123 = load i32, ptr %122, align 4
  %124 = or i32 %123, %118
  store i32 %124, ptr %122, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %125 = load i32, ptr %122, align 4
  %126 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %125) #9, !srcloc !14
  %129 = load i32, ptr %104, align 4
  br label %130

130:                                              ; preds = %121, %115
  %131 = phi i32 [ %129, %121 ], [ %114, %115 ]
  %132 = and i32 %131, %118
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %117, align 4
  %136 = or i32 %135, %118
  store i32 %136, ptr %117, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %137 = load i32, ptr %117, align 4
  %138 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr i8, ptr %139, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %137) #9, !srcloc !14
  br label %142

141:                                              ; preds = %113
  br i1 %9, label %168, label %142

142:                                              ; preds = %141, %134, %130
  %143 = load i32, ptr %86, align 4
  %144 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 12
  %145 = load i32, ptr %90, align 4
  %146 = shl nuw i32 1, %143
  %147 = and i32 %145, %146
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %157, label %149

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 11
  %151 = load i32, ptr %150, align 4
  %152 = or i32 %151, %146
  store i32 %152, ptr %150, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %153 = load i32, ptr %150, align 4
  %154 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr i8, ptr %155, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %153) #9, !srcloc !14
  br label %157

157:                                              ; preds = %149, %142
  %158 = load i32, ptr %104, align 4
  %159 = and i32 %158, %146
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = load i32, ptr %144, align 4
  %163 = or i32 %162, %146
  store i32 %163, ptr %144, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %164 = load i32, ptr %144, align 4
  %165 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %11, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %164) #9, !srcloc !14
  br label %168

168:                                              ; preds = %161, %157, %141
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  %169 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %169) #9
  br label %170

170:                                              ; preds = %168, %2
  %171 = phi i32 [ 0, %168 ], [ -22, %2 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_enable(ptr noundef %8) #9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #9
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ne i32 %1, 0
  tail call fastcc void @__nmk_gpio_set_wake(ptr noundef nonnull %4, i32 noundef %19, i1 noundef zeroext %20)
  br label %21

21:                                               ; preds = %17, %6
  %22 = icmp eq i32 %1, 0
  %23 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 1, %24
  br i1 %22, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, ptr %27, align 4
  br label %35

30:                                               ; preds = %21
  %31 = xor i32 %25, -1
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 10
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %31
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %36 = load i16, ptr %11, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %10) #9
  %38 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %35, %2
  %40 = phi i32 [ 0, %35 ], [ -22, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_irq_startup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %0, i1 noundef zeroext true) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @nmk_gpio_irq_maskunmask(ptr noundef %0, i1 noundef zeroext false) #9
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #9
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #9
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %6, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_enable(ptr noundef %26) #9
  %28 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %6, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 72
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !24
  %32 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %32) #9
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %5, i32 0, i32 37, i32 1
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i32 [ %31, %34 ], [ %43, %36 ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %37, i1 true) #9, !range !25
  %39 = load ptr, ptr %35, align 4
  %40 = tail call i32 @generic_handle_domain_irq(ptr noundef %39, i32 noundef %38) #9
  %41 = shl nuw i32 1, %38
  %42 = xor i32 %41, -1
  %43 = and i32 %37, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %36

45:                                               ; preds = %36, %24
  %46 = load ptr, ptr %7, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %50, %48 ], [ %46, %45 ]
  %53 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %52(ptr noundef %53) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nmk_gpio_dbg_show_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = tail call ptr @gpiochip_is_requested(ptr noundef %2, i32 noundef %3) #9
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %2) #9
  %8 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  %15 = shl nuw i32 1, %3
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %21 = load ptr, ptr %11, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  %23 = and i32 %22, %15
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr %8, align 4
  %26 = tail call i32 @clk_enable(ptr noundef %25) #9
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr i8, ptr %27, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  %33 = and i32 %32, %15
  %34 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %34) #9
  %35 = lshr i32 %29, %3
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %33, 0
  %38 = select i1 %37, i32 0, i32 2
  %39 = or i32 %38, %36
  %40 = icmp eq i32 %39, 3
  %41 = icmp ne ptr %1, null
  %42 = and i1 %41, %40
  br i1 %42, label %43, label %153

43:                                               ; preds = %5
  %44 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef nonnull %1) #9
  %45 = getelementptr inbounds %struct.nmk_pinctrl, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %153, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.nmk_pinctrl, ptr %44, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %50, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %50, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %63, %54
  %58 = phi i32 [ 0, %54 ], [ %64, %63 ]
  %59 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %56, i32 %58
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %61, %4
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = add nuw i32 %58, 1
  %65 = icmp eq i32 %64, %52
  br i1 %65, label %153, label %57

66:                                               ; preds = %57, %48
  %67 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %68 = icmp eq i32 %67, %52
  br i1 %68, label %153, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %50, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %50, i32 0, i32 8
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %71, i32 %67, i32 1, i32 0
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %69
  %79 = lshr i8 %75, 1
  %80 = and i8 %79, 3
  %81 = zext i8 %80 to i32
  %82 = getelementptr i16, ptr %73, i32 %81
  %83 = load i16, ptr %82, align 2
  %84 = lshr i8 %75, 3
  %85 = zext i16 %83 to i32
  %86 = getelementptr i8, ptr %46, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %88 = zext i8 %84 to i32
  %89 = shl nuw i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %153

92:                                               ; preds = %78, %69
  %93 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %71, i32 %67, i32 1, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %92
  %98 = lshr i8 %94, 1
  %99 = and i8 %98, 3
  %100 = zext i8 %99 to i32
  %101 = getelementptr i16, ptr %73, i32 %100
  %102 = load i16, ptr %101, align 2
  %103 = lshr i8 %94, 3
  %104 = load ptr, ptr %45, align 4
  %105 = zext i16 %102 to i32
  %106 = getelementptr i8, ptr %104, i32 %105
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %108 = zext i8 %103 to i32
  %109 = shl nuw i32 1, %108
  %110 = and i32 %107, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %97, %92
  %113 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %71, i32 %67, i32 1, i32 2
  %114 = load i8, ptr %113, align 1
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %112
  %118 = lshr i8 %114, 1
  %119 = and i8 %118, 3
  %120 = zext i8 %119 to i32
  %121 = getelementptr i16, ptr %73, i32 %120
  %122 = load i16, ptr %121, align 2
  %123 = lshr i8 %114, 3
  %124 = load ptr, ptr %45, align 4
  %125 = zext i16 %122 to i32
  %126 = getelementptr i8, ptr %124, i32 %125
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %128 = zext i8 %123 to i32
  %129 = shl nuw i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %117, %112
  %133 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %71, i32 %67, i32 1, i32 3
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %132
  %138 = lshr i8 %134, 1
  %139 = and i8 %138, 3
  %140 = zext i8 %139 to i32
  %141 = getelementptr i16, ptr %73, i32 %140
  %142 = load i16, ptr %141, align 2
  %143 = lshr i8 %134, 3
  %144 = load ptr, ptr %45, align 4
  %145 = zext i16 %142 to i32
  %146 = getelementptr i8, ptr %144, i32 %145
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %148 = zext i8 %143 to i32
  %149 = shl nuw i32 1, %148
  %150 = and i32 %147, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %137, %132
  br label %153

153:                                              ; preds = %152, %137, %117, %97, %78, %66, %63, %43, %5
  %154 = phi i32 [ %39, %5 ], [ 3, %43 ], [ 3, %66 ], [ 3, %152 ], [ 4, %78 ], [ 5, %97 ], [ 6, %117 ], [ 7, %137 ], [ 3, %63 ]
  br i1 %17, label %161, label %155

155:                                              ; preds = %153
  %156 = icmp eq ptr %6, null
  %157 = select i1 %156, ptr @.str.17, ptr %6
  %158 = select i1 %24, ptr @.str.19, ptr @.str.18
  %159 = getelementptr [8 x ptr], ptr @__const.nmk_gpio_dbg_show_one.modes, i32 0, i32 %154
  %160 = load ptr, ptr %159, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %4, ptr noundef %157, ptr noundef nonnull %158, ptr noundef %160) #9
  br label %205

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.gpio_chip, ptr %2, i32 0, i32 15
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 %163(ptr noundef %2, i32 noundef %3) #9
  %165 = xor i32 %20, -1
  %166 = lshr i32 %165, %3
  %167 = and i32 %166, 1
  %168 = icmp eq ptr %6, null
  %169 = select i1 %168, ptr @.str.17, ptr %6
  %170 = getelementptr [2 x ptr], ptr @nmk_gpio_dbg_show_one.pulls, i32 0, i32 %167
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr [8 x ptr], ptr @__const.nmk_gpio_dbg_show_one.modes, i32 0, i32 %154
  %173 = load ptr, ptr %172, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %4, ptr noundef %169, ptr noundef %171, ptr noundef %173) #9
  %174 = tail call ptr @gpiochip_get_data(ptr noundef %2) #9
  %175 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = tail call i32 @clk_enable(ptr noundef %176) #9
  %178 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %174, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %179) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %181 = lshr i32 %180, %3
  %182 = and i32 %181, 1
  %183 = load ptr, ptr %175, align 4
  tail call void @clk_disable(ptr noundef %183) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %182) #9
  %184 = icmp sgt i32 %164, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %161
  %186 = tail call zeroext i1 @irq_has_action(i32 noundef %164) #9
  br i1 %186, label %187, label %205

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %7, i32 0, i32 8
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, %15
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %7, i32 0, i32 9
  %194 = load i32, ptr %193, align 4
  %195 = and i32 %194, %15
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, ptr @.str.27, ptr @.str.26
  br label %198

198:                                              ; preds = %192, %187
  %199 = phi ptr [ @.str.25, %187 ], [ %197, %192 ]
  %200 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %7, i32 0, i32 10
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, %15
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %164, ptr noundef nonnull %199, ptr noundef nonnull %204) #9
  br label %205

205:                                              ; preds = %198, %185, %161, %155
  %206 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %206) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_has_action(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nmk_gpio_irq_maskunmask(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @clk_enable(ptr noundef %8) #9
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #9
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 13
  %15 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 14
  %16 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %13
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %6
  br i1 %1, label %22, label %25

22:                                               ; preds = %21
  %23 = load i32, ptr %14, align 4
  %24 = or i32 %23, %18
  br label %29

25:                                               ; preds = %21
  %26 = xor i32 %18, -1
  %27 = load i32, ptr %14, align 4
  %28 = and i32 %27, %26
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %28, %25 ], [ %24, %22 ]
  store i32 %30, ptr %14, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %31 = load i32, ptr %14, align 4
  %32 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #9, !srcloc !14
  br label %35

35:                                               ; preds = %29, %6
  %36 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, %18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  br i1 %1, label %41, label %44

41:                                               ; preds = %40
  %42 = load i32, ptr %15, align 4
  %43 = or i32 %42, %18
  br label %48

44:                                               ; preds = %40
  %45 = xor i32 %18, -1
  %46 = load i32, ptr %15, align 4
  %47 = and i32 %46, %45
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %47, %44 ], [ %43, %41 ]
  store i32 %49, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %50 = load i32, ptr %15, align 4
  %51 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #9, !srcloc !14
  br label %54

54:                                               ; preds = %48, %35
  %55 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %4, i32 0, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %12, align 4
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call fastcc void @__nmk_gpio_set_wake(ptr noundef nonnull %4, i32 noundef %57, i1 noundef zeroext %1)
  br label %62

62:                                               ; preds = %61, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %63 = load i16, ptr %11, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %10) #9
  %65 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %62, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__nmk_gpio_set_wake(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !32
  %6 = icmp ne i8 %5, 0
  %7 = and i1 %6, %2
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = shl nuw i32 1, %1
  br label %20

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %15 = shl nuw i32 1, %1
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #9, !srcloc !14
  br label %20

20:                                               ; preds = %10, %8
  %21 = phi i32 [ %9, %8 ], [ %15, %10 ]
  %22 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 11
  %23 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 12
  %24 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %20
  br i1 %2, label %29, label %32

29:                                               ; preds = %28
  %30 = load i32, ptr %22, align 4
  %31 = or i32 %30, %21
  br label %36

32:                                               ; preds = %28
  %33 = xor i32 %21, -1
  %34 = load i32, ptr %22, align 4
  %35 = and i32 %34, %33
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %35, %32 ], [ %31, %29 ]
  store i32 %37, ptr %22, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %38 = load i32, ptr %22, align 4
  %39 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #9, !srcloc !14
  br label %42

42:                                               ; preds = %36, %20
  %43 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %42
  br i1 %2, label %48, label %51

48:                                               ; preds = %47
  %49 = load i32, ptr %23, align 4
  %50 = or i32 %49, %21
  br label %55

51:                                               ; preds = %47
  %52 = xor i32 %21, -1
  %53 = load i32, ptr %23, align 4
  %54 = and i32 %53, %52
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %54, %51 ], [ %50, %48 ]
  store i32 %56, ptr %23, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %57 = load i32, ptr %23, align 4
  %58 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #9, !srcloc !14
  br label %61

61:                                               ; preds = %55, %42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_device(ptr noundef nonnull @nmk_pinctrl_match, ptr noundef %4) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %67, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %14, inttoptr (i32 1 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.nmk_pinctrl, ptr %7, i32 0, i32 2
  tail call void @nmk_pinctrl_db8500_init(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %17, %12
  br label %20

20:                                               ; preds = %32, %19
  %21 = phi i32 [ %33, %32 ], [ 0, %19 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !9
  %22 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef null, i32 noundef 0, i32 noundef %21, ptr noundef nonnull %3) #9
  %23 = icmp ne i32 %22, 0
  %24 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  %25 = icmp eq ptr %24, null
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %21, ptr noundef nonnull %24) #10
  %28 = call fastcc ptr @nmk_gpio_populate_chip(ptr noundef nonnull %24, ptr noundef %0)
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.34) #10
  br label %31

31:                                               ; preds = %30, %27
  call void @of_node_put(ptr noundef nonnull %24) #9
  br label %32

32:                                               ; preds = %31, %20
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %20

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !9
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #9
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nmk_pinctrl, ptr %7, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  br label %47

44:                                               ; preds = %35
  %45 = call ptr @of_iomap(ptr noundef nonnull %38, i32 noundef 0) #9
  %46 = getelementptr inbounds %struct.nmk_pinctrl, ptr %7, i32 0, i32 3
  store ptr %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %43, %41 ], [ %45, %44 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  br i1 %15, label %51, label %52

51:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.36) #10
  br label %53

52:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.37) #10
  br label %67

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.nmk_pinctrl, ptr %7, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 4
  store ptr %56, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nmk_pinctrl_desc, i32 0, i32 1), align 4
  %57 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %55, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  store i32 %58, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @nmk_pinctrl_desc, i32 0, i32 2), align 4
  store ptr %4, ptr %7, align 4
  %59 = call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull @nmk_pinctrl_desc, ptr noundef nonnull %7) #9
  %60 = getelementptr inbounds %struct.nmk_pinctrl, ptr %7, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.38) #10
  %63 = load ptr, ptr %60, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %66, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.39) #10
  br label %67

67:                                               ; preds = %65, %62, %52, %9, %1
  %68 = phi i32 [ %64, %62 ], [ 0, %65 ], [ -22, %52 ], [ -12, %1 ], [ -19, %9 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nmk_pinctrl_db8500_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_get_groups_cnt(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.nmk_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nmk_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.nmk_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.nmk_pingroup, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.nmk_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.nmk_pingroup, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  br label %4

4:                                                ; preds = %19, %3
  %5 = phi i32 [ 0, %3 ], [ %20, %19 ]
  %6 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 19
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %7, i32 0, i32 20
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = add i32 %11, %16
  %18 = icmp ugt i32 %17, %2
  br i1 %18, label %23, label %19

19:                                               ; preds = %13, %9, %4
  %20 = add nuw nsw i32 %5, 1
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %4

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.40) #9
  br label %25

23:                                               ; preds = %13
  %24 = sub i32 %2, %11
  tail call fastcc void @nmk_gpio_dbg_show_one(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %7, i32 noundef %24, i32 noundef %2)
  br label %25

25:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #9
  store i32 0, ptr %11, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %12 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %193, label %14

14:                                               ; preds = %190, %4
  %15 = phi ptr [ %191, %190 ], [ %12, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #9
  store ptr null, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #9
  store i32 0, ptr %10, align 4
  %16 = call i32 @of_property_read_string(ptr noundef nonnull %15, ptr noundef nonnull @.str.41, ptr noundef nonnull %9) #9
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = call i32 @of_property_read_string_helper(ptr noundef nonnull %15, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %181, label %21

21:                                               ; preds = %18
  %22 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %19) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %181, label %24

24:                                               ; preds = %21
  %25 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.42, ptr noundef null) #9
  %26 = call ptr @of_prop_next_string(ptr noundef %25, ptr noundef null) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %33, %24
  %29 = phi ptr [ %45, %33 ], [ %26, %24 ]
  %30 = load i32, ptr %3, align 4
  %31 = load i32, ptr %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %181, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %9, align 4
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr %struct.pinctrl_map, ptr %35, i32 %30, i32 2
  store i32 2, ptr %36, align 4
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %3, align 4
  %39 = getelementptr %struct.pinctrl_map, ptr %37, i32 %38, i32 4
  store ptr %29, ptr %39, align 4
  %40 = load ptr, ptr %2, align 4
  %41 = load i32, ptr %3, align 4
  %42 = getelementptr %struct.pinctrl_map, ptr %40, i32 %41, i32 4, i32 0, i32 1
  store ptr %34, ptr %42, align 4
  %43 = load i32, ptr %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %3, align 4
  %45 = call ptr @of_prop_next_string(ptr noundef %25, ptr noundef nonnull %29) #9
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %28

47:                                               ; preds = %33, %24, %14
  %48 = phi i32 [ %16, %14 ], [ %22, %24 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !9
  br label %49

49:                                               ; preds = %75, %47
  %50 = phi i32 [ 0, %47 ], [ %78, %75 ]
  %51 = phi i1 [ false, %47 ], [ %77, %75 ]
  %52 = phi i32 [ 0, %47 ], [ %76, %75 ]
  %53 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %50
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef %54, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #9
  %56 = call i32 @llvm.smin.i32(i32 %55, i32 0) #9
  %57 = icmp eq i32 %56, -22
  br i1 %57, label %75, label %58

58:                                               ; preds = %49
  %59 = load i32, ptr %8, align 4
  %60 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %50, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = icmp sgt i32 %61, %59
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %50, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %50, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i32, ptr %65, i32 %59
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, %67
  br label %71

71:                                               ; preds = %63, %58
  %72 = phi i32 [ %70, %63 ], [ %52, %58 ]
  %73 = load i32, ptr %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, ptr %10, align 4
  br label %75

75:                                               ; preds = %71, %49
  %76 = phi i32 [ %52, %49 ], [ %72, %71 ]
  %77 = phi i1 [ %51, %49 ], [ true, %71 ]
  %78 = add nuw nsw i32 %50, 1
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %49

80:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false) #9, !annotation !9
  %81 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %15, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %7) #9
  %82 = icmp ne i32 %81, 0
  %83 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  %84 = icmp eq ptr %83, null
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %120, label %86

86:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  br label %87

87:                                               ; preds = %113, %86
  %88 = phi i32 [ 0, %86 ], [ %116, %113 ]
  %89 = phi i1 [ false, %86 ], [ %115, %113 ]
  %90 = phi i32 [ 0, %86 ], [ %114, %113 ]
  %91 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %88
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 @of_property_read_variable_u32_array(ptr noundef %83, ptr noundef %92, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %94 = call i32 @llvm.smin.i32(i32 %93, i32 0) #9
  %95 = icmp eq i32 %94, -22
  br i1 %95, label %113, label %96

96:                                               ; preds = %87
  %97 = load i32, ptr %6, align 4
  %98 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %88, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, %97
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %88, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr [8 x %struct.nmk_cfg_param], ptr @nmk_cfg_params, i32 0, i32 %88, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr i32, ptr %103, i32 %97
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, %105
  br label %109

109:                                              ; preds = %101, %96
  %110 = phi i32 [ %108, %101 ], [ %90, %96 ]
  %111 = load i32, ptr %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, ptr %10, align 4
  br label %113

113:                                              ; preds = %109, %87
  %114 = phi i32 [ %90, %87 ], [ %110, %109 ]
  %115 = phi i1 [ %89, %87 ], [ true, %109 ]
  %116 = add nuw nsw i32 %88, 1
  %117 = icmp eq i32 %116, 8
  br i1 %117, label %118, label %87

118:                                              ; preds = %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %119 = or i1 %77, %115
  br i1 %119, label %121, label %184

120:                                              ; preds = %80
  br i1 %77, label %121, label %184

121:                                              ; preds = %120, %118
  %122 = call i32 @of_property_read_string_helper(ptr noundef nonnull %15, ptr noundef nonnull @.str.44, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %181, label %124

124:                                              ; preds = %121
  %125 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %11, ptr noundef %3, i32 noundef %122) #9
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %181, label %127

127:                                              ; preds = %124
  %128 = call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.44, ptr noundef null) #9
  %129 = call ptr @of_prop_next_string(ptr noundef %128, ptr noundef null) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %183, label %131

131:                                              ; preds = %164, %127
  %132 = phi ptr [ %179, %164 ], [ %129, %127 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %133 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %134 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %132, ptr noundef nonnull @.str.53, ptr noundef nonnull %5) #9
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.nmk_pinctrl, ptr %133, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %138, i32 0, i32 1
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr %138, align 4
  %144 = load i32, ptr %5, align 4
  br label %145

145:                                              ; preds = %153, %142
  %146 = phi i32 [ 0, %142 ], [ %154, %153 ]
  %147 = getelementptr %struct.pinctrl_pin_desc, ptr %143, i32 %146
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, %144
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = getelementptr %struct.pinctrl_pin_desc, ptr %143, i32 %146, i32 1
  %152 = load ptr, ptr %151, align 4
  br label %156

153:                                              ; preds = %145
  %154 = add nuw i32 %146, 1
  %155 = icmp eq i32 %154, %140
  br i1 %155, label %156, label %145

156:                                              ; preds = %153, %150, %136, %131
  %157 = phi ptr [ %152, %150 ], [ null, %131 ], [ null, %136 ], [ null, %153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %158 = load i32, ptr %3, align 4
  %159 = load i32, ptr %11, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %181, label %161

161:                                              ; preds = %156
  %162 = call ptr @kmemdup(ptr noundef nonnull %10, i32 noundef 4, i32 noundef 3264) #9
  %163 = icmp eq ptr %162, null
  br i1 %163, label %181, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %2, align 4
  %166 = load i32, ptr %3, align 4
  %167 = getelementptr %struct.pinctrl_map, ptr %165, i32 %166, i32 2
  store i32 3, ptr %167, align 4
  %168 = load ptr, ptr %2, align 4
  %169 = load i32, ptr %3, align 4
  %170 = getelementptr %struct.pinctrl_map, ptr %168, i32 %169, i32 4
  store ptr %157, ptr %170, align 4
  %171 = load ptr, ptr %2, align 4
  %172 = load i32, ptr %3, align 4
  %173 = getelementptr %struct.pinctrl_map, ptr %171, i32 %172, i32 4, i32 0, i32 1
  store ptr %162, ptr %173, align 4
  %174 = load ptr, ptr %2, align 4
  %175 = load i32, ptr %3, align 4
  %176 = getelementptr %struct.pinctrl_map, ptr %174, i32 %175, i32 4, i32 0, i32 2
  store i32 1, ptr %176, align 4
  %177 = load i32, ptr %3, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %3, align 4
  %179 = call ptr @of_prop_next_string(ptr noundef %128, ptr noundef nonnull %132) #9
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %131

181:                                              ; preds = %161, %156, %124, %121, %28, %21, %18
  %182 = phi i32 [ -28, %156 ], [ -12, %161 ], [ -28, %28 ], [ %122, %121 ], [ %125, %124 ], [ %22, %21 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %186

183:                                              ; preds = %164, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  br label %190

184:                                              ; preds = %120, %118
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #9
  %185 = icmp slt i32 %48, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %184, %181
  %187 = phi i32 [ %182, %181 ], [ %48, %184 ]
  %188 = load ptr, ptr %2, align 4
  %189 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %188, i32 noundef %189) #9
  call void @of_node_put(ptr noundef nonnull %15) #9
  br label %193

190:                                              ; preds = %184, %183
  %191 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %15) #9
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %14

193:                                              ; preds = %190, %186, %4
  %194 = phi i32 [ %187, %186 ], [ 0, %4 ], [ 0, %190 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #9
  ret i32 %194
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pmx_get_funcs_cnt(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.nmk_pinctrl, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nmk_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.nmk_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.nmk_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pmx_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.nmk_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.nmk_function, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.nmk_function, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pmx_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.nmk_pinctrl, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2
  %11 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %539, label %14

14:                                               ; preds = %3
  %15 = and i32 %12, 3
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %58

17:                                               ; preds = %14
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nmk_gpio_slpm_lock) #9
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) @nmk_pmx_set.slpm, i8 -1, i32 64, i1 false)
  %19 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2, i32 1
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %35, %24 ]
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i32, ptr %26, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = shl nuw i32 1, %28
  %30 = xor i32 %29, -1
  %31 = lshr i32 %28, 5
  %32 = getelementptr [16 x i32], ptr @nmk_pmx_set.slpm, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, ptr %32, align 4
  %35 = add nuw i32 %25, 1
  %36 = load i32, ptr %19, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %24, label %38

38:                                               ; preds = %24, %17
  br label %39

39:                                               ; preds = %44, %38
  %40 = phi i32 [ %56, %44 ], [ 0, %38 ]
  %41 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = getelementptr i32, ptr @nmk_pmx_set.slpm, i32 %40
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %42, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @clk_enable(ptr noundef %48) #9
  %50 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %42, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 28
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  store i32 %53, ptr %45, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !36
  tail call void @arm_heavy_mb() #9
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %46) #9, !srcloc !14
  %56 = add nuw nsw i32 %40, 1
  %57 = icmp eq i32 %56, 16
  br i1 %57, label %58, label %39

58:                                               ; preds = %44, %39, %14
  %59 = phi i32 [ 0, %14 ], [ %18, %39 ], [ %18, %44 ]
  %60 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %521, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.nmk_pingroup, ptr %9, i32 %2, i32 1
  %65 = getelementptr inbounds %struct.nmk_pinctrl, ptr %5, i32 0, i32 3
  br label %66

66:                                               ; preds = %517, %63
  %67 = phi i32 [ 0, %63 ], [ %518, %517 ]
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr i32, ptr %68, i32 %67
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %86, %66
  %72 = phi i32 [ 0, %66 ], [ %87, %86 ]
  %73 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %72
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.gpio_chip, ptr %74, i32 0, i32 19
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, %70
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.gpio_chip, ptr %74, i32 0, i32 20
  %82 = load i16, ptr %81, align 4
  %83 = zext i16 %82 to i32
  %84 = add i32 %78, %83
  %85 = icmp ugt i32 %84, %70
  br i1 %85, label %89, label %86

86:                                               ; preds = %80, %76, %71
  %87 = add nuw nsw i32 %72, 1
  %88 = icmp eq i32 %87, 16
  br i1 %88, label %514, label %71

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @clk_enable(ptr noundef %91) #9
  %93 = load ptr, ptr %64, align 4
  %94 = getelementptr i32, ptr %93, i32 %67
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 31
  %97 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 14
  %98 = load i32, ptr %97, align 4
  %99 = shl nuw i32 1, %96
  %100 = and i32 %99, %98
  %101 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 13
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, %99
  %104 = getelementptr inbounds %struct.gpio_chip, ptr %74, i32 0, i32 37, i32 1
  %105 = load ptr, ptr %104, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %106 = call ptr @__irq_resolve_mapping(ptr noundef %105, i32 noundef %96, ptr noundef nonnull %4) #9
  %107 = icmp eq ptr %106, null
  %108 = load i32, ptr %4, align 4
  %109 = select i1 %107, i32 0, i32 %108
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %110 = call ptr @irq_get_irq_data(i32 noundef %109) #9
  %111 = icmp ne i32 %103, 0
  %112 = icmp ne i32 %100, 0
  %113 = select i1 %111, i1 true, i1 %112
  %114 = xor i1 %113, true
  %115 = icmp eq ptr %110, null
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %139, label %117

117:                                              ; preds = %89
  %118 = getelementptr inbounds %struct.irq_data, ptr %110, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 65536
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %117
  br i1 %111, label %124, label %131

124:                                              ; preds = %123
  %125 = xor i32 %99, -1
  %126 = load i32, ptr %101, align 4
  %127 = and i32 %126, %125
  store i32 %127, ptr %101, align 4
  %128 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %127) #9, !srcloc !14
  br label %131

131:                                              ; preds = %124, %123
  br i1 %112, label %132, label %139

132:                                              ; preds = %131
  %133 = xor i32 %99, -1
  %134 = load i32, ptr %97, align 4
  %135 = and i32 %134, %133
  store i32 %135, ptr %97, align 4
  %136 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr i8, ptr %137, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %135) #9, !srcloc !14
  br label %139

139:                                              ; preds = %132, %131, %117, %89
  %140 = load i32, ptr %11, align 4
  %141 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 12
  %144 = load i32, ptr %143, align 4
  br i1 %16, label %145, label %211

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %179, label %149

149:                                              ; preds = %145
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !37
  call void @arm_heavy_mb() #9
  %150 = xor i32 %99, -1
  %151 = and i32 %142, %150
  %152 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 %151) #9, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !38
  call void @arm_heavy_mb() #9
  %155 = and i32 %144, %150
  %156 = load ptr, ptr %152, align 4
  %157 = getelementptr i8, ptr %156, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #9, !srcloc !14
  %158 = load ptr, ptr %146, align 4
  call void %158(i1 noundef zeroext true) #9
  %159 = load ptr, ptr %152, align 4
  %160 = getelementptr i8, ptr %159, i32 32
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %162 = and i32 %161, %150
  %163 = load ptr, ptr %152, align 4
  %164 = getelementptr i8, ptr %163, i32 36
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %164) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %166 = and i32 %165, %150
  %167 = and i32 %140, 1
  %168 = icmp eq i32 %167, 0
  %169 = or i32 %161, %99
  %170 = select i1 %168, i32 %162, i32 %169
  %171 = and i32 %140, 2
  %172 = icmp eq i32 %171, 0
  %173 = or i32 %165, %99
  %174 = select i1 %172, i32 %166, i32 %173
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  call void @arm_heavy_mb() #9
  %175 = load ptr, ptr %152, align 4
  %176 = getelementptr i8, ptr %175, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %176, i32 %170) #9, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %177 = load ptr, ptr %152, align 4
  %178 = getelementptr i8, ptr %177, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %174) #9, !srcloc !14
  br label %202

179:                                              ; preds = %145
  %180 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr i8, ptr %181, i32 32
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %184 = xor i32 %99, -1
  %185 = and i32 %183, %184
  %186 = load ptr, ptr %180, align 4
  %187 = getelementptr i8, ptr %186, i32 36
  %188 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %189 = and i32 %188, %184
  %190 = and i32 %140, 1
  %191 = icmp eq i32 %190, 0
  %192 = or i32 %183, %99
  %193 = select i1 %191, i32 %185, i32 %192
  %194 = and i32 %140, 2
  %195 = icmp eq i32 %194, 0
  %196 = or i32 %188, %99
  %197 = select i1 %195, i32 %189, i32 %196
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  call void @arm_heavy_mb() #9
  %198 = load ptr, ptr %180, align 4
  %199 = getelementptr i8, ptr %198, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %193) #9, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %200 = load ptr, ptr %180, align 4
  %201 = getelementptr i8, ptr %200, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %201, i32 %197) #9, !srcloc !14
  br label %202

202:                                              ; preds = %179, %149
  %203 = load ptr, ptr %146, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %234, label %205

205:                                              ; preds = %202
  call void %203(i1 noundef zeroext false) #9
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !43
  call void @arm_heavy_mb() #9
  %206 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr i8, ptr %207, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %208, i32 %142) #9, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !44
  call void @arm_heavy_mb() #9
  %209 = load ptr, ptr %206, align 4
  %210 = getelementptr i8, ptr %209, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %210, i32 %144) #9, !srcloc !14
  br label %234

211:                                              ; preds = %139
  %212 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %74, i32 0, i32 2
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr i8, ptr %213, i32 32
  %215 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %216 = xor i32 %99, -1
  %217 = and i32 %215, %216
  %218 = load ptr, ptr %212, align 4
  %219 = getelementptr i8, ptr %218, i32 36
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %219) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %221 = and i32 %220, %216
  %222 = and i32 %140, 1
  %223 = icmp eq i32 %222, 0
  %224 = or i32 %215, %99
  %225 = select i1 %223, i32 %217, i32 %224
  %226 = and i32 %140, 2
  %227 = icmp eq i32 %226, 0
  %228 = or i32 %220, %99
  %229 = select i1 %227, i32 %221, i32 %228
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  call void @arm_heavy_mb() #9
  %230 = load ptr, ptr %212, align 4
  %231 = getelementptr i8, ptr %230, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %231, i32 %225) #9, !srcloc !14
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %232 = load ptr, ptr %212, align 4
  %233 = getelementptr i8, ptr %232, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %229) #9, !srcloc !14
  br label %234

234:                                              ; preds = %211, %205, %202
  %235 = load ptr, ptr %90, align 4
  call void @clk_disable(ptr noundef %235) #9
  %236 = load i32, ptr %11, align 4
  %237 = and i32 %236, 3
  %238 = icmp eq i32 %237, 3
  br i1 %238, label %239, label %517

239:                                              ; preds = %234
  %240 = load ptr, ptr %64, align 4
  %241 = getelementptr i32, ptr %240, i32 %67
  %242 = load i32, ptr %241, align 4
  %243 = ashr i32 %236, 2
  %244 = load ptr, ptr %65, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %517, label %246

246:                                              ; preds = %239
  %247 = icmp ugt i32 %236, 19
  br i1 %247, label %256, label %248

248:                                              ; preds = %246
  %249 = load ptr, ptr %6, align 4
  %250 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %249, i32 0, i32 7
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %267, label %253

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %249, i32 0, i32 6
  %255 = load ptr, ptr %254, align 4
  br label %258

256:                                              ; preds = %246
  %257 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.55, i32 noundef %243) #10
  br label %517

258:                                              ; preds = %264, %253
  %259 = phi i32 [ 0, %253 ], [ %265, %264 ]
  %260 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %255, i32 %259
  %261 = load i16, ptr %260, align 2
  %262 = zext i16 %261 to i32
  %263 = icmp eq i32 %242, %262
  br i1 %263, label %267, label %264

264:                                              ; preds = %258
  %265 = add nuw i32 %259, 1
  %266 = icmp eq i32 %265, %251
  br i1 %266, label %517, label %258

267:                                              ; preds = %258, %248
  %268 = phi i32 [ 0, %248 ], [ %259, %258 ]
  %269 = icmp eq i32 %268, %251
  br i1 %269, label %517, label %270

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %249, i32 0, i32 6
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.nmk_pinctrl_soc_data, ptr %249, i32 0, i32 8
  %274 = load ptr, ptr %273, align 4
  %275 = icmp ult i32 %236, 4
  br i1 %275, label %276, label %379

276:                                              ; preds = %270
  %277 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 0
  %278 = load i8, ptr %277, align 1
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %301, label %281

281:                                              ; preds = %276
  %282 = lshr i8 %278, 1
  %283 = and i8 %282, 3
  %284 = zext i8 %283 to i32
  %285 = getelementptr i16, ptr %274, i32 %284
  %286 = load i16, ptr %285, align 2
  %287 = lshr i8 %278, 3
  %288 = zext i16 %286 to i32
  %289 = getelementptr i8, ptr %244, i32 %288
  %290 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %289) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %291 = zext i8 %287 to i32
  %292 = shl nuw i32 1, %291
  %293 = and i32 %290, %292
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %281
  %296 = load ptr, ptr %65, align 4
  %297 = getelementptr i8, ptr %296, i32 %288
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %297) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %299 = xor i32 %292, -1
  %300 = and i32 %298, %299
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %297, i32 %300) #9, !srcloc !14
  br label %301

301:                                              ; preds = %295, %281, %276
  %302 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 1
  %303 = load i8, ptr %302, align 1
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %327, label %306

306:                                              ; preds = %301
  %307 = lshr i8 %303, 1
  %308 = and i8 %307, 3
  %309 = zext i8 %308 to i32
  %310 = getelementptr i16, ptr %274, i32 %309
  %311 = load i16, ptr %310, align 2
  %312 = lshr i8 %303, 3
  %313 = load ptr, ptr %65, align 4
  %314 = zext i16 %311 to i32
  %315 = getelementptr i8, ptr %313, i32 %314
  %316 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %315) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %317 = zext i8 %312 to i32
  %318 = shl nuw i32 1, %317
  %319 = and i32 %316, %318
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %306
  %322 = load ptr, ptr %65, align 4
  %323 = getelementptr i8, ptr %322, i32 %314
  %324 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %323) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %325 = xor i32 %318, -1
  %326 = and i32 %324, %325
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %323, i32 %326) #9, !srcloc !14
  br label %327

327:                                              ; preds = %321, %306, %301
  %328 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 2
  %329 = load i8, ptr %328, align 1
  %330 = and i8 %329, 1
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %353, label %332

332:                                              ; preds = %327
  %333 = lshr i8 %329, 1
  %334 = and i8 %333, 3
  %335 = zext i8 %334 to i32
  %336 = getelementptr i16, ptr %274, i32 %335
  %337 = load i16, ptr %336, align 2
  %338 = lshr i8 %329, 3
  %339 = load ptr, ptr %65, align 4
  %340 = zext i16 %337 to i32
  %341 = getelementptr i8, ptr %339, i32 %340
  %342 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %341) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %343 = zext i8 %338 to i32
  %344 = shl nuw i32 1, %343
  %345 = and i32 %342, %344
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %353, label %347

347:                                              ; preds = %332
  %348 = load ptr, ptr %65, align 4
  %349 = getelementptr i8, ptr %348, i32 %340
  %350 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %349) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %351 = xor i32 %344, -1
  %352 = and i32 %350, %351
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 %352) #9, !srcloc !14
  br label %353

353:                                              ; preds = %347, %332, %327
  %354 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 3
  %355 = load i8, ptr %354, align 1
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %517, label %358

358:                                              ; preds = %353
  %359 = lshr i8 %355, 1
  %360 = and i8 %359, 3
  %361 = zext i8 %360 to i32
  %362 = getelementptr i16, ptr %274, i32 %361
  %363 = load i16, ptr %362, align 2
  %364 = lshr i8 %355, 3
  %365 = load ptr, ptr %65, align 4
  %366 = zext i16 %363 to i32
  %367 = getelementptr i8, ptr %365, i32 %366
  %368 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %367) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %369 = zext i8 %364 to i32
  %370 = shl nuw i32 1, %369
  %371 = and i32 %368, %370
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %517, label %373

373:                                              ; preds = %358
  %374 = load ptr, ptr %65, align 4
  %375 = getelementptr i8, ptr %374, i32 %366
  %376 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %375) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %377 = xor i32 %370, -1
  %378 = and i32 %376, %377
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %375, i32 %378) #9, !srcloc !14
  br label %517

379:                                              ; preds = %270
  %380 = add nsw i32 %243, 255
  %381 = and i32 %380, 255
  %382 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 %381
  %383 = load i8, ptr %382, align 1
  %384 = and i8 %383, 1
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %379
  %387 = icmp eq i32 %381, 0
  br i1 %387, label %417, label %390

388:                                              ; preds = %379
  %389 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %389, ptr noundef nonnull @.str.56, i32 noundef %242, i32 noundef %243) #10
  br label %517

390:                                              ; preds = %386
  %391 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 0
  %392 = load i8, ptr %391, align 1
  %393 = and i8 %392, 1
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %415, label %395

395:                                              ; preds = %390
  %396 = lshr i8 %392, 1
  %397 = and i8 %396, 3
  %398 = zext i8 %397 to i32
  %399 = getelementptr i16, ptr %274, i32 %398
  %400 = load i16, ptr %399, align 2
  %401 = lshr i8 %392, 3
  %402 = zext i16 %400 to i32
  %403 = getelementptr i8, ptr %244, i32 %402
  %404 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %403) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %405 = zext i8 %401 to i32
  %406 = shl nuw i32 1, %405
  %407 = and i32 %404, %406
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %395
  %410 = load ptr, ptr %65, align 4
  %411 = getelementptr i8, ptr %410, i32 %402
  %412 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %411) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %413 = xor i32 %406, -1
  %414 = and i32 %412, %413
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %411, i32 %414) #9, !srcloc !14
  br label %415

415:                                              ; preds = %409, %395, %390
  %416 = icmp eq i32 %381, 1
  br i1 %416, label %445, label %417

417:                                              ; preds = %415, %386
  %418 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 1
  %419 = load i8, ptr %418, align 1
  %420 = and i8 %419, 1
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %443, label %422

422:                                              ; preds = %417
  %423 = lshr i8 %419, 1
  %424 = and i8 %423, 3
  %425 = zext i8 %424 to i32
  %426 = getelementptr i16, ptr %274, i32 %425
  %427 = load i16, ptr %426, align 2
  %428 = lshr i8 %419, 3
  %429 = load ptr, ptr %65, align 4
  %430 = zext i16 %427 to i32
  %431 = getelementptr i8, ptr %429, i32 %430
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %433 = zext i8 %428 to i32
  %434 = shl nuw i32 1, %433
  %435 = and i32 %432, %434
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %443, label %437

437:                                              ; preds = %422
  %438 = load ptr, ptr %65, align 4
  %439 = getelementptr i8, ptr %438, i32 %430
  %440 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %439) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %441 = xor i32 %434, -1
  %442 = and i32 %440, %441
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %439, i32 %442) #9, !srcloc !14
  br label %443

443:                                              ; preds = %437, %422, %417
  %444 = icmp eq i32 %381, 2
  br i1 %444, label %473, label %445

445:                                              ; preds = %443, %415
  %446 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 2
  %447 = load i8, ptr %446, align 1
  %448 = and i8 %447, 1
  %449 = icmp eq i8 %448, 0
  br i1 %449, label %471, label %450

450:                                              ; preds = %445
  %451 = lshr i8 %447, 1
  %452 = and i8 %451, 3
  %453 = zext i8 %452 to i32
  %454 = getelementptr i16, ptr %274, i32 %453
  %455 = load i16, ptr %454, align 2
  %456 = lshr i8 %447, 3
  %457 = load ptr, ptr %65, align 4
  %458 = zext i16 %455 to i32
  %459 = getelementptr i8, ptr %457, i32 %458
  %460 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %459) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %461 = zext i8 %456 to i32
  %462 = shl nuw i32 1, %461
  %463 = and i32 %460, %462
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %471, label %465

465:                                              ; preds = %450
  %466 = load ptr, ptr %65, align 4
  %467 = getelementptr i8, ptr %466, i32 %458
  %468 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %467) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %469 = xor i32 %462, -1
  %470 = and i32 %468, %469
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %467, i32 %470) #9, !srcloc !14
  br label %471

471:                                              ; preds = %465, %450, %445
  %472 = icmp eq i32 %381, 3
  br i1 %472, label %499, label %473

473:                                              ; preds = %471, %443
  %474 = getelementptr %struct.prcm_gpiocr_altcx_pin_desc, ptr %272, i32 %268, i32 1, i32 3
  %475 = load i8, ptr %474, align 1
  %476 = and i8 %475, 1
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %499, label %478

478:                                              ; preds = %473
  %479 = lshr i8 %475, 1
  %480 = and i8 %479, 3
  %481 = zext i8 %480 to i32
  %482 = getelementptr i16, ptr %274, i32 %481
  %483 = load i16, ptr %482, align 2
  %484 = lshr i8 %475, 3
  %485 = load ptr, ptr %65, align 4
  %486 = zext i16 %483 to i32
  %487 = getelementptr i8, ptr %485, i32 %486
  %488 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %487) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  %489 = zext i8 %484 to i32
  %490 = shl nuw i32 1, %489
  %491 = and i32 %488, %490
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %499, label %493

493:                                              ; preds = %478
  %494 = load ptr, ptr %65, align 4
  %495 = getelementptr i8, ptr %494, i32 %486
  %496 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %495) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %497 = xor i32 %490, -1
  %498 = and i32 %496, %497
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %495, i32 %498) #9, !srcloc !14
  br label %499

499:                                              ; preds = %493, %478, %473, %471
  %500 = load i8, ptr %382, align 1
  %501 = lshr i8 %500, 1
  %502 = and i8 %501, 3
  %503 = zext i8 %502 to i32
  %504 = getelementptr i16, ptr %274, i32 %503
  %505 = load i16, ptr %504, align 2
  %506 = lshr i8 %500, 3
  %507 = load ptr, ptr %65, align 4
  %508 = zext i16 %505 to i32
  %509 = getelementptr i8, ptr %507, i32 %508
  %510 = zext i8 %506 to i32
  %511 = shl nuw i32 1, %510
  %512 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %509) #9, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %513 = or i32 %512, %511
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !47
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %509, i32 %513) #9, !srcloc !14
  br label %517

514:                                              ; preds = %86
  %515 = load ptr, ptr %5, align 4
  %516 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %515, ptr noundef nonnull @.str.54, i32 noundef %70, ptr noundef %516, i32 noundef %67) #10
  br label %521

517:                                              ; preds = %499, %388, %373, %358, %353, %267, %264, %256, %239, %234
  %518 = add nuw i32 %67, 1
  %519 = load i32, ptr %60, align 4
  %520 = icmp ult i32 %518, %519
  br i1 %520, label %66, label %521

521:                                              ; preds = %517, %514, %58
  %522 = phi i32 [ -22, %514 ], [ 0, %58 ], [ 0, %517 ]
  br i1 %16, label %523, label %539

523:                                              ; preds = %528, %521
  %524 = phi i32 [ %536, %528 ], [ 0, %521 ]
  %525 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %524
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %538, label %528

528:                                              ; preds = %523
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !49
  call void @arm_heavy_mb() #9
  %529 = getelementptr i32, ptr @nmk_pmx_set.slpm, i32 %524
  %530 = load i32, ptr %529, align 4
  %531 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %526, i32 0, i32 2
  %532 = load ptr, ptr %531, align 4
  %533 = getelementptr i8, ptr %532, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %533, i32 %530) #9, !srcloc !14
  %534 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %526, i32 0, i32 3
  %535 = load ptr, ptr %534, align 4
  call void @clk_disable(ptr noundef %535) #9
  %536 = add nuw nsw i32 %524, 1
  %537 = icmp eq i32 %536, 16
  br i1 %537, label %538, label %523

538:                                              ; preds = %528, %523
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nmk_gpio_slpm_lock, i32 noundef %59) #9
  br label %539

539:                                              ; preds = %538, %521, %3
  %540 = phi i32 [ -22, %3 ], [ %522, %538 ], [ %522, %521 ]
  ret i32 %540
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_gpio_request_enable(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.57) #10
  br label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.58) #10
  br label %36

14:                                               ; preds = %8
  %15 = tail call ptr @gpiochip_get_data(ptr noundef nonnull %10) #9
  %16 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #9
  %19 = and i32 %2, 31
  %20 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %24 = shl nuw i32 1, %19
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %30 = and i32 %29, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %31 = load ptr, ptr %20, align 4
  %32 = getelementptr i8, ptr %31, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %26) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr i8, ptr %33, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %30) #9, !srcloc !14
  %35 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %35) #9
  br label %36

36:                                               ; preds = %14, %12, %6
  %37 = phi i32 [ 0, %14 ], [ -22, %12 ], [ -22, %6 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nmk_gpio_disable_free(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nmk_pin_config_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #8 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  br label %6

6:                                                ; preds = %36, %4
  %7 = phi i32 [ 0, %4 ], [ %37, %36 ]
  %8 = getelementptr [16 x ptr], ptr @nmk_gpio_chips, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 20
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add i32 %13, %18
  %20 = icmp ugt i32 %19, %1
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %161, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %9, i32 0, i32 3
  %25 = and i32 %1, 31
  %26 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %9, i32 0, i32 2
  %27 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %9, i32 0, i32 15
  %28 = getelementptr inbounds %struct.nmk_gpio_chip, ptr %9, i32 0, i32 16
  %29 = shl nuw i32 1, %25
  %30 = xor i32 %29, -1
  %31 = shl nuw i32 1, %25
  %32 = shl nuw i32 1, %25
  %33 = xor i32 %32, -1
  %34 = xor i32 %32, -1
  %35 = xor i32 %32, -1
  br label %41

36:                                               ; preds = %15, %11, %6
  %37 = add nuw nsw i32 %7, 1
  %38 = icmp eq i32 %37, 16
  br i1 %38, label %39, label %6

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.65, i32 noundef %1) #10
  br label %161

41:                                               ; preds = %147, %23
  %42 = phi i32 [ 0, %23 ], [ %159, %147 ]
  %43 = getelementptr i32, ptr %2, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 11
  %46 = and i32 %45, 3
  %47 = lshr i32 %44, 14
  %48 = and i32 %47, 1
  %49 = lshr i32 %44, 15
  %50 = and i32 %49, 1
  %51 = and i32 %44, 33554432
  %52 = icmp ne i32 %51, 0
  %53 = and i32 %44, 134217728
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %41
  %56 = lshr i32 %44, 16
  %57 = and i32 %56, 7
  %58 = lshr i32 %44, 19
  %59 = and i32 %58, 3
  %60 = lshr i32 %44, 21
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %57, 0
  %63 = add nsw i32 %57, -1
  %64 = select i1 %62, i32 %46, i32 %63
  %65 = icmp eq i32 %59, 0
  %66 = add nsw i32 %59, -1
  %67 = select i1 %65, i32 %48, i32 %66
  %68 = icmp eq i32 %61, 0
  %69 = add nsw i32 %61, -1
  %70 = select i1 %68, i32 %50, i32 %69
  %71 = load ptr, ptr %24, align 4
  %72 = tail call i32 @clk_enable(ptr noundef %71) #9
  br label %78

73:                                               ; preds = %41
  %74 = and i32 %44, 67108864
  %75 = icmp eq i32 %74, 0
  %76 = load ptr, ptr %24, align 4
  %77 = tail call i32 @clk_enable(ptr noundef %76) #9
  br i1 %75, label %94, label %78

78:                                               ; preds = %73, %55
  %79 = phi i32 [ %70, %55 ], [ %50, %73 ]
  %80 = phi i32 [ %67, %55 ], [ %48, %73 ]
  %81 = phi i32 [ %64, %55 ], [ %46, %73 ]
  %82 = load ptr, ptr %26, align 4
  %83 = getelementptr i8, ptr %82, i32 32
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !39
  %85 = and i32 %84, %30
  %86 = load ptr, ptr %26, align 4
  %87 = getelementptr i8, ptr %86, i32 36
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !40
  %89 = and i32 %88, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !41
  tail call void @arm_heavy_mb() #9
  %90 = load ptr, ptr %26, align 4
  %91 = getelementptr i8, ptr %90, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %85) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %92 = load ptr, ptr %26, align 4
  %93 = getelementptr i8, ptr %92, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %89) #9, !srcloc !14
  br label %94

94:                                               ; preds = %78, %73
  %95 = phi i32 [ %79, %78 ], [ %50, %73 ]
  %96 = phi i32 [ %80, %78 ], [ %48, %73 ]
  %97 = phi i32 [ %81, %78 ], [ %46, %73 ]
  %98 = icmp eq i32 %96, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %99 = load ptr, ptr %26, align 4
  br i1 %98, label %108, label %100

100:                                              ; preds = %94
  %101 = getelementptr i8, ptr %99, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %31) #9, !srcloc !14
  %102 = icmp eq i32 %95, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #9
  tail call void @arm_heavy_mb() #9
  %103 = load ptr, ptr %26, align 4
  br i1 %102, label %106, label %104

104:                                              ; preds = %100
  %105 = getelementptr i8, ptr %103, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %31) #9, !srcloc !14
  br label %134

106:                                              ; preds = %100
  %107 = getelementptr i8, ptr %103, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %31) #9, !srcloc !14
  br label %134

108:                                              ; preds = %94
  %109 = getelementptr i8, ptr %99, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 %32) #9, !srcloc !14
  %110 = load ptr, ptr %26, align 4
  %111 = getelementptr i8, ptr %110, i32 12
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !50
  %113 = icmp eq i32 %97, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = or i32 %112, %32
  %116 = load i32, ptr %27, align 4
  %117 = and i32 %116, %34
  store i32 %117, ptr %27, align 4
  br label %120

118:                                              ; preds = %108
  %119 = and i32 %112, %33
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ %115, %114 ], [ %119, %118 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !51
  tail call void @arm_heavy_mb() #9
  %122 = load ptr, ptr %26, align 4
  %123 = getelementptr i8, ptr %122, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #9, !srcloc !14
  switch i32 %97, label %134 [
    i32 1, label %124
    i32 2, label %129
  ]

124:                                              ; preds = %120
  %125 = load i32, ptr %27, align 4
  %126 = or i32 %125, %32
  store i32 %126, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !52
  tail call void @arm_heavy_mb() #9
  %127 = load ptr, ptr %26, align 4
  %128 = getelementptr i8, ptr %127, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %32) #9, !srcloc !14
  br label %134

129:                                              ; preds = %120
  %130 = load i32, ptr %27, align 4
  %131 = and i32 %130, %35
  store i32 %131, ptr %27, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !53
  tail call void @arm_heavy_mb() #9
  %132 = load ptr, ptr %26, align 4
  %133 = getelementptr i8, ptr %132, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %32) #9, !srcloc !14
  br label %134

134:                                              ; preds = %129, %124, %120, %106, %104
  %135 = phi i32 [ %32, %129 ], [ %32, %124 ], [ %32, %120 ], [ %31, %106 ], [ %31, %104 ]
  %136 = load i32, ptr %28, align 4
  %137 = and i32 %136, %135
  %138 = icmp eq i32 %137, 0
  %139 = xor i1 %52, %138
  %140 = xor i32 %135, -1
  br i1 %139, label %147, label %141

141:                                              ; preds = %134
  %142 = and i32 %136, %140
  %143 = or i32 %136, %135
  %144 = select i1 %52, i32 %143, i32 %142
  store i32 %144, ptr %28, align 4
  %145 = load ptr, ptr %26, align 4
  %146 = getelementptr i8, ptr %145, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %144) #9, !srcloc !14
  br label %147

147:                                              ; preds = %141, %134
  %148 = load ptr, ptr %26, align 4
  %149 = getelementptr i8, ptr %148, i32 28
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %151 = and i32 %44, 8192
  %152 = icmp eq i32 %151, 0
  %153 = or i32 %150, %135
  %154 = and i32 %150, %140
  %155 = select i1 %152, i32 %154, i32 %153
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %156 = load ptr, ptr %26, align 4
  %157 = getelementptr i8, ptr %156, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #9, !srcloc !14
  %158 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %158) #9
  %159 = add nuw i32 %42, 1
  %160 = icmp eq i32 %159, %3
  br i1 %160, label %161, label %41

161:                                              ; preds = %147, %39, %21
  %162 = phi i32 [ -22, %39 ], [ 0, %21 ], [ 0, %147 ]
  ret i32 %162
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nmk_pinctrl, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @pinctrl_force_sleep(ptr noundef %7) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nmk_pinctrl_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nmk_pinctrl, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @pinctrl_force_default(ptr noundef %7) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ -22, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3669995}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2152607955, i64 2152608462, i64 2152607992, i64 2152608048, i64 2152608082, i64 2152608106, i64 2152608147, i64 2152608168, i64 2152608196, i64 2152608230}
!12 = !{i64 2152601747}
!13 = !{i64 2152602134}
!14 = !{i64 3669577}
!15 = !{i64 2152602676}
!16 = !{i64 2152586034}
!17 = !{i64 2152597886}
!18 = !{i64 2152598540}
!19 = !{i64 2152599128}
!20 = !{i64 2149259561}
!21 = !{i64 2149255385}
!22 = !{i64 2149255460, i64 2149255487, i64 2149255534, i64 2149255556, i64 2149255584, i64 2149255604}
!23 = !{i64 2149282564}
!24 = !{i64 2152601319}
!25 = !{i32 0, i32 33}
!26 = !{i64 2152604169}
!27 = !{i64 2152604600}
!28 = !{i64 2152605031}
!29 = !{i64 2152603107}
!30 = !{i64 2152603538}
!31 = !{i64 2152597426}
!32 = !{i8 0, i8 2}
!33 = !{i64 2152581288}
!34 = !{i64 2152581643}
!35 = !{i64 2152595892}
!36 = !{i64 2152596083}
!37 = !{i64 2152586509}
!38 = !{i64 2152586866}
!39 = !{i64 2152579596}
!40 = !{i64 2152580027}
!41 = !{i64 2152580467}
!42 = !{i64 2152580800}
!43 = !{i64 2152587216}
!44 = !{i64 2152587552}
!45 = !{i64 2152591203}
!46 = !{i64 2152589266}
!47 = !{i64 2152589437}
!48 = !{i64 2152593232}
!49 = !{i64 2152596839}
!50 = !{i64 2152582129}
!51 = !{i64 2152582564}
!52 = !{i64 2152583082}
!53 = !{i64 2152583656}
