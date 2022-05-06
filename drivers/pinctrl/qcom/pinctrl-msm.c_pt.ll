; ModuleID = '/llk/IR/drivers/pinctrl/qcom/pinctrl-msm.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-msm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_remove\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.msm_pinctrl = type { ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, %struct.notifier_block, %struct.irq_chip, i32, i8, %struct.raw_spinlock, [10 x i32], [10 x i32], [10 x i32], [10 x i32], ptr, [4 x ptr], [4 x i32] }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr, i32, ptr, ptr, i32, i8, i32, i32 }
%struct.msm_function = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msm_gpio_wakeirq_map = type { i32, i32 }
%struct.msm_pingroup = type <{ ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i64, i32 }>
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@msm_pinctrl_dev_pm_ops = dso_local constant %struct.dev_pm_ops { ptr null, ptr null, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_msm_pinctrl_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_dev_pm_ops to i32), ptr @__kstrtab_msm_pinctrl_dev_pm_ops, ptr @__kstrtabns_msm_pinctrl_dev_pm_ops }, section "___ksymtab+msm_pinctrl_dev_pm_ops", align 4
@msm_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @msm_gpio_get_direction, ptr @msm_gpio_direction_input, ptr @msm_gpio_direction_output, ptr @msm_gpio_get, ptr null, ptr @msm_gpio_set, ptr null, ptr null, ptr null, ptr @msm_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str = private unnamed_addr constant [21 x i8] c"qcom,ipq8064-pinctrl\00", align 1
@msm_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @msm_get_groups_count, ptr @msm_get_group_name, ptr @msm_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, align 4
@msm_pinmux_ops = internal constant %struct.pinmux_ops { ptr @msm_pinmux_request, ptr null, ptr @msm_get_functions_count, ptr @msm_get_function_name, ptr @msm_get_function_groups, ptr @msm_pinmux_set_mux, ptr @msm_pinmux_request_gpio, ptr null, ptr null, i8 0 }, align 4
@msm_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @msm_config_group_get, ptr @msm_config_group_set, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@__kstrtab_msm_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_probe to i32), ptr @__kstrtab_msm_pinctrl_probe, ptr @__kstrtabns_msm_pinctrl_probe }, section "___ksymtab+msm_pinctrl_probe", align 4
@__kstrtab_msm_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_remove to i32), ptr @__kstrtab_msm_pinctrl_remove, ptr @__kstrtabns_msm_pinctrl_remove }, section "___ksymtab+msm_pinctrl_remove", align 4
@__UNIQUE_ID_description210 = internal constant [64 x i8] c"pinctrl_msm.description=Qualcomm Technologies, Inc. TLMM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file211 = internal constant [50 x i8] c"pinctrl_msm.file=drivers/pinctrl/qcom/pinctrl-msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [27 x i8] c"pinctrl_msm.license=GPL v2\00", section ".modinfo", align 1
@msm_gpio_dbg_show_one.pulls_keeper = internal unnamed_addr constant [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"no pull\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"pull down\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"keeper\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pull up\00", align 1
@msm_gpio_dbg_show_one.pulls_no_keeper = internal unnamed_addr constant [3 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.5], align 4
@.str.6 = private unnamed_addr constant [12 x i8] c" %-8s: %-3s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" %-4s func%d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" %dmA\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ps_hold\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"failed to setup restart handler.\0A\00", align 1
@poweroff_pctrl = internal unnamed_addr global ptr null, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"drivers/pinctrl/qcom/pinctrl-msm.c\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Unsupported config parameter: %x\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"config %x: %x is invalid\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"msmgpio\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"wakeup-parent\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Failed register gpiochip\0A\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Failed to add pin range\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"invalid list of reserved GPIOs\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"could not read list of GPIOs\0A\00", align 1
@msm_gpio_update_dual_edge_parent.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"dual-edge irq failed to stabilize\0A\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"dual-edge irq failed to stabilize, %#08x != %#08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Failed routing %lu interrupt to Apps proc\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description210, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__ksymtab_msm_pinctrl_dev_pm_ops, ptr @__ksymtab_msm_pinctrl_probe, ptr @__ksymtab_msm_pinctrl_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pinctrl_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_force_sleep(ptr noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pinctrl_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @pinctrl_force_default(ptr noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_pinctrl_probe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 712, i32 noundef 3520) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %234, label %8

8:                                                ; preds = %2
  store ptr %5, ptr %6, align 4
  %9 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 13
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %10, ptr noundef nonnull align 4 dereferenceable(304) @msm_gpio_template, i32 304, i1 false)
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str) #10
  %14 = icmp ne i32 %13, 0
  %15 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 7
  %16 = zext i1 %14 to i8
  store i8 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 8
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %47, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 4
  %27 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef %26) #10
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %27) #10
  %29 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 0
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %44, label %31

31:                                               ; preds = %36, %25
  %32 = phi i32 [ %33, %36 ], [ 0, %25 ]
  %33 = add nuw i32 %32, 1
  %34 = load i32, ptr %22, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr ptr, ptr %37, i32 %33
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef %39) #10
  %41 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %40) #10
  %42 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %33
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %31

44:                                               ; preds = %36, %25
  %45 = phi ptr [ %28, %25 ], [ %41, %36 ]
  %46 = ptrtoint ptr %45 to i32
  br label %234

47:                                               ; preds = %8
  %48 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #10
  %49 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %48) #10
  %50 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 14
  store ptr %49, ptr %50, align 4
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = ptrtoint ptr %49 to i32
  br label %234

54:                                               ; preds = %47
  %55 = load i32, ptr %48, align 4
  %56 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 15
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %54, %31, %21
  %58 = load ptr, ptr %9, align 4
  %59 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %58, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %81, label %67

64:                                               ; preds = %67
  %65 = add nuw i32 %68, 1
  %66 = icmp eq i32 %65, %62
  br i1 %66, label %81, label %67

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %65, %64 ], [ 0, %57 ]
  %69 = getelementptr %struct.msm_function, ptr %60, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(8) @.str.15) #10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %64

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 4
  store ptr @msm_ps_hold_restart, ptr %74, align 4
  %75 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 4, i32 2
  store i32 128, ptr %75, align 4
  %76 = tail call i32 @register_restart_handler(ptr noundef %74) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.16) #11
  br label %80

80:                                               ; preds = %78, %73
  store ptr %6, ptr @poweroff_pctrl, align 4
  store ptr @msm_ps_hold_poweroff, ptr @pm_power_off, align 4
  br label %81

81:                                               ; preds = %80, %64, %57
  %82 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %83 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 6
  store i32 %82, ptr %83, align 4
  %84 = icmp slt i32 %82, 0
  br i1 %84, label %234, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3
  %87 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 6
  store ptr null, ptr %87, align 4
  %88 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 3
  store ptr @msm_pinctrl_ops, ptr %88, align 4
  %89 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 4
  store ptr @msm_pinmux_ops, ptr %89, align 4
  %90 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 5
  store ptr @msm_pinconf_ops, ptr %90, align 4
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load ptr, ptr %5, align 4
  br label %96

96:                                               ; preds = %94, %85
  %97 = phi ptr [ %95, %94 ], [ %92, %85 ]
  store ptr %97, ptr %86, align 4
  %98 = load ptr, ptr %9, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 1
  store ptr %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %98, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 3, i32 2
  store i32 %102, ptr %103, align 4
  %104 = tail call ptr @devm_pinctrl_register(ptr noundef %5, ptr noundef %86, ptr noundef nonnull %6) #10
  %105 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 1
  store ptr %104, ptr %105, align 4
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #11
  %108 = load ptr, ptr %105, align 4
  %109 = ptrtoint ptr %108 to i32
  br label %234

110:                                              ; preds = %96
  %111 = load ptr, ptr %9, align 4
  %112 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %111, i32 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = icmp ugt i32 %113, 300
  br i1 %114, label %115, label %116, !prof !8

115:                                              ; preds = %110
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1258, i32 noundef 9, ptr noundef null) #10
  br label %234

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 19
  store i32 -1, ptr %117, align 4
  %118 = trunc i32 %113 to i16
  %119 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 20
  store i16 %118, ptr %119, align 4
  %120 = load ptr, ptr %6, align 4
  %121 = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load ptr, ptr %120, align 4
  br label %126

126:                                              ; preds = %124, %116
  %127 = phi ptr [ %125, %124 ], [ %122, %116 ]
  store ptr %127, ptr %10, align 4
  %128 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 2
  store ptr %120, ptr %128, align 4
  %129 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 4
  store ptr null, ptr %129, align 4
  %130 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %111, i32 0, i32 10
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = tail call i32 @device_property_read_u16_array(ptr noundef %120, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0) #10
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %126
  %137 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 17
  store ptr @msm_gpio_init_valid_mask, ptr %137, align 4
  br label %138

138:                                              ; preds = %136, %133
  %139 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5
  %140 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 1
  store ptr @.str.20, ptr %140, align 4
  %141 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 4
  store ptr @msm_gpio_irq_enable, ptr %141, align 4
  %142 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 5
  store ptr @msm_gpio_irq_disable, ptr %142, align 4
  %143 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 7
  store ptr @msm_gpio_irq_mask, ptr %143, align 4
  %144 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 9
  store ptr @msm_gpio_irq_unmask, ptr %144, align 4
  %145 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 6
  store ptr @msm_gpio_irq_ack, ptr %145, align 4
  %146 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 13
  store ptr @msm_gpio_irq_set_type, ptr %146, align 4
  %147 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 14
  store ptr @msm_gpio_irq_set_wake, ptr %147, align 4
  %148 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 22
  store ptr @msm_gpio_irq_reqres, ptr %148, align 4
  %149 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 23
  store ptr @msm_gpio_irq_relres, ptr %149, align 4
  %150 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 11
  store ptr @msm_gpio_irq_set_affinity, ptr %150, align 4
  %151 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 28
  store ptr @msm_gpio_irq_set_vcpu_affinity, ptr %151, align 4
  %152 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 33
  store i32 517, ptr %152, align 4
  %153 = load ptr, ptr %6, align 4
  %154 = getelementptr inbounds %struct.device, ptr %153, i32 0, i32 25
  %155 = load ptr, ptr %154, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #10, !annotation !9
  %156 = call i32 @__of_parse_phandle_with_args(ptr noundef %155, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #10
  %157 = icmp ne i32 %156, 0
  %158 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  %159 = icmp eq ptr %158, null
  %160 = select i1 %157, i1 true, i1 %159
  br i1 %160, label %193, label %161

161:                                              ; preds = %138
  %162 = getelementptr inbounds %struct.device_node, ptr %158, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  %163 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %163, i8 0, i64 68, i1 false) #10
  store ptr %162, ptr %3, align 4
  %164 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 9) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  %165 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 4
  store ptr %164, ptr %165, align 4
  call void @of_node_put(ptr noundef nonnull %158) #10
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %234, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 5
  store ptr @msm_gpio_wakeirq, ptr %169, align 4
  %170 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 5, i32 10
  store ptr @irq_chip_eoi_parent, ptr %170, align 4
  %171 = getelementptr inbounds %struct.irq_domain, ptr %166, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = and i32 %172, 65536
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 11
  %177 = load ptr, ptr %9, align 4
  %178 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %177, i32 0, i32 12
  %179 = load i32, ptr %178, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %181, %175
  %182 = phi ptr [ %189, %181 ], [ %177, %175 ]
  %183 = phi i32 [ %188, %181 ], [ 0, %175 ]
  %184 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %182, i32 0, i32 11
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr %struct.msm_gpio_wakeirq_map, ptr %185, i32 %183
  %187 = load i32, ptr %186, align 4
  call void @_set_bit(i32 noundef %187, ptr noundef %176) #10
  %188 = add nuw i32 %183, 1
  %189 = load ptr, ptr %9, align 4
  %190 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %189, i32 0, i32 12
  %191 = load i32, ptr %190, align 4
  %192 = icmp ult i32 %188, %191
  br i1 %192, label %181, label %193

193:                                              ; preds = %181, %175, %168, %138
  %194 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37
  store ptr %139, ptr %194, align 4
  %195 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 13
  store ptr @msm_gpio_irq_handler, ptr %195, align 4
  %196 = load ptr, ptr %6, align 4
  %197 = getelementptr inbounds %struct.device, ptr %196, i32 0, i32 26
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 3
  store ptr %198, ptr %199, align 4
  %200 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 15
  store i32 1, ptr %200, align 4
  %201 = call noalias ptr @devm_kmalloc(ptr noundef %196, i32 noundef 4, i32 noundef 3520) #10
  %202 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 16
  store ptr %201, ptr %202, align 4
  %203 = icmp eq ptr %201, null
  br i1 %203, label %234, label %204

204:                                              ; preds = %193
  %205 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 10
  store i32 0, ptr %205, align 4
  %206 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 2, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %206, align 4
  %207 = load i32, ptr %83, align 4
  store i32 %207, ptr %201, align 4
  %208 = call i32 @gpiochip_add_data_with_key(ptr noundef %10, ptr noundef %6, ptr noundef null, ptr noundef null) #10
  %209 = icmp eq i32 %208, 0
  %210 = load ptr, ptr %6, align 4
  br i1 %209, label %212, label %211

211:                                              ; preds = %204
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.22) #11
  br label %234

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.device, ptr %210, i32 0, i32 25
  %214 = load ptr, ptr %213, align 8
  %215 = call ptr @of_find_property(ptr noundef %214, ptr noundef nonnull @.str.23, ptr noundef null) #10
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %212
  %218 = load ptr, ptr %6, align 4
  %219 = getelementptr inbounds %struct.device, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load ptr, ptr %218, align 4
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %223, %222 ], [ %220, %217 ]
  %226 = load i16, ptr %119, align 4
  %227 = zext i16 %226 to i32
  %228 = call i32 @gpiochip_add_pin_range(ptr noundef %10, ptr noundef %225, i32 noundef 0, i32 noundef 0, i32 noundef %227) #10
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.24) #11
  call void @gpiochip_remove(ptr noundef %10) #10
  br label %234

232:                                              ; preds = %224, %212
  %233 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %233, align 8
  br label %234

234:                                              ; preds = %232, %230, %211, %193, %161, %115, %107, %81, %52, %44, %2
  %235 = phi i32 [ %46, %44 ], [ %109, %107 ], [ 0, %232 ], [ %53, %52 ], [ -12, %2 ], [ %82, %81 ], [ -12, %193 ], [ -517, %161 ], [ %228, %230 ], [ %208, %211 ], [ -22, %115 ]
  ret i32 %235
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_pinctrl_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 4
  %6 = tail call i32 @unregister_restart_handler(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_get_direction(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 10
  %9 = load i64, ptr %8, align 4
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 3
  %12 = getelementptr %struct.msm_pinctrl, ptr %3, i32 0, i32 14, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %18 = load i64, ptr %8, align 4
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 31
  %22 = xor i32 %17, -1
  %23 = lshr i32 %22, %21
  %24 = and i32 %23, 1
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 10
  %11 = load i64, ptr %10, align 4
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 3
  %14 = getelementptr %struct.msm_pinctrl, ptr %3, i32 0, i32 14, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %20 = load i64, ptr %10, align 4
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 31
  %24 = shl nuw i32 1, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %19, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %27 = load i64, ptr %10, align 4
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 3
  %30 = getelementptr %struct.msm_pinctrl, ptr %3, i32 0, i32 14, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %16, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %26) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %11 = getelementptr %struct.msm_pingroup, ptr %8, i32 %1, i32 10
  %12 = load i64, ptr %11, align 4
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 3
  %15 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.msm_pingroup, ptr %8, i32 %1, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %21 = icmp eq i32 %2, 0
  %22 = load i64, ptr %11, align 4
  %23 = lshr i64 %22, 42
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 31
  %26 = shl nuw i32 1, %25
  %27 = or i32 %26, %20
  %28 = xor i32 %26, -1
  %29 = and i32 %20, %28
  %30 = select i1 %21, i32 %29, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %31 = load i64, ptr %11, align 4
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 3
  %34 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %17, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #10, !srcloc !13
  %38 = load i64, ptr %11, align 4
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 3
  %41 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.msm_pingroup, ptr %8, i32 %1, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %47 = load i64, ptr %11, align 4
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 31
  %51 = shl nuw i32 1, %50
  %52 = or i32 %51, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %53 = load i64, ptr %11, align 4
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 3
  %56 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = load i32, ptr %43, align 4
  %59 = getelementptr i8, ptr %57, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %52) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 10
  %9 = load i64, ptr %8, align 4
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 3
  %12 = getelementptr %struct.msm_pinctrl, ptr %3, i32 0, i32 14, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %13, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %18 = load i64, ptr %8, align 4
  %19 = lshr i64 %18, 37
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 31
  %22 = lshr i32 %17, %21
  %23 = and i32 %22, 1
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  %11 = getelementptr %struct.msm_pingroup, ptr %8, i32 %1, i32 10
  %12 = load i64, ptr %11, align 4
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 3
  %15 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.msm_pingroup, ptr %8, i32 %1, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %21 = icmp eq i32 %2, 0
  %22 = load i64, ptr %11, align 4
  %23 = lshr i64 %22, 42
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 31
  %26 = shl nuw i32 1, %25
  %27 = or i32 %26, %20
  %28 = xor i32 %26, -1
  %29 = and i32 %20, %28
  %30 = select i1 %21, i32 %29, i32 %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %31 = load i64, ptr %11, align 4
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 3
  %34 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load i32, ptr %17, align 4
  %37 = getelementptr i8, ptr %35, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %30) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_dbg_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %80, label %6

6:                                                ; preds = %75, %2
  %7 = phi i32 [ %76, %75 ], [ 0, %2 ]
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %1) #10
  %9 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %1, i32 noundef %7) #10
  br i1 %9, label %10, label %75

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.msm_pinctrl, ptr %8, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.msm_pingroup, ptr %14, i32 %7
  %16 = getelementptr %struct.msm_pingroup, ptr %14, i32 %7, i32 10
  %17 = load i64, ptr %16, align 4
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 3
  %20 = getelementptr %struct.msm_pinctrl, ptr %8, i32 0, i32 14, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.msm_pingroup, ptr %14, i32 %7, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %21, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %26 = load i64, ptr %16, align 4
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 3
  %29 = getelementptr %struct.msm_pinctrl, ptr %8, i32 0, i32 14, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr %struct.msm_pingroup, ptr %14, i32 %7, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %35 = load i64, ptr %16, align 4
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %25
  %41 = icmp eq i32 %40, 0
  %42 = trunc i64 %35 to i32
  %43 = lshr i32 %42, 2
  %44 = and i32 %43, 31
  %45 = lshr i32 %25, %44
  %46 = and i32 %45, 7
  %47 = lshr i32 %42, 12
  %48 = and i32 %47, 31
  %49 = lshr i32 %25, %48
  %50 = lshr i32 %42, 7
  %51 = and i32 %50, 31
  %52 = lshr i32 %25, %51
  %53 = and i32 %52, 3
  %54 = select i1 %41, ptr @.str.8, ptr @.str.7
  %55 = select i1 %41, i64 37, i64 42
  %56 = lshr i64 %35, %55
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 31
  %59 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %59, ptr noundef nonnull %54) #10
  %60 = shl nuw i32 1, %58
  %61 = and i32 %60, %34
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %63, i32 noundef %46) #10
  %64 = shl i32 %49, 1
  %65 = and i32 %64, 14
  %66 = add nuw nsw i32 %65, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %66) #10
  %67 = load ptr, ptr %11, align 4
  %68 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %67, i32 0, i32 7
  %69 = load i8, ptr %68, align 4, !range !16
  %70 = icmp eq i8 %69, 0
  %71 = getelementptr [4 x ptr], ptr @msm_gpio_dbg_show_one.pulls_keeper, i32 0, i32 %53
  %72 = getelementptr [3 x ptr], ptr @msm_gpio_dbg_show_one.pulls_no_keeper, i32 0, i32 %53
  %73 = select i1 %70, ptr %71, ptr %72
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %74) #10
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %75

75:                                               ; preds = %10, %6
  %76 = add nuw nsw i32 %7, 1
  %77 = load i16, ptr %3, align 4
  %78 = zext i16 %77 to i32
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %6, label %80

80:                                               ; preds = %75, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ps_hold_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %4 = getelementptr i8, ptr %0, i32 324
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #10, !srcloc !13
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i32 [ 1000, %3 ], [ %9, %7 ]
  %9 = add nsw i32 %8, -1
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %7

12:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_ps_hold_poweroff() #0 {
  %1 = load ptr, ptr @poweroff_pctrl, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %2 = getelementptr %struct.msm_pinctrl, ptr %1, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #10, !srcloc !13
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i32 [ 1000, %0 ], [ %7, %5 ]
  %7 = add nsw i32 %6, -1
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.msm_pinctrl, ptr %2, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msm_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.msm_pingroup, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.msm_pingroup, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.msm_pingroup, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #10
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pinmux_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 2
  %5 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %4, i32 noundef %1) #10
  %6 = select i1 %5, i32 0, i32 -22
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_get_functions_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.msm_pinctrl, ptr %2, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @msm_get_function_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.msm_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.msm_function, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_get_function_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.msm_function, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.msm_function, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 2, i32 37, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %8 = call ptr @__irq_resolve_mapping(ptr noundef %7, i32 noundef %2, ptr noundef nonnull %4) #10
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr %4, align 4
  %11 = select i1 %9, i32 0, i32 %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  %12 = call ptr @irq_get_irq_data(i32 noundef %11) #10
  %13 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %14, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %14, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %14, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.msm_pingroup, ptr %20, i32 %2, i32 10
  %22 = load i64, ptr %21, align 4
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 2
  %25 = and i32 %24, 31
  %26 = shl nsw i32 -1, %25
  %27 = getelementptr %struct.msm_pingroup, ptr %20, i32 %2, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = add i32 %28, -1
  %32 = call i32 @llvm.ctlz.i32(i32 %31, i1 false) #10, !range !18
  %33 = sub nsw i32 %32, %25
  %34 = lshr i32 -1, %33
  %35 = and i32 %34, %26
  br label %41

36:                                               ; preds = %3
  %37 = sub nuw nsw i32 32, %25
  %38 = lshr i32 -1, %37
  %39 = and i32 %38, %26
  %40 = icmp eq i32 %28, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36, %30
  %42 = phi i32 [ %35, %30 ], [ %39, %36 ]
  %43 = getelementptr %struct.msm_pingroup, ptr %20, i32 %2, i32 3
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %50, %41
  %46 = phi i32 [ 0, %41 ], [ %51, %50 ]
  %47 = getelementptr i32, ptr %44, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = add nuw i32 %46, 1
  %52 = icmp eq i32 %51, %28
  br i1 %52, label %57, label %45

53:                                               ; preds = %45, %36
  %54 = phi i32 [ %39, %36 ], [ %42, %45 ]
  %55 = phi i32 [ 0, %36 ], [ %46, %45 ]
  %56 = icmp eq i32 %55, %28
  br i1 %56, label %57, label %58, !prof !8

57:                                               ; preds = %53, %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 202, i32 noundef 9, ptr noundef null) #10
  br label %168

58:                                               ; preds = %53
  %59 = icmp eq ptr %12, null
  %60 = icmp eq i32 %55, %16
  %61 = select i1 %59, i1 true, i1 %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 12
  %66 = call i32 @_test_and_set_bit(i32 noundef %64, ptr noundef %65) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  call void @disable_irq(i32 noundef %11) #10
  br label %69

69:                                               ; preds = %68, %62, %58
  %70 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 8
  %71 = call i32 @_raw_spin_lock_irqsave(ptr noundef %70) #10
  %72 = load i64, ptr %21, align 4
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 3
  %75 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr %struct.msm_pingroup, ptr %20, i32 %2, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %76, i32 %78
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #10, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %81 = icmp eq i32 %18, 0
  %82 = xor i1 %81, true
  %83 = icmp eq i32 %55, %18
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %98

85:                                               ; preds = %69
  %86 = load i64, ptr %21, align 4
  %87 = trunc i64 %86 to i32
  %88 = lshr i32 %87, 27
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %80
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %85
  %93 = lshr i32 %87, 22
  %94 = and i32 %93, 31
  %95 = shl nuw i32 1, %94
  %96 = xor i32 %95, -1
  %97 = and i32 %80, %96
  br label %117

98:                                               ; preds = %69
  %99 = xor i32 %54, -1
  %100 = and i32 %80, %99
  %101 = load i64, ptr %21, align 4
  %102 = trunc i64 %101 to i32
  %103 = lshr i32 %102, 2
  %104 = and i32 %103, 31
  %105 = shl i32 %55, %104
  %106 = or i32 %105, %100
  br i1 %81, label %117, label %107

107:                                              ; preds = %98
  %108 = lshr i32 %102, 27
  %109 = shl nuw i32 1, %108
  %110 = and i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = lshr i32 %102, 22
  %114 = and i32 %113, 31
  %115 = shl nuw i32 1, %114
  %116 = or i32 %106, %115
  br label %117

117:                                              ; preds = %112, %107, %98, %92, %85
  %118 = phi i32 [ %97, %92 ], [ %80, %85 ], [ %116, %112 ], [ %106, %107 ], [ %106, %98 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  call void @arm_heavy_mb() #10
  %119 = load i64, ptr %21, align 4
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 3
  %122 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %121
  %123 = load ptr, ptr %122, align 4
  %124 = load i32, ptr %77, align 4
  %125 = getelementptr i8, ptr %123, i32 %124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 %118) #10, !srcloc !13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %70, i32 noundef %71) #10
  %126 = xor i1 %59, true
  %127 = select i1 %126, i1 %60, i1 false
  br i1 %127, label %128, label %168

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 12
  %132 = call i32 @_test_and_clear_bit(i32 noundef %130, ptr noundef %131) #10
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %168, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.irq_data, ptr %12, i32 0, i32 6
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %150, label %138

138:                                              ; preds = %134
  %139 = load i32, ptr %129, align 4
  %140 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 11
  %141 = lshr i32 %139, 5
  %142 = getelementptr i32, ptr %140, i32 %141
  %143 = load volatile i32, ptr %142, align 4
  %144 = and i32 %139, 31
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %138
  %149 = call i32 @irq_chip_set_parent_state(ptr noundef nonnull %12, i32 noundef 0, i1 noundef zeroext false) #10
  br label %167

150:                                              ; preds = %138, %134
  %151 = load i64, ptr %21, align 4
  %152 = and i64 %151, 144115188075855872
  %153 = icmp eq i64 %152, 0
  %154 = lshr i64 %151, 52
  %155 = trunc i64 %154 to i32
  %156 = and i32 %155, 31
  %157 = shl nuw i32 1, %156
  %158 = select i1 %153, i32 0, i32 %157
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  call void @arm_heavy_mb() #10
  %159 = load i64, ptr %21, align 4
  %160 = trunc i64 %159 to i32
  %161 = and i32 %160, 3
  %162 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %161
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr %struct.msm_pingroup, ptr %20, i32 %2, i32 8
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr i8, ptr %163, i32 %165
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 %158) #10, !srcloc !13
  br label %167

167:                                              ; preds = %150, %148
  call void @enable_irq(i32 noundef %11) #10
  br label %168

168:                                              ; preds = %167, %128, %117, %57
  %169 = phi i32 [ -22, %57 ], [ 0, %167 ], [ 0, %128 ], [ 0, %117 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pinmux_request_gpio(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.msm_pingroup, ptr %8, i32 %2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.msm_pingroup, ptr %8, i32 %2, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @msm_pinmux_set_mux(ptr noundef %0, i32 noundef %18, i32 noundef %2)
  br label %20

20:                                               ; preds = %12, %3
  %21 = phi i32 [ %19, %12 ], [ 0, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_config_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = trunc i32 %5 to i8
  switch i8 %11, label %96 [
    i8 1, label %12
    i8 3, label %12
    i8 0, label %12
    i8 5, label %12
    i8 6, label %17
    i8 9, label %22
    i8 17, label %27
    i8 12, label %27
  ]

12:                                               ; preds = %3, %3, %3, %3
  %13 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 10
  %14 = load i64, ptr %13, align 4
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 7
  br label %33

17:                                               ; preds = %3
  %18 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 10
  %19 = load i64, ptr %18, align 4
  %20 = trunc i64 %19 to i32
  %21 = lshr i32 %20, 17
  br label %33

22:                                               ; preds = %3
  %23 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 10
  %24 = load i64, ptr %23, align 4
  %25 = trunc i64 %24 to i32
  %26 = lshr i32 %25, 12
  br label %33

27:                                               ; preds = %3, %3
  %28 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 10
  %29 = load i64, ptr %28, align 4
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = trunc i64 %29 to i32
  br label %33

33:                                               ; preds = %27, %22, %17, %12
  %34 = phi i32 [ %32, %27 ], [ %25, %22 ], [ %20, %17 ], [ %15, %12 ]
  %35 = phi i32 [ %31, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %12 ]
  %36 = phi i32 [ 1, %27 ], [ 7, %22 ], [ 1, %17 ], [ 3, %12 ]
  %37 = and i32 %35, 31
  %38 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 10
  %39 = and i32 %34, 3
  %40 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i8, ptr %41, i32 %43
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %46 = lshr i32 %45, %37
  %47 = and i32 %46, %36
  switch i8 %11, label %96 [
    i8 1, label %48
    i8 3, label %50
    i8 0, label %52
    i8 5, label %59
    i8 6, label %67
    i8 9, label %69
    i8 17, label %72
    i8 12, label %90
  ]

48:                                               ; preds = %33
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %92, label %96

50:                                               ; preds = %33
  %51 = icmp eq i32 %47, 1
  br i1 %51, label %92, label %96

52:                                               ; preds = %33
  %53 = load ptr, ptr %7, align 4
  %54 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %53, i32 0, i32 7
  %55 = load i8, ptr %54, align 4, !range !16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = icmp eq i32 %47, 2
  br i1 %58, label %92, label %96

59:                                               ; preds = %33
  %60 = load ptr, ptr %7, align 4
  %61 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %60, i32 0, i32 7
  %62 = load i8, ptr %61, align 4, !range !16
  %63 = icmp eq i8 %62, 0
  %64 = icmp eq i32 %47, 2
  %65 = icmp eq i32 %47, 3
  %66 = select i1 %63, i1 %65, i1 %64
  br i1 %66, label %92, label %96

67:                                               ; preds = %33
  %68 = icmp eq i32 %47, 0
  br i1 %68, label %96, label %92

69:                                               ; preds = %33
  %70 = shl nuw nsw i32 %47, 1
  %71 = add nuw nsw i32 %70, 2
  br label %92

72:                                               ; preds = %33
  %73 = icmp eq i32 %47, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %72
  %75 = load i64, ptr %38, align 4
  %76 = trunc i64 %75 to i32
  %77 = and i32 %76, 3
  %78 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %77
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr %struct.msm_pingroup, ptr %10, i32 %1, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %84 = load i64, ptr %38, align 4
  %85 = lshr i64 %84, 37
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 31
  %88 = lshr i32 %83, %87
  %89 = and i32 %88, 1
  br label %92

90:                                               ; preds = %33
  %91 = icmp eq i32 %47, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %90, %74, %69, %67, %59, %57, %50, %48
  %93 = phi i32 [ %89, %74 ], [ %71, %69 ], [ 1, %59 ], [ 1, %48 ], [ 1, %50 ], [ 1, %57 ], [ 1, %67 ], [ 1, %90 ]
  %94 = shl nuw nsw i32 %93, 8
  %95 = or i32 %94, %6
  store i32 %95, ptr %2, align 4
  br label %96

96:                                               ; preds = %92, %90, %72, %67, %59, %57, %52, %50, %48, %33, %3
  %97 = phi i32 [ 0, %92 ], [ -22, %48 ], [ -22, %50 ], [ -524, %52 ], [ -22, %57 ], [ -22, %59 ], [ -22, %67 ], [ -22, %72 ], [ -22, %90 ], [ -524, %33 ], [ -524, %3 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_config_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #10
  %6 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 13
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %126, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.msm_pingroup, ptr %11, i32 %1, i32 10
  %13 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 8
  %14 = getelementptr %struct.msm_pingroup, ptr %11, i32 %1, i32 6
  %15 = getelementptr %struct.msm_pingroup, ptr %11, i32 %1, i32 5
  br label %16

16:                                               ; preds = %101, %8
  %17 = phi i32 [ 0, %8 ], [ %124, %101 ]
  %18 = getelementptr i32, ptr %2, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  switch i8 %20, label %126 [
    i8 1, label %21
    i8 3, label %21
    i8 0, label %21
    i8 5, label %21
    i8 6, label %25
    i8 9, label %29
    i8 17, label %39
    i8 12, label %39
  ]

21:                                               ; preds = %16, %16, %16, %16
  %22 = load i64, ptr %12, align 4
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %23, 7
  br label %43

25:                                               ; preds = %16
  %26 = load i64, ptr %12, align 4
  %27 = trunc i64 %26 to i32
  %28 = lshr i32 %27, 17
  br label %91

29:                                               ; preds = %16
  %30 = lshr i32 %19, 8
  %31 = load i64, ptr %12, align 4
  %32 = trunc i64 %31 to i32
  %33 = lshr i32 %32, 12
  %34 = add nsw i32 %30, -2
  %35 = icmp ult i32 %34, 15
  %36 = and i32 %19, 256
  %37 = icmp eq i32 %36, 0
  %38 = and i1 %37, %35
  br i1 %38, label %58, label %91

39:                                               ; preds = %16, %16
  %40 = load i64, ptr %12, align 4
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %39, %21
  %44 = phi i32 [ %24, %21 ], [ %42, %39 ]
  %45 = phi i32 [ 3, %21 ], [ 1, %39 ]
  switch i8 %20, label %88 [
    i8 1, label %91
    i8 3, label %46
    i8 0, label %47
    i8 5, label %52
    i8 12, label %91
    i8 17, label %61
  ]

46:                                               ; preds = %43
  br label %91

47:                                               ; preds = %43
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %48, i32 0, i32 7
  %50 = load i8, ptr %49, align 4, !range !16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %91, label %126

52:                                               ; preds = %43
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %53, i32 0, i32 7
  %55 = load i8, ptr %54, align 4, !range !16
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 3, i32 2
  br label %91

58:                                               ; preds = %29
  %59 = lshr i32 %19, 9
  %60 = add nsw i32 %59, -1
  br label %91

61:                                               ; preds = %43
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #10
  %63 = load i64, ptr %12, align 4
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 3
  %66 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %14, align 4
  %69 = getelementptr i8, ptr %67, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %71 = icmp ult i32 %19, 256
  %72 = load i64, ptr %12, align 4
  %73 = lshr i64 %72, 42
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 31
  %76 = shl nuw i32 1, %75
  %77 = or i32 %76, %70
  %78 = xor i32 %76, -1
  %79 = and i32 %70, %78
  %80 = select i1 %71, i32 %79, i32 %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %81 = load i64, ptr %12, align 4
  %82 = trunc i64 %81 to i32
  %83 = and i32 %82, 3
  %84 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %83
  %85 = load ptr, ptr %84, align 4
  %86 = load i32, ptr %14, align 4
  %87 = getelementptr i8, ptr %85, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %80) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %62) #10
  br label %91

88:                                               ; preds = %43
  %89 = and i32 %19, 255
  %90 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.18, i32 noundef %89) #11
  br label %126

91:                                               ; preds = %61, %58, %52, %47, %46, %43, %43, %29, %25
  %92 = phi i32 [ %44, %61 ], [ %33, %58 ], [ %28, %25 ], [ %44, %46 ], [ %44, %43 ], [ %44, %47 ], [ %44, %52 ], [ %33, %29 ], [ %44, %43 ]
  %93 = phi i32 [ %45, %61 ], [ 7, %58 ], [ 1, %25 ], [ %45, %46 ], [ %45, %43 ], [ %45, %47 ], [ %45, %52 ], [ 7, %29 ], [ %45, %43 ]
  %94 = phi i32 [ 1, %61 ], [ %60, %58 ], [ 1, %25 ], [ 1, %46 ], [ 0, %43 ], [ 2, %47 ], [ %57, %52 ], [ -1, %29 ], [ 0, %43 ]
  %95 = xor i32 %93, -1
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %91
  %99 = and i32 %19, 255
  %100 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.19, i32 noundef %99, i32 noundef %94) #11
  br label %126

101:                                              ; preds = %91
  %102 = and i32 %92, 31
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #10
  %104 = load i64, ptr %12, align 4
  %105 = trunc i64 %104 to i32
  %106 = and i32 %105, 3
  %107 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = load i32, ptr %15, align 4
  %110 = getelementptr i8, ptr %108, i32 %109
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %112 = shl i32 %93, %102
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = shl i32 %94, %102
  %116 = or i32 %114, %115
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %117 = load i64, ptr %12, align 4
  %118 = trunc i64 %117 to i32
  %119 = and i32 %118, 3
  %120 = getelementptr %struct.msm_pinctrl, ptr %5, i32 0, i32 14, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = load i32, ptr %15, align 4
  %123 = getelementptr i8, ptr %121, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %116) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %103) #10
  %124 = add nuw i32 %17, 1
  %125 = icmp eq i32 %124, %3
  br i1 %125, label %126, label %16

126:                                              ; preds = %101, %98, %88, %47, %16, %4
  %127 = phi i32 [ -22, %88 ], [ -22, %98 ], [ 0, %4 ], [ -524, %47 ], [ 0, %101 ], [ -524, %16 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_init_valid_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = add i32 %2, 31
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 -1, i32 %13, i1 false) #10
  %14 = load i32, ptr %8, align 4
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %58

16:                                               ; preds = %24, %10
  %17 = phi i32 [ %27, %24 ], [ %14, %10 ]
  %18 = phi i32 [ %25, %24 ], [ 0, %10 ]
  %19 = icmp ult i32 %18, %2
  %20 = icmp ult i32 %17, %2
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.26) #11
  br label %58

24:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef %17, ptr noundef %1) #10
  %25 = add nuw i32 %18, 1
  %26 = getelementptr i32, ptr %8, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %16, label %58

29:                                               ; preds = %3
  %30 = load ptr, ptr %4, align 4
  %31 = tail call i32 @device_property_read_u16_array(ptr noundef %30, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0) #10
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %58, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %2
  br i1 %34, label %58, label %35

35:                                               ; preds = %33
  %36 = shl nuw i32 %31, 1
  %37 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 4
  %41 = tail call i32 @device_property_read_u16_array(ptr noundef %40, ptr noundef nonnull @.str.25, ptr noundef nonnull %37, i32 noundef %31) #10
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.27) #11
  br label %57

45:                                               ; preds = %39
  %46 = add i32 %2, 31
  %47 = lshr i32 %46, 3
  %48 = and i32 %47, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 0, i32 %48, i1 false) #10
  %49 = icmp eq i32 %31, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %55, %50 ], [ 0, %45 ]
  %52 = getelementptr i16, ptr %37, i32 %51
  %53 = load i16, ptr %52, align 2
  %54 = zext i16 %53 to i32
  tail call void @_set_bit(i32 noundef %54, ptr noundef %1) #10
  %55 = add nuw i32 %51, 1
  %56 = icmp eq i32 %55, %31
  br i1 %56, label %57, label %50

57:                                               ; preds = %50, %45, %43
  tail call void @kfree(ptr noundef nonnull %37) #10
  br label %58

58:                                               ; preds = %57, %35, %33, %29, %24, %22, %10
  %59 = phi i32 [ -22, %22 ], [ %41, %57 ], [ 0, %29 ], [ -22, %33 ], [ -12, %35 ], [ 0, %10 ], [ 0, %24 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @irq_chip_enable_parent(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @msm_gpio_irq_unmask(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @irq_chip_disable_parent(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @msm_gpio_irq_mask(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_mask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @irq_chip_mask_parent(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 8
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 10
  %28 = load i64, ptr %27, align 4
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 3
  %31 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %37 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %20
  %43 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = lshr i32 %44, 5
  %46 = and i32 %45, 31
  %47 = shl nuw i32 1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %36, %48
  br label %50

50:                                               ; preds = %42, %20
  %51 = phi i32 [ %49, %42 ], [ %36, %20 ]
  %52 = load i64, ptr %27, align 4
  %53 = lshr i64 %52, 47
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 31
  %56 = shl nuw i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %51, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %59 = load i64, ptr %27, align 4
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 3
  %62 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %61
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %33, align 4
  %65 = getelementptr i8, ptr %63, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %58) #10, !srcloc !13
  %66 = load i32, ptr %10, align 4
  %67 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %66, ptr noundef %67) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  br label %68

68:                                               ; preds = %50, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_unmask(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 8
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #10
  %27 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 10
  %28 = load i64, ptr %27, align 4
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 3
  %31 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr i8, ptr %32, i32 %34
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %37 = getelementptr %struct.msm_pingroup, ptr %24, i32 %11, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 5
  %40 = and i32 %39, 31
  %41 = shl nuw i32 1, %40
  %42 = or i32 %41, %36
  %43 = load i64, ptr %27, align 4
  %44 = lshr i64 %43, 47
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 31
  %47 = shl nuw i32 1, %46
  %48 = or i32 %42, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %49 = load i64, ptr %27, align 4
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 3
  %52 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %51
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %33, align 4
  %55 = getelementptr i8, ptr %53, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %48) #10, !srcloc !13
  %56 = load i32, ptr %10, align 4
  %57 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %56, ptr noundef %57) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #10
  br label %58

58:                                               ; preds = %20, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_ack(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 11
  %8 = lshr i32 %6, 5
  %9 = getelementptr i32, ptr %7, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %6, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 9
  %17 = getelementptr i32, ptr %16, i32 %8
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, %12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %15
  tail call fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %0)
  br label %58

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 8
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %27) #10
  %29 = getelementptr %struct.msm_pingroup, ptr %26, i32 %6, i32 10
  %30 = load i64, ptr %29, align 4
  %31 = and i64 %30, 144115188075855872
  %32 = icmp eq i64 %31, 0
  %33 = lshr i64 %30, 52
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 31
  %36 = shl nuw i32 1, %35
  %37 = select i1 %32, i32 0, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %38 = load i64, ptr %29, align 4
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 3
  %41 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.msm_pingroup, ptr %26, i32 %6, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %37) #10, !srcloc !13
  %46 = load i32, ptr %5, align 4
  %47 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 9
  %48 = lshr i32 %46, 5
  %49 = getelementptr i32, ptr %47, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %46, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %22
  %56 = getelementptr %struct.msm_pingroup, ptr %26, i32 %6
  tail call fastcc void @msm_gpio_update_dual_edge_pos(ptr noundef %4, ptr noundef %56)
  br label %57

57:                                               ; preds = %55, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %28) #10
  br label %58

58:                                               ; preds = %57, %21, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_type(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  %7 = load ptr, ptr %4, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #10
  %9 = icmp eq i32 %1, 3
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msm_pinctrl, ptr %8, i32 0, i32 13
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %12, i32 0, i32 13
  %14 = load i8, ptr %13, align 4, !range !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_pinctrl, ptr %8, i32 0, i32 11
  %24 = lshr i32 %22, 5
  %25 = getelementptr i32, ptr %23, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %22, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %22, ptr noundef %32) #10
  %33 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.irq_desc, ptr %34, i32 0, i32 3
  store ptr @handle_fasteoi_ack_irq, ptr %35, align 4
  tail call fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %0)
  br label %303

36:                                               ; preds = %20, %16, %10, %2
  %37 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %1) #10
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 11
  %46 = lshr i32 %44, 5
  %47 = getelementptr i32, ptr %45, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %44, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %44, ptr noundef %54) #10
  %55 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.irq_desc, ptr %56, i32 0, i32 3
  store ptr @handle_fasteoi_irq, ptr %57, align 4
  br label %303

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44
  %64 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 8
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #10
  %66 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 11
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 32505856
  %69 = icmp eq i32 %68, 1048576
  %70 = and i1 %9, %69
  %71 = load i32, ptr %43, align 4
  %72 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 9
  br i1 %70, label %73, label %74

73:                                               ; preds = %58
  tail call void @_set_bit(i32 noundef %71, ptr noundef %72) #10
  br label %75

74:                                               ; preds = %58
  tail call void @_clear_bit(i32 noundef %71, ptr noundef %72) #10
  br label %75

75:                                               ; preds = %74, %73
  %76 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 7
  %77 = load i8, ptr %76, align 4, !range !16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 15
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 9
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %81
  %85 = call i32 @qcom_scm_io_readl(i32 noundef %84, ptr noundef nonnull %3) #10
  %86 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 10
  %87 = load i64, ptr %86, align 4
  %88 = lshr i64 %87, 58
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 31
  %91 = shl i32 7, %90
  %92 = xor i32 %91, -1
  %93 = load i32, ptr %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, ptr %3, align 4
  %95 = load i32, ptr %66, align 4
  %96 = and i32 %95, 31
  %97 = shl i32 %96, %90
  %98 = or i32 %94, %97
  store i32 %98, ptr %3, align 4
  %99 = call i32 @qcom_scm_io_writel(i32 noundef %84, i32 noundef %98) #10
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %79
  %102 = load ptr, ptr %6, align 4
  %103 = load i32, ptr %43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.30, i32 noundef %103) #11
  br label %133

104:                                              ; preds = %75
  %105 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 10
  %106 = load i64, ptr %105, align 4
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 3
  %109 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %108
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 9
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i8, ptr %110, i32 %112
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !22
  %115 = load i64, ptr %105, align 4
  %116 = lshr i64 %115, 58
  %117 = trunc i64 %116 to i32
  %118 = and i32 %117, 31
  %119 = shl i32 7, %118
  %120 = xor i32 %119, -1
  %121 = and i32 %114, %120
  store i32 %121, ptr %3, align 4
  %122 = load i32, ptr %66, align 4
  %123 = and i32 %122, 31
  %124 = shl i32 %123, %118
  %125 = or i32 %121, %124
  store i32 %125, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %126 = load i64, ptr %105, align 4
  %127 = trunc i64 %126 to i32
  %128 = and i32 %127, 3
  %129 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %111, align 4
  %132 = getelementptr i8, ptr %130, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %125) #10, !srcloc !13
  br label %133

133:                                              ; preds = %104, %101, %79
  %134 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 10
  %135 = load i64, ptr %134, align 4
  %136 = trunc i64 %135 to i32
  %137 = and i32 %136, 3
  %138 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr i8, ptr %139, i32 %141
  %143 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #10, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  store i32 %143, ptr %3, align 4
  %144 = load i32, ptr %66, align 4
  %145 = lshr i32 %144, 5
  %146 = and i32 %145, 31
  %147 = shl nuw i32 1, %146
  %148 = and i32 %147, %143
  %149 = icmp eq i32 %148, 0
  %150 = or i32 %147, %143
  store i32 %150, ptr %3, align 4
  %151 = load i32, ptr %66, align 4
  %152 = lshr i32 %151, 20
  %153 = and i32 %152, 31
  switch i32 %153, label %251 [
    i32 2, label %154
    i32 1, label %205
  ]

154:                                              ; preds = %133
  %155 = lshr i32 %151, 15
  %156 = and i32 %155, 31
  %157 = shl i32 3, %156
  %158 = xor i32 %157, -1
  %159 = and i32 %150, %158
  store i32 %159, ptr %3, align 4
  %160 = load i32, ptr %66, align 4
  %161 = lshr i32 %160, 10
  %162 = and i32 %161, 31
  %163 = shl nuw i32 1, %162
  %164 = xor i32 %163, -1
  %165 = and i32 %159, %164
  store i32 %165, ptr %3, align 4
  switch i32 %1, label %252 [
    i32 1, label %166
    i32 2, label %177
    i32 3, label %188
    i32 4, label %199
  ]

166:                                              ; preds = %154
  %167 = load i32, ptr %66, align 4
  %168 = lshr i32 %167, 15
  %169 = and i32 %168, 31
  %170 = shl nuw i32 1, %169
  %171 = or i32 %170, %165
  store i32 %171, ptr %3, align 4
  %172 = load i32, ptr %66, align 4
  %173 = lshr i32 %172, 10
  %174 = and i32 %173, 31
  %175 = shl nuw i32 1, %174
  %176 = or i32 %175, %171
  store i32 %176, ptr %3, align 4
  br label %252

177:                                              ; preds = %154
  %178 = load i32, ptr %66, align 4
  %179 = lshr i32 %178, 15
  %180 = and i32 %179, 31
  %181 = shl i32 2, %180
  %182 = or i32 %181, %165
  store i32 %182, ptr %3, align 4
  %183 = load i32, ptr %66, align 4
  %184 = lshr i32 %183, 10
  %185 = and i32 %184, 31
  %186 = shl nuw i32 1, %185
  %187 = or i32 %186, %182
  store i32 %187, ptr %3, align 4
  br label %252

188:                                              ; preds = %154
  %189 = load i32, ptr %66, align 4
  %190 = lshr i32 %189, 15
  %191 = and i32 %190, 31
  %192 = shl i32 3, %191
  %193 = or i32 %192, %165
  store i32 %193, ptr %3, align 4
  %194 = load i32, ptr %66, align 4
  %195 = lshr i32 %194, 10
  %196 = and i32 %195, 31
  %197 = shl nuw i32 1, %196
  %198 = or i32 %197, %193
  store i32 %198, ptr %3, align 4
  br label %252

199:                                              ; preds = %154
  %200 = load i32, ptr %66, align 4
  %201 = lshr i32 %200, 10
  %202 = and i32 %201, 31
  %203 = shl nuw i32 1, %202
  %204 = or i32 %203, %165
  store i32 %204, ptr %3, align 4
  br label %252

205:                                              ; preds = %133
  %206 = lshr i32 %151, 15
  %207 = and i32 %206, 31
  %208 = shl nuw i32 1, %207
  %209 = xor i32 %208, -1
  %210 = and i32 %150, %209
  store i32 %210, ptr %3, align 4
  %211 = load i32, ptr %66, align 4
  %212 = lshr i32 %211, 10
  %213 = and i32 %212, 31
  %214 = shl nuw i32 1, %213
  %215 = xor i32 %214, -1
  %216 = and i32 %210, %215
  store i32 %216, ptr %3, align 4
  switch i32 %1, label %252 [
    i32 1, label %217
    i32 2, label %228
    i32 3, label %234
    i32 4, label %245
  ]

217:                                              ; preds = %205
  %218 = load i32, ptr %66, align 4
  %219 = lshr i32 %218, 15
  %220 = and i32 %219, 31
  %221 = shl nuw i32 1, %220
  %222 = or i32 %221, %216
  store i32 %222, ptr %3, align 4
  %223 = load i32, ptr %66, align 4
  %224 = lshr i32 %223, 10
  %225 = and i32 %224, 31
  %226 = shl nuw i32 1, %225
  %227 = or i32 %226, %222
  store i32 %227, ptr %3, align 4
  br label %252

228:                                              ; preds = %205
  %229 = load i32, ptr %66, align 4
  %230 = lshr i32 %229, 15
  %231 = and i32 %230, 31
  %232 = shl nuw i32 1, %231
  %233 = or i32 %232, %216
  store i32 %233, ptr %3, align 4
  br label %252

234:                                              ; preds = %205
  %235 = load i32, ptr %66, align 4
  %236 = lshr i32 %235, 15
  %237 = and i32 %236, 31
  %238 = shl nuw i32 1, %237
  %239 = or i32 %238, %216
  store i32 %239, ptr %3, align 4
  %240 = load i32, ptr %66, align 4
  %241 = lshr i32 %240, 10
  %242 = and i32 %241, 31
  %243 = shl nuw i32 1, %242
  %244 = or i32 %243, %239
  store i32 %244, ptr %3, align 4
  br label %252

245:                                              ; preds = %205
  %246 = load i32, ptr %66, align 4
  %247 = lshr i32 %246, 10
  %248 = and i32 %247, 31
  %249 = shl nuw i32 1, %248
  %250 = or i32 %249, %216
  store i32 %250, ptr %3, align 4
  br label %252

251:                                              ; preds = %133
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/qcom/pinctrl-msm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1077, 0\0A.popsection", ""() #10, !srcloc !24
  unreachable

252:                                              ; preds = %245, %234, %228, %217, %205, %199, %188, %177, %166, %154
  %253 = phi i32 [ %216, %205 ], [ %250, %245 ], [ %244, %234 ], [ %233, %228 ], [ %227, %217 ], [ %176, %166 ], [ %187, %177 ], [ %198, %188 ], [ %204, %199 ], [ %165, %154 ]
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  call void @arm_heavy_mb() #10
  %254 = load i64, ptr %134, align 4
  %255 = trunc i64 %254 to i32
  %256 = and i32 %255, 3
  %257 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %256
  %258 = load ptr, ptr %257, align 4
  %259 = load i32, ptr %140, align 4
  %260 = getelementptr i8, ptr %258, i32 %259
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 %253) #10, !srcloc !13
  br i1 %149, label %261, label %278

261:                                              ; preds = %252
  %262 = load i64, ptr %134, align 4
  %263 = and i64 %262, 144115188075855872
  %264 = icmp eq i64 %263, 0
  %265 = lshr i64 %262, 52
  %266 = trunc i64 %265 to i32
  %267 = and i32 %266, 31
  %268 = shl nuw i32 1, %267
  %269 = select i1 %264, i32 0, i32 %268
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  call void @arm_heavy_mb() #10
  %270 = load i64, ptr %134, align 4
  %271 = trunc i64 %270 to i32
  %272 = and i32 %271, 3
  %273 = getelementptr %struct.msm_pinctrl, ptr %6, i32 0, i32 14, i32 %272
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr %struct.msm_pingroup, ptr %62, i32 %44, i32 8
  %276 = load i32, ptr %275, align 4
  %277 = getelementptr i8, ptr %274, i32 %276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %269) #10, !srcloc !13
  br label %278

278:                                              ; preds = %261, %252
  %279 = load i32, ptr %43, align 4
  %280 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 9
  %281 = lshr i32 %279, 5
  %282 = getelementptr i32, ptr %280, i32 %281
  %283 = load volatile i32, ptr %282, align 4
  %284 = and i32 %279, 31
  %285 = shl nuw i32 1, %284
  %286 = and i32 %285, %283
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %278
  call fastcc void @msm_gpio_update_dual_edge_pos(ptr noundef %6, ptr noundef %63)
  br label %289

289:                                              ; preds = %288, %278
  call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #10
  %290 = and i32 %1, 12
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %296, label %292

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.irq_desc, ptr %294, i32 0, i32 3
  store ptr @handle_level_irq, ptr %295, align 4
  br label %303

296:                                              ; preds = %289
  %297 = and i32 %1, 3
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %301 = load ptr, ptr %300, align 4
  %302 = getelementptr inbounds %struct.irq_desc, ptr %301, i32 0, i32 3
  store ptr @handle_edge_irq, ptr %302, align 4
  br label %303

303:                                              ; preds = %299, %296, %292, %53, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_wake(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call i32 @irq_chip_set_wake_parent(ptr noundef %0, i32 noundef %1) #10
  br label %26

22:                                               ; preds = %9, %2
  %23 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @irq_set_irq_wake(i32 noundef %24, i32 noundef %1) #10
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi i32 [ %21, %20 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_reqres(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #10
  br i1 %7, label %8, label %76

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %10) #10
  %14 = getelementptr inbounds %struct.msm_pinctrl, ptr %13, i32 0, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.msm_pingroup, ptr %17, i32 %12, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %8
  %22 = getelementptr %struct.msm_pingroup, ptr %17, i32 %12, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %15, i32 0, i32 14
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %23, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @msm_pinmux_set_mux(ptr noundef %10, i32 noundef %27, i32 noundef %12) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %21, %8
  %31 = load i32, ptr %11, align 4
  %32 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %33 = getelementptr inbounds %struct.msm_pinctrl, ptr %32, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.msm_pinctrl, ptr %32, i32 0, i32 8
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #10
  %39 = getelementptr %struct.msm_pingroup, ptr %36, i32 %31, i32 10
  %40 = load i64, ptr %39, align 4
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 3
  %43 = getelementptr %struct.msm_pinctrl, ptr %32, i32 0, i32 14, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr %struct.msm_pingroup, ptr %36, i32 %31, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %44, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %49 = load i64, ptr %39, align 4
  %50 = lshr i64 %49, 32
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 31
  %53 = shl nuw i32 1, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %48, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %56 = load i64, ptr %39, align 4
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 3
  %59 = getelementptr %struct.msm_pinctrl, ptr %32, i32 0, i32 14, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %45, align 4
  %62 = getelementptr i8, ptr %60, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %55) #10, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #10
  %63 = load i32, ptr %11, align 4
  %64 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %3, i32 noundef %63) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %30
  %67 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.31, i32 noundef %69) #11
  br label %73

70:                                               ; preds = %30
  %71 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  tail call void @irq_modify_status(i32 noundef %72, i32 noundef 0, i32 noundef 524288) #10
  br label %76

73:                                               ; preds = %66, %21
  %74 = phi i32 [ %28, %21 ], [ -22, %66 ]
  %75 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %75) #10
  br label %76

76:                                               ; preds = %73, %70, %1
  %77 = phi i32 [ %74, %73 ], [ 0, %70 ], [ -19, %1 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_relres(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %3, i32 noundef %5) #10
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @module_put(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_affinity(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 11
  %14 = lshr i32 %12, 5
  %15 = getelementptr i32, ptr %13, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %12, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #10
  br label %23

23:                                               ; preds = %21, %10, %3
  %24 = phi i32 [ %22, %21 ], [ 0, %10 ], [ 0, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_vcpu_affinity(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.msm_pinctrl, ptr %5, i32 0, i32 11
  %13 = lshr i32 %11, 5
  %14 = getelementptr i32, ptr %12, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %11, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %9
  %21 = tail call i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef %0, ptr noundef %1) #10
  br label %22

22:                                               ; preds = %20, %9, %2
  %23 = phi i32 [ %21, %20 ], [ 0, %9 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpio_wakeirq(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #10
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %4, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %8, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %23, %12
  %16 = phi i32 [ 0, %12 ], [ %24, %23 ]
  %17 = getelementptr %struct.msm_gpio_wakeirq_map, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr %struct.msm_gpio_wakeirq_map, ptr %14, i32 %16, i32 1
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %3, align 4
  br label %26

23:                                               ; preds = %15
  %24 = add nuw i32 %16, 1
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %15

26:                                               ; preds = %23, %20, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpio_irq_handler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #10
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #10
  %20 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #10
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 10
  %26 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 2, i32 20
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = tail call i32 @_find_next_bit_le(ptr noundef %25, i32 noundef %28, i32 noundef 0) #10
  %30 = load i16, ptr %26, align 4
  %31 = zext i16 %30 to i32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %35 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 37, i32 1
  br label %36

36:                                               ; preds = %63, %33
  %37 = phi i32 [ %29, %33 ], [ %68, %63 ]
  %38 = phi i32 [ 0, %33 ], [ %64, %63 ]
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.msm_pingroup, ptr %41, i32 %37, i32 10
  %43 = load i64, ptr %42, align 4
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 3
  %46 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.msm_pingroup, ptr %41, i32 %37, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %52 = load i64, ptr %42, align 4
  %53 = lshr i64 %52, 52
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %51
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %36
  %60 = load ptr, ptr %35, align 4
  %61 = tail call i32 @generic_handle_domain_irq(ptr noundef %60, i32 noundef %37) #10
  %62 = add i32 %38, 1
  br label %63

63:                                               ; preds = %59, %36
  %64 = phi i32 [ %62, %59 ], [ %38, %36 ]
  %65 = load i16, ptr %26, align 4
  %66 = zext i16 %65 to i32
  %67 = add nsw i32 %37, 1
  %68 = tail call i32 @_find_next_bit_le(ptr noundef %25, i32 noundef %66, i32 noundef %67) #10
  %69 = load i16, ptr %26, align 4
  %70 = zext i16 %69 to i32
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %36, label %72

72:                                               ; preds = %63
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %72, %24
  tail call void @handle_bad_irq(ptr noundef %0) #10
  br label %75

75:                                               ; preds = %74, %72
  %76 = load ptr, ptr %7, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi ptr [ %80, %78 ], [ %76, %75 ]
  %83 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %82(ptr noundef %83) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_enable_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_disable_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #10
  %5 = getelementptr inbounds %struct.msm_pinctrl, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.msm_pingroup, ptr %8, i32 %10, i32 10
  %12 = load i64, ptr %11, align 4
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 3
  %15 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.msm_pingroup, ptr %8, i32 %10, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %21 = load i64, ptr %11, align 4
  %22 = lshr i64 %21, 37
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %20
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 2
  br label %29

29:                                               ; preds = %51, %1
  %30 = phi i32 [ %53, %51 ], [ 100, %1 ]
  %31 = phi i32 [ %52, %51 ], [ %28, %1 ]
  %32 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %31) #10
  %33 = load i64, ptr %11, align 4
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 3
  %36 = getelementptr %struct.msm_pinctrl, ptr %4, i32 0, i32 14, i32 %35
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %17, align 4
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %41 = load i64, ptr %11, align 4
  %42 = lshr i64 %41, 37
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %40
  %47 = icmp eq i32 %31, 1
  %48 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %50

49:                                               ; preds = %29
  br i1 %48, label %59, label %51

50:                                               ; preds = %29
  br i1 %48, label %51, label %59

51:                                               ; preds = %50, %49
  %52 = phi i32 [ 2, %49 ], [ 1, %50 ]
  %53 = add nsw i32 %30, -1
  %54 = icmp eq i32 %30, 0
  br i1 %54, label %55, label %29

55:                                               ; preds = %51
  %56 = load i1, ptr @msm_gpio_update_dual_edge_parent.__print_once, align 1
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  store i1 true, ptr @msm_gpio_update_dual_edge_parent.__print_once, align 1
  %58 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.28) #11
  br label %59

59:                                               ; preds = %57, %55, %50, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_gpio_update_dual_edge_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_pingroup, ptr %1, i32 0, i32 10
  %4 = getelementptr inbounds %struct.msm_pingroup, ptr %1, i32 0, i32 6
  %5 = getelementptr inbounds %struct.msm_pingroup, ptr %1, i32 0, i32 7
  %6 = getelementptr inbounds %struct.msm_pingroup, ptr %1, i32 0, i32 11
  %7 = getelementptr inbounds %struct.msm_pingroup, ptr %1, i32 0, i32 8
  br label %8

8:                                                ; preds = %67, %2
  %9 = phi i32 [ 100, %2 ], [ %68, %67 ]
  %10 = load i64, ptr %3, align 4
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 3
  %13 = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %18 = load i64, ptr %3, align 4
  %19 = lshr i64 %18, 37
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 31
  %22 = shl nuw i32 1, %21
  %23 = and i32 %22, %17
  %24 = trunc i64 %18 to i32
  %25 = and i32 %24, 3
  %26 = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !20
  %31 = load i32, ptr %6, align 4
  %32 = lshr i32 %31, 10
  %33 = and i32 %32, 31
  %34 = shl nuw i32 1, %33
  %35 = xor i32 %34, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %36 = load i64, ptr %3, align 4
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 3
  %39 = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %5, align 4
  %42 = getelementptr i8, ptr %40, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %35) #10, !srcloc !13
  %43 = load i64, ptr %3, align 4
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 3
  %46 = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %4, align 4
  %49 = getelementptr i8, ptr %47, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %51 = load i64, ptr %3, align 4
  %52 = lshr i64 %51, 37
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %50
  %57 = trunc i64 %51 to i32
  %58 = and i32 %57, 3
  %59 = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = load i32, ptr %7, align 4
  %62 = getelementptr i8, ptr %60, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %64 = icmp ne i32 %63, 0
  %65 = icmp eq i32 %23, %56
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %8
  %68 = add nsw i32 %9, -1
  %69 = icmp eq i32 %9, 0
  br i1 %69, label %70, label %8

70:                                               ; preds = %67
  %71 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.29, i32 noundef %23, i32 noundef %56) #11
  br label %72

72:                                               ; preds = %70, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_ack_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_io_readl(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_io_writel(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!10 = !{i64 2421476}
!11 = !{i64 2152507128}
!12 = !{i64 2152507353}
!13 = !{i64 2421058}
!14 = !{i64 2152508243}
!15 = !{i64 2152508465}
!16 = !{i8 0, i8 2}
!17 = !{i64 2152537767}
!18 = !{i32 0, i32 33}
!19 = !{i64 2152510873}
!20 = !{i64 2152509408}
!21 = !{i64 2152509648}
!22 = !{i64 2152511852}
!23 = !{i64 2152512101}
!24 = !{i64 2152532172, i64 2152532672, i64 2152532209, i64 2152532265, i64 2152532299, i64 2152532323, i64 2152532364, i64 2152532385, i64 2152532413, i64 2152532447}
!25 = !{i64 2152510624}
