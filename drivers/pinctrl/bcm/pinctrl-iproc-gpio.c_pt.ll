; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-iproc-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iproc_gpio = type { ptr, ptr, ptr, i32, %struct.raw_spinlock, %struct.irq_chip, %struct.gpio_chip, i32, i8, ptr, i32, ptr, %struct.pinctrl_desc }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_iproc_gpio__210_923_iproc_gpio_init3s = internal global ptr @iproc_gpio_init, section ".initcall3s.init", align 4
@iproc_gpio_driver = internal global %struct.platform_driver { ptr @iproc_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iproc_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"iproc-gpio\00", align 1
@iproc_gpio_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-ccm-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-asiu-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-crmu-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nsp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-stingray-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"brcm,iproc-nsp-gpio\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"brcm,iproc-stingray-gpio\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to map I/O memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"brcm,cygnus-ccm-gpio\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"missing ngpios DT property\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unable to add GPIO chip\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"unable to register pinconf\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"unable to create pinconf disable map\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"gpio-%d\00", align 1
@iproc_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @iproc_get_groups_count, ptr @iproc_get_group_name, ptr null, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@iproc_pconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @iproc_pin_config_get, ptr @iproc_pin_config_set, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"unable to register pinctrl device\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"gpio_grp\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@iproc_pinconf_disable_map = internal unnamed_addr constant [4 x i32] [i32 9, i32 1, i32 5, i32 3], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_iproc_gpio__210_923_iproc_gpio_init3s], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @iproc_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @iproc_gpio_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  %11 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.2) #8
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ false, %1 ], [ %12, %9 ]
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 524, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %198, label %17

17:                                               ; preds = %13
  store ptr %4, ptr %15, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %15, ptr %18, align 8
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %198

25:                                               ; preds = %17
  %26 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %26) #8
  %30 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = ptrtoint ptr %29 to i32
  br label %198

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8
  %36 = tail call i32 @of_device_is_compatible(ptr noundef %35, ptr noundef nonnull @.str.4) #8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 1, i32 2
  br label %39

39:                                               ; preds = %34, %25
  %40 = phi i32 [ 3, %25 ], [ %38, %34 ]
  %41 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = load ptr, ptr %5, align 8
  %43 = call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  br label %198

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 4
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6
  %49 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 19
  store i32 -1, ptr %49, align 4
  %50 = load i32, ptr %3, align 4
  %51 = trunc i32 %50 to i16
  %52 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 20
  store i16 %51, ptr %52, align 4
  %53 = add i32 %50, 31
  %54 = lshr i32 %53, 5
  %55 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 7
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load ptr, ptr %4, align 4
  br label %61

61:                                               ; preds = %59, %46
  %62 = phi ptr [ %60, %59 ], [ %57, %46 ]
  store ptr %62, ptr %48, align 4
  %63 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 2
  store ptr %4, ptr %63, align 4
  %64 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 5
  store ptr @iproc_gpio_request, ptr %64, align 4
  %65 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 6
  store ptr @iproc_gpio_free, ptr %65, align 4
  %66 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 8
  store ptr @iproc_gpio_direction_input, ptr %66, align 4
  %67 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 9
  store ptr @iproc_gpio_direction_output, ptr %67, align 4
  %68 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 7
  store ptr @iproc_gpio_get_direction, ptr %68, align 4
  %69 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 12
  store ptr @iproc_gpio_set, ptr %69, align 4
  %70 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 10
  store ptr @iproc_gpio_get, ptr %70, align 4
  %71 = load ptr, ptr %5, align 8
  %72 = call ptr @of_find_property(ptr noundef %71, ptr noundef nonnull @.str.7, ptr noundef null) #8
  %73 = icmp ne ptr %72, null
  %74 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 8
  %75 = zext i1 %73 to i8
  store i8 %75, ptr %74, align 4
  %76 = call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef 0) #8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5
  %80 = load ptr, ptr %56, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr %4, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %83, %82 ], [ %80, %78 ]
  %86 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 1
  store ptr %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 6
  store ptr @iproc_gpio_irq_ack, ptr %87, align 4
  %88 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 7
  store ptr @iproc_gpio_irq_mask, ptr %88, align 4
  %89 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 9
  store ptr @iproc_gpio_irq_unmask, ptr %89, align 4
  %90 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 13
  store ptr @iproc_gpio_irq_set_type, ptr %90, align 4
  %91 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 4
  store ptr @iproc_gpio_irq_unmask, ptr %91, align 4
  %92 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 5, i32 5
  store ptr @iproc_gpio_irq_mask, ptr %92, align 4
  %93 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37
  store ptr %79, ptr %93, align 4
  %94 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37, i32 13
  store ptr @iproc_gpio_irq_handler, ptr %94, align 4
  %95 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37, i32 15
  store i32 1, ptr %95, align 4
  %96 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 4, i32 noundef 3520) #8
  %97 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37, i32 16
  store ptr %96, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %198, label %99

99:                                               ; preds = %84
  store i32 %76, ptr %96, align 4
  %100 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37, i32 10
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 6, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %101, align 4
  br label %102

102:                                              ; preds = %99, %61
  %103 = call i32 @gpiochip_add_data_with_key(ptr noundef %48, ptr noundef nonnull %15, ptr noundef null, ptr noundef null) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #9
  br label %198

106:                                              ; preds = %102
  br i1 %14, label %198, label %107

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 12
  %109 = load i16, ptr %52, align 4
  %110 = zext i16 %109 to i32
  %111 = mul nuw nsw i32 %110, 12
  %112 = load ptr, ptr %15, align 4
  %113 = call noalias ptr @devm_kmalloc(ptr noundef %112, i32 noundef %111, i32 noundef 3520) #8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %195, label %115

115:                                              ; preds = %107
  %116 = load i16, ptr %52, align 4
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %132, label %123

118:                                              ; preds = %123
  %119 = add nuw nsw i32 %124, 1
  %120 = load i16, ptr %52, align 4
  %121 = zext i16 %120 to i32
  %122 = icmp ult i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %118, %115
  %124 = phi i32 [ %119, %118 ], [ 0, %115 ]
  %125 = getelementptr %struct.pinctrl_pin_desc, ptr %113, i32 %124
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %15, align 4
  %127 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %126, i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %124) #8
  %128 = getelementptr %struct.pinctrl_pin_desc, ptr %113, i32 %124, i32 1
  store ptr %127, ptr %128, align 4
  %129 = icmp eq ptr %127, null
  br i1 %129, label %195, label %118

130:                                              ; preds = %118
  %131 = zext i16 %120 to i32
  br label %132

132:                                              ; preds = %130, %115
  %133 = phi i32 [ 0, %115 ], [ %131, %130 ]
  %134 = load ptr, ptr %15, align 4
  %135 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load ptr, ptr %134, align 4
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %139, %138 ], [ %136, %132 ]
  store ptr %141, ptr %108, align 4
  %142 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 12, i32 3
  store ptr @iproc_pctrl_ops, ptr %142, align 4
  %143 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 12, i32 1
  store ptr %113, ptr %143, align 4
  %144 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 12, i32 2
  store i32 %133, ptr %144, align 4
  %145 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 12, i32 5
  store ptr @iproc_pconf_ops, ptr %145, align 4
  %146 = call ptr @devm_pinctrl_register(ptr noundef %134, ptr noundef %108, ptr noundef %15) #8
  %147 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 11
  store ptr %146, ptr %147, align 4
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.13) #9
  %151 = load ptr, ptr %147, align 4
  %152 = ptrtoint ptr %151 to i32
  %153 = icmp eq ptr %151, null
  br i1 %153, label %154, label %195

154:                                              ; preds = %149, %140
  br i1 %8, label %198, label %155

155:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 1, ptr %2, align 4
  %156 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 0) #8
  %157 = icmp ult i32 %156, 4
  br i1 %157, label %158, label %193

158:                                              ; preds = %158, %155
  %159 = phi i32 [ %161, %158 ], [ 0, %155 ]
  %160 = phi i32 [ %163, %158 ], [ %156, %155 ]
  %161 = add i32 %159, 1
  %162 = add nuw nsw i32 %160, 1
  %163 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 4, i32 noundef %162) #8
  %164 = icmp ult i32 %163, 4
  br i1 %164, label %158, label %165

165:                                              ; preds = %158
  %166 = icmp eq i32 %161, 0
  br i1 %166, label %193, label %167

167:                                              ; preds = %165
  %168 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %161, i32 4) #8
  %169 = extractvalue { i32, i1 } %168, 1
  br i1 %169, label %170, label %172, !prof !9

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 9
  store ptr null, ptr %171, align 4
  br label %194

172:                                              ; preds = %167
  %173 = load ptr, ptr %15, align 4
  %174 = extractvalue { i32, i1 } %168, 0
  %175 = call noalias ptr @devm_kmalloc(ptr noundef %173, i32 noundef %174, i32 noundef 3520) #8
  %176 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 9
  store ptr %175, ptr %176, align 4
  %177 = icmp eq ptr %175, null
  br i1 %177, label %194, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.iproc_gpio, ptr %15, i32 0, i32 10
  store i32 %161, ptr %179, align 4
  %180 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 4, i32 noundef 0) #8
  %181 = icmp ult i32 %180, 4
  br i1 %181, label %182, label %193

182:                                              ; preds = %182, %178
  %183 = phi i32 [ %188, %182 ], [ 0, %178 ]
  %184 = phi i32 [ %191, %182 ], [ %180, %178 ]
  %185 = getelementptr [4 x i32], ptr @iproc_pinconf_disable_map, i32 0, i32 %184
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %176, align 4
  %188 = add i32 %183, 1
  %189 = getelementptr i32, ptr %187, i32 %183
  store i32 %186, ptr %189, align 4
  %190 = add nuw nsw i32 %184, 1
  %191 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 4, i32 noundef %190) #8
  %192 = icmp ult i32 %191, 4
  br i1 %192, label %182, label %193

193:                                              ; preds = %182, %178, %165, %155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %198

194:                                              ; preds = %172, %170
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br label %195

195:                                              ; preds = %194, %149, %123, %107
  %196 = phi ptr [ @.str.10, %194 ], [ @.str.9, %107 ], [ @.str.9, %149 ], [ @.str.9, %123 ]
  %197 = phi i32 [ -12, %194 ], [ -12, %107 ], [ %152, %149 ], [ -12, %123 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull %196) #9
  call void @gpiochip_remove(ptr noundef %48) #8
  br label %198

198:                                              ; preds = %195, %193, %154, %106, %105, %84, %45, %32, %22, %13
  %199 = phi i32 [ %24, %22 ], [ %33, %32 ], [ -19, %45 ], [ %103, %105 ], [ %197, %195 ], [ -12, %13 ], [ 0, %154 ], [ 0, %106 ], [ -12, %84 ], [ 0, %193 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %199
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %1
  %11 = tail call i32 @pinctrl_gpio_request(i32 noundef %10) #8
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %1
  tail call void @pinctrl_gpio_free(i32 noundef %10) #8
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = shl i32 %1, 4
  %7 = and i32 %6, -512
  %8 = or i32 %7, 8
  %9 = and i32 %1, 31
  %10 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %14 = shl nuw i32 1, %9
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = shl i32 %1, 4
  %8 = and i32 %7, -512
  %9 = or i32 %8, 8
  %10 = and i32 %1, 31
  %11 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %9
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %15 = shl nuw i32 1, %10
  %16 = or i32 %14, %15
  %17 = xor i32 %15, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #8, !srcloc !14
  %20 = icmp eq i32 %2, 0
  %21 = or i32 %8, 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %25 = or i32 %24, %15
  %26 = and i32 %24, %17
  %27 = select i1 %20, i32 %26, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i8, ptr %28, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = shl i32 %1, 4
  %5 = and i32 %4, -512
  %6 = or i32 %5, 8
  %7 = and i32 %1, 31
  %8 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %6
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %12 = xor i32 %11, -1
  %13 = lshr i32 %12, %7
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = icmp eq i32 %2, 0
  %8 = shl i32 %1, 4
  %9 = and i32 %8, -512
  %10 = or i32 %9, 4
  %11 = and i32 %1, 31
  %12 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %16 = shl nuw i32 1, %11
  %17 = or i32 %15, %16
  %18 = xor i32 %16, -1
  %19 = and i32 %15, %18
  %20 = select i1 %7, i32 %19, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i8, ptr %21, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = shl i32 %1, 4
  %5 = and i32 %4, -512
  %6 = and i32 %1, 31
  %7 = getelementptr inbounds %struct.iproc_gpio, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 %5
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %11 = lshr i32 %10, %6
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 4
  %8 = and i32 %7, -512
  %9 = or i32 %8, 36
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %12 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #8, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = load ptr, ptr %2, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 4
  %12 = and i32 %11, -512
  %13 = or i32 %12, 24
  %14 = and i32 %10, 31
  %15 = getelementptr inbounds %struct.iproc_gpio, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %19 = shl nuw i32 1, %14
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.iproc_gpio, ptr %4, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = load ptr, ptr %2, align 4
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 4
  %12 = and i32 %11, -512
  %13 = or i32 %12, 24
  %14 = and i32 %10, 31
  %15 = getelementptr inbounds %struct.iproc_gpio, ptr %8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %19 = shl nuw i32 1, %14
  %20 = or i32 %18, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %15, align 4
  %22 = getelementptr i8, ptr %21, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %1, 15
  %9 = add nsw i32 %8, -1
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %13, label %11

11:                                               ; preds = %13, %2
  %12 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %1) #9
  br label %70

13:                                               ; preds = %2
  %14 = trunc i32 %9 to i8
  %15 = lshr i8 -113, %14
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %13
  %19 = trunc i32 %9 to i8
  %20 = lshr i8 -120, %19
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  %23 = trunc i32 %9 to i8
  %24 = icmp eq i8 %23, 2
  %25 = trunc i32 %9 to i8
  %26 = lshr i8 121, %25
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  %29 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 4
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #8
  %31 = shl i32 %7, 4
  %32 = and i32 %31, -512
  %33 = or i32 %32, 12
  %34 = and i32 %7, 31
  %35 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %33
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %39 = shl nuw i32 1, %34
  %40 = or i32 %38, %39
  %41 = xor i32 %39, -1
  %42 = and i32 %38, %41
  %43 = select i1 %22, i32 %42, i32 %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr i8, ptr %44, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #8, !srcloc !14
  %46 = or i32 %32, 16
  %47 = load ptr, ptr %35, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %50 = or i32 %49, %39
  %51 = and i32 %49, %41
  %52 = select i1 %24, i32 %50, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %53 = load ptr, ptr %35, align 4
  %54 = getelementptr i8, ptr %53, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #8, !srcloc !14
  %55 = or i32 %32, 20
  %56 = load ptr, ptr %35, align 4
  %57 = getelementptr i8, ptr %56, i32 %55
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %59 = or i32 %58, %39
  %60 = and i32 %58, %41
  %61 = select i1 %28, i32 %60, i32 %59
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %35, align 4
  %63 = getelementptr i8, ptr %62, i32 %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !14
  %64 = and i32 %1, 3
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr @handle_level_irq, ptr @handle_edge_irq
  %67 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.irq_desc, ptr %68, i32 0, i32 3
  store ptr %66, ptr %69, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #8
  br label %70

70:                                               ; preds = %18, %11
  %71 = phi i32 [ -22, %11 ], [ 0, %18 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @iproc_gpio_irq_handler(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %13(ptr noundef %16) #8
  br label %25

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %19(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void %22(ptr noundef %20) #8
  br label %25

25:                                               ; preds = %24, %17, %15, %1
  %26 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.gpio_chip, ptr %4, i32 0, i32 37, i32 1
  br label %32

32:                                               ; preds = %55, %29
  %33 = phi i32 [ 0, %29 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %34 = load ptr, ptr %30, align 4
  %35 = shl i32 %33, 9
  %36 = getelementptr i8, ptr %34, i32 32
  %37 = getelementptr i8, ptr %36, i32 %35
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  store i32 %38, ptr %2, align 4
  %39 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #8
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %55

41:                                               ; preds = %32
  %42 = shl i32 %33, 5
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ %39, %41 ], [ %53, %43 ]
  %45 = add i32 %44, %42
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %46 = shl nuw i32 1, %44
  %47 = load ptr, ptr %30, align 4
  %48 = getelementptr i8, ptr %47, i32 %35
  %49 = getelementptr i8, ptr %48, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %46) #8, !srcloc !14
  %50 = load ptr, ptr %31, align 4
  %51 = call i32 @generic_handle_domain_irq(ptr noundef %50, i32 noundef %45) #8
  %52 = add nsw i32 %44, 1
  %53 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %52) #8
  %54 = icmp slt i32 %53, 32
  br i1 %54, label %43, label %55

55:                                               ; preds = %43, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %56 = add nuw i32 %33, 1
  %57 = load i32, ptr %26, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %32, label %59

59:                                               ; preds = %55, %25
  %60 = load ptr, ptr %8, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.irq_chip, ptr %7, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %64, %62 ], [ %60, %59 ]
  %67 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %66(ptr noundef %67) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @iproc_get_groups_count(ptr nocapture noundef readnone %0) #6 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @iproc_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  ret ptr @.str.14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %7 = load i32, ptr %2, align 4
  %8 = and i32 %7, 255
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 0, ptr %5, align 1
  %9 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  br label %18

15:                                               ; preds = %18
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ 0, %12 ], [ %16, %15 ]
  %20 = getelementptr i32, ptr %14, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %225, label %15

23:                                               ; preds = %15, %3
  %24 = trunc i32 %7 to i8
  switch i8 %24, label %225 [
    i8 1, label %25
    i8 5, label %72
    i8 3, label %122
    i8 9, label %172
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #8
  %28 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = and i32 %1, 31
  %35 = getelementptr i8, ptr %33, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %37 = shl nuw i32 1, %34
  %38 = and i32 %36, %37
  %39 = getelementptr i8, ptr %33, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %41 = and i32 %40, %37
  %42 = icmp ne i32 %38, 0
  %43 = zext i1 %42 to i8
  store i8 %43, ptr %5, align 1
  %44 = or i32 %41, %38
  %45 = icmp eq i32 %44, 0
  br label %65

46:                                               ; preds = %25
  %47 = shl i32 %1, 4
  %48 = and i32 %47, -512
  %49 = or i32 %48, 56
  %50 = and i32 %1, 31
  %51 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %49
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %55 = shl nuw i32 1, %50
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i8
  store i8 %58, ptr %4, align 1
  %59 = or i32 %48, 52
  %60 = load ptr, ptr %51, align 4
  %61 = getelementptr i8, ptr %60, i32 %59
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %63 = and i32 %62, %55
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %46, %31
  %66 = phi i1 [ %45, %31 ], [ %64, %46 ]
  %67 = phi ptr [ %4, %31 ], [ %5, %46 ]
  %68 = zext i1 %66 to i8
  store i8 %68, ptr %67, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #8
  %69 = load i8, ptr %4, align 1
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 -22, i32 0
  br label %225

72:                                               ; preds = %23
  %73 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 4
  %74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %73) #8
  %75 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = and i32 %1, 31
  %82 = getelementptr i8, ptr %80, i32 20
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %84 = shl nuw i32 1, %81
  %85 = and i32 %83, %84
  %86 = getelementptr i8, ptr %80, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %88 = and i32 %87, %84
  %89 = icmp ne i32 %85, 0
  %90 = zext i1 %89 to i8
  store i8 %90, ptr %5, align 1
  %91 = or i32 %88, %85
  %92 = icmp eq i32 %91, 0
  br label %112

93:                                               ; preds = %72
  %94 = shl i32 %1, 4
  %95 = and i32 %94, -512
  %96 = or i32 %95, 56
  %97 = and i32 %1, 31
  %98 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %96
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %102 = shl nuw i32 1, %97
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i8
  store i8 %105, ptr %4, align 1
  %106 = or i32 %95, 52
  %107 = load ptr, ptr %98, align 4
  %108 = getelementptr i8, ptr %107, i32 %106
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %110 = and i32 %109, %102
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %93, %78
  %113 = phi i1 [ %92, %78 ], [ %111, %93 ]
  %114 = phi ptr [ %4, %78 ], [ %5, %93 ]
  %115 = zext i1 %113 to i8
  store i8 %115, ptr %114, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %74) #8
  %116 = load i8, ptr %4, align 1
  %117 = icmp ne i8 %116, 0
  %118 = load i8, ptr %5, align 1
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %117, i1 true, i1 %119
  %121 = select i1 %120, i32 -22, i32 0
  br label %225

122:                                              ; preds = %23
  %123 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 4
  %124 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %123) #8
  %125 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = and i32 %1, 31
  %132 = getelementptr i8, ptr %130, i32 20
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %134 = shl nuw i32 1, %131
  %135 = and i32 %133, %134
  %136 = getelementptr i8, ptr %130, i32 16
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !21
  %138 = and i32 %137, %134
  %139 = icmp ne i32 %135, 0
  %140 = zext i1 %139 to i8
  store i8 %140, ptr %5, align 1
  %141 = or i32 %138, %135
  %142 = icmp eq i32 %141, 0
  br label %162

143:                                              ; preds = %122
  %144 = shl i32 %1, 4
  %145 = and i32 %144, -512
  %146 = or i32 %145, 56
  %147 = and i32 %1, 31
  %148 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr i8, ptr %149, i32 %146
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %152 = shl nuw i32 1, %147
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i8
  store i8 %155, ptr %4, align 1
  %156 = or i32 %145, 52
  %157 = load ptr, ptr %148, align 4
  %158 = getelementptr i8, ptr %157, i32 %156
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %158) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %160 = and i32 %159, %152
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %143, %128
  %163 = phi i1 [ %142, %128 ], [ %161, %143 ]
  %164 = phi ptr [ %4, %128 ], [ %5, %143 ]
  %165 = zext i1 %163 to i8
  store i8 %165, ptr %164, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %123, i32 noundef %124) #8
  %166 = load i8, ptr %4, align 1
  %167 = icmp eq i8 %166, 0
  %168 = load i8, ptr %5, align 1
  %169 = icmp eq i8 %168, 0
  %170 = select i1 %167, i1 %169, i1 false
  %171 = select i1 %170, i32 0, i32 -22
  br label %225

172:                                              ; preds = %23
  %173 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %172
  %180 = phi ptr [ %178, %176 ], [ %174, %172 ]
  %181 = and i32 %1, 31
  %182 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 4
  %183 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %182) #8
  %184 = getelementptr inbounds %struct.iproc_gpio, ptr %6, i32 0, i32 3
  %185 = shl i32 %1, 4
  %186 = and i32 %185, -512
  %187 = shl nuw i32 1, %181
  %188 = load i32, ptr %184, align 4
  switch i32 %188, label %190 [
    i32 1, label %192
    i32 2, label %189
  ]

189:                                              ; preds = %179
  br label %192

190:                                              ; preds = %179
  %191 = or i32 %186, 88
  br label %192

192:                                              ; preds = %190, %189, %179
  %193 = phi i32 [ 0, %189 ], [ %191, %190 ], [ 8, %179 ]
  %194 = getelementptr i8, ptr %180, i32 %193
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %194) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %196 = and i32 %195, %187
  %197 = lshr i32 %196, %181
  %198 = load i32, ptr %184, align 4
  %199 = add i32 %198, -1
  %200 = icmp ult i32 %199, 2
  %201 = or i32 %186, 92
  %202 = select i1 %200, i32 4, i32 %201
  %203 = getelementptr i8, ptr %180, i32 %202
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %205 = and i32 %204, %187
  %206 = lshr i32 %205, %181
  %207 = shl i32 %206, 1
  %208 = add i32 %207, %197
  %209 = load i32, ptr %184, align 4
  switch i32 %209, label %211 [
    i32 1, label %210
    i32 2, label %213
  ]

210:                                              ; preds = %192
  br label %213

211:                                              ; preds = %192
  %212 = or i32 %186, 96
  br label %213

213:                                              ; preds = %211, %210, %192
  %214 = phi i32 [ 0, %210 ], [ %212, %211 ], [ 8, %192 ]
  %215 = getelementptr i8, ptr %180, i32 %214
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %215) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %217 = and i32 %216, %187
  %218 = lshr i32 %217, %181
  %219 = shl i32 %218, 2
  %220 = add i32 %208, %219
  %221 = shl i32 %220, 9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %182, i32 noundef %183) #8
  %222 = add i32 %221, 512
  %223 = and i32 %222, 16776704
  %224 = or i32 %223, 9
  store i32 %224, ptr %2, align 4
  br label %225

225:                                              ; preds = %213, %162, %112, %65, %23, %18
  %226 = phi i32 [ 0, %213 ], [ %71, %65 ], [ -524, %23 ], [ %121, %112 ], [ %171, %162 ], [ -524, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %99, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 10
  %9 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 9
  %10 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 1
  %12 = and i32 %1, 31
  %13 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 4
  %14 = getelementptr inbounds %struct.iproc_gpio, ptr %5, i32 0, i32 3
  %15 = shl i32 %1, 4
  %16 = and i32 %15, -512
  %17 = shl nuw i32 1, %12
  %18 = xor i32 %17, -1
  %19 = or i32 %16, 88
  %20 = or i32 %16, 92
  %21 = or i32 %16, 96
  br label %22

22:                                               ; preds = %96, %7
  %23 = phi i32 [ 0, %7 ], [ %97, %96 ]
  %24 = getelementptr i32, ptr %2, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 255
  %27 = load i32, ptr %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %9, align 4
  br label %34

31:                                               ; preds = %34
  %32 = add nuw i32 %35, 1
  %33 = icmp eq i32 %32, %27
  br i1 %33, label %39, label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ 0, %29 ], [ %32, %31 ]
  %36 = getelementptr i32, ptr %30, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %26
  br i1 %38, label %99, label %31

39:                                               ; preds = %31, %22
  %40 = trunc i32 %25 to i8
  switch i8 %40, label %94 [
    i8 1, label %41
    i8 5, label %42
    i8 3, label %43
    i8 9, label %44
  ]

41:                                               ; preds = %39
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %5, i32 noundef %1, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %96

42:                                               ; preds = %39
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %5, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %96

43:                                               ; preds = %39
  tail call fastcc void @iproc_gpio_set_pull(ptr noundef %5, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %96

44:                                               ; preds = %39
  %45 = lshr i32 %25, 8
  %46 = add nsw i32 %45, -2
  %47 = icmp ult i32 %46, 15
  %48 = and i32 %25, 256
  %49 = icmp eq i32 %48, 0
  %50 = and i1 %49, %47
  br i1 %50, label %51, label %99

51:                                               ; preds = %44
  %52 = load ptr, ptr %10, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load ptr, ptr %11, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi ptr [ %55, %54 ], [ %52, %51 ]
  %58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %59 = lshr i32 %25, 9
  %60 = add nsw i32 %59, -1
  %61 = load i32, ptr %14, align 4
  switch i32 %61, label %63 [
    i32 1, label %64
    i32 2, label %62
  ]

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62, %56
  %65 = phi i32 [ 0, %62 ], [ %19, %63 ], [ 8, %56 ]
  %66 = getelementptr i8, ptr %57, i32 %65
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %68 = and i32 %67, %18
  %69 = and i32 %60, 1
  %70 = shl nuw i32 %69, %12
  %71 = or i32 %68, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %71) #8, !srcloc !14
  %72 = load i32, ptr %14, align 4
  %73 = add i32 %72, -1
  %74 = icmp ult i32 %73, 2
  %75 = select i1 %74, i32 4, i32 %20
  %76 = getelementptr i8, ptr %57, i32 %75
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %78 = and i32 %77, %18
  %79 = lshr i32 %60, 1
  %80 = and i32 %79, 1
  %81 = shl nuw i32 %80, %12
  %82 = or i32 %78, %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %82) #8, !srcloc !14
  %83 = load i32, ptr %14, align 4
  switch i32 %83, label %85 [
    i32 1, label %84
    i32 2, label %86
  ]

84:                                               ; preds = %64
  br label %86

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %84, %64
  %87 = phi i32 [ 0, %84 ], [ %21, %85 ], [ 8, %64 ]
  %88 = getelementptr i8, ptr %57, i32 %87
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  %90 = and i32 %89, %18
  %91 = lshr i32 %60, 2
  %92 = shl nuw i32 %91, %12
  %93 = or i32 %90, %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %93) #8, !srcloc !14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %58) #8
  br label %96

94:                                               ; preds = %39
  %95 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.15) #9
  br label %99

96:                                               ; preds = %86, %43, %42, %41
  %97 = add nuw i32 %23, 1
  %98 = icmp eq i32 %97, %3
  br i1 %98, label %99, label %22

99:                                               ; preds = %96, %94, %44, %34, %4
  %100 = phi i32 [ -524, %94 ], [ -524, %4 ], [ -524, %34 ], [ 0, %96 ], [ -524, %44 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iproc_gpio_set_pull(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.iproc_gpio, ptr %0, i32 0, i32 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %7 = getelementptr inbounds %struct.iproc_gpio, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.iproc_gpio, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = and i32 %1, 31
  %14 = getelementptr i8, ptr %12, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %16 = getelementptr i8, ptr %12, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %18 = shl nuw i32 1, %13
  br i1 %2, label %19, label %23

19:                                               ; preds = %10
  %20 = xor i32 %18, -1
  %21 = and i32 %15, %20
  %22 = and i32 %17, %20
  br label %32

23:                                               ; preds = %10
  br i1 %3, label %24, label %28

24:                                               ; preds = %23
  %25 = or i32 %15, %18
  %26 = xor i32 %18, -1
  %27 = and i32 %17, %26
  br label %32

28:                                               ; preds = %23
  %29 = xor i32 %18, -1
  %30 = and i32 %15, %29
  %31 = or i32 %17, %18
  br label %32

32:                                               ; preds = %28, %24, %19
  %33 = phi i32 [ %22, %19 ], [ %27, %24 ], [ %31, %28 ]
  %34 = phi i32 [ %21, %19 ], [ %25, %24 ], [ %30, %28 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %34) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %33) #8, !srcloc !14
  br label %71

35:                                               ; preds = %4
  %36 = shl i32 %1, 4
  %37 = and i32 %36, -512
  br i1 %2, label %38, label %50

38:                                               ; preds = %35
  %39 = or i32 %37, 56
  %40 = and i32 %1, 31
  %41 = getelementptr inbounds %struct.iproc_gpio, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %39
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %45 = shl nuw i32 1, %40
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %41, align 4
  %49 = getelementptr i8, ptr %48, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #8, !srcloc !14
  br label %71

50:                                               ; preds = %35
  %51 = or i32 %37, 52
  %52 = and i32 %1, 31
  %53 = getelementptr inbounds %struct.iproc_gpio, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %51
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %57 = shl nuw i32 1, %52
  %58 = or i32 %56, %57
  %59 = xor i32 %57, -1
  %60 = and i32 %56, %59
  %61 = select i1 %3, i32 %58, i32 %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %62 = load ptr, ptr %53, align 4
  %63 = getelementptr i8, ptr %62, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %61) #8, !srcloc !14
  %64 = or i32 %37, 56
  %65 = load ptr, ptr %53, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %68 = or i32 %67, %57
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %69 = load ptr, ptr %53, align 4
  %70 = getelementptr i8, ptr %69, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #8, !srcloc !14
  br label %71

71:                                               ; preds = %50, %38, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 3232256}
!12 = !{i64 2152502130}
!13 = !{i64 2152502475}
!14 = !{i64 3231838}
!15 = !{i64 2152510574}
!16 = !{i64 2152512202}
!17 = !{i64 2152504893}
!18 = !{i64 2152503709}
!19 = !{i64 2152504300}
!20 = !{i64 2152517100}
!21 = !{i64 2152517500}
!22 = !{i64 2152503240}
!23 = !{i64 2152521099}
!24 = !{i64 2152519490}
!25 = !{i64 2152519750}
!26 = !{i64 2152514232}
!27 = !{i64 2152514553}
!28 = !{i64 2152515213}
!29 = !{i64 2152515526}
