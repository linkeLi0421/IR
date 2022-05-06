; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-nsp-gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-nsp-gpio.c"
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
%struct.nsp_gpio = type { ptr, ptr, ptr, %struct.irq_chip, %struct.gpio_chip, ptr, %struct.pinctrl_desc, %struct.raw_spinlock }
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

@__initcall__kmod_pinctrl_nsp_gpio__210_722_nsp_gpio_init3s = internal global ptr @nsp_gpio_init, section ".initcall3s.init", align 4
@nsp_gpio_driver = internal global %struct.platform_driver { ptr @nsp_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nsp_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"nsp-gpio-a\00", align 1
@nsp_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,nsp-gpio-a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ngpios\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Missing ngpios OF property\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to map I/O memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gpio-a\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to request IRQ%d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"unable to add GPIO chip\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"unable to register pinconf\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gpio-%d\00", align 1
@nsp_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @nsp_get_groups_count, ptr @nsp_get_group_name, ptr null, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@nsp_pconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @nsp_pin_config_get, ptr @nsp_pin_config_set, ptr @nsp_pin_config_group_get, ptr @nsp_pin_config_group_set, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"unable to register pinctrl device\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"gpio_grp\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"invalid configuration\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_nsp_gpio__210_722_nsp_gpio_init3s], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nsp_gpio_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nsp_gpio_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %129

9:                                                ; preds = %1
  %10 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 504, i32 noundef 3520) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %129, label %12

12:                                               ; preds = %9
  store ptr %3, ptr %10, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %13, align 8
  %14 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %15 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %18 = load ptr, ptr %15, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %129

20:                                               ; preds = %12
  %21 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #7
  %22 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  %25 = load ptr, ptr %22, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %129

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 7
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4
  %30 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 19
  store i32 -1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 23
  store i8 0, ptr %31, align 4
  %32 = load i32, ptr %2, align 4
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 20
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load ptr, ptr %3, align 4
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi ptr [ %39, %38 ], [ %36, %27 ]
  store ptr %41, ptr %29, align 4
  %42 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 2
  store ptr %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 5
  store ptr @gpiochip_generic_request, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 6
  store ptr @gpiochip_generic_free, ptr %44, align 4
  %45 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 8
  store ptr @nsp_gpio_direction_input, ptr %45, align 4
  %46 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 9
  store ptr @nsp_gpio_direction_output, ptr %46, align 4
  %47 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 7
  store ptr @nsp_gpio_get_direction, ptr %47, align 4
  %48 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 12
  store ptr @nsp_gpio_set, ptr %48, align 4
  %49 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 10
  store ptr @nsp_gpio_get, ptr %49, align 4
  %50 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3, i32 1
  store ptr @.str.4, ptr %53, align 4
  %54 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3, i32 6
  store ptr @nsp_gpio_irq_ack, ptr %54, align 4
  %55 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3, i32 7
  store ptr @nsp_gpio_irq_mask, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3, i32 9
  store ptr @nsp_gpio_irq_unmask, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3, i32 13
  store ptr @nsp_gpio_irq_set_type, ptr %57, align 4
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !10
  %61 = or i32 %60, 1
  store i32 %61, ptr %2, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  call void @arm_heavy_mb() #7
  %62 = load i32, ptr %2, align 4
  %63 = load ptr, ptr %15, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !12
  %65 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %50, ptr noundef nonnull @nsp_gpio_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %29) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %50, i32 noundef %65) #8
  br label %129

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 3
  %70 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37
  store ptr %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37, i32 13
  store ptr null, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37, i32 15
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37, i32 16
  store ptr null, ptr %73, align 4
  %74 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37, i32 10
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 4, i32 37, i32 9
  store ptr @handle_bad_irq, ptr %75, align 4
  br label %76

76:                                               ; preds = %68, %40
  %77 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %3, ptr noundef %29, ptr noundef nonnull %10, ptr noundef null, ptr noundef null) #7
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  br label %129

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 6
  %82 = load i16, ptr %34, align 4
  %83 = zext i16 %82 to i32
  %84 = mul nuw nsw i32 %83, 12
  %85 = load ptr, ptr %10, align 4
  %86 = call noalias ptr @devm_kmalloc(ptr noundef %85, i32 noundef %84, i32 noundef 3520) #7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %127, label %88

88:                                               ; preds = %80
  %89 = load i16, ptr %34, align 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %105, label %96

91:                                               ; preds = %96
  %92 = add nuw nsw i32 %97, 1
  %93 = load i16, ptr %34, align 4
  %94 = zext i16 %93 to i32
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91, %88
  %97 = phi i32 [ %92, %91 ], [ 0, %88 ]
  %98 = getelementptr %struct.pinctrl_pin_desc, ptr %86, i32 %97
  store i32 %97, ptr %98, align 4
  %99 = load ptr, ptr %10, align 4
  %100 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %99, i32 noundef 3264, ptr noundef nonnull @.str.9, i32 noundef %97) #7
  %101 = getelementptr %struct.pinctrl_pin_desc, ptr %86, i32 %97, i32 1
  store ptr %100, ptr %101, align 4
  %102 = icmp eq ptr %100, null
  br i1 %102, label %127, label %91

103:                                              ; preds = %91
  %104 = zext i16 %93 to i32
  br label %105

105:                                              ; preds = %103, %88
  %106 = phi i32 [ 0, %88 ], [ %104, %103 ]
  %107 = load ptr, ptr %10, align 4
  %108 = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load ptr, ptr %107, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = phi ptr [ %112, %111 ], [ %109, %105 ]
  store ptr %114, ptr %81, align 4
  %115 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 6, i32 3
  store ptr @nsp_pctrl_ops, ptr %115, align 4
  %116 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 6, i32 1
  store ptr %86, ptr %116, align 4
  %117 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 6, i32 2
  store i32 %106, ptr %117, align 4
  %118 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 6, i32 5
  store ptr @nsp_pconf_ops, ptr %118, align 4
  %119 = call ptr @devm_pinctrl_register(ptr noundef %107, ptr noundef %81, ptr noundef nonnull %10) #7
  %120 = getelementptr inbounds %struct.nsp_gpio, ptr %10, i32 0, i32 5
  store ptr %119, ptr %120, align 4
  %121 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load ptr, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.10) #8
  %124 = load ptr, ptr %120, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = icmp eq ptr %124, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %122, %96, %80
  %128 = phi i32 [ %125, %122 ], [ -12, %80 ], [ -12, %96 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  br label %129

129:                                              ; preds = %127, %122, %113, %79, %67, %24, %17, %9, %8
  %130 = phi i32 [ -19, %8 ], [ %19, %17 ], [ %26, %24 ], [ %77, %79 ], [ %128, %127 ], [ -12, %9 ], [ %65, %67 ], [ 0, %122 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %130
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.nsp_gpio, ptr %3, i32 0, i32 7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nsp_gpio, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %10 = shl nuw i32 1, %1
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %12) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %11 = shl nuw i32 1, %1
  %12 = or i32 %10, %11
  %13 = xor i32 %11, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %12) #7, !srcloc !12
  %14 = icmp eq i32 %2, 0
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %18 = or i32 %17, %11
  %19 = and i32 %17, %13
  %20 = select i1 %14, i32 %19, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %20) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.nsp_gpio, ptr %3, i32 0, i32 7
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.nsp_gpio, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 72
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #7
  %10 = xor i32 %9, -1
  %11 = lshr i32 %10, %1
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = icmp eq i32 %2, 0
  %8 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %12 = shl nuw i32 1, %1
  %13 = or i32 %11, %12
  %14 = xor i32 %12, -1
  %15 = and i32 %11, %14
  %16 = select i1 %7, i32 %15, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %16) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.nsp_gpio, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %8 = lshr i32 %7, %1
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_ack(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @irq_get_irq_data(i32 noundef %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.irq_data, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = shl nuw i32 1, %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #7, !srcloc !12
  br label %22

22:                                               ; preds = %17, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_mask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  tail call fastcc void @nsp_gpio_irq_set_mask(ptr noundef %0, i1 noundef zeroext false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsp_gpio_irq_unmask(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %5 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  tail call fastcc void @nsp_gpio_irq_set_mask(ptr noundef %0, i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 100
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %14 = shl nuw i32 1, %7
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %20 = and i32 %19, %14
  %21 = icmp ne i32 %20, 0
  %22 = and i32 %1, 15
  switch i32 %22, label %26 [
    i32 1, label %28
    i32 2, label %23
    i32 4, label %24
    i32 8, label %25
  ]

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  br label %28

25:                                               ; preds = %2
  br label %28

26:                                               ; preds = %2
  %27 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.8, i32 noundef %1) #8
  br label %50

28:                                               ; preds = %25, %24, %23, %2
  %29 = phi i1 [ true, %25 ], [ false, %24 ], [ %21, %23 ], [ %21, %2 ]
  %30 = phi i1 [ %16, %25 ], [ %16, %24 ], [ true, %23 ], [ false, %2 ]
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr i8, ptr %31, i32 100
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %34 = or i32 %33, %14
  %35 = xor i32 %14, -1
  %36 = and i32 %33, %35
  %37 = select i1 %30, i32 %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %37) #7, !srcloc !12
  %38 = load ptr, ptr %10, align 4
  %39 = getelementptr i8, ptr %38, i32 80
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %41 = or i32 %40, %14
  %42 = and i32 %40, %35
  %43 = select i1 %29, i32 %41, i32 %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %43) #7, !srcloc !12
  %44 = and i32 %1, 3
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @handle_level_irq, ptr @handle_edge_irq
  %47 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.irq_desc, ptr %48, i32 0, i32 3
  store ptr %46, ptr %49, align 4
  br label %50

50:                                               ; preds = %28, %26
  %51 = phi i32 [ -22, %26 ], [ 0, %28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_gpio_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 92
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 88
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %17 = and i32 %16, %13
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %21 = load ptr, ptr %5, align 4
  %22 = getelementptr i8, ptr %21, i32 80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %24 = xor i32 %23, %20
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i8, ptr %25, i32 84
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %28 = and i32 %27, %24
  %29 = or i32 %28, %17
  store i32 %29, ptr %3, align 4
  %30 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %32, i32 noundef 0) #7
  %34 = load i16, ptr %30, align 4
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ %33, %37 ], [ %46, %39 ]
  %41 = load ptr, ptr %38, align 4
  %42 = call i32 @generic_handle_domain_irq(ptr noundef %41, i32 noundef %40) #7
  %43 = load i16, ptr %30, align 4
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %40, 1
  %46 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %44, i32 noundef %45) #7
  %47 = load i16, ptr %30, align 4
  %48 = zext i16 %47 to i32
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %39, label %50

50:                                               ; preds = %39, %10, %2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nsp_gpio_irq_set_mask(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #7
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @irq_get_irq_data(i32 noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.irq_data, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 92
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %23 = shl nuw i32 1, %7
  %24 = or i32 %22, %23
  %25 = xor i32 %23, -1
  %26 = and i32 %22, %25
  %27 = select i1 %1, i32 %24, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %27) #7, !srcloc !12
  br label %38

28:                                               ; preds = %12, %2
  %29 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 84
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %33 = shl nuw i32 1, %7
  %34 = or i32 %32, %33
  %35 = xor i32 %33, -1
  %36 = and i32 %32, %35
  %37 = select i1 %1, i32 %34, i32 %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %37) #7, !srcloc !12
  br label %38

38:                                               ; preds = %28, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nsp_get_groups_count(ptr nocapture noundef readnone %0) #5 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nsp_get_group_name(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  ret ptr @.str.11
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = load i32, ptr %2, align 4
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %79 [
    i8 1, label %7
    i8 5, label %24
    i8 3, label %38
    i8 9, label %52
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %14 = shl nuw i32 1, %1
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 28
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %20 = and i32 %19, %14
  %21 = icmp eq i32 %20, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  %22 = select i1 %16, i1 %21, i1 false
  %23 = select i1 %22, i32 0, i32 -22
  br label %79

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #7
  %27 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %31 = shl nuw i32 1, %1
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #7
  %37 = select i1 %33, i32 -22, i32 0
  br label %79

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #7
  %41 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 24
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %45 = shl nuw i32 1, %1
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr i8, ptr %46, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %49 = and i32 %48, %45
  %50 = icmp eq i32 %49, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #7
  %51 = select i1 %50, i32 -22, i32 0
  br label %79

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 7
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #7
  %55 = getelementptr inbounds %struct.nsp_gpio, ptr %4, i32 0, i32 2
  %56 = shl nuw i32 1, %1
  %57 = load ptr, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %59 = and i32 %58, %56
  %60 = lshr i32 %59, %1
  %61 = shl i32 %60, 2
  %62 = load ptr, ptr %55, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %65 = and i32 %64, %56
  %66 = lshr i32 %65, %1
  %67 = shl i32 %66, 1
  %68 = add i32 %67, %61
  %69 = load ptr, ptr %55, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !25
  %72 = and i32 %71, %56
  %73 = lshr i32 %72, %1
  %74 = add i32 %68, %73
  %75 = shl i32 %74, 9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #7
  %76 = add i32 %75, 512
  %77 = and i32 %76, 16776704
  %78 = or i32 %77, 9
  store i32 %78, ptr %2, align 4
  br label %79

79:                                               ; preds = %52, %38, %24, %7, %3
  %80 = phi i32 [ 0, %52 ], [ %37, %24 ], [ %51, %38 ], [ -524, %3 ], [ %23, %7 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsp_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %98, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 2
  %9 = shl nuw i32 1, %1
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.nsp_gpio, ptr %5, i32 0, i32 7
  br label %12

12:                                               ; preds = %95, %7
  %13 = phi i32 [ 0, %7 ], [ %96, %95 ]
  %14 = getelementptr i32, ptr %2, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %93 [
    i8 1, label %17
    i8 5, label %27
    i8 3, label %37
    i8 9, label %47
    i8 24, label %84
  ]

17:                                               ; preds = %12
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 28
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %22 = and i32 %21, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %22) #7, !srcloc !12
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %26 = and i32 %25, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %18) #7
  br label %95

27:                                               ; preds = %12
  %28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %32 = and i32 %31, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #7, !srcloc !12
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %36 = or i32 %35, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %36) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %28) #7
  br label %95

37:                                               ; preds = %12
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 28
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %42 = or i32 %41, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %42) #7, !srcloc !12
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %46 = and i32 %45, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %46) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %38) #7
  br label %95

47:                                               ; preds = %12
  %48 = lshr i32 %15, 8
  %49 = add nsw i32 %48, -2
  %50 = icmp ult i32 %49, 15
  %51 = and i32 %15, 256
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %98

54:                                               ; preds = %47
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %56 = lshr i32 %15, 9
  %57 = add nsw i32 %56, -1
  %58 = load ptr, ptr %8, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %60 = and i32 %59, %10
  %61 = lshr i32 %57, 2
  %62 = shl nuw i32 %61, %1
  %63 = or i32 %60, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %64 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #7, !srcloc !12
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %68 = and i32 %67, %10
  %69 = lshr i32 %57, 1
  %70 = and i32 %69, 1
  %71 = shl nuw i32 %70, %1
  %72 = or i32 %68, %71
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !12
  %75 = load ptr, ptr %8, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #7, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %78 = and i32 %77, %10
  %79 = and i32 %57, 1
  %80 = shl nuw i32 %79, %1
  %81 = or i32 %78, %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %82 = load ptr, ptr %8, align 4
  %83 = getelementptr i8, ptr %82, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #7, !srcloc !12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %55) #7
  br label %95

84:                                               ; preds = %12
  %85 = icmp ult i32 %15, 256
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr i8, ptr %86, i32 20
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7
  tail call void asm sideeffect "dsb ", "~{memory}"() #7
  br i1 %85, label %91, label %89

89:                                               ; preds = %84
  %90 = or i32 %88, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %90) #7, !srcloc !12
  br label %95

91:                                               ; preds = %84
  %92 = and i32 %88, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %92) #7, !srcloc !12
  br label %95

93:                                               ; preds = %12
  %94 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.12) #8
  br label %98

95:                                               ; preds = %91, %89, %54, %37, %27, %17
  %96 = add nuw i32 %13, 1
  %97 = icmp eq i32 %96, %3
  br i1 %97, label %98, label %12

98:                                               ; preds = %95, %93, %47, %4
  %99 = phi i32 [ -524, %93 ], [ -524, %4 ], [ 0, %95 ], [ -524, %47 ]
  ret i32 %99
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nsp_pin_config_group_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nsp_pin_config_group_set(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i64 3691820}
!10 = !{i64 2152521149}
!11 = !{i64 2152521347}
!12 = !{i64 3691402}
!13 = !{i64 2152501196}
!14 = !{i64 2152501538}
!15 = !{i64 2152502586}
!16 = !{i64 2152512526}
!17 = !{i64 2152505297}
!18 = !{i64 2152503003}
!19 = !{i64 2152503347}
!20 = !{i64 2152503686}
!21 = !{i64 2152504025}
!22 = !{i64 2152504364}
!23 = !{i64 2152504703}
!24 = !{i64 2152502177}
!25 = !{i64 2152516796}
!26 = !{i64 2152515558}
!27 = !{i64 2152515827}
