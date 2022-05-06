; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-st.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-st.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.st_pctl_data = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.st_pinctrl = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.st_gpio_bank = type { %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.st_pio_control, i32, %struct.spinlock }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.st_pio_control = type { i32, ptr, ptr, ptr, ptr, %union.anon.64 }
%union.anon.64 = type { %struct.st_retime_dedicated }
%struct.st_retime_dedicated = type { [8 x ptr] }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.st_pmx_func = type { ptr, ptr, i32 }
%struct.st_pctl_group = type { ptr, ptr, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.st_pinconf = type { i32, ptr, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_st__206_1719_st_pctl_init3 = internal global ptr @st_pctl_init, section ".initcall3.init", align 4
@st_pctl_driver = internal global %struct.platform_driver { ptr @st_pctl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_pctl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"st-pinctrl\00", align 1
@st_pctl_of_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-sbc-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-front-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-rear-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-flash-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_flashdata }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"device node not found.\0A\00", align 1
@st_pctlops = internal constant %struct.pinctrl_ops { ptr @st_pctl_get_groups_count, ptr @st_pctl_get_group_name, ptr @st_pctl_get_group_pins, ptr null, ptr @st_pctl_dt_node_to_map, ptr @st_pctl_dt_free_map }, align 4
@st_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @st_pmx_get_funcs_count, ptr @st_pmx_get_fname, ptr @st_pmx_get_groups, ptr @st_pmx_set_mux, ptr null, ptr null, ptr @st_pmx_set_gpio_direction, i8 1 }, align 4
@st_confops = internal constant %struct.pinconf_ops { i8 0, ptr @st_pinconf_get, ptr @st_pinconf_set, ptr null, ptr null, ptr @st_pinconf_dbg_show, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed pinctrl registration\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"you need at least one gpio bank\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nbanks = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"nfunctions = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ngroups = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"No syscfg phandle specified\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"irqmux\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"No functions found.\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@st_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @st_gpio_get_direction, ptr @st_gpio_direction_input, ptr @st_gpio_direction_output, ptr @st_gpio_get, ptr null, ptr @st_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 8, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c"st,bank-name\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"invalid IRQ for %pOF bank\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"no irqmux for %pOF bank\0A\00", align 1
@st_gpio_irqchip = internal global %struct.irq_chip { ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr @st_gpio_irq_mask, ptr null, ptr @st_gpio_irq_mask, ptr null, ptr @st_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @st_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_gpio_irq_request_resources, ptr @st_gpio_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"%s bank added.\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"st,retime-pin-mask\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"No groups defined\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Function[%d\09 name:%s,\09groups:%d]\0A\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"st,pins\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\014Invalid st,pins in %pOFn node\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"unable to find group for node %pOFn\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"maps: function %s group %s num %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"\014Delay not found in/out delay list\0A\00", align 1
@.str.28 = private unnamed_addr constant [49 x i8] c"\014Attempt to set delay %d, closest available %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Alt Fn %u\00", align 1
@.str.30 = private unnamed_addr constant [96 x i8] c"[OE:%d,PU:%ld,OD:%ld]\09%s\0A\09\09[retime:%ld,invclk:%ld,clknotdat:%ld,de:%ld,rt-clk:%ld,rt-delay:%ld]\00", align 1
@stih407_data = internal constant %struct.st_pctl_data { i32 2, ptr @stih407_delays, i32 14, ptr @stih407_delays, i32 14, i32 0, i32 40, i32 50, i32 60, i32 100 }, align 4
@stih407_flashdata = internal constant %struct.st_pctl_data { i32 0, ptr @stih407_delays, i32 14, ptr @stih407_delays, i32 14, i32 0, i32 -1, i32 -1, i32 60, i32 100 }, align 4
@stih407_delays = internal constant [14 x i32] [i32 0, i32 300, i32 500, i32 750, i32 1000, i32 1250, i32 1500, i32 1750, i32 2000, i32 2250, i32 2500, i32 2750, i32 3000, i32 3250], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_st__206_1719_st_pctl_init3], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @st_pctl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_pctl_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pctl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.resource, align 4
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #12
  br label %456

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %456, label %12

12:                                               ; preds = %9
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %456, label %15

15:                                               ; preds = %12
  store ptr %4, ptr %13, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %13, ptr %16, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = tail call ptr @of_get_next_child(ptr noundef %17, ptr noundef null) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 3
  %22 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 5
  %23 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 7
  br label %24

24:                                               ; preds = %39, %20
  %25 = phi ptr [ %18, %20 ], [ %44, %39 ]
  %26 = tail call ptr @of_find_property(ptr noundef nonnull %25, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, ptr %22, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %22, align 4
  %31 = tail call ptr @of_get_next_child(ptr noundef nonnull %25, ptr noundef null) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %33, %28
  %34 = phi i32 [ %36, %33 ], [ 0, %28 ]
  %35 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %36 = add i32 %34, 1
  %37 = tail call ptr @of_get_next_child(ptr noundef nonnull %25, ptr noundef nonnull %35) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %28, %24
  %40 = phi ptr [ %21, %24 ], [ %23, %28 ], [ %23, %33 ]
  %41 = phi i32 [ 1, %24 ], [ 0, %28 ], [ %36, %33 ]
  %42 = load i32, ptr %40, align 4
  %43 = add i32 %42, %41
  store i32 %43, ptr %40, align 4
  %44 = tail call ptr @of_get_next_child(ptr noundef %17, ptr noundef nonnull %25) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %24

46:                                               ; preds = %39, %15
  %47 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef -22, ptr noundef nonnull @.str.3) #11
  br label %418

52:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %48) #12
  %53 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %54) #12
  %55 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 7
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %56) #12
  %57 = load i32, ptr %53, align 4
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 12) #11
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %63, label %60, !prof !8

60:                                               ; preds = %52
  %61 = extractvalue { i32, i1 } %58, 0
  %62 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %61, i32 noundef 3520) #11
  br label %63

63:                                               ; preds = %60, %52
  %64 = phi ptr [ %62, %60 ], [ null, %52 ]
  %65 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 4
  store ptr %64, ptr %65, align 4
  %66 = load i32, ptr %55, align 4
  %67 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %66, i32 16) #11
  %68 = extractvalue { i32, i1 } %67, 1
  br i1 %68, label %72, label %69, !prof !8

69:                                               ; preds = %63
  %70 = extractvalue { i32, i1 } %67, 0
  %71 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %70, i32 noundef 3520) #11
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi ptr [ %71, %69 ], [ null, %63 ]
  %74 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 6
  store ptr %73, ptr %74, align 4
  %75 = load i32, ptr %47, align 4
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 404) #11
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %81, label %78, !prof !8

78:                                               ; preds = %72
  %79 = extractvalue { i32, i1 } %76, 0
  %80 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %79, i32 noundef 3520) #11
  br label %81

81:                                               ; preds = %78, %72
  %82 = phi ptr [ %80, %78 ], [ null, %72 ]
  %83 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 2
  store ptr %82, ptr %83, align 4
  %84 = load ptr, ptr %65, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %456, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr %74, align 4
  %88 = icmp eq ptr %87, null
  %89 = icmp eq ptr %82, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %456, label %91

91:                                               ; preds = %86
  %92 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %17, ptr noundef nonnull @.str.7) #11
  %93 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 8
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = ptrtoint ptr %92 to i32
  %97 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %96, ptr noundef nonnull @.str.8) #11
  br label %418

98:                                               ; preds = %91
  %99 = tail call ptr @of_match_node(ptr noundef nonnull @st_pctl_of_match, ptr noundef %17) #11
  %100 = getelementptr inbounds %struct.of_device_id, ptr %99, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 9
  store ptr %101, ptr %102, align 4
  %103 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %98
  %106 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.9) #11
  %107 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 10
  store ptr %106, ptr %107, align 4
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = ptrtoint ptr %106 to i32
  br label %418

111:                                              ; preds = %105
  tail call void @irq_set_chained_handler_and_data(i32 noundef %103, ptr noundef nonnull @st_gpio_irqmux_handler, ptr noundef %13) #11
  br label %112

112:                                              ; preds = %111, %98
  %113 = load i32, ptr %47, align 4
  %114 = shl i32 %113, 3
  %115 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 2
  store i32 %114, ptr %115, align 4
  %116 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %114, i32 12) #11
  %117 = extractvalue { i32, i1 } %116, 1
  br i1 %117, label %456, label %118, !prof !8

118:                                              ; preds = %112
  %119 = extractvalue { i32, i1 } %116, 0
  %120 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %119, i32 noundef 3520) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %456, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 1
  store ptr %120, ptr %123, align 4
  %124 = tail call ptr @of_get_next_child(ptr noundef %17, ptr noundef null) #11
  %125 = icmp eq ptr %124, null
  br i1 %125, label %421, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 10
  br label %128

128:                                              ; preds = %411, %126
  %129 = phi ptr [ %124, %126 ], [ %416, %411 ]
  %130 = phi ptr [ %120, %126 ], [ %415, %411 ]
  %131 = phi i32 [ 0, %126 ], [ %414, %411 ]
  %132 = phi i32 [ 0, %126 ], [ %413, %411 ]
  %133 = phi i32 [ 0, %126 ], [ %412, %411 ]
  %134 = call ptr @of_find_property(ptr noundef nonnull %129, ptr noundef nonnull @.str.10, ptr noundef null) #11
  %135 = icmp eq ptr %134, null
  br i1 %135, label %250, label %136

136:                                              ; preds = %128
  %137 = load ptr, ptr %83, align 4
  %138 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131
  %139 = load ptr, ptr %13, align 4
  %140 = call i32 @of_alias_get_id(ptr noundef nonnull %129, ptr noundef nonnull @.str.12) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false) #11, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #11, !annotation !9
  %141 = call i32 @of_address_to_resource(ptr noundef nonnull %129, i32 noundef 0, ptr noundef nonnull %2) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %193

143:                                              ; preds = %136
  %144 = call ptr @devm_ioremap_resource(ptr noundef %139, ptr noundef nonnull %2) #11
  %145 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 2
  store ptr %144, ptr %145, align 4
  %146 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = ptrtoint ptr %144 to i32
  br label %195

149:                                              ; preds = %143
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %138, ptr noundef nonnull align 4 dereferenceable(304) @st_gpio_template, i32 304, i1 false) #11
  %150 = shl i32 %140, 3
  %151 = getelementptr inbounds %struct.gpio_chip, ptr %138, i32 0, i32 19
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.gpio_chip, ptr %138, i32 0, i32 20
  store i16 8, ptr %152, align 4
  %153 = getelementptr inbounds %struct.gpio_chip, ptr %138, i32 0, i32 39
  store ptr %129, ptr %153, align 4
  %154 = getelementptr inbounds %struct.gpio_chip, ptr %138, i32 0, i32 2
  store ptr %139, ptr %154, align 4
  %155 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 5
  store i32 0, ptr %155, align 4
  %156 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 1
  %157 = call i32 @of_property_read_string(ptr noundef nonnull %129, ptr noundef nonnull @.str.13, ptr noundef %156) #11
  %158 = load ptr, ptr %156, align 4
  store ptr %158, ptr %138, align 4
  %159 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 2
  store i32 %140, ptr %159, align 4
  %160 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 3
  store i32 %150, ptr %160, align 4
  %161 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 4
  store i32 %150, ptr %161, align 4
  %162 = load i16, ptr %152, align 4
  %163 = zext i16 %162 to i32
  %164 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 5
  store i32 %163, ptr %164, align 4
  %165 = getelementptr %struct.st_gpio_bank, ptr %137, i32 %131, i32 1, i32 7
  store ptr %138, ptr %165, align 4
  %166 = call i32 @of_irq_to_resource(ptr noundef nonnull %129, i32 noundef 0, ptr noundef nonnull %3) #11
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %149
  %169 = load i32, ptr %3, align 4
  %170 = icmp slt i32 %169, 1
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.14, ptr noundef nonnull %129) #12
  br label %186

172:                                              ; preds = %168
  %173 = load ptr, ptr %127, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.15, ptr noundef nonnull %129) #12
  br label %186

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.gpio_chip, ptr %138, i32 0, i32 37
  store ptr @st_gpio_irqchip, ptr %177, align 4
  %178 = getelementptr inbounds %struct.gpio_irq_chip, ptr %177, i32 0, i32 13
  store ptr @st_gpio_irq_handler, ptr %178, align 4
  %179 = getelementptr inbounds %struct.gpio_irq_chip, ptr %177, i32 0, i32 15
  store i32 1, ptr %179, align 4
  %180 = call noalias ptr @devm_kmalloc(ptr noundef %139, i32 noundef 4, i32 noundef 3520) #11
  %181 = getelementptr inbounds %struct.gpio_irq_chip, ptr %177, i32 0, i32 16
  store ptr %180, ptr %181, align 4
  %182 = icmp eq ptr %180, null
  br i1 %182, label %193, label %183

183:                                              ; preds = %176
  store i32 %169, ptr %180, align 4
  %184 = getelementptr inbounds %struct.gpio_irq_chip, ptr %177, i32 0, i32 10
  store i32 0, ptr %184, align 4
  %185 = getelementptr inbounds %struct.gpio_irq_chip, ptr %177, i32 0, i32 9
  store ptr @handle_simple_irq, ptr %185, align 4
  br label %186

186:                                              ; preds = %183, %175, %171, %149
  %187 = call i32 @gpiochip_add_data_with_key(ptr noundef %138, ptr noundef %138, ptr noundef null, ptr noundef null) #11
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %139, i32 noundef %187, ptr noundef nonnull @.str.16, i32 noundef %140) #11
  br label %195

191:                                              ; preds = %186
  %192 = load ptr, ptr %156, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %139, ptr noundef nonnull @.str.17, ptr noundef %192) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %200

193:                                              ; preds = %176, %136
  %194 = phi i32 [ -12, %176 ], [ -19, %136 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  br label %198

195:                                              ; preds = %189, %147
  %196 = phi i32 [ %148, %147 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %194, %193 ], [ %196, %195 ]
  call void @of_node_put(ptr noundef nonnull %129) #11
  br label %456

200:                                              ; preds = %195, %191
  %201 = load ptr, ptr %83, align 4
  %202 = getelementptr %struct.st_gpio_bank, ptr %201, i32 %131, i32 1, i32 4
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr %struct.st_gpio_bank, ptr %201, i32 %131, i32 1, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = call ptr @devm_kasprintf_strarray(ptr noundef %4, ptr noundef %205, i32 noundef 8) #11
  %207 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  br i1 %207, label %248, label %208

208:                                              ; preds = %200
  store i32 %203, ptr %130, align 4
  %209 = load ptr, ptr %206, align 4
  %210 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %130, i32 0, i32 1
  store ptr %209, ptr %210, align 4
  %211 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 1
  %212 = add i32 %203, 1
  store i32 %212, ptr %211, align 4
  %213 = getelementptr ptr, ptr %206, i32 1
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 1, i32 1
  store ptr %214, ptr %215, align 4
  %216 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 2
  %217 = add i32 %203, 2
  store i32 %217, ptr %216, align 4
  %218 = getelementptr ptr, ptr %206, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 2, i32 1
  store ptr %219, ptr %220, align 4
  %221 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 3
  %222 = add i32 %203, 3
  store i32 %222, ptr %221, align 4
  %223 = getelementptr ptr, ptr %206, i32 3
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 3, i32 1
  store ptr %224, ptr %225, align 4
  %226 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 4
  %227 = add i32 %203, 4
  store i32 %227, ptr %226, align 4
  %228 = getelementptr ptr, ptr %206, i32 4
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 4, i32 1
  store ptr %229, ptr %230, align 4
  %231 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 5
  %232 = add i32 %203, 5
  store i32 %232, ptr %231, align 4
  %233 = getelementptr ptr, ptr %206, i32 5
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 5, i32 1
  store ptr %234, ptr %235, align 4
  %236 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 6
  %237 = add i32 %203, 6
  store i32 %237, ptr %236, align 4
  %238 = getelementptr ptr, ptr %206, i32 6
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 6, i32 1
  store ptr %239, ptr %240, align 4
  %241 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 7
  %242 = add i32 %203, 7
  store i32 %242, ptr %241, align 4
  %243 = getelementptr ptr, ptr %206, i32 7
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 7, i32 1
  store ptr %244, ptr %245, align 4
  %246 = getelementptr %struct.pinctrl_pin_desc, ptr %130, i32 8
  call fastcc void @st_parse_syscfgs(ptr noundef %13, i32 noundef %131, ptr noundef nonnull %129) #11
  %247 = add i32 %131, 1
  br label %411

248:                                              ; preds = %200
  call void @of_node_put(ptr noundef nonnull %129) #11
  %249 = ptrtoint ptr %206 to i32
  br label %418

250:                                              ; preds = %128
  %251 = add i32 %132, 1
  %252 = load ptr, ptr %13, align 4
  %253 = load ptr, ptr %65, align 4
  %254 = getelementptr %struct.st_pmx_func, ptr %253, i32 %132
  %255 = load ptr, ptr %129, align 4
  store ptr %255, ptr %254, align 4
  %256 = call ptr @of_get_next_child(ptr noundef nonnull %129, ptr noundef null) #11
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %250
  %259 = getelementptr %struct.st_pmx_func, ptr %253, i32 %132, i32 2
  store i32 0, ptr %259, align 4
  br label %406

260:                                              ; preds = %260, %250
  %261 = phi i32 [ %263, %260 ], [ 0, %250 ]
  %262 = phi ptr [ %264, %260 ], [ %256, %250 ]
  %263 = add i32 %261, 1
  %264 = call ptr @of_get_next_child(ptr noundef nonnull %129, ptr noundef nonnull %262) #11
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %260

266:                                              ; preds = %260
  %267 = getelementptr %struct.st_pmx_func, ptr %253, i32 %132, i32 2
  store i32 %263, ptr %267, align 4
  %268 = icmp eq i32 %263, 0
  br i1 %268, label %406, label %269

269:                                              ; preds = %266
  %270 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %263, i32 4) #11
  %271 = extractvalue { i32, i1 } %270, 1
  br i1 %271, label %272, label %274, !prof !8

272:                                              ; preds = %269
  %273 = getelementptr %struct.st_pmx_func, ptr %253, i32 %132, i32 1
  store ptr null, ptr %273, align 4
  br label %409

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %270, 0
  %276 = call noalias ptr @devm_kmalloc(ptr noundef %252, i32 noundef %275, i32 noundef 3520) #11
  %277 = getelementptr %struct.st_pmx_func, ptr %253, i32 %132, i32 1
  store ptr %276, ptr %277, align 4
  %278 = icmp eq ptr %276, null
  br i1 %278, label %409, label %279

279:                                              ; preds = %274
  %280 = call ptr @of_get_next_child(ptr noundef nonnull %129, ptr noundef null) #11
  %281 = icmp eq ptr %280, null
  br i1 %281, label %402, label %282

282:                                              ; preds = %398, %279
  %283 = phi i32 [ %291, %398 ], [ %133, %279 ]
  %284 = phi i32 [ %399, %398 ], [ 0, %279 ]
  %285 = phi ptr [ %400, %398 ], [ %280, %279 ]
  %286 = load ptr, ptr %285, align 4
  %287 = load ptr, ptr %277, align 4
  %288 = getelementptr ptr, ptr %287, i32 %284
  store ptr %286, ptr %288, align 4
  %289 = load ptr, ptr %74, align 4
  %290 = getelementptr %struct.st_pctl_group, ptr %289, i32 %283
  %291 = add i32 %283, 1
  %292 = load ptr, ptr %13, align 4
  %293 = call ptr @of_get_child_by_name(ptr noundef nonnull %285, ptr noundef nonnull @.str.22) #11
  %294 = icmp eq ptr %293, null
  br i1 %294, label %396, label %295

295:                                              ; preds = %282
  %296 = getelementptr inbounds %struct.device_node, ptr %293, i32 0, i32 4
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %318, label %299

299:                                              ; preds = %313, %295
  %300 = phi ptr [ %316, %313 ], [ %297, %295 ]
  %301 = phi i32 [ %314, %313 ], [ 0, %295 ]
  %302 = load ptr, ptr %300, align 4
  %303 = call i32 @strcmp(ptr noundef %302, ptr noundef nonnull dereferenceable(5) @.str.23) #11
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.property, ptr %300, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = icmp ugt i32 %307, 15
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = add i32 %301, 1
  br label %313

311:                                              ; preds = %305
  %312 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %285) #12
  br label %394

313:                                              ; preds = %309, %299
  %314 = phi i32 [ %310, %309 ], [ %301, %299 ]
  %315 = getelementptr inbounds %struct.property, ptr %300, i32 0, i32 3
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %299

318:                                              ; preds = %313, %295
  %319 = phi i32 [ 0, %295 ], [ %314, %313 ]
  %320 = getelementptr %struct.st_pctl_group, ptr %289, i32 %283, i32 2
  store i32 %319, ptr %320, align 4
  %321 = load ptr, ptr %285, align 4
  store ptr %321, ptr %290, align 4
  %322 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %319, i32 4) #11
  %323 = extractvalue { i32, i1 } %322, 1
  br i1 %323, label %327, label %324, !prof !8

324:                                              ; preds = %318
  %325 = extractvalue { i32, i1 } %322, 0
  %326 = call noalias ptr @devm_kmalloc(ptr noundef %292, i32 noundef %325, i32 noundef 3520) #11
  br label %327

327:                                              ; preds = %324, %318
  %328 = phi ptr [ %326, %324 ], [ null, %318 ]
  %329 = getelementptr %struct.st_pctl_group, ptr %289, i32 %283, i32 1
  store ptr %328, ptr %329, align 4
  %330 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %319, i32 16) #11
  %331 = extractvalue { i32, i1 } %330, 1
  br i1 %331, label %332, label %334, !prof !8

332:                                              ; preds = %327
  %333 = getelementptr %struct.st_pctl_group, ptr %289, i32 %283, i32 3
  store ptr null, ptr %333, align 4
  br label %394

334:                                              ; preds = %327
  %335 = extractvalue { i32, i1 } %330, 0
  %336 = call noalias ptr @devm_kmalloc(ptr noundef %292, i32 noundef %335, i32 noundef 3520) #11
  %337 = getelementptr %struct.st_pctl_group, ptr %289, i32 %283, i32 3
  store ptr %336, ptr %337, align 4
  %338 = load ptr, ptr %329, align 4
  %339 = icmp eq ptr %338, null
  %340 = icmp eq ptr %336, null
  %341 = select i1 %339, i1 true, i1 %340
  br i1 %341, label %394, label %342

342:                                              ; preds = %334
  %343 = load ptr, ptr %296, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %398, label %345

345:                                              ; preds = %389, %342
  %346 = phi ptr [ %392, %389 ], [ %343, %342 ]
  %347 = phi i32 [ %390, %389 ], [ 0, %342 ]
  %348 = load ptr, ptr %346, align 4
  %349 = call i32 @strcmp(ptr noundef %348, ptr noundef nonnull dereferenceable(5) @.str.23) #11
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %389, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.property, ptr %346, i32 0, i32 1
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr inbounds %struct.property, ptr %346, i32 0, i32 2
  %355 = load ptr, ptr %354, align 4
  %356 = load ptr, ptr %337, align 4
  %357 = getelementptr %struct.st_pinconf, ptr %356, i32 %347
  %358 = getelementptr i32, ptr %355, i32 2
  %359 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %293, ptr noundef %348, i32 noundef 0, ptr noundef null) #11
  store i32 %359, ptr %357, align 4
  %360 = load ptr, ptr %346, align 4
  %361 = getelementptr %struct.st_pinconf, ptr %356, i32 %347, i32 1
  store ptr %360, ptr %361, align 4
  %362 = load ptr, ptr %329, align 4
  %363 = getelementptr i32, ptr %362, i32 %347
  store i32 %359, ptr %363, align 4
  %364 = getelementptr i32, ptr %355, i32 3
  %365 = load i32, ptr %358, align 4
  %366 = call i32 @llvm.bswap.i32(i32 %365) #11
  %367 = getelementptr %struct.st_pinconf, ptr %356, i32 %347, i32 3
  store i32 %366, ptr %367, align 4
  %368 = getelementptr %struct.st_pinconf, ptr %356, i32 %347, i32 2
  store i32 0, ptr %368, align 4
  %369 = load i32, ptr %364, align 4
  %370 = call i32 @llvm.bswap.i32(i32 %369) #11
  store i32 %370, ptr %368, align 4
  %371 = icmp ugt i32 %353, 23
  br i1 %371, label %372, label %387

372:                                              ; preds = %351
  %373 = getelementptr i32, ptr %355, i32 4
  %374 = getelementptr i32, ptr %355, i32 5
  %375 = load i32, ptr %373, align 4
  %376 = or i32 %375, %369
  %377 = call i32 @llvm.bswap.i32(i32 %376) #11
  store i32 %377, ptr %368, align 4
  %378 = load i32, ptr %374, align 4
  %379 = or i32 %378, %376
  %380 = call i32 @llvm.bswap.i32(i32 %379) #11
  store i32 %380, ptr %368, align 4
  %381 = icmp ugt i32 %353, 27
  br i1 %381, label %382, label %387

382:                                              ; preds = %372
  %383 = getelementptr i32, ptr %355, i32 6
  %384 = load i32, ptr %383, align 4
  %385 = or i32 %384, %379
  %386 = call i32 @llvm.bswap.i32(i32 %385) #11
  store i32 %386, ptr %368, align 4
  br label %387

387:                                              ; preds = %382, %372, %351
  %388 = add i32 %347, 1
  br label %389

389:                                              ; preds = %387, %345
  %390 = phi i32 [ %388, %387 ], [ %347, %345 ]
  %391 = getelementptr inbounds %struct.property, ptr %346, i32 0, i32 3
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %398, label %345

394:                                              ; preds = %334, %332, %311
  %395 = phi i32 [ -12, %332 ], [ -22, %311 ], [ -12, %334 ]
  call void @of_node_put(ptr noundef nonnull %293) #11
  br label %396

396:                                              ; preds = %394, %282
  %397 = phi i32 [ %395, %394 ], [ -61, %282 ]
  call void @of_node_put(ptr noundef nonnull %285) #11
  br label %409

398:                                              ; preds = %389, %342
  call void @of_node_put(ptr noundef nonnull %293) #11
  %399 = add i32 %284, 1
  %400 = call ptr @of_get_next_child(ptr noundef nonnull %129, ptr noundef nonnull %285) #11
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %282

402:                                              ; preds = %398, %279
  %403 = phi i32 [ %133, %279 ], [ %291, %398 ]
  %404 = load ptr, ptr %254, align 4
  %405 = load i32, ptr %267, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %252, ptr noundef nonnull @.str.21, i32 noundef %132, ptr noundef %404, i32 noundef %405) #12
  br label %411

406:                                              ; preds = %266, %258
  %407 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %252, i32 noundef -22, ptr noundef nonnull @.str.20) #11
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %406, %396, %274, %272
  %410 = phi i32 [ -12, %272 ], [ %397, %396 ], [ -12, %274 ], [ %407, %406 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #12
  call void @of_node_put(ptr noundef nonnull %129) #11
  br label %456

411:                                              ; preds = %406, %402, %208
  %412 = phi i32 [ %133, %208 ], [ %133, %406 ], [ %403, %402 ]
  %413 = phi i32 [ %132, %208 ], [ %251, %406 ], [ %251, %402 ]
  %414 = phi i32 [ %247, %208 ], [ %131, %406 ], [ %131, %402 ]
  %415 = phi ptr [ %246, %208 ], [ %130, %406 ], [ %130, %402 ]
  %416 = call ptr @of_get_next_child(ptr noundef %17, ptr noundef nonnull %129) #11
  %417 = icmp eq ptr %416, null
  br i1 %417, label %421, label %128

418:                                              ; preds = %248, %109, %95, %50
  %419 = phi i32 [ %97, %95 ], [ %110, %109 ], [ %51, %50 ], [ %249, %248 ]
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %456

421:                                              ; preds = %418, %411, %122
  %422 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 6
  store ptr null, ptr %422, align 4
  %423 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 3
  store ptr @st_pctlops, ptr %423, align 4
  %424 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 4
  store ptr @st_pmxops, ptr %424, align 4
  %425 = getelementptr inbounds %struct.pinctrl_desc, ptr %10, i32 0, i32 5
  store ptr @st_confops, ptr %425, align 4
  %426 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %421
  %430 = load ptr, ptr %4, align 4
  br label %431

431:                                              ; preds = %429, %421
  %432 = phi ptr [ %430, %429 ], [ %427, %421 ]
  store ptr %432, ptr %10, align 4
  %433 = call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %13) #11
  %434 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 1
  store ptr %433, ptr %434, align 4
  %435 = icmp ugt ptr %433, inttoptr (i32 -4096 to ptr)
  br i1 %435, label %445, label %436

436:                                              ; preds = %431
  %437 = load i32, ptr %47, align 4
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %456

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.st_pinctrl, ptr %13, i32 0, i32 2
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr %struct.st_gpio_bank, ptr %441, i32 0, i32 1
  call void @pinctrl_add_gpio_range(ptr noundef %433, ptr noundef %442) #11
  %443 = load i32, ptr %47, align 4
  %444 = icmp sgt i32 %443, 1
  br i1 %444, label %448, label %456

445:                                              ; preds = %431
  %446 = ptrtoint ptr %433 to i32
  %447 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %446, ptr noundef nonnull @.str.2) #11
  br label %456

448:                                              ; preds = %448, %439
  %449 = phi i32 [ %453, %448 ], [ 1, %439 ]
  %450 = load ptr, ptr %434, align 4
  %451 = load ptr, ptr %440, align 4
  %452 = getelementptr %struct.st_gpio_bank, ptr %451, i32 %449, i32 1
  call void @pinctrl_add_gpio_range(ptr noundef %450, ptr noundef %452) #11
  %453 = add nuw nsw i32 %449, 1
  %454 = load i32, ptr %47, align 4
  %455 = icmp slt i32 %453, %454
  br i1 %455, label %448, label %456

456:                                              ; preds = %448, %445, %439, %436, %418, %409, %198, %118, %112, %86, %81, %12, %9, %8
  %457 = phi i32 [ %447, %445 ], [ -22, %8 ], [ -12, %9 ], [ -12, %12 ], [ %419, %418 ], [ %199, %198 ], [ -12, %112 ], [ -12, %118 ], [ -12, %81 ], [ -12, %86 ], [ %410, %409 ], [ 0, %436 ], [ 0, %439 ], [ 0, %448 ]
  ret i32 %457
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_irqmux_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %7 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %12(ptr noundef %15) #11
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #11
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  %25 = getelementptr inbounds %struct.st_pinctrl, ptr %6, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  store i32 %27, ptr %2, align 4
  %28 = getelementptr inbounds %struct.st_pinctrl, ptr %6, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %29, i32 noundef 0) #11
  %31 = load i32, ptr %28, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.st_pinctrl, ptr %6, i32 0, i32 2
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i32 [ %30, %33 ], [ %41, %35 ]
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr %struct.st_gpio_bank, ptr %37, i32 %36
  call fastcc void @__gpio_irq_handler(ptr noundef %38)
  %39 = load i32, ptr %28, align 4
  %40 = add nsw i32 %36, 1
  %41 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %39, i32 noundef %40) #11
  %42 = load i32, ptr %28, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %35, label %44

44:                                               ; preds = %35, %24
  %45 = load ptr, ptr %7, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.irq_chip, ptr %4, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ %45, %44 ]
  %52 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %51(ptr noundef %52) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kasprintf_strarray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_parse_syscfgs(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.st_pinctrl, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = sdiv i32 %1, 4
  %7 = mul i32 %6, 4
  %8 = sub i32 %1, %7
  %9 = shl nsw i32 %8, 3
  %10 = or i32 %9, 7
  %11 = getelementptr inbounds %struct.st_pinctrl, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.st_pinctrl, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.st_pctl_data, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = add i32 %18, %1
  %22 = shl i32 %21, 2
  %23 = insertvalue [5 x i32] poison, i32 %22, 0
  %24 = insertvalue [5 x i32] %23, i32 0, 1
  %25 = insertvalue [5 x i32] %24, i32 31, 2
  %26 = insertvalue [5 x i32] %25, i32 0, 3
  %27 = insertvalue [5 x i32] %26, i32 0, 4
  %28 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %27) #11
  br label %29

29:                                               ; preds = %20, %3
  %30 = phi ptr [ %28, %20 ], [ null, %3 ]
  %31 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.st_pctl_data, ptr %5, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = add i32 %33, %6
  %37 = shl i32 %36, 2
  %38 = insertvalue [5 x i32] poison, i32 %37, 0
  %39 = insertvalue [5 x i32] %38, i32 %9, 1
  %40 = insertvalue [5 x i32] %39, i32 %10, 2
  %41 = insertvalue [5 x i32] %40, i32 0, 3
  %42 = insertvalue [5 x i32] %41, i32 0, 4
  %43 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %42) #11
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi ptr [ %43, %35 ], [ null, %29 ]
  %46 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 2
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.st_pctl_data, ptr %5, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = add i32 %48, %6
  %52 = shl i32 %51, 2
  %53 = insertvalue [5 x i32] poison, i32 %52, 0
  %54 = insertvalue [5 x i32] %53, i32 %9, 1
  %55 = insertvalue [5 x i32] %54, i32 %10, 2
  %56 = insertvalue [5 x i32] %55, i32 0, 3
  %57 = insertvalue [5 x i32] %56, i32 0, 4
  %58 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %57) #11
  br label %59

59:                                               ; preds = %50, %44
  %60 = phi ptr [ %58, %50 ], [ null, %44 ]
  %61 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 3
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.st_pctl_data, ptr %5, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = add i32 %63, %6
  %67 = shl i32 %66, 2
  %68 = insertvalue [5 x i32] poison, i32 %67, 0
  %69 = insertvalue [5 x i32] %68, i32 %9, 1
  %70 = insertvalue [5 x i32] %69, i32 %10, 2
  %71 = insertvalue [5 x i32] %70, i32 0, 3
  %72 = insertvalue [5 x i32] %71, i32 0, 4
  %73 = tail call ptr @devm_regmap_field_alloc(ptr noundef %14, ptr noundef %16, [5 x i32] %72) #11
  br label %74

74:                                               ; preds = %65, %59
  %75 = phi ptr [ %73, %65 ], [ null, %59 ]
  %76 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 4
  store ptr %75, ptr %76, align 4
  store i32 255, ptr %13, align 4
  %77 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.19, ptr noundef %13, i32 noundef 1, i32 noundef 0) #11
  %78 = load ptr, ptr %4, align 4
  %79 = load i32, ptr %78, align 4
  switch i32 %79, label %250 [
    i32 1, label %80
    i32 2, label %133
  ]

80:                                               ; preds = %74
  %81 = load ptr, ptr %0, align 4
  %82 = load ptr, ptr %15, align 4
  %83 = getelementptr inbounds %struct.st_pctl_data, ptr %78, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = shl i32 %1, 1
  %86 = add i32 %84, %85
  %87 = shl i32 %86, 2
  %88 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5
  %89 = add i32 %87, 4
  %90 = insertvalue [5 x i32] poison, i32 %87, 0
  %91 = insertvalue [5 x i32] %90, i32 0, 1
  %92 = insertvalue [5 x i32] %91, i32 7, 2
  %93 = insertvalue [5 x i32] %92, i32 0, 3
  %94 = insertvalue [5 x i32] %93, i32 0, 4
  %95 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %94) #11
  store ptr %95, ptr %88, align 4
  %96 = insertvalue [5 x i32] %90, i32 16, 1
  %97 = insertvalue [5 x i32] %96, i32 23, 2
  %98 = insertvalue [5 x i32] %97, i32 0, 3
  %99 = insertvalue [5 x i32] %98, i32 0, 4
  %100 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %99) #11
  %101 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 1
  store ptr %100, ptr %101, align 4
  %102 = insertvalue [5 x i32] %90, i32 24, 1
  %103 = insertvalue [5 x i32] %102, i32 31, 2
  %104 = insertvalue [5 x i32] %103, i32 0, 3
  %105 = insertvalue [5 x i32] %104, i32 0, 4
  %106 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %105) #11
  %107 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 2
  store ptr %106, ptr %107, align 4
  %108 = insertvalue [5 x i32] poison, i32 %89, 0
  %109 = insertvalue [5 x i32] %108, i32 0, 1
  %110 = insertvalue [5 x i32] %109, i32 7, 2
  %111 = insertvalue [5 x i32] %110, i32 0, 3
  %112 = insertvalue [5 x i32] %111, i32 0, 4
  %113 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %112) #11
  %114 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 3
  store ptr %113, ptr %114, align 4
  %115 = insertvalue [5 x i32] %108, i32 8, 1
  %116 = insertvalue [5 x i32] %115, i32 15, 2
  %117 = insertvalue [5 x i32] %116, i32 0, 3
  %118 = insertvalue [5 x i32] %117, i32 0, 4
  %119 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %118) #11
  %120 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 4
  store ptr %119, ptr %120, align 4
  %121 = insertvalue [5 x i32] %108, i32 16, 1
  %122 = insertvalue [5 x i32] %121, i32 23, 2
  %123 = insertvalue [5 x i32] %122, i32 0, 3
  %124 = insertvalue [5 x i32] %123, i32 0, 4
  %125 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %124) #11
  %126 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 5
  store ptr %125, ptr %126, align 4
  %127 = insertvalue [5 x i32] %108, i32 24, 1
  %128 = insertvalue [5 x i32] %127, i32 31, 2
  %129 = insertvalue [5 x i32] %128, i32 0, 3
  %130 = insertvalue [5 x i32] %129, i32 0, 4
  %131 = tail call ptr @devm_regmap_field_alloc(ptr noundef %81, ptr noundef %82, [5 x i32] %130) #11
  %132 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 6
  store ptr %131, ptr %132, align 4
  br label %250

133:                                              ; preds = %74
  %134 = load ptr, ptr %0, align 4
  %135 = load ptr, ptr %15, align 4
  %136 = getelementptr inbounds %struct.st_pctl_data, ptr %78, i32 0, i32 9
  %137 = load i32, ptr %136, align 4
  %138 = shl i32 %1, 3
  %139 = add i32 %137, %138
  %140 = shl i32 %139, 2
  %141 = load i32, ptr %13, align 4
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %133
  %145 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5
  %146 = insertvalue [5 x i32] poison, i32 %140, 0
  %147 = insertvalue [5 x i32] %146, i32 0, 1
  %148 = insertvalue [5 x i32] %147, i32 31, 2
  %149 = insertvalue [5 x i32] %148, i32 0, 3
  %150 = insertvalue [5 x i32] %149, i32 0, 4
  %151 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %150) #11
  store ptr %151, ptr %145, align 4
  %152 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  %153 = add i32 %140, 4
  br i1 %152, label %250, label %154

154:                                              ; preds = %144, %133
  %155 = phi i32 [ %153, %144 ], [ %140, %133 ]
  %156 = and i32 %141, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %154
  %159 = insertvalue [5 x i32] poison, i32 %155, 0
  %160 = insertvalue [5 x i32] %159, i32 0, 1
  %161 = insertvalue [5 x i32] %160, i32 31, 2
  %162 = insertvalue [5 x i32] %161, i32 0, 3
  %163 = insertvalue [5 x i32] %162, i32 0, 4
  %164 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %163) #11
  %165 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 1
  store ptr %164, ptr %165, align 4
  %166 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  %167 = add i32 %155, 4
  br i1 %166, label %250, label %168

168:                                              ; preds = %158, %154
  %169 = phi i32 [ %167, %158 ], [ %155, %154 ]
  %170 = and i32 %141, 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %168
  %173 = insertvalue [5 x i32] poison, i32 %169, 0
  %174 = insertvalue [5 x i32] %173, i32 0, 1
  %175 = insertvalue [5 x i32] %174, i32 31, 2
  %176 = insertvalue [5 x i32] %175, i32 0, 3
  %177 = insertvalue [5 x i32] %176, i32 0, 4
  %178 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %177) #11
  %179 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 2
  store ptr %178, ptr %179, align 4
  %180 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  %181 = add i32 %169, 4
  br i1 %180, label %250, label %182

182:                                              ; preds = %172, %168
  %183 = phi i32 [ %181, %172 ], [ %169, %168 ]
  %184 = and i32 %141, 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %182
  %187 = insertvalue [5 x i32] poison, i32 %183, 0
  %188 = insertvalue [5 x i32] %187, i32 0, 1
  %189 = insertvalue [5 x i32] %188, i32 31, 2
  %190 = insertvalue [5 x i32] %189, i32 0, 3
  %191 = insertvalue [5 x i32] %190, i32 0, 4
  %192 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %191) #11
  %193 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 3
  store ptr %192, ptr %193, align 4
  %194 = icmp ugt ptr %192, inttoptr (i32 -4096 to ptr)
  %195 = add i32 %183, 4
  br i1 %194, label %250, label %196

196:                                              ; preds = %186, %182
  %197 = phi i32 [ %195, %186 ], [ %183, %182 ]
  %198 = and i32 %141, 16
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %210, label %200

200:                                              ; preds = %196
  %201 = insertvalue [5 x i32] poison, i32 %197, 0
  %202 = insertvalue [5 x i32] %201, i32 0, 1
  %203 = insertvalue [5 x i32] %202, i32 31, 2
  %204 = insertvalue [5 x i32] %203, i32 0, 3
  %205 = insertvalue [5 x i32] %204, i32 0, 4
  %206 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %205) #11
  %207 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 4
  store ptr %206, ptr %207, align 4
  %208 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  %209 = add i32 %197, 4
  br i1 %208, label %250, label %210

210:                                              ; preds = %200, %196
  %211 = phi i32 [ %209, %200 ], [ %197, %196 ]
  %212 = and i32 %141, 32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %210
  %215 = insertvalue [5 x i32] poison, i32 %211, 0
  %216 = insertvalue [5 x i32] %215, i32 0, 1
  %217 = insertvalue [5 x i32] %216, i32 31, 2
  %218 = insertvalue [5 x i32] %217, i32 0, 3
  %219 = insertvalue [5 x i32] %218, i32 0, 4
  %220 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %219) #11
  %221 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 5
  store ptr %220, ptr %221, align 4
  %222 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  %223 = add i32 %211, 4
  br i1 %222, label %250, label %224

224:                                              ; preds = %214, %210
  %225 = phi i32 [ %223, %214 ], [ %211, %210 ]
  %226 = and i32 %141, 64
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %224
  %229 = insertvalue [5 x i32] poison, i32 %225, 0
  %230 = insertvalue [5 x i32] %229, i32 0, 1
  %231 = insertvalue [5 x i32] %230, i32 31, 2
  %232 = insertvalue [5 x i32] %231, i32 0, 3
  %233 = insertvalue [5 x i32] %232, i32 0, 4
  %234 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %233) #11
  %235 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 6
  store ptr %234, ptr %235, align 4
  %236 = icmp ugt ptr %234, inttoptr (i32 -4096 to ptr)
  %237 = add i32 %225, 4
  br i1 %236, label %250, label %238

238:                                              ; preds = %228, %224
  %239 = phi i32 [ %237, %228 ], [ %225, %224 ]
  %240 = and i32 %141, 128
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %250, label %242

242:                                              ; preds = %238
  %243 = insertvalue [5 x i32] poison, i32 %239, 0
  %244 = insertvalue [5 x i32] %243, i32 0, 1
  %245 = insertvalue [5 x i32] %244, i32 31, 2
  %246 = insertvalue [5 x i32] %245, i32 0, 3
  %247 = insertvalue [5 x i32] %246, i32 0, 4
  %248 = tail call ptr @devm_regmap_field_alloc(ptr noundef %134, ptr noundef %135, [5 x i32] %247) #11
  %249 = getelementptr %struct.st_gpio_bank, ptr %12, i32 %1, i32 3, i32 5, i32 0, i32 0, i32 7
  store ptr %248, ptr %249, align 4
  br label %250

250:                                              ; preds = %242, %238, %228, %214, %200, %186, %172, %158, %144, %80, %74
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__gpio_irq_handler(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.st_gpio_bank, ptr %0, i32 0, i32 5
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.st_gpio_bank, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  %7 = getelementptr inbounds %struct.st_gpio_bank, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 37, i32 1
  br label %9

9:                                                ; preds = %25, %1
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 16
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr i8, ptr %13, i32 80
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !13
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 96
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !14
  %19 = xor i32 %15, %12
  %20 = and i32 %18, %19
  store i32 %20, ptr %2, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %9
  %23 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #11
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %26, label %25

25:                                               ; preds = %52, %22
  br label %9

26:                                               ; preds = %52, %22
  %27 = phi i32 [ %54, %52 ], [ %23, %22 ]
  %28 = shl i32 %27, 2
  %29 = lshr i32 %6, %28
  %30 = and i32 %29, 15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %26
  %33 = call ptr @gpiochip_get_data(ptr noundef %0) #11
  %34 = getelementptr inbounds %struct.st_gpio_bank, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 16
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %38 = lshr i32 %37, %27
  %39 = and i32 %38, 1
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !16
  call void @arm_heavy_mb() #11
  %40 = shl nuw i32 1, %27
  %41 = icmp eq i32 %39, 0
  %42 = load ptr, ptr %7, align 4
  %43 = select i1 %41, i32 88, i32 84
  %44 = getelementptr i8, ptr %42, i32 %43
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %40) #11, !srcloc !17
  %45 = icmp ne i32 %30, 3
  %46 = and i32 %29, 1
  %47 = icmp eq i32 %46, %39
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %52, label %49

49:                                               ; preds = %32, %26
  %50 = load ptr, ptr %8, align 4
  %51 = call i32 @generic_handle_domain_irq(ptr noundef %50, i32 noundef %27) #11
  br label %52

52:                                               ; preds = %49, %32
  %53 = add nsw i32 %27, 1
  %54 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %53) #11
  %55 = icmp slt i32 %54, 32
  br i1 %55, label %26, label %25

56:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.st_gpio_bank, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %8 = lshr i32 %7, %1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %5) #11
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
  tail call void %12(ptr noundef %15) #11
  br label %24

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %18(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  tail call void %21(ptr noundef %19) #11
  br label %24

24:                                               ; preds = %23, %16, %14, %1
  tail call fastcc void @__gpio_irq_handler(ptr noundef %6)
  %25 = load ptr, ptr %7, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi ptr [ %29, %27 ], [ %25, %24 ]
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %31(ptr noundef %32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_pio_control, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #11
  %7 = getelementptr inbounds %struct.st_gpio_bank, ptr %6, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef align 4 dereferenceable(52) %7, i32 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.st_pio_control, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = shl i32 %1, 2
  %13 = call i32 @regmap_field_read(ptr noundef nonnull %9, ptr noundef nonnull %3) #11
  %14 = load i32, ptr %3, align 4
  %15 = shl i32 15, %12
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  call fastcc void @st_pinconf_get_direction(ptr noundef nonnull %4, i32 noundef %1, ptr noundef nonnull %5)
  %19 = load i32, ptr %5, align 4
  %20 = lshr i32 %19, 27
  %21 = and i32 %20, 1
  %22 = xor i32 %21, 1
  br label %47

23:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %24

24:                                               ; preds = %23, %11
  %25 = getelementptr inbounds %struct.st_gpio_bank, ptr %6, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 32
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %29 = lshr i32 %28, %1
  %30 = and i32 %29, 1
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr i8, ptr %31, i32 48
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %34 = lshr i32 %33, %1
  %35 = shl i32 %34, 1
  %36 = and i32 %35, 2
  %37 = or i32 %36, %30
  %38 = load ptr, ptr %25, align 4
  %39 = getelementptr i8, ptr %38, i32 64
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %41 = lshr i32 %40, %1
  %42 = shl i32 %41, 2
  %43 = and i32 %42, 4
  %44 = or i32 %43, %37
  %45 = icmp eq i32 %44, 4
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %24, %18
  %48 = phi i32 [ %22, %18 ], [ %46, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #11
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_direction_input(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #11
  %5 = icmp eq i32 %2, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  %6 = shl nuw i32 1, %1
  %7 = getelementptr inbounds %struct.st_gpio_bank, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br i1 %5, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #11, !srcloc !17
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %6) #11, !srcloc !17
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %1
  %17 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %16) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #11
  %5 = icmp eq i32 %2, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #11
  tail call void @arm_heavy_mb() #11
  %6 = shl nuw i32 1, %1
  %7 = getelementptr inbounds %struct.st_gpio_bank, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br i1 %5, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #11, !srcloc !17
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %6) #11, !srcloc !17
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @st_pinconf_get_direction(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.st_pio_control, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = call i32 @regmap_field_read(ptr noundef nonnull %8, ptr noundef nonnull %4) #11
  %12 = load i32, ptr %4, align 4
  %13 = shl nuw i32 1, %1
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4
  %18 = or i32 %17, 134217728
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %16, %10, %3
  %20 = getelementptr inbounds %struct.st_pio_control, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = call i32 @regmap_field_read(ptr noundef nonnull %21, ptr noundef nonnull %5) #11
  %25 = load i32, ptr %5, align 4
  %26 = shl nuw i32 1, %1
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, ptr %2, align 4
  %31 = or i32 %30, 67108864
  store i32 %31, ptr %2, align 4
  br label %32

32:                                               ; preds = %29, %23, %19
  %33 = getelementptr inbounds %struct.st_pio_control, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = call i32 @regmap_field_read(ptr noundef nonnull %34, ptr noundef nonnull %6) #11
  %38 = load i32, ptr %6, align 4
  %39 = shl nuw i32 1, %1
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %2, align 4
  %44 = or i32 %43, 33554432
  store i32 %44, ptr %2, align 4
  br label %45

45:                                               ; preds = %42, %36, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !19
  tail call void @arm_heavy_mb() #11
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.st_gpio_bank, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #11, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !20
  tail call void @arm_heavy_mb() #11
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.st_gpio_bank, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #11, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  switch i32 %1, label %48 [
    i32 4, label %25
    i32 2, label %8
    i32 8, label %11
    i32 1, label %12
    i32 3, label %15
  ]

8:                                                ; preds = %2
  %9 = shl i32 %7, 2
  %10 = shl nuw i32 1, %9
  br label %25

11:                                               ; preds = %2
  br label %25

12:                                               ; preds = %2
  %13 = shl i32 %7, 2
  %14 = shl i32 2, %13
  br label %25

15:                                               ; preds = %2
  %16 = tail call ptr @gpiochip_get_data(ptr noundef %5) #11
  %17 = getelementptr inbounds %struct.st_gpio_bank, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !15
  %21 = lshr i32 %20, %7
  %22 = and i32 %21, 1
  %23 = shl i32 %7, 2
  %24 = shl i32 3, %23
  br label %25

25:                                               ; preds = %15, %12, %11, %8, %2
  %26 = phi i32 [ %24, %15 ], [ %14, %12 ], [ 0, %11 ], [ %10, %8 ], [ 0, %2 ]
  %27 = phi i32 [ %22, %15 ], [ 1, %12 ], [ 1, %11 ], [ 0, %8 ], [ 0, %2 ]
  %28 = getelementptr inbounds %struct.st_gpio_bank, ptr %5, i32 0, i32 5
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #11
  %30 = shl i32 %7, 2
  %31 = shl i32 15, %30
  %32 = xor i32 %31, -1
  %33 = getelementptr inbounds %struct.st_gpio_bank, ptr %5, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %32
  %36 = or i32 %35, %26
  store i32 %36, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #11
  %37 = getelementptr inbounds %struct.st_gpio_bank, ptr %5, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 80
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !21
  %41 = shl nuw i32 1, %7
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = shl nuw i32 %27, %7
  %45 = or i32 %43, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !22
  tail call void @arm_heavy_mb() #11
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr i8, ptr %46, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #11, !srcloc !17
  br label %48

48:                                               ; preds = %25, %2
  %49 = phi i32 [ 0, %25 ], [ -22, %2 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_gpio_irq_request_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %8) #11
  %10 = load i32, ptr %4, align 4
  %11 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %3, i32 noundef %10) #11
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_gpio_irq_release_resources(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %3, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pctl_get_groups_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.st_pinctrl, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_pctl_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.st_pinctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.st_pctl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pctl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.st_pctl_group, ptr %11, i32 %1, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %13, ptr %2, align 4
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.st_pctl_group, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  br label %17

17:                                               ; preds = %9, %4
  %18 = phi i32 [ 0, %9 ], [ -22, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pctl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i32 %18, 1
  %16 = icmp eq i32 %15, %9
  br i1 %16, label %25, label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = getelementptr %struct.st_pctl_group, ptr %13, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @strcmp(ptr noundef %20, ptr noundef %7) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14

23:                                               ; preds = %17
  %24 = icmp eq ptr %19, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23, %14, %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25, ptr noundef %1) #12
  br label %73

26:                                               ; preds = %23
  %27 = getelementptr %struct.st_pctl_group, ptr %13, i32 %18, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 28) #11
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %73, label %32, !prof !8

32:                                               ; preds = %26
  %33 = extractvalue { i32, i1 } %30, 0
  %34 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %33, i32 noundef 3520) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %73, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @of_get_parent(ptr noundef %1) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @devm_kfree(ptr noundef %6, ptr noundef nonnull %34) #11
  br label %73

40:                                               ; preds = %36
  store ptr %34, ptr %2, align 4
  store i32 %29, ptr %3, align 4
  %41 = getelementptr inbounds %struct.pinctrl_map, ptr %34, i32 0, i32 2
  store i32 2, ptr %41, align 4
  %42 = load ptr, ptr %37, align 4
  %43 = getelementptr inbounds %struct.pinctrl_map, ptr %34, i32 0, i32 4
  %44 = getelementptr inbounds %struct.pinctrl_map, ptr %34, i32 0, i32 4, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  %45 = load ptr, ptr %1, align 4
  store ptr %45, ptr %43, align 4
  tail call void @of_node_put(ptr noundef nonnull %37) #11
  %46 = getelementptr %struct.pinctrl_map, ptr %34, i32 1
  %47 = load i32, ptr %27, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %40
  %50 = getelementptr %struct.st_pctl_group, ptr %13, i32 %18, i32 1
  %51 = getelementptr %struct.st_pctl_group, ptr %13, i32 %18, i32 3
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i32 [ 0, %49 ], [ %65, %52 ]
  %54 = getelementptr %struct.pinctrl_map, ptr %46, i32 %53
  %55 = getelementptr inbounds %struct.pinctrl_map, ptr %54, i32 0, i32 2
  store i32 3, ptr %55, align 4
  %56 = load ptr, ptr %50, align 4
  %57 = getelementptr i32, ptr %56, i32 %53
  %58 = load i32, ptr %57, align 4
  %59 = tail call ptr @pin_get_name(ptr noundef %0, i32 noundef %58) #11
  %60 = getelementptr inbounds %struct.pinctrl_map, ptr %54, i32 0, i32 4
  store ptr %59, ptr %60, align 4
  %61 = load ptr, ptr %51, align 4
  %62 = getelementptr %struct.st_pinconf, ptr %61, i32 %53, i32 2
  %63 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %60, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %60, i32 0, i32 2
  store i32 1, ptr %64, align 4
  %65 = add nuw i32 %53, 1
  %66 = load i32, ptr %27, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %52, label %68

68:                                               ; preds = %52, %40
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.pinctrl_map, ptr %69, i32 0, i32 4, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.26, ptr noundef %71, ptr noundef %72, i32 noundef %29) #12
  br label %73

73:                                               ; preds = %68, %39, %32, %26, %25
  %74 = phi i32 [ 0, %68 ], [ -22, %39 ], [ -22, %25 ], [ -12, %32 ], [ -12, %26 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @st_pctl_dt_free_map(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pmx_get_funcs_count(ptr noundef %0) #2 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.st_pinctrl, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @st_pmx_get_fname(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.st_pinctrl, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.st_pmx_func, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pmx_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.st_pmx_func, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.st_pmx_func, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %6 = getelementptr inbounds %struct.st_pinctrl, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.st_pctl_group, ptr %7, i32 %2, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.st_pctl_group, ptr %7, i32 %2, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %35, %3
  %14 = phi i32 [ %36, %35 ], [ 0, %3 ]
  %15 = getelementptr %struct.st_pinconf, ptr %9, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %0, i32 noundef %16) #11
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr %struct.st_pinconf, ptr %9, i32 %14, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %17, i32 44
  %22 = load ptr, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %13
  %25 = srem i32 %18, 8
  %26 = shl nsw i32 %25, 2
  %27 = call i32 @regmap_field_read(ptr noundef nonnull %22, ptr noundef nonnull %4) #11
  %28 = shl i32 15, %26
  %29 = xor i32 %28, -1
  %30 = load i32, ptr %4, align 4
  %31 = and i32 %30, %29
  %32 = shl i32 %20, %26
  %33 = or i32 %31, %32
  store i32 %33, ptr %4, align 4
  %34 = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %22, i32 noundef -1, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %35

35:                                               ; preds = %24, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %36 = add nuw i32 %14, 1
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr %struct.st_pctl_group, ptr %37, i32 %2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %13, label %41

41:                                               ; preds = %35, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pmx_set_gpio_direction(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %1, i32 44
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = srem i32 %2, 8
  %11 = shl nsw i32 %10, 2
  %12 = call i32 @regmap_field_read(ptr noundef nonnull %7, ptr noundef nonnull %5) #11
  %13 = shl i32 15, %11
  %14 = xor i32 %13, -1
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, ptr %5, align 4
  %17 = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %7, i32 noundef -1, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %18

18:                                               ; preds = %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %19 = select i1 %3, i32 4, i32 2
  %20 = and i32 %2, 7
  %21 = shl nuw nsw i32 1, %20
  %22 = getelementptr i8, ptr %1, i32 36
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #11, !srcloc !17
  %25 = and i32 %19, 2
  %26 = icmp eq i32 %25, 0
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  %27 = load ptr, ptr %22, align 4
  br i1 %26, label %30, label %28

28:                                               ; preds = %18
  %29 = getelementptr i8, ptr %27, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %21) #11, !srcloc !17
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %27, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %21) #11, !srcloc !17
  br label %32

32:                                               ; preds = %30, %28
  %33 = and i32 %19, 4
  %34 = icmp eq i32 %33, 0
  call void asm sideeffect "dsb st", "~{memory}"() #11
  call void @arm_heavy_mb() #11
  %35 = load ptr, ptr %22, align 4
  br i1 %34, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %35, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %21) #11, !srcloc !17
  br label %40

38:                                               ; preds = %32
  %39 = getelementptr i8, ptr %35, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %21) #11, !srcloc !17
  br label %40

40:                                               ; preds = %38, %36
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = srem i32 %1, 8
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %10 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %0, i32 noundef %1) #11
  %11 = getelementptr i8, ptr %10, i32 40
  store i32 0, ptr %2, align 4
  tail call fastcc void @st_pinconf_get_direction(ptr noundef %11, i32 noundef %8, ptr noundef %2)
  %12 = getelementptr inbounds %struct.st_pinctrl, ptr %9, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %171 [
    i32 1, label %15
    i32 2, label %117
  ]

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %10, i32 60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !9
  %17 = load i32, ptr %2, align 4
  %18 = getelementptr i8, ptr %10, i32 76
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %7) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, ptr %7, align 4
  %24 = shl nuw nsw i32 1, %8
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 4
  %29 = or i32 %28, 8388608
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %27, %22, %15
  %31 = load ptr, ptr %16, align 4
  %32 = call i32 @regmap_field_read(ptr noundef %31, ptr noundef nonnull %7) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32, ptr %7, align 4
  %36 = shl nuw nsw i32 1, %8
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %2, align 4
  %41 = or i32 %40, 262144
  store i32 %41, ptr %2, align 4
  br label %42

42:                                               ; preds = %39, %34, %30
  %43 = getelementptr i8, ptr %10, i32 80
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @regmap_field_read(ptr noundef %44, ptr noundef nonnull %7) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, ptr %7, align 4
  %49 = shl nuw nsw i32 1, %8
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %2, align 4
  %54 = or i32 %53, 2097152
  store i32 %54, ptr %2, align 4
  br label %55

55:                                               ; preds = %52, %47, %42
  %56 = getelementptr i8, ptr %10, i32 84
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @regmap_field_read(ptr noundef %57, ptr noundef nonnull %7) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, ptr %7, align 4
  %62 = shl nuw nsw i32 1, %8
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, ptr %2, align 4
  %67 = or i32 %66, 1048576
  store i32 %67, ptr %2, align 4
  br label %68

68:                                               ; preds = %65, %60, %55
  %69 = getelementptr i8, ptr %10, i32 72
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 @regmap_field_read(ptr noundef %70, ptr noundef nonnull %7) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, ptr %7, align 4
  %75 = shl nuw nsw i32 1, %8
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, ptr %2, align 4
  %80 = or i32 %79, 4194304
  store i32 %80, ptr %2, align 4
  br label %81

81:                                               ; preds = %78, %73, %68
  %82 = getelementptr i8, ptr %10, i32 64
  %83 = load ptr, ptr %82, align 4
  %84 = call i32 @regmap_field_read(ptr noundef %83, ptr noundef nonnull %5) #11
  %85 = getelementptr i8, ptr %10, i32 68
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 @regmap_field_read(ptr noundef %86, ptr noundef nonnull %6) #11
  %88 = load i32, ptr %6, align 4
  %89 = lshr i32 %88, %8
  %90 = shl i32 %89, 1
  %91 = and i32 %90, 2
  %92 = load i32, ptr %5, align 4
  %93 = lshr i32 %92, %8
  %94 = and i32 %93, 1
  %95 = or i32 %91, %94
  %96 = and i32 %17, 134217728
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.st_pctl_data, ptr %13, i32 0, i32 4
  %99 = getelementptr inbounds %struct.st_pctl_data, ptr %13, i32 0, i32 2
  %100 = select i1 %97, ptr %99, ptr %98
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %101, %95
  br i1 %102, label %103, label %111

103:                                              ; preds = %81
  %104 = getelementptr inbounds %struct.st_pctl_data, ptr %13, i32 0, i32 1
  %105 = getelementptr inbounds %struct.st_pctl_data, ptr %13, i32 0, i32 3
  %106 = select i1 %97, ptr %104, ptr %105
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i32, ptr %107, i32 %95
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 65535
  br label %113

111:                                              ; preds = %81
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %113

113:                                              ; preds = %111, %103
  %114 = phi i32 [ %110, %103 ], [ 0, %111 ]
  %115 = load i32, ptr %2, align 4
  %116 = or i32 %115, %114
  store i32 %116, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %171

117:                                              ; preds = %3
  %118 = shl nuw nsw i32 1, %8
  %119 = load i32, ptr %11, align 4
  %120 = and i32 %119, %118
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %171, label %122

122:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %123 = load i32, ptr %2, align 4
  %124 = getelementptr i8, ptr %10, i32 60
  %125 = getelementptr [8 x ptr], ptr %124, i32 0, i32 %8
  %126 = load ptr, ptr %125, align 4
  %127 = call i32 @regmap_field_read(ptr noundef %126, ptr noundef nonnull %4) #11
  %128 = load i32, ptr %4, align 4
  %129 = shl i32 %128, 18
  %130 = and i32 %129, 786432
  %131 = load i32, ptr %2, align 4
  %132 = or i32 %130, %131
  store i32 %132, ptr %2, align 4
  %133 = lshr i32 %128, 3
  %134 = and i32 %133, 15
  %135 = load ptr, ptr %12, align 4
  %136 = and i32 %123, 134217728
  %137 = icmp eq i32 %136, 0
  %138 = getelementptr inbounds %struct.st_pctl_data, ptr %135, i32 0, i32 4
  %139 = getelementptr inbounds %struct.st_pctl_data, ptr %135, i32 0, i32 2
  %140 = select i1 %137, ptr %139, ptr %138
  %141 = load i32, ptr %140, align 4
  %142 = icmp ugt i32 %141, %134
  br i1 %142, label %143, label %151

143:                                              ; preds = %122
  %144 = getelementptr inbounds %struct.st_pctl_data, ptr %135, i32 0, i32 1
  %145 = getelementptr inbounds %struct.st_pctl_data, ptr %135, i32 0, i32 3
  %146 = select i1 %137, ptr %144, ptr %145
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i32, ptr %147, i32 %134
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 65535
  br label %155

151:                                              ; preds = %122
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  %153 = load i32, ptr %2, align 4
  %154 = load i32, ptr %4, align 4
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi i32 [ %128, %143 ], [ %154, %151 ]
  %157 = phi i32 [ %132, %143 ], [ %153, %151 ]
  %158 = phi i32 [ %150, %143 ], [ 0, %151 ]
  %159 = or i32 %158, %157
  %160 = shl i32 %156, 19
  %161 = and i32 %160, 2097152
  %162 = or i32 %159, %161
  %163 = shl i32 %156, 12
  %164 = and i32 %163, 1048576
  %165 = or i32 %162, %164
  %166 = shl i32 %156, 13
  %167 = and i32 %166, 4194304
  %168 = or i32 %165, %167
  %169 = and i32 %166, 8388608
  %170 = or i32 %168, %169
  store i32 %170, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %171

171:                                              ; preds = %155, %117, %113, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @st_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #11
  %16 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %0, i32 noundef %1) #11
  %17 = getelementptr i8, ptr %16, i32 40
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %239, label %19

19:                                               ; preds = %4
  %20 = srem i32 %1, 8
  %21 = getelementptr i8, ptr %16, i32 48
  %22 = getelementptr i8, ptr %16, i32 52
  %23 = getelementptr i8, ptr %16, i32 56
  %24 = shl nuw nsw i32 1, %20
  %25 = xor i32 %24, -1
  %26 = getelementptr inbounds %struct.st_pinctrl, ptr %15, i32 0, i32 9
  %27 = getelementptr i8, ptr %16, i32 60
  %28 = getelementptr [8 x ptr], ptr %27, i32 0, i32 %20
  %29 = getelementptr i8, ptr %16, i32 80
  %30 = getelementptr i8, ptr %16, i32 84
  %31 = getelementptr i8, ptr %16, i32 72
  %32 = getelementptr i8, ptr %16, i32 76
  %33 = getelementptr i8, ptr %16, i32 64
  %34 = getelementptr i8, ptr %16, i32 68
  br label %35

35:                                               ; preds = %236, %19
  %36 = phi i32 [ 0, %19 ], [ %237, %236 ]
  %37 = getelementptr i32, ptr %2, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %21, align 4
  %40 = load ptr, ptr %22, align 4
  %41 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  store i32 0, ptr %12, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  store i32 0, ptr %13, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store i32 0, ptr %14, align 4, !annotation !9
  %42 = icmp eq ptr %39, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %35
  %44 = call i32 @regmap_field_read(ptr noundef nonnull %39, ptr noundef nonnull %12) #11
  %45 = load i32, ptr %12, align 4
  %46 = and i32 %45, %25
  %47 = and i32 %38, 134217728
  %48 = icmp eq i32 %47, 0
  %49 = or i32 %45, %24
  %50 = select i1 %48, i32 %46, i32 %49
  store i32 %50, ptr %12, align 4
  %51 = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %39, i32 noundef -1, i32 noundef %50, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %52

52:                                               ; preds = %43, %35
  %53 = icmp eq ptr %40, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = call i32 @regmap_field_read(ptr noundef nonnull %40, ptr noundef nonnull %13) #11
  %56 = load i32, ptr %13, align 4
  %57 = and i32 %56, %25
  %58 = and i32 %38, 67108864
  %59 = icmp eq i32 %58, 0
  %60 = or i32 %56, %24
  %61 = select i1 %59, i32 %57, i32 %60
  store i32 %61, ptr %13, align 4
  %62 = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %40, i32 noundef -1, i32 noundef %61, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %63

63:                                               ; preds = %54, %52
  %64 = icmp eq ptr %41, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = call i32 @regmap_field_read(ptr noundef nonnull %41, ptr noundef nonnull %14) #11
  %67 = load i32, ptr %14, align 4
  %68 = and i32 %67, %25
  %69 = and i32 %38, 33554432
  %70 = icmp eq i32 %69, 0
  %71 = or i32 %67, %24
  %72 = select i1 %70, i32 %68, i32 %71
  store i32 %72, ptr %14, align 4
  %73 = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %41, i32 noundef -1, i32 noundef %72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %74

74:                                               ; preds = %65, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  %75 = load i32, ptr %37, align 4
  %76 = load ptr, ptr %26, align 4
  %77 = load i32, ptr %76, align 4
  switch i32 %77, label %236 [
    i32 1, label %78
    i32 2, label %176
  ]

78:                                               ; preds = %74
  %79 = load ptr, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4
  %80 = call i32 @regmap_field_read(ptr noundef %79, ptr noundef nonnull %11) #11
  %81 = and i32 %75, 786432
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr %11, align 4
  %84 = and i32 %83, %25
  %85 = or i32 %83, %24
  %86 = select i1 %82, i32 %84, i32 %85
  store i32 %86, ptr %11, align 4
  %87 = call i32 @regmap_field_update_bits_base(ptr noundef %79, i32 noundef -1, i32 noundef %86, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %88 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  store i32 0, ptr %10, align 4
  %89 = call i32 @regmap_field_read(ptr noundef %88, ptr noundef nonnull %10) #11
  %90 = and i32 %75, 2097152
  %91 = icmp eq i32 %90, 0
  %92 = load i32, ptr %10, align 4
  %93 = and i32 %92, %25
  %94 = or i32 %92, %24
  %95 = select i1 %91, i32 %93, i32 %94
  store i32 %95, ptr %10, align 4
  %96 = call i32 @regmap_field_update_bits_base(ptr noundef %88, i32 noundef -1, i32 noundef %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %97 = load ptr, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4
  %98 = call i32 @regmap_field_read(ptr noundef %97, ptr noundef nonnull %9) #11
  %99 = and i32 %75, 1048576
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %9, align 4
  %102 = and i32 %101, %25
  %103 = or i32 %101, %24
  %104 = select i1 %100, i32 %102, i32 %103
  store i32 %104, ptr %9, align 4
  %105 = call i32 @regmap_field_update_bits_base(ptr noundef %97, i32 noundef -1, i32 noundef %104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %106 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4
  %107 = call i32 @regmap_field_read(ptr noundef %106, ptr noundef nonnull %8) #11
  %108 = and i32 %75, 4194304
  %109 = icmp eq i32 %108, 0
  %110 = load i32, ptr %8, align 4
  %111 = and i32 %110, %25
  %112 = or i32 %110, %24
  %113 = select i1 %109, i32 %111, i32 %112
  store i32 %113, ptr %8, align 4
  %114 = call i32 @regmap_field_update_bits_base(ptr noundef %106, i32 noundef -1, i32 noundef %113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  %115 = load ptr, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4
  %116 = call i32 @regmap_field_read(ptr noundef %115, ptr noundef nonnull %7) #11
  %117 = and i32 %75, 8388608
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr %7, align 4
  %120 = and i32 %119, %25
  %121 = or i32 %119, %24
  %122 = select i1 %118, i32 %120, i32 %121
  store i32 %122, ptr %7, align 4
  %123 = call i32 @regmap_field_update_bits_base(ptr noundef %115, i32 noundef -1, i32 noundef %122, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %124 = and i32 %75, 65535
  %125 = and i32 %75, 134217728
  %126 = icmp eq i32 %125, 0
  %127 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 3
  %128 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 4
  %129 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 1
  %130 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 2
  %131 = select i1 %126, ptr %130, ptr %128
  %132 = select i1 %126, ptr %129, ptr %127
  %133 = load ptr, ptr %132, align 4
  %134 = load i32, ptr %131, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %143, %78
  %137 = phi i32 [ %147, %143 ], [ -1, %78 ]
  %138 = phi i32 [ %148, %143 ], [ -1, %78 ]
  %139 = phi i32 [ %149, %143 ], [ 0, %78 ]
  %140 = getelementptr i32, ptr %133, i32 %139
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %124, %141
  br i1 %142, label %156, label %143

143:                                              ; preds = %136
  %144 = sub i32 %124, %141
  %145 = call i32 @llvm.abs.i32(i32 %144, i1 false) #11
  %146 = icmp ult i32 %145, %137
  %147 = call i32 @llvm.umin.i32(i32 %145, i32 %137) #11
  %148 = select i1 %146, i32 %139, i32 %138
  %149 = add nuw nsw i32 %139, 1
  %150 = icmp eq i32 %149, %134
  br i1 %150, label %151, label %136

151:                                              ; preds = %143, %78
  %152 = phi i32 [ -1, %78 ], [ %148, %143 ]
  %153 = getelementptr i32, ptr %133, i32 %152
  %154 = load i32, ptr %153, align 4
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %124, i32 noundef %154) #12
  br label %156

156:                                              ; preds = %151, %136
  %157 = phi i32 [ %152, %151 ], [ %139, %136 ]
  %158 = load ptr, ptr %33, align 4
  %159 = and i32 %157, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4
  %160 = call i32 @regmap_field_read(ptr noundef %158, ptr noundef nonnull %6) #11
  %161 = icmp eq i32 %159, 0
  %162 = load i32, ptr %6, align 4
  %163 = and i32 %162, %25
  %164 = or i32 %162, %24
  %165 = select i1 %161, i32 %163, i32 %164
  store i32 %165, ptr %6, align 4
  %166 = call i32 @regmap_field_update_bits_base(ptr noundef %158, i32 noundef -1, i32 noundef %165, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  %167 = load ptr, ptr %34, align 4
  %168 = and i32 %157, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4
  %169 = call i32 @regmap_field_read(ptr noundef %167, ptr noundef nonnull %5) #11
  %170 = icmp eq i32 %168, 0
  %171 = load i32, ptr %5, align 4
  %172 = and i32 %171, %25
  %173 = or i32 %171, %24
  %174 = select i1 %170, i32 %172, i32 %173
  store i32 %174, ptr %5, align 4
  %175 = call i32 @regmap_field_update_bits_base(ptr noundef %167, i32 noundef -1, i32 noundef %174, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %236

176:                                              ; preds = %74
  %177 = load i32, ptr %17, align 4
  %178 = and i32 %177, %24
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %236, label %180

180:                                              ; preds = %176
  %181 = and i32 %75, 65535
  %182 = and i32 %75, 134217728
  %183 = icmp eq i32 %182, 0
  %184 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 3
  %185 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 4
  %186 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 1
  %187 = getelementptr inbounds %struct.st_pctl_data, ptr %76, i32 0, i32 2
  %188 = select i1 %183, ptr %187, ptr %185
  %189 = select i1 %183, ptr %186, ptr %184
  %190 = load ptr, ptr %189, align 4
  %191 = load i32, ptr %188, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %200, %180
  %194 = phi i32 [ %204, %200 ], [ -1, %180 ]
  %195 = phi i32 [ %205, %200 ], [ -1, %180 ]
  %196 = phi i32 [ %206, %200 ], [ 0, %180 ]
  %197 = getelementptr i32, ptr %190, i32 %196
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %181, %198
  br i1 %199, label %213, label %200

200:                                              ; preds = %193
  %201 = sub i32 %181, %198
  %202 = call i32 @llvm.abs.i32(i32 %201, i1 false) #11
  %203 = icmp ult i32 %202, %194
  %204 = call i32 @llvm.umin.i32(i32 %202, i32 %194) #11
  %205 = select i1 %203, i32 %196, i32 %195
  %206 = add nuw nsw i32 %196, 1
  %207 = icmp eq i32 %206, %191
  br i1 %207, label %208, label %193

208:                                              ; preds = %200, %180
  %209 = phi i32 [ -1, %180 ], [ %205, %200 ]
  %210 = getelementptr i32, ptr %190, i32 %209
  %211 = load i32, ptr %210, align 4
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %181, i32 noundef %211) #12
  br label %213

213:                                              ; preds = %208, %193
  %214 = phi i32 [ %209, %208 ], [ %196, %193 ]
  %215 = lshr i32 %75, 18
  %216 = and i32 %215, 3
  %217 = shl i32 %214, 3
  %218 = or i32 %217, %216
  %219 = lshr i32 %75, 20
  %220 = and i32 %219, 128
  %221 = lshr i32 %75, 13
  %222 = and i32 %221, 1024
  %223 = lshr i32 %75, 19
  %224 = and i32 %223, 4
  %225 = and i32 %221, 512
  %226 = lshr i32 %75, 12
  %227 = and i32 %226, 256
  %228 = or i32 %224, %222
  %229 = or i32 %228, %225
  %230 = or i32 %229, %227
  %231 = or i32 %230, %220
  %232 = xor i32 %231, 128
  %233 = or i32 %218, %232
  %234 = load ptr, ptr %28, align 4
  %235 = call i32 @regmap_field_update_bits_base(ptr noundef %234, i32 noundef -1, i32 noundef %233, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %236

236:                                              ; preds = %213, %176, %156, %74
  %237 = add nuw i32 %36, 1
  %238 = icmp eq i32 %237, %3
  br i1 %238, label %239, label %35

239:                                              ; preds = %236, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @st_pinconf_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = srem i32 %2, 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %8) #11
  %9 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %0, i32 noundef %2) #11
  %10 = call i32 @st_pinconf_get(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5)
  tail call void @mutex_lock(ptr noundef %8) #11
  %11 = getelementptr i8, ptr %9, i32 44
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %24

15:                                               ; preds = %3
  %16 = shl nsw i32 %7, 2
  %17 = call i32 @regmap_field_read(ptr noundef nonnull %12, ptr noundef nonnull %4) #11
  %18 = load i32, ptr %4, align 4
  %19 = lshr i32 %18, %16
  %20 = and i32 %19, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull @.str.29, i32 noundef %20)
  br label %25

24:                                               ; preds = %15, %14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) @.str.18, i32 5, i1 false)
  br label %25

25:                                               ; preds = %24, %22
  %26 = getelementptr i8, ptr %9, i32 -304
  %27 = call i32 @st_gpio_get_direction(ptr noundef %26, i32 noundef %7)
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 26
  %32 = and i32 %31, 1
  %33 = lshr i32 %30, 25
  %34 = and i32 %33, 1
  %35 = lshr i32 %30, 23
  %36 = and i32 %35, 1
  %37 = lshr i32 %30, 22
  %38 = and i32 %37, 1
  %39 = lshr i32 %30, 21
  %40 = and i32 %39, 1
  %41 = lshr i32 %30, 20
  %42 = and i32 %41, 1
  %43 = lshr i32 %30, 18
  %44 = and i32 %43, 3
  %45 = and i32 %30, 65535
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %29, i32 noundef %32, i32 noundef %34, ptr noundef nonnull %6, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %45) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!10 = !{i64 3048378}
!11 = !{i64 2152540362}
!12 = !{i64 2152538181}
!13 = !{i64 2152538520}
!14 = !{i64 2152538859}
!15 = !{i64 2152524979}
!16 = !{i64 2152539570}
!17 = !{i64 3047960}
!18 = !{i64 2152525641}
!19 = !{i64 2152535170}
!20 = !{i64 2152535664}
!21 = !{i64 2152537092}
!22 = !{i64 2152537359}
