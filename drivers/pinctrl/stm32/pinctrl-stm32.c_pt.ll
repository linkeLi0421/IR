; ModuleID = '/llk/IR/drivers/pinctrl/stm32/pinctrl-stm32.c_pt.bc'
source_filename = "../drivers/pinctrl/stm32/pinctrl-stm32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_gpio_bank = type { ptr, ptr, ptr, %struct.spinlock, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, ptr, i32, i32, [16 x i32], [16 x i8] }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i16, %struct.spinlock }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.stm32_pinctrl_match_data = type { ptr, i32 }
%struct.stm32_desc_pin = type { %struct.pinctrl_pin_desc, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.stm32_pinctrl_group = type { ptr, i32, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.stm32_desc_function = type { ptr, i8 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.63 }
%union.anon.63 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"pins-are-numbered\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"only support pins-are-numbered format\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"st,package\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"build state failed: %d\0A\00", align 1
@stm32_pconf_ops = internal constant %struct.pinconf_ops { i8 0, ptr null, ptr @stm32_pconf_set, ptr @stm32_pconf_group_get, ptr @stm32_pconf_group_set, ptr @stm32_pconf_dbg_show, ptr null, ptr null }, align 4
@stm32_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @stm32_pctrl_get_groups_count, ptr @stm32_pctrl_get_group_name, ptr @stm32_pctrl_get_group_pins, ptr null, ptr @stm32_pctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, align 4
@stm32_pmx_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @stm32_pmx_get_funcs_cnt, ptr @stm32_pmx_get_func_name, ptr @stm32_pmx_get_func_groups, ptr @stm32_pmx_set_mux, ptr null, ptr null, ptr @stm32_pmx_gpio_set_direction, i8 1 }, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed pinctrl registration\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"at least one GPIO bank is required\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to get clk (%ld)\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Pinctrl STM32 initialized\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"No gpio range defined.\0A\00", align 1
@stm32_pconf_dbg_show.modes = internal unnamed_addr constant [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"alternate\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@stm32_pconf_dbg_show.speeds = internal unnamed_addr constant [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"very high\00", align 1
@stm32_pconf_dbg_show.biasing = internal unnamed_addr constant [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"floating\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"pull up\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"pull down\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"- %s - %s\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"- %s - %s - %s - %s %s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"push pull\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"%d - %s - %s - %s %s\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"missing pins property in node %pOFn .\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"invalid function %d on pin %d .\0A\00", align 1
@stm32_gpio_functions = internal unnamed_addr constant [18 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.16], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"af0\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"af1\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"af2\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"af3\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"af4\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"af5\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"af6\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"af7\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"af8\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"af9\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"af10\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"af11\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"af12\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"af13\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"af14\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"af15\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"failed to prepare clk (%d)\0A\00", align 1
@stm32_gpio_template = internal unnamed_addr constant %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_request, ptr @stm32_gpio_free, ptr @stm32_gpio_get_direction, ptr @stm32_gpio_direction_input, ptr @stm32_gpio_direction_output, ptr @stm32_gpio_get, ptr null, ptr @stm32_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr @stm32_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"st,bank-name\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"st,bank-ioport\00", align 1
@stm32_gpio_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_domain_alloc, ptr @stm32_gpio_domain_free, ptr @stm32_gpio_domain_activate, ptr null, ptr @stm32_gpio_domain_translate }, align 4
@.str.57 = private unnamed_addr constant [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"%s bank added\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"pin %d not in range.\0A\00", align 1
@.str.60 = private unnamed_addr constant [33 x i8] c"irq line %ld already requested.\0A\00", align 1
@stm32_gpio_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.61, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @irq_chip_mask_parent, ptr null, ptr @stm32_gpio_irq_unmask, ptr @stm32_gpio_irq_eoi, ptr null, ptr null, ptr @stm32_gpio_set_type, ptr @irq_chip_set_wake_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_irq_request_resources, ptr @stm32_gpio_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [10 x i8] c"stm32gpio\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@switch.table.stm32_pmx_set_mux = private unnamed_addr constant [17 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], align 4
@switch.table.stm32_gpio_set_type = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stm32_pmx_get_mode(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = sdiv i32 %1, 8
  %6 = mul i32 %5, 8
  %7 = sub i32 %1, %6
  %8 = shl nsw i32 %7, 2
  %9 = shl nsw i32 %5, 2
  %10 = add nsw i32 %9, 32
  %11 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_enable(ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %0, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #9
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr i8, ptr %16, i32 %10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  %19 = shl nsw i32 -1, %8
  %20 = sub nsw i32 28, %8
  %21 = lshr i32 -1, %20
  %22 = and i32 %21, %19
  %23 = and i32 %22, %18
  %24 = lshr i32 %23, %8
  store i32 %24, ptr %3, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !8
  %27 = shl i32 %1, 1
  %28 = shl nsw i32 -1, %27
  %29 = sub i32 30, %27
  %30 = lshr i32 -1, %29
  %31 = and i32 %30, %28
  %32 = and i32 %31, %26
  %33 = lshr i32 %32, %27
  store i32 %33, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #9
  %34 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %34) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_pctl_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_fwspec, align 4
  %8 = alloca %struct.irq_fwspec, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %423, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.device_driver, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @of_match_device(ptr noundef %17, ptr noundef %9) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %423, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.of_device_id, ptr %18, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %423, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @of_find_property(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef null) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #10
  br label %423

28:                                               ; preds = %24
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 172, i32 noundef 3520) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %423, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %29, ptr %32, align 8
  %33 = tail call ptr @of_find_property(ptr noundef nonnull %11, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 9
  store ptr null, ptr %36, align 4
  br label %59

37:                                               ; preds = %31
  %38 = tail call ptr @of_irq_find_parent(ptr noundef nonnull %11) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #9
  %42 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %42, i8 0, i64 68, i1 false) #9
  store ptr %41, ptr %8, align 4
  %43 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %8, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #9
  %46 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %46, i8 0, i64 68, i1 false) #9
  store ptr %41, ptr %7, align 4
  %47 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %7, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %37
  %50 = phi ptr [ inttoptr (i32 -6 to ptr), %37 ], [ inttoptr (i32 -517 to ptr), %45 ]
  %51 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 9
  store ptr %50, ptr %51, align 4
  br label %56

52:                                               ; preds = %45, %40
  %53 = phi ptr [ %43, %40 ], [ %47, %45 ]
  %54 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 9
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %49
  %57 = phi ptr [ %50, %49 ], [ %53, %52 ]
  %58 = ptrtoint ptr %57 to i32
  br label %423

59:                                               ; preds = %52, %35
  %60 = phi ptr [ %36, %35 ], [ %54, %52 ]
  %61 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 12
  store ptr inttoptr (i32 -19 to ptr), ptr %61, align 4
  %62 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 17
  store i32 0, ptr %62, align 4
  store ptr %9, ptr %29, align 4
  %63 = load ptr, ptr %21, align 4
  %64 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 8
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 15
  %66 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.2, ptr noundef %65, i32 noundef 1, i32 noundef 0) #9
  %67 = load ptr, ptr %64, align 4
  %68 = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %69, i32 20) #9
  %71 = extractvalue { i32, i1 } %70, 1
  br i1 %71, label %72, label %74, !prof !9

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 13
  store ptr null, ptr %73, align 4
  br label %423

74:                                               ; preds = %59
  %75 = load ptr, ptr %29, align 4
  %76 = extractvalue { i32, i1 } %70, 0
  %77 = call noalias ptr @devm_kmalloc(ptr noundef %75, i32 noundef %76, i32 noundef 3520) #9
  %78 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 13
  store ptr %77, ptr %78, align 4
  %79 = icmp eq ptr %77, null
  br i1 %79, label %423, label %80

80:                                               ; preds = %74
  %81 = load ptr, ptr %64, align 4
  %82 = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %106, %80
  %86 = phi ptr [ %107, %106 ], [ %81, %80 ]
  %87 = phi i32 [ %109, %106 ], [ 0, %80 ]
  %88 = phi i32 [ %110, %106 ], [ 0, %80 ]
  %89 = phi ptr [ %108, %106 ], [ %77, %80 ]
  %90 = load ptr, ptr %86, align 4
  %91 = getelementptr %struct.stm32_desc_pin, ptr %90, i32 %88
  %92 = load i32, ptr %65, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %85
  %95 = getelementptr %struct.stm32_desc_pin, ptr %90, i32 %88, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, %92
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %94, %85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %89, ptr noundef align 4 dereferenceable(12) %91, i32 12, i1 false) #9
  %100 = getelementptr %struct.stm32_desc_pin, ptr %90, i32 %88, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.stm32_desc_pin, ptr %89, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr %struct.stm32_desc_pin, ptr %89, i32 1
  %104 = add i32 %87, 1
  %105 = load ptr, ptr %64, align 4
  br label %106

106:                                              ; preds = %99, %94
  %107 = phi ptr [ %105, %99 ], [ %86, %94 ]
  %108 = phi ptr [ %103, %99 ], [ %89, %94 ]
  %109 = phi i32 [ %104, %99 ], [ %87, %94 ]
  %110 = add nuw i32 %88, 1
  %111 = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %107, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %85, label %114

114:                                              ; preds = %106, %80
  %115 = phi i32 [ 0, %80 ], [ %109, %106 ]
  %116 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 14
  store i32 %115, ptr %116, align 4
  %117 = load ptr, ptr %32, align 8
  %118 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 14
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 4
  store i32 %119, ptr %120, align 4
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %119, i32 12) #9
  %122 = extractvalue { i32, i1 } %121, 1
  br i1 %122, label %123, label %125, !prof !9

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 3
  br label %162

125:                                              ; preds = %114
  %126 = extractvalue { i32, i1 } %121, 0
  %127 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %126, i32 noundef 3520) #9
  %128 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 3
  store ptr %127, ptr %128, align 4
  %129 = icmp eq ptr %127, null
  br i1 %129, label %164, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %120, align 4
  %132 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %131, i32 4) #9
  %133 = extractvalue { i32, i1 } %132, 1
  br i1 %133, label %134, label %136, !prof !9

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 5
  br label %162

136:                                              ; preds = %130
  %137 = extractvalue { i32, i1 } %132, 0
  %138 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %137, i32 noundef 3520) #9
  %139 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 5
  store ptr %138, ptr %139, align 4
  %140 = icmp eq ptr %138, null
  br i1 %140, label %164, label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %118, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %165, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.stm32_pinctrl, ptr %117, i32 0, i32 13
  br label %146

146:                                              ; preds = %146, %144
  %147 = phi i32 [ 0, %144 ], [ %159, %146 ]
  %148 = load ptr, ptr %145, align 4
  %149 = getelementptr %struct.stm32_desc_pin, ptr %148, i32 %147
  %150 = load ptr, ptr %128, align 4
  %151 = getelementptr %struct.stm32_pinctrl_group, ptr %150, i32 %147
  %152 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %149, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  store ptr %153, ptr %151, align 4
  %154 = load i32, ptr %149, align 4
  %155 = getelementptr %struct.stm32_pinctrl_group, ptr %150, i32 %147, i32 2
  store i32 %154, ptr %155, align 4
  %156 = load ptr, ptr %152, align 4
  %157 = load ptr, ptr %139, align 4
  %158 = getelementptr ptr, ptr %157, i32 %147
  store ptr %156, ptr %158, align 4
  %159 = add nuw i32 %147, 1
  %160 = load i32, ptr %118, align 4
  %161 = icmp ult i32 %159, %160
  br i1 %161, label %146, label %165

162:                                              ; preds = %134, %123
  %163 = phi ptr [ %135, %134 ], [ %124, %123 ]
  store ptr null, ptr %163, align 4
  br label %164

164:                                              ; preds = %162, %136, %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3, i32 noundef -12) #10
  br label %423

165:                                              ; preds = %146, %141
  %166 = load ptr, ptr %60, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %213, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !10
  %170 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %169, ptr noundef nonnull @.str.10) #9
  %171 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 10
  store ptr %170, ptr %171, align 4
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %210, label %173

173:                                              ; preds = %168
  %174 = call i32 @of_property_read_u32_index(ptr noundef %169, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %5) #9
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %423

177:                                              ; preds = %173
  %178 = call i32 @of_property_read_u32_index(ptr noundef %169, ptr noundef nonnull @.str.10, i32 noundef 2, ptr noundef nonnull %6) #9
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store i32 15, ptr %6, align 4
  br label %187

181:                                              ; preds = %177
  %182 = load i32, ptr %6, align 4
  %183 = icmp eq i32 %182, 0
  %184 = call i32 @llvm.ctlz.i32(i32 %182, i1 false) #9, !range !11
  %185 = sub nuw nsw i32 32, %184
  %186 = select i1 %183, i32 0, i32 %185
  br label %187

187:                                              ; preds = %181, %180
  %188 = phi i32 [ 4, %180 ], [ %186, %181 ]
  %189 = add nsw i32 %188, -1
  br label %194

190:                                              ; preds = %194
  %191 = add nuw nsw i32 %195, 1
  %192 = icmp eq i32 %191, 16
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %213

194:                                              ; preds = %190, %187
  %195 = phi i32 [ 0, %187 ], [ %191, %190 ]
  %196 = load i32, ptr %5, align 4
  %197 = and i32 %195, 2147483644
  %198 = add i32 %196, %197
  %199 = and i32 %195, 3
  %200 = mul nsw i32 %199, %188
  %201 = add nsw i32 %189, %200
  %202 = insertvalue [5 x i32] poison, i32 %198, 0
  %203 = insertvalue [5 x i32] %202, i32 %200, 1
  %204 = insertvalue [5 x i32] %203, i32 %201, 2
  %205 = insertvalue [5 x i32] %204, i32 0, 3
  %206 = insertvalue [5 x i32] %205, i32 0, 4
  %207 = call ptr @devm_regmap_field_alloc(ptr noundef %9, ptr noundef %170, [5 x i32] %206) #9
  %208 = getelementptr %struct.stm32_pinctrl, ptr %29, i32 0, i32 11, i32 %195
  store ptr %207, ptr %208, align 4
  %209 = icmp ugt ptr %207, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %190

210:                                              ; preds = %194, %168
  %211 = phi ptr [ %170, %168 ], [ %207, %194 ]
  %212 = ptrtoint ptr %211 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %423

213:                                              ; preds = %193, %165
  %214 = load i32, ptr %116, align 4
  %215 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %214, i32 12) #9
  %216 = extractvalue { i32, i1 } %215, 1
  br i1 %216, label %423, label %217, !prof !9

217:                                              ; preds = %213
  %218 = extractvalue { i32, i1 } %215, 0
  %219 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %218, i32 noundef 3520) #9
  %220 = icmp eq ptr %219, null
  br i1 %220, label %423, label %221

221:                                              ; preds = %217
  %222 = load i32, ptr %116, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %78, align 4
  br label %226

226:                                              ; preds = %226, %224
  %227 = phi i32 [ 0, %224 ], [ %230, %226 ]
  %228 = getelementptr %struct.pinctrl_pin_desc, ptr %219, i32 %227
  %229 = getelementptr %struct.stm32_desc_pin, ptr %225, i32 %227
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %228, ptr noundef align 4 dereferenceable(12) %229, i32 12, i1 false)
  %230 = add nuw i32 %227, 1
  %231 = icmp eq i32 %230, %222
  br i1 %231, label %232, label %226

232:                                              ; preds = %226, %221
  %233 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load ptr, ptr %9, align 4
  br label %238

238:                                              ; preds = %236, %232
  %239 = phi ptr [ %237, %236 ], [ %234, %232 ]
  %240 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2
  store ptr %239, ptr %240, align 4
  %241 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 6
  store ptr null, ptr %241, align 4
  %242 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 1
  store ptr %219, ptr %242, align 4
  %243 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 2
  store i32 %222, ptr %243, align 4
  %244 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 10
  store i8 1, ptr %244, align 4
  %245 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 5
  store ptr @stm32_pconf_ops, ptr %245, align 4
  %246 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 3
  store ptr @stm32_pctrl_ops, ptr %246, align 4
  %247 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 2, i32 4
  store ptr @stm32_pmx_ops, ptr %247, align 4
  store ptr %9, ptr %29, align 4
  %248 = call ptr @devm_pinctrl_register(ptr noundef %9, ptr noundef %240, ptr noundef nonnull %29) #9
  %249 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 1
  store ptr %248, ptr %249, align 4
  %250 = icmp ugt ptr %248, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %254

251:                                              ; preds = %238
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4) #10
  %252 = load ptr, ptr %249, align 4
  %253 = ptrtoint ptr %252 to i32
  br label %423

254:                                              ; preds = %238
  %255 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef null) #9
  %256 = icmp eq ptr %255, null
  br i1 %256, label %268, label %257

257:                                              ; preds = %257, %254
  %258 = phi i32 [ %263, %257 ], [ 0, %254 ]
  %259 = phi ptr [ %264, %257 ], [ %255, %254 ]
  %260 = call ptr @of_find_property(ptr noundef nonnull %259, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %261 = icmp ne ptr %260, null
  %262 = zext i1 %261 to i32
  %263 = add i32 %258, %262
  %264 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef nonnull %259) #9
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %257

266:                                              ; preds = %257
  %267 = icmp eq i32 %263, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %266, %254
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6) #10
  br label %423

269:                                              ; preds = %266
  %270 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %263, i32 452) #9
  %271 = extractvalue { i32, i1 } %270, 1
  br i1 %271, label %272, label %274, !prof !9

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 6
  store ptr null, ptr %273, align 4
  br label %423

274:                                              ; preds = %269
  %275 = extractvalue { i32, i1 } %270, 0
  %276 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef %275, i32 noundef 3520) #9
  %277 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 6
  store ptr %276, ptr %277, align 4
  %278 = icmp eq ptr %276, null
  br i1 %278, label %423, label %279

279:                                              ; preds = %274
  %280 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef null) #9
  %281 = icmp eq ptr %280, null
  br i1 %281, label %310, label %282

282:                                              ; preds = %306, %279
  %283 = phi i32 [ %307, %306 ], [ 0, %279 ]
  %284 = phi ptr [ %308, %306 ], [ %280, %279 ]
  %285 = load ptr, ptr %277, align 4
  %286 = call ptr @of_find_property(ptr noundef nonnull %284, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %287 = icmp eq ptr %286, null
  br i1 %287, label %306, label %288

288:                                              ; preds = %282
  %289 = call ptr @__of_reset_control_get(ptr noundef nonnull %284, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %290 = getelementptr %struct.stm32_gpio_bank, ptr %285, i32 %283, i32 2
  store ptr %289, ptr %290, align 4
  %291 = icmp eq ptr %289, inttoptr (i32 -517 to ptr)
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  call void @of_node_put(ptr noundef nonnull %284) #9
  br label %423

293:                                              ; preds = %288
  %294 = call ptr @of_clk_get_by_name(ptr noundef nonnull %284, ptr noundef null) #9
  %295 = getelementptr %struct.stm32_gpio_bank, ptr %285, i32 %283, i32 1
  store ptr %294, ptr %295, align 4
  %296 = icmp ugt ptr %294, inttoptr (i32 -4096 to ptr)
  br i1 %296, label %297, label %304

297:                                              ; preds = %293
  %298 = icmp eq ptr %294, inttoptr (i32 -517 to ptr)
  br i1 %298, label %301, label %299

299:                                              ; preds = %297
  %300 = ptrtoint ptr %294 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7, i32 noundef %300) #10
  br label %301

301:                                              ; preds = %299, %297
  call void @of_node_put(ptr noundef nonnull %284) #9
  %302 = load ptr, ptr %295, align 4
  %303 = ptrtoint ptr %302 to i32
  br label %423

304:                                              ; preds = %293
  %305 = add i32 %283, 1
  br label %306

306:                                              ; preds = %304, %282
  %307 = phi i32 [ %283, %282 ], [ %305, %304 ]
  %308 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef nonnull %284) #9
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %282

310:                                              ; preds = %306, %279
  %311 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef null) #9
  %312 = icmp eq ptr %311, null
  br i1 %312, label %422, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.stm32_pinctrl, ptr %29, i32 0, i32 7
  %315 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %316 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 1
  %317 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2, i32 2
  br label %318

318:                                              ; preds = %419, %313
  %319 = phi ptr [ %311, %313 ], [ %420, %419 ]
  %320 = call ptr @of_find_property(ptr noundef nonnull %319, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %321 = icmp eq ptr %320, null
  br i1 %321, label %419, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %277, align 4
  %324 = load i32, ptr %314, align 4
  %325 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #9, !annotation !10
  %326 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #9, !annotation !10
  %327 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 2
  %328 = load ptr, ptr %327, align 4
  %329 = icmp ugt ptr %328, inttoptr (i32 -4096 to ptr)
  br i1 %329, label %332, label %330

330:                                              ; preds = %322
  %331 = call i32 @reset_control_deassert(ptr noundef %328) #9
  br label %332

332:                                              ; preds = %330, %322
  %333 = call i32 @of_address_to_resource(ptr noundef nonnull %319, i32 noundef 0, ptr noundef nonnull %4) #9
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %413

335:                                              ; preds = %332
  %336 = call ptr @devm_ioremap_resource(ptr noundef %326, ptr noundef nonnull %4) #9
  store ptr %336, ptr %325, align 4
  %337 = icmp ugt ptr %336, inttoptr (i32 -4096 to ptr)
  br i1 %337, label %415, label %338

338:                                              ; preds = %335
  %339 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = call i32 @clk_prepare(ptr noundef %340) #9
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %326, ptr noundef nonnull @.str.53, i32 noundef %341) #10
  br label %413

344:                                              ; preds = %338
  %345 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(304) %345, ptr noundef nonnull align 4 dereferenceable(304) @stm32_gpio_template, i32 304, i1 false) #9
  %346 = call i32 @of_property_read_string(ptr noundef nonnull %319, ptr noundef nonnull @.str.54, ptr noundef %345) #9
  %347 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %319, ptr noundef nonnull @.str.55, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %3) #9
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %368

349:                                              ; preds = %344
  %350 = load i32, ptr %316, align 4
  %351 = lshr i32 %350, 4
  %352 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 19
  store i32 %350, ptr %352, align 4
  %353 = load i32, ptr %315, align 4
  %354 = load i32, ptr %317, align 4
  %355 = add i32 %354, %353
  %356 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %319, ptr noundef nonnull @.str.55, ptr noundef null, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %3) #9
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %382

358:                                              ; preds = %358, %349
  %359 = phi i32 [ %365, %358 ], [ 1, %349 ]
  %360 = phi i32 [ %364, %358 ], [ %355, %349 ]
  %361 = load i32, ptr %315, align 4
  %362 = load i32, ptr %317, align 4
  %363 = add i32 %362, %361
  %364 = call i32 @llvm.smax.i32(i32 %360, i32 %363) #9
  %365 = add i32 %359, 1
  %366 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %319, ptr noundef nonnull @.str.55, ptr noundef null, i32 noundef 3, i32 noundef %365, ptr noundef nonnull %3) #9
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %358, label %382

368:                                              ; preds = %344
  %369 = load i32, ptr %314, align 4
  %370 = shl i32 %369, 4
  %371 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 19
  store i32 %370, ptr %371, align 4
  %372 = load ptr, ptr %345, align 4
  %373 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 1
  store ptr %372, ptr %373, align 4
  %374 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 2
  store i32 %369, ptr %374, align 4
  %375 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 4
  store i32 %370, ptr %375, align 4
  %376 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 3
  store i32 %370, ptr %376, align 4
  %377 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 5
  store i32 16, ptr %377, align 4
  %378 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 5, i32 7
  store ptr %345, ptr %378, align 4
  %379 = load ptr, ptr %249, align 4
  %380 = load ptr, ptr %277, align 4
  %381 = getelementptr %struct.stm32_gpio_bank, ptr %380, i32 %369, i32 5
  call void @pinctrl_add_gpio_range(ptr noundef %379, ptr noundef %381) #9
  br label %382

382:                                              ; preds = %368, %358, %349
  %383 = phi i32 [ 16, %368 ], [ %355, %349 ], [ %364, %358 ]
  %384 = phi i32 [ %369, %368 ], [ %351, %349 ], [ %351, %358 ]
  %385 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %319, ptr noundef nonnull @.str.56, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %386 = icmp sgt i32 %385, -1
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  store i32 %384, ptr %2, align 4
  br label %388

388:                                              ; preds = %387, %382
  %389 = shl i32 %384, 4
  %390 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 19
  store i32 %389, ptr %390, align 4
  %391 = trunc i32 %383 to i16
  %392 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 20
  store i16 %391, ptr %392, align 4
  %393 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 39
  store ptr %319, ptr %393, align 4
  %394 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 4, i32 2
  store ptr %326, ptr %394, align 4
  %395 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 8
  store i32 %384, ptr %395, align 4
  %396 = load i32, ptr %2, align 4
  %397 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 9
  store i32 %396, ptr %397, align 4
  %398 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 3
  store i32 0, ptr %398, align 4
  %399 = getelementptr inbounds %struct.device_node, ptr %319, i32 0, i32 3
  %400 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 6
  store ptr %399, ptr %400, align 4
  %401 = load ptr, ptr %60, align 4
  %402 = call ptr @irq_domain_create_hierarchy(ptr noundef %401, i32 noundef 0, i32 noundef 16, ptr noundef %399, ptr noundef nonnull @stm32_gpio_domain_ops, ptr noundef %325) #9
  %403 = getelementptr %struct.stm32_gpio_bank, ptr %323, i32 %324, i32 7
  store ptr %402, ptr %403, align 4
  %404 = icmp eq ptr %402, null
  br i1 %404, label %413, label %405

405:                                              ; preds = %388
  %406 = call i32 @gpiochip_add_data_with_key(ptr noundef %345, ptr noundef %325, ptr noundef null, ptr noundef null) #9
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %405
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %326, ptr noundef nonnull @.str.57, i32 noundef %384) #10
  br label %413

409:                                              ; preds = %405
  %410 = load ptr, ptr %345, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %326, ptr noundef nonnull @.str.58, ptr noundef %410) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %411 = load i32, ptr %314, align 4
  %412 = add i32 %411, 1
  store i32 %412, ptr %314, align 4
  br label %419

413:                                              ; preds = %408, %388, %343, %332
  %414 = phi i32 [ %406, %408 ], [ %341, %343 ], [ -19, %388 ], [ -19, %332 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %417

415:                                              ; preds = %335
  %416 = ptrtoint ptr %336 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %417

417:                                              ; preds = %415, %413
  %418 = phi i32 [ %414, %413 ], [ %416, %415 ]
  call void @of_node_put(ptr noundef nonnull %319) #9
  br label %423

419:                                              ; preds = %409, %318
  %420 = call ptr @of_get_next_available_child(ptr noundef nonnull %11, ptr noundef nonnull %319) #9
  %421 = icmp eq ptr %420, null
  br i1 %421, label %422, label %318

422:                                              ; preds = %419, %310
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.8) #10
  br label %423

423:                                              ; preds = %422, %417, %301, %292, %274, %272, %268, %251, %217, %213, %210, %176, %164, %74, %72, %56, %28, %27, %20, %13, %1
  %424 = phi i32 [ %58, %56 ], [ -22, %164 ], [ %253, %251 ], [ %418, %417 ], [ 0, %422 ], [ -22, %268 ], [ -22, %27 ], [ -22, %1 ], [ -22, %20 ], [ -22, %13 ], [ -12, %28 ], [ -12, %74 ], [ %212, %210 ], [ -12, %217 ], [ -12, %274 ], [ -12, %72 ], [ %174, %176 ], [ -12, %272 ], [ -517, %292 ], [ %303, %301 ], [ -12, %213 ]
  ret i32 %424
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stm32_pinctrl_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %173, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 1
  br label %11

11:                                               ; preds = %168, %7
  %12 = phi i32 [ 0, %7 ], [ %169, %168 ]
  %13 = phi ptr [ %9, %7 ], [ %170, %168 ]
  %14 = getelementptr inbounds %struct.stm32_pinctrl_group, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.pinctrl_dev, ptr %16, i32 0, i32 2
  %18 = tail call ptr @radix_tree_lookup(ptr noundef %17, i32 noundef %15) #9
  %19 = srem i32 %15, 16
  %20 = load ptr, ptr %10, align 4
  %21 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %20, i32 noundef %15) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %168, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %21, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %25, i32 noundef %19) #9
  %27 = icmp eq ptr %18, null
  br i1 %27, label %168, label %28

28:                                               ; preds = %23
  br i1 %26, label %33, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.pin_desc, ptr %18, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %168, label %33

33:                                               ; preds = %29, %28
  %34 = load ptr, ptr %24, align 4
  %35 = tail call ptr @gpiochip_get_data(ptr noundef %34) #9
  %36 = getelementptr %struct.stm32_gpio_bank, ptr %35, i32 0, i32 10, i32 %19
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 2
  %39 = and i32 %38, 15
  %40 = and i32 %37, 3
  %41 = trunc i32 %19 to i8
  %42 = sdiv i8 %41, 8
  %43 = mul i8 %42, 8
  %44 = sub i8 %41, %43
  %45 = sext i8 %44 to i32
  %46 = shl nsw i32 %45, 2
  %47 = sext i8 %42 to i32
  %48 = shl nsw i32 %47, 2
  %49 = add nsw i32 %48, 32
  %50 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %35, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @clk_enable(ptr noundef %51) #9
  %53 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %35, i32 0, i32 3
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr i8, ptr %55, i32 %49
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !8
  %58 = shl nsw i32 -1, %46
  %59 = sub nsw i32 28, %46
  %60 = lshr i32 -1, %59
  %61 = and i32 %60, %58
  %62 = xor i32 %61, -1
  %63 = and i32 %57, %62
  %64 = shl i32 %39, %46
  %65 = or i32 %63, %64
  %66 = load ptr, ptr %35, align 4
  %67 = getelementptr i8, ptr %66, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #9, !srcloc !12
  %68 = load ptr, ptr %35, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #9, !srcloc !8
  %70 = shl nsw i32 %19, 1
  %71 = shl nsw i32 -1, %70
  %72 = sub nsw i32 30, %70
  %73 = lshr i32 -1, %72
  %74 = and i32 %73, %71
  %75 = xor i32 %74, -1
  %76 = and i32 %69, %75
  %77 = shl i32 %40, %70
  %78 = or i32 %76, %77
  %79 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %78) #9, !srcloc !12
  %80 = load i32, ptr %36, align 4
  %81 = and i32 %80, -64
  %82 = and i32 %37, 63
  %83 = or i32 %81, %82
  store i32 %83, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #9
  %84 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %84) #9
  %85 = icmp eq i32 %40, 1
  br i1 %85, label %86, label %102

86:                                               ; preds = %33
  %87 = load i32, ptr %36, align 4
  %88 = lshr i32 %87, 11
  %89 = and i32 %88, 1
  %90 = and i32 %87, -2049
  %91 = shl nuw nsw i32 %89, 11
  %92 = or i32 %91, %90
  store i32 %92, ptr %36, align 4
  %93 = icmp eq i32 %89, 0
  %94 = add nsw i32 %19, 16
  %95 = select i1 %93, i32 %94, i32 %19
  %96 = load ptr, ptr %50, align 4
  %97 = tail call i32 @clk_enable(ptr noundef %96) #9
  %98 = shl nuw i32 1, %95
  %99 = load ptr, ptr %35, align 4
  %100 = getelementptr i8, ptr %99, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #9, !srcloc !12
  %101 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %101) #9
  br label %102

102:                                              ; preds = %86, %33
  %103 = load i32, ptr %36, align 4
  %104 = lshr i32 %103, 10
  %105 = and i32 %104, 1
  %106 = load ptr, ptr %50, align 4
  %107 = tail call i32 @clk_enable(ptr noundef %106) #9
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %109 = load ptr, ptr %35, align 4
  %110 = getelementptr i8, ptr %109, i32 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !8
  %112 = shl nuw nsw i32 1, %19
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = shl nuw nsw i32 %105, %19
  %116 = or i32 %114, %115
  %117 = load ptr, ptr %35, align 4
  %118 = getelementptr i8, ptr %117, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %116) #9, !srcloc !12
  %119 = load i32, ptr %36, align 4
  %120 = and i32 %119, -1025
  %121 = shl nuw nsw i32 %105, 10
  %122 = or i32 %120, %121
  store i32 %122, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %108) #9
  %123 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %123) #9
  %124 = load i32, ptr %36, align 4
  %125 = lshr i32 %124, 6
  %126 = and i32 %125, 3
  %127 = load ptr, ptr %50, align 4
  %128 = tail call i32 @clk_enable(ptr noundef %127) #9
  %129 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %130 = load ptr, ptr %35, align 4
  %131 = getelementptr i8, ptr %130, i32 8
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #9, !srcloc !8
  %133 = and i32 %132, %75
  %134 = shl i32 %126, %70
  %135 = or i32 %133, %134
  %136 = load ptr, ptr %35, align 4
  %137 = getelementptr i8, ptr %136, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 %135) #9, !srcloc !12
  %138 = load i32, ptr %36, align 4
  %139 = and i32 %138, -193
  %140 = shl nuw nsw i32 %126, 6
  %141 = or i32 %139, %140
  store i32 %141, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %129) #9
  %142 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %142) #9
  %143 = load i32, ptr %36, align 4
  %144 = lshr i32 %143, 8
  %145 = and i32 %144, 3
  %146 = load ptr, ptr %50, align 4
  %147 = tail call i32 @clk_enable(ptr noundef %146) #9
  %148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %149 = load ptr, ptr %35, align 4
  %150 = getelementptr i8, ptr %149, i32 12
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !8
  %152 = and i32 %151, %75
  %153 = shl i32 %145, %70
  %154 = or i32 %152, %153
  %155 = load ptr, ptr %35, align 4
  %156 = getelementptr i8, ptr %155, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %154) #9, !srcloc !12
  %157 = load i32, ptr %36, align 4
  %158 = and i32 %157, -769
  %159 = shl nuw nsw i32 %145, 8
  %160 = or i32 %158, %159
  store i32 %160, ptr %36, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %148) #9
  %161 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %161) #9
  br i1 %26, label %162, label %168

162:                                              ; preds = %102
  %163 = getelementptr %struct.stm32_pinctrl, ptr %3, i32 0, i32 11, i32 %19
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %35, i32 0, i32 9
  %166 = load i32, ptr %165, align 4
  %167 = tail call i32 @regmap_field_update_bits_base(ptr noundef %164, i32 noundef -1, i32 noundef %166, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %168

168:                                              ; preds = %162, %102, %29, %23, %11
  %169 = add nuw i32 %12, 1
  %170 = getelementptr %struct.stm32_pinctrl_group, ptr %13, i32 1
  %171 = load i32, ptr %4, align 4
  %172 = icmp ult i32 %169, %171
  br i1 %172, label %11, label %173

173:                                              ; preds = %168, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %17, label %9

6:                                                ; preds = %9
  %7 = add nuw i32 %10, 1
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %7, %6 ], [ 0, %4 ]
  %11 = getelementptr i32, ptr %2, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 255
  %14 = lshr i32 %12, 8
  %15 = tail call fastcc i32 @stm32_pconf_parse_conf(ptr noundef %0, i32 noundef %1, i32 noundef %13, i32 noundef %14)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %6

17:                                               ; preds = %9, %6, %4
  %18 = phi i32 [ 0, %4 ], [ 0, %6 ], [ %15, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.stm32_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.stm32_pinctrl_group, ptr %6, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 14
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.stm32_pinctrl_group, ptr %10, i32 %1, i32 2
  %12 = getelementptr %struct.stm32_pinctrl_group, ptr %10, i32 %1, i32 1
  br label %13

13:                                               ; preds = %22, %8
  %14 = phi i32 [ 0, %8 ], [ %24, %22 ]
  tail call void @mutex_lock(ptr noundef %6) #9
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr i32, ptr %2, i32 %14
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 255
  %19 = lshr i32 %17, 8
  %20 = tail call fastcc i32 @stm32_pconf_parse_conf(ptr noundef %0, i32 noundef %15, i32 noundef %18, i32 noundef %19)
  tail call void @mutex_unlock(ptr noundef %6) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %16, align 4
  store i32 %23, ptr %12, align 4
  %24 = add nuw i32 %14, 1
  %25 = icmp eq i32 %24, %3
  br i1 %25, label %26, label %13

26:                                               ; preds = %22, %13, %4
  %27 = phi i32 [ 0, %4 ], [ 0, %22 ], [ %20, %13 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_pconf_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %0, i32 noundef %2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %131, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %8) #9
  %10 = srem i32 %2, 16
  %11 = trunc i32 %10 to i8
  %12 = sdiv i8 %11, 8
  %13 = sext i8 %12 to i32
  %14 = shl nsw i32 %13, 2
  %15 = add nsw i32 %14, 32
  %16 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %9, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  %24 = load ptr, ptr %9, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !8
  %26 = shl nsw i32 %10, 1
  %27 = shl nsw i32 -1, %26
  %28 = sub nsw i32 30, %26
  %29 = lshr i32 -1, %28
  %30 = and i32 %29, %27
  %31 = and i32 %25, %30
  %32 = lshr i32 %31, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #9
  %33 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %33) #9
  %34 = load ptr, ptr %16, align 4
  %35 = tail call i32 @clk_enable(ptr noundef %34) #9
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %37 = load ptr, ptr %9, align 4
  %38 = getelementptr i8, ptr %37, i32 12
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  %40 = and i32 %39, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %36) #9
  %41 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %41) #9
  %42 = lshr i32 %40, %26
  %43 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.modes, i32 0, i32 %32
  %44 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %44) #9
  switch i32 %32, label %131 [
    i32 0, label %45
    i32 1, label %59
    i32 2, label %95
  ]

45:                                               ; preds = %6
  %46 = load ptr, ptr %16, align 4
  %47 = tail call i32 @clk_enable(ptr noundef %46) #9
  %48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %49 = load ptr, ptr %9, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %48) #9
  %52 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  %53 = shl nuw nsw i32 1, %10
  %54 = and i32 %51, %53
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.17, ptr @.str.19
  %57 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %42
  %58 = load ptr, ptr %57, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %56, ptr noundef %58) #9
  br label %131

59:                                               ; preds = %6
  %60 = load ptr, ptr %16, align 4
  %61 = tail call i32 @clk_enable(ptr noundef %60) #9
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #9, !srcloc !8
  %66 = shl nuw nsw i32 1, %10
  %67 = and i32 %65, %66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %62) #9
  %68 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %68) #9
  %69 = lshr i32 %67, %10
  %70 = load ptr, ptr %16, align 4
  %71 = tail call i32 @clk_enable(ptr noundef %70) #9
  %72 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %73 = load ptr, ptr %9, align 4
  %74 = getelementptr i8, ptr %73, i32 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #9, !srcloc !8
  %76 = and i32 %75, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %72) #9
  %77 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %77) #9
  %78 = lshr i32 %76, %26
  %79 = load ptr, ptr %16, align 4
  %80 = tail call i32 @clk_enable(ptr noundef %79) #9
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %82 = load ptr, ptr %9, align 4
  %83 = getelementptr i8, ptr %82, i32 20
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %81) #9
  %85 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %85) #9
  %86 = and i32 %84, %66
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.17, ptr @.str.19
  %89 = icmp eq i32 %69, 0
  %90 = select i1 %89, ptr @.str.29, ptr @.str.28
  %91 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %42
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.speeds, i32 0, i32 %78
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %88, ptr noundef nonnull %90, ptr noundef %92, ptr noundef %94, ptr noundef nonnull @.str.30) #9
  br label %131

95:                                               ; preds = %6
  %96 = mul i8 %12, 8
  %97 = sub i8 %11, %96
  %98 = sext i8 %97 to i32
  %99 = shl nsw i32 %98, 2
  %100 = sub nsw i32 28, %99
  %101 = lshr i32 -1, %100
  %102 = shl nsw i32 -1, %99
  %103 = and i32 %101, %102
  %104 = and i32 %103, %23
  %105 = lshr i32 %104, %99
  %106 = load ptr, ptr %16, align 4
  %107 = tail call i32 @clk_enable(ptr noundef %106) #9
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %109 = load ptr, ptr %9, align 4
  %110 = getelementptr i8, ptr %109, i32 4
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #9, !srcloc !8
  %112 = shl nuw nsw i32 1, %10
  %113 = and i32 %111, %112
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %108) #9
  %114 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %114) #9
  %115 = lshr i32 %113, %10
  %116 = load ptr, ptr %16, align 4
  %117 = tail call i32 @clk_enable(ptr noundef %116) #9
  %118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %119 = load ptr, ptr %9, align 4
  %120 = getelementptr i8, ptr %119, i32 8
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #9, !srcloc !8
  %122 = and i32 %121, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %118) #9
  %123 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %123) #9
  %124 = lshr i32 %122, %26
  %125 = icmp eq i32 %115, 0
  %126 = select i1 %125, ptr @.str.29, ptr @.str.28
  %127 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %42
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.speeds, i32 0, i32 %124
  %130 = load ptr, ptr %129, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %105, ptr noundef nonnull %126, ptr noundef %128, ptr noundef %130, ptr noundef nonnull @.str.30) #9
  br label %131

131:                                              ; preds = %95, %59, %45, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pconf_parse_conf(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %0, i32 noundef %1) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #10
  br label %165

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %6, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @gpiochip_get_data(ptr noundef %12) #9
  %14 = srem i32 %1, 16
  switch i32 %2, label %165 [
    i32 8, label %15
    i32 6, label %33
    i32 24, label %50
    i32 1, label %76
    i32 5, label %98
    i32 3, label %123
    i32 17, label %148
  ]

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_enable(ptr noundef %17) #9
  %19 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #9
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !8
  %24 = shl nuw nsw i32 1, %14
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #9, !srcloc !12
  %29 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -1025
  store i32 %31, ptr %29, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #9
  %32 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %32) #9
  br label %165

33:                                               ; preds = %10
  %34 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @clk_enable(ptr noundef %35) #9
  %37 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #9
  %39 = load ptr, ptr %13, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !8
  %42 = shl nuw nsw i32 1, %14
  %43 = or i32 %41, %42
  %44 = load ptr, ptr %13, align 4
  %45 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #9, !srcloc !12
  %46 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, 1024
  store i32 %48, ptr %46, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #9
  %49 = load ptr, ptr %34, align 4
  tail call void @clk_disable(ptr noundef %49) #9
  br label %165

50:                                               ; preds = %10
  %51 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @clk_enable(ptr noundef %52) #9
  %54 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #9
  %56 = load ptr, ptr %13, align 4
  %57 = getelementptr i8, ptr %56, i32 8
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !8
  %59 = shl nsw i32 %14, 1
  %60 = shl nsw i32 -1, %59
  %61 = sub nsw i32 30, %59
  %62 = lshr i32 -1, %61
  %63 = and i32 %62, %60
  %64 = xor i32 %63, -1
  %65 = and i32 %58, %64
  %66 = shl i32 %3, %59
  %67 = or i32 %65, %66
  %68 = load ptr, ptr %13, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #9, !srcloc !12
  %70 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -193
  %73 = shl i32 %3, 6
  %74 = or i32 %72, %73
  store i32 %74, ptr %70, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #9
  %75 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %75) #9
  br label %165

76:                                               ; preds = %10
  %77 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 @clk_enable(ptr noundef %78) #9
  %80 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %80) #9
  %82 = load ptr, ptr %13, align 4
  %83 = getelementptr i8, ptr %82, i32 12
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #9, !srcloc !8
  %85 = shl nsw i32 %14, 1
  %86 = shl nsw i32 -1, %85
  %87 = sub nsw i32 30, %85
  %88 = lshr i32 -1, %87
  %89 = and i32 %88, %86
  %90 = xor i32 %89, -1
  %91 = and i32 %84, %90
  %92 = load ptr, ptr %13, align 4
  %93 = getelementptr i8, ptr %92, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %91) #9, !srcloc !12
  %94 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, -769
  store i32 %96, ptr %94, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %81) #9
  %97 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %97) #9
  br label %165

98:                                               ; preds = %10
  %99 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @clk_enable(ptr noundef %100) #9
  %102 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %102) #9
  %104 = load ptr, ptr %13, align 4
  %105 = getelementptr i8, ptr %104, i32 12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !8
  %107 = shl nsw i32 %14, 1
  %108 = shl nsw i32 -1, %107
  %109 = sub nsw i32 30, %107
  %110 = lshr i32 -1, %109
  %111 = and i32 %110, %108
  %112 = xor i32 %111, -1
  %113 = and i32 %106, %112
  %114 = shl nuw i32 1, %107
  %115 = or i32 %113, %114
  %116 = load ptr, ptr %13, align 4
  %117 = getelementptr i8, ptr %116, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !12
  %118 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -769
  %121 = or i32 %120, 256
  store i32 %121, ptr %118, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %103) #9
  %122 = load ptr, ptr %99, align 4
  tail call void @clk_disable(ptr noundef %122) #9
  br label %165

123:                                              ; preds = %10
  %124 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @clk_enable(ptr noundef %125) #9
  %127 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 3
  %128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %127) #9
  %129 = load ptr, ptr %13, align 4
  %130 = getelementptr i8, ptr %129, i32 12
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !8
  %132 = shl nsw i32 %14, 1
  %133 = shl nsw i32 -1, %132
  %134 = sub nsw i32 30, %132
  %135 = lshr i32 -1, %134
  %136 = and i32 %135, %133
  %137 = xor i32 %136, -1
  %138 = and i32 %131, %137
  %139 = shl i32 2, %132
  %140 = or i32 %138, %139
  %141 = load ptr, ptr %13, align 4
  %142 = getelementptr i8, ptr %141, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #9, !srcloc !12
  %143 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, -769
  %146 = or i32 %145, 512
  store i32 %146, ptr %143, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %127, i32 noundef %128) #9
  %147 = load ptr, ptr %124, align 4
  tail call void @clk_disable(ptr noundef %147) #9
  br label %165

148:                                              ; preds = %10
  %149 = getelementptr %struct.stm32_gpio_bank, ptr %13, i32 0, i32 10, i32 %14
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, -2049
  %152 = shl i32 %3, 11
  %153 = or i32 %151, %152
  store i32 %153, ptr %149, align 4
  %154 = icmp eq i32 %3, 0
  %155 = add nsw i32 %14, 16
  %156 = select i1 %154, i32 %155, i32 %14
  %157 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %13, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = tail call i32 @clk_enable(ptr noundef %158) #9
  %160 = shl nuw i32 1, %156
  %161 = load ptr, ptr %13, align 4
  %162 = getelementptr i8, ptr %161, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %160) #9, !srcloc !12
  %163 = load ptr, ptr %157, align 4
  tail call void @clk_disable(ptr noundef %163) #9
  %164 = tail call i32 @stm32_pmx_gpio_set_direction(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %1, i1 noundef zeroext false)
  br label %165

165:                                              ; preds = %148, %123, %98, %76, %50, %33, %15, %10, %8
  %166 = phi i32 [ -22, %8 ], [ 0, %148 ], [ 0, %123 ], [ 0, %98 ], [ 0, %76 ], [ 0, %50 ], [ 0, %33 ], [ 0, %15 ], [ -524, %10 ]
  ret i32 %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pmx_gpio_set_direction(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %6) #9
  %8 = srem i32 %2, 16
  %9 = xor i1 %3, true
  %10 = zext i1 %9 to i32
  %11 = trunc i32 %8 to i8
  %12 = sdiv i8 %11, 8
  %13 = mul i8 %12, 8
  %14 = sub i8 %11, %13
  %15 = sext i8 %14 to i32
  %16 = shl nsw i32 %15, 2
  %17 = sext i8 %12 to i32
  %18 = shl nsw i32 %17, 2
  %19 = add nsw i32 %18, 32
  %20 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %7, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_enable(ptr noundef %21) #9
  %23 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %7, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #9
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr i8, ptr %25, i32 %19
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #9, !srcloc !8
  %28 = shl nsw i32 -1, %16
  %29 = sub nsw i32 28, %16
  %30 = lshr i32 -1, %29
  %31 = and i32 %30, %28
  %32 = xor i32 %31, -1
  %33 = and i32 %27, %32
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #9, !srcloc !12
  %36 = load ptr, ptr %7, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !8
  %38 = shl nsw i32 %8, 1
  %39 = shl nsw i32 -1, %38
  %40 = sub nsw i32 30, %38
  %41 = lshr i32 -1, %40
  %42 = and i32 %41, %39
  %43 = xor i32 %42, -1
  %44 = and i32 %37, %43
  %45 = shl nuw i32 %10, %38
  %46 = or i32 %44, %45
  %47 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %46) #9, !srcloc !12
  %48 = getelementptr %struct.stm32_gpio_bank, ptr %7, i32 0, i32 10, i32 %8
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, -64
  %51 = or i32 %50, %10
  store i32 %51, ptr %48, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #9
  %52 = load ptr, ptr %20, align 4
  tail call void @clk_disable(ptr noundef %52) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %3 = getelementptr inbounds %struct.stm32_pinctrl, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @stm32_pctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.stm32_pinctrl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.stm32_pinctrl_group, ptr %7, i32 %1, i32 2
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store i32 0, ptr %8, align 4
  %9 = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %163, %4
  %12 = phi ptr [ %164, %163 ], [ %9, %4 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !10
  %13 = call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %14 = call ptr @of_find_property(ptr noundef nonnull %12, ptr noundef nonnull @.str.32, ptr noundef null) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.33, ptr noundef nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %159

18:                                               ; preds = %11
  %19 = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %12, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %156

21:                                               ; preds = %18
  %22 = load i32, ptr %7, align 4
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.property, ptr %14, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 2
  %27 = icmp ugt i32 %25, 3
  br i1 %27, label %28, label %153

28:                                               ; preds = %21
  %29 = select i1 %23, i32 1, i32 2
  %30 = mul nuw nsw i32 %29, %26
  %31 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef %3, i32 noundef %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %153

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.stm32_pinctrl, ptr %13, i32 0, i32 14
  %35 = getelementptr inbounds %struct.stm32_pinctrl, ptr %13, i32 0, i32 13
  %36 = getelementptr inbounds %struct.stm32_pinctrl, ptr %13, i32 0, i32 4
  %37 = getelementptr inbounds %struct.stm32_pinctrl, ptr %13, i32 0, i32 3
  %38 = call i32 @llvm.smax.i32(i32 %26, i32 1) #9
  br label %39

39:                                               ; preds = %150, %33
  %40 = phi i32 [ 0, %33 ], [ %151, %150 ]
  %41 = call i32 @of_property_read_u32_index(ptr noundef nonnull %12, ptr noundef nonnull @.str.32, i32 noundef %40, ptr noundef nonnull %5) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %153

43:                                               ; preds = %39
  %44 = load i32, ptr %5, align 4
  %45 = lshr i32 %44, 8
  %46 = and i32 %44, 255
  %47 = load i32, ptr %34, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %35, align 4
  br label %51

51:                                               ; preds = %73, %49
  %52 = phi i32 [ 0, %49 ], [ %74, %73 ]
  %53 = getelementptr %struct.stm32_desc_pin, ptr %50, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = getelementptr %struct.stm32_desc_pin, ptr %50, i32 %52, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = trunc i32 %44 to i8
  br label %65

62:                                               ; preds = %69
  %63 = getelementptr %struct.stm32_desc_function, ptr %66, i32 1
  %64 = icmp eq ptr %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %62, %60
  %66 = phi ptr [ %63, %62 ], [ %58, %60 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.stm32_desc_function, ptr %66, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, %61
  br i1 %72, label %78, label %62

73:                                               ; preds = %51
  %74 = add nuw i32 %52, 1
  %75 = icmp eq i32 %74, %47
  br i1 %75, label %76, label %51

76:                                               ; preds = %73, %65, %62, %56, %43
  %77 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.35, i32 noundef %46, i32 noundef %45) #10
  br label %153

78:                                               ; preds = %69
  %79 = load i32, ptr %36, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %37, align 4
  br label %83

83:                                               ; preds = %88, %81
  %84 = phi i32 [ 0, %81 ], [ %89, %88 ]
  %85 = getelementptr %struct.stm32_pinctrl_group, ptr %82, i32 %84, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, %45
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = add nuw i32 %84, 1
  %90 = icmp eq i32 %89, %79
  br i1 %90, label %94, label %83

91:                                               ; preds = %83
  %92 = getelementptr %struct.stm32_pinctrl_group, ptr %82, i32 %84
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91, %88, %78
  %95 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.34, i32 noundef %45) #10
  br label %153

96:                                               ; preds = %91
  %97 = load i32, ptr %3, align 4
  %98 = load i32, ptr %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %153, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %2, align 4
  %102 = getelementptr %struct.pinctrl_map, ptr %101, i32 %97, i32 2
  store i32 2, ptr %102, align 4
  %103 = load ptr, ptr %92, align 4
  %104 = load ptr, ptr %2, align 4
  %105 = load i32, ptr %3, align 4
  %106 = getelementptr %struct.pinctrl_map, ptr %104, i32 %105, i32 4
  store ptr %103, ptr %106, align 4
  %107 = load i32, ptr %34, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %134, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %35, align 4
  br label %111

111:                                              ; preds = %131, %109
  %112 = phi i32 [ 0, %109 ], [ %132, %131 ]
  %113 = getelementptr %struct.stm32_desc_pin, ptr %110, i32 %112
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %45
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = getelementptr %struct.stm32_desc_pin, ptr %110, i32 %112, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %134, label %123

120:                                              ; preds = %127
  %121 = getelementptr %struct.stm32_desc_function, ptr %124, i32 1
  %122 = icmp eq ptr %121, null
  br i1 %122, label %134, label %123

123:                                              ; preds = %120, %116
  %124 = phi ptr [ %121, %120 ], [ %118, %116 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.stm32_desc_function, ptr %124, i32 0, i32 1
  %129 = load i8, ptr %128, align 4
  %130 = icmp eq i8 %129, %61
  br i1 %130, label %136, label %120

131:                                              ; preds = %111
  %132 = add nuw i32 %112, 1
  %133 = icmp eq i32 %132, %107
  br i1 %133, label %134, label %111

134:                                              ; preds = %131, %123, %120, %116, %100
  %135 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.35, i32 noundef %46, i32 noundef %45) #10
  br label %153

136:                                              ; preds = %127
  %137 = getelementptr [18 x ptr], ptr @stm32_gpio_functions, i32 0, i32 %46
  %138 = load ptr, ptr %137, align 4
  %139 = load ptr, ptr %2, align 4
  %140 = load i32, ptr %3, align 4
  %141 = getelementptr %struct.pinctrl_map, ptr %139, i32 %140, i32 4, i32 0, i32 1
  store ptr %138, ptr %141, align 4
  %142 = load i32, ptr %3, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %3, align 4
  br i1 %23, label %150, label %144

144:                                              ; preds = %136
  %145 = load ptr, ptr %92, align 4
  %146 = load ptr, ptr %6, align 4
  %147 = load i32, ptr %7, align 4
  %148 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %8, ptr noundef %3, ptr noundef %145, ptr noundef %146, i32 noundef %147, i32 noundef 4) #9
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %136
  %151 = add nuw nsw i32 %40, 1
  %152 = icmp eq i32 %151, %38
  br i1 %152, label %153, label %39

153:                                              ; preds = %150, %144, %134, %96, %94, %76, %39, %28, %21
  %154 = phi i32 [ %31, %28 ], [ -22, %94 ], [ -22, %21 ], [ -22, %76 ], [ -22, %134 ], [ -28, %96 ], [ 0, %150 ], [ %148, %144 ], [ %41, %39 ]
  %155 = load ptr, ptr %6, align 4
  call void @kfree(ptr noundef %155) #9
  br label %156

156:                                              ; preds = %153, %18
  %157 = phi i32 [ %154, %153 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156, %16
  %160 = phi i32 [ -22, %16 ], [ %157, %156 ]
  %161 = load ptr, ptr %2, align 4
  %162 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %161, i32 noundef %162) #9
  call void @of_node_put(ptr noundef nonnull %12) #9
  br label %166

163:                                              ; preds = %156
  %164 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %12) #9
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %11

166:                                              ; preds = %163, %159, %4
  %167 = phi i32 [ %160, %159 ], [ 0, %4 ], [ 0, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stm32_pmx_get_funcs_cnt(ptr nocapture noundef readnone %0) #7 {
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @stm32_pmx_get_func_name(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = getelementptr [18 x ptr], ptr @stm32_gpio_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pmx_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.stm32_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.stm32_pinctrl_group, ptr %6, i32 %2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stm32_pinctrl, ptr %4, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.stm32_pinctrl, ptr %4, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %36, %12
  %16 = phi i32 [ 0, %12 ], [ %37, %36 ]
  %17 = getelementptr %struct.stm32_desc_pin, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %8
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr %struct.stm32_desc_pin, ptr %14, i32 %16, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %27

24:                                               ; preds = %31
  %25 = getelementptr %struct.stm32_desc_function, ptr %28, i32 1
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24, %20
  %28 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.stm32_desc_function, ptr %28, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %41, label %24

36:                                               ; preds = %15
  %37 = add nuw i32 %16, 1
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %39, label %15

39:                                               ; preds = %36, %27, %24, %20, %3
  %40 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.35, i32 noundef %1, i32 noundef %8) #10
  br label %109

41:                                               ; preds = %31
  %42 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %0, i32 noundef %8) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #10
  br label %109

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %42, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @gpiochip_get_data(ptr noundef %48) #9
  %50 = load i32, ptr %7, align 4
  %51 = srem i32 %50, 16
  %52 = add i32 %1, -1
  %53 = icmp ult i32 %52, 17
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = getelementptr inbounds [17 x i32], ptr @switch.table.stm32_pmx_set_mux, i32 0, i32 %52
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %46
  %58 = phi i32 [ 0, %46 ], [ %56, %54 ]
  %59 = add i32 %1, -1
  %60 = icmp ult i32 %59, 16
  %61 = select i1 %60, i32 %59, i32 0
  %62 = trunc i32 %51 to i8
  %63 = freeze i8 %62
  %64 = sdiv i8 %63, 8
  %65 = mul i8 %64, 8
  %66 = sub i8 %63, %65
  %67 = sext i8 %66 to i32
  %68 = shl nsw i32 %67, 2
  %69 = sext i8 %64 to i32
  %70 = shl nsw i32 %69, 2
  %71 = add nsw i32 %70, 32
  %72 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %49, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @clk_enable(ptr noundef %73) #9
  %75 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %49, i32 0, i32 3
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #9
  %77 = load ptr, ptr %49, align 4
  %78 = getelementptr i8, ptr %77, i32 %71
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  %80 = shl nsw i32 -1, %68
  %81 = sub nsw i32 28, %68
  %82 = lshr i32 -1, %81
  %83 = and i32 %82, %80
  %84 = xor i32 %83, -1
  %85 = and i32 %79, %84
  %86 = shl i32 %61, %68
  %87 = or i32 %85, %86
  %88 = load ptr, ptr %49, align 4
  %89 = getelementptr i8, ptr %88, i32 %71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %87) #9, !srcloc !12
  %90 = load ptr, ptr %49, align 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #9, !srcloc !8
  %92 = shl nsw i32 %51, 1
  %93 = shl nsw i32 -1, %92
  %94 = sub nsw i32 30, %92
  %95 = lshr i32 -1, %94
  %96 = and i32 %95, %93
  %97 = xor i32 %96, -1
  %98 = and i32 %91, %97
  %99 = shl i32 %58, %92
  %100 = or i32 %98, %99
  %101 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %100) #9, !srcloc !12
  %102 = getelementptr %struct.stm32_gpio_bank, ptr %49, i32 0, i32 10, i32 %51
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -64
  %105 = shl nuw nsw i32 %61, 2
  %106 = or i32 %58, %105
  %107 = or i32 %104, %106
  store i32 %107, ptr %102, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #9
  %108 = load ptr, ptr %72, align 4
  tail call void @clk_disable(ptr noundef %108) #9
  br label %109

109:                                              ; preds = %57, %44, %39
  %110 = phi i32 [ 0, %57 ], [ -22, %44 ], [ -22, %39 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 4
  %11 = add i32 %10, %1
  %12 = getelementptr inbounds %struct.stm32_pinctrl, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %13, i32 noundef %11) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.59, i32 noundef %11) #10
  br label %23

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %1
  %22 = tail call i32 @pinctrl_gpio_request(i32 noundef %21) #9
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %22, %18 ], [ -22, %16 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_free(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  tail call void @pinctrl_gpio_free(i32 noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_get_direction(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = srem i32 %1, 16
  %5 = trunc i32 %4 to i8
  %6 = sdiv i8 %5, 8
  %7 = mul i8 %6, 8
  %8 = sub i8 %5, %7
  %9 = sext i8 %8 to i32
  %10 = shl nsw i32 %9, 2
  %11 = sext i8 %6 to i32
  %12 = shl nsw i32 %11, 2
  %13 = add nsw i32 %12, 32
  %14 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_enable(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 3
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #9
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  %22 = shl nsw i32 -1, %10
  %23 = sub nsw i32 28, %10
  %24 = lshr i32 -1, %23
  %25 = and i32 %24, %22
  %26 = and i32 %25, %21
  %27 = lshr i32 %26, %10
  %28 = load ptr, ptr %3, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !8
  %30 = shl nsw i32 %4, 1
  %31 = shl nsw i32 -1, %30
  %32 = sub nsw i32 30, %30
  %33 = lshr i32 -1, %32
  %34 = and i32 %33, %31
  %35 = and i32 %34, %29
  %36 = lshr i32 %35, %30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #9
  %37 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %37) #9
  %38 = icmp eq i32 %27, 0
  %39 = icmp eq i32 %36, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i32 %36, 1
  %42 = select i1 %38, i1 %41, i1 false
  %43 = select i1 %42, i32 0, i32 -22
  %44 = select i1 %40, i32 1, i32 %43
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_direction_input(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %5) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr %struct.stm32_gpio_bank, ptr %4, i32 0, i32 10, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -2049
  %8 = shl i32 %2, 11
  %9 = or i32 %7, %8
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  %11 = add i32 %1, 16
  %12 = select i1 %10, i32 %11, i32 %1
  %13 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_enable(ptr noundef %14) #9
  %16 = shl nuw i32 1, %12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !12
  %19 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  %20 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %1
  %23 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %22) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = lshr i32 %9, %1
  %11 = and i32 %10, 1
  %12 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %12) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  %5 = getelementptr %struct.stm32_gpio_bank, ptr %4, i32 0, i32 10, i32 %1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -2049
  %8 = shl i32 %2, 11
  %9 = or i32 %7, %8
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %2, 0
  %11 = add i32 %1, 16
  %12 = select i1 %10, i32 %11, i32 %1
  %13 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_enable(ptr noundef %14) #9
  %16 = shl nuw i32 1, %12
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #9, !srcloc !12
  %19 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 56, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %4, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  store ptr %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 1
  store i32 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  store i32 0, ptr %10, align 4
  %11 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_domain_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.irq_fwspec, align 4
  %6 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %8 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %8, i8 0, i32 56, i1 false), !annotation !10
  %9 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %7, i32 0, i32 4, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.irq_fwspec, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stm32_pinctrl, ptr %12, i32 0, i32 17
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.stm32_pinctrl, ptr %12, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = shl nuw i32 1, %14
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.60, i32 noundef %14) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #9
  br label %40

25:                                               ; preds = %4
  %26 = trunc i32 %20 to i16
  %27 = or i16 %18, %26
  store i16 %27, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #9
  %28 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.irq_domain, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  store ptr %31, ptr %5, align 4
  %32 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 1
  store i32 2, ptr %32, align 4
  %33 = load i32, ptr %13, align 4
  %34 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = getelementptr %struct.irq_fwspec, ptr %3, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.irq_fwspec, ptr %5, i32 0, i32 2, i32 1
  store i32 %36, ptr %37, align 4
  %38 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %1, i32 noundef %14, ptr noundef nonnull @stm32_gpio_irq_chip, ptr noundef %7) #9
  %39 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #9
  br label %40

40:                                               ; preds = %25, %23
  %41 = phi i32 [ %39, %25 ], [ -16, %23 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @irq_domain_get_irq_data(ptr noundef %0, i32 noundef %1) #9
  %11 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @irq_domain_free_irqs_common(ptr noundef %0, i32 noundef %1, i32 noundef %2) #9
  %13 = getelementptr inbounds %struct.stm32_pinctrl, ptr %9, i32 0, i32 17
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #9
  %15 = shl nuw i32 1, %12
  %16 = getelementptr inbounds %struct.stm32_pinctrl, ptr %9, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = trunc i32 %15 to i16
  %19 = xor i16 %18, -1
  %20 = and i16 %17, %19
  store i16 %20, ptr %16, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_domain_activate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.irq_data, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.stm32_pinctrl, ptr %9, i32 0, i32 11, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @stm32_gpio_domain_translate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_fwspec, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 15
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  store i32 %10, ptr %2, align 4
  %13 = getelementptr %struct.irq_fwspec, ptr %1, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %3, align 4
  br label %15

15:                                               ; preds = %12, %8, %4
  %16 = phi i32 [ 0, %12 ], [ -22, %8 ], [ -22, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_unmask(ptr noundef %0) #0 {
  tail call void @irq_chip_unmask_parent(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %6) #9
  %10 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  %16 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  %17 = shl nuw i32 1, %8
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr %struct.stm32_gpio_bank, ptr %5, i32 0, i32 11, i32 %20
  %22 = load i8, ptr %21, align 1
  br i1 %19, label %23, label %25

23:                                               ; preds = %1
  %24 = icmp eq i8 %22, 8
  br i1 %24, label %27, label %29

25:                                               ; preds = %1
  %26 = icmp eq i8 %22, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %23
  %28 = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %0) #9
  br label %29

29:                                               ; preds = %27, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_eoi(ptr noundef %0) #0 {
  tail call void @irq_chip_eoi_parent(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %6) #9
  %10 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_enable(ptr noundef %11) #9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !8
  %16 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  %17 = shl nuw i32 1, %8
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr %struct.stm32_gpio_bank, ptr %5, i32 0, i32 11, i32 %20
  %22 = load i8, ptr %21, align 1
  br i1 %19, label %23, label %25

23:                                               ; preds = %1
  %24 = icmp eq i8 %22, 8
  br i1 %24, label %27, label %29

25:                                               ; preds = %1
  %26 = icmp eq i8 %22, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %23
  %28 = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %0) #9
  br label %29

29:                                               ; preds = %27, %25, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_set_type(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = add i32 %1, -1
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = trunc i32 %7 to i8
  %11 = lshr i8 -113, %10
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_gpio_set_type, i32 0, i32 %7
  %16 = load i32, ptr %15, align 4
  %17 = trunc i32 %1 to i8
  %18 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.stm32_gpio_bank, ptr %6, i32 0, i32 11, i32 %19
  store i8 %17, ptr %20, align 1
  %21 = tail call i32 @irq_chip_set_type_parent(ptr noundef %0, i32 noundef %16) #9
  br label %22

22:                                               ; preds = %14, %9, %2
  %23 = phi i32 [ %21, %14 ], [ -22, %2 ], [ -22, %9 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stm32_gpio_irq_request_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4, i32 19
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %14) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %10, align 4
  %20 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %18, i32 noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %9, align 4
  %24 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.62, i32 noundef %24) #10
  br label %25

25:                                               ; preds = %22, %17, %1
  %26 = phi i32 [ %20, %22 ], [ %15, %1 ], [ 0, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_release_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stm32_gpio_bank, ptr %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %6, i32 noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3745240}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{i32 0, i32 33}
!12 = !{i64 3744822}
