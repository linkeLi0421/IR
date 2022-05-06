; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-digicolor.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-digicolor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.dc_pinmap = type { ptr, ptr, ptr, ptr, [144 x ptr], %struct.gpio_chip, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }

@__initcall__kmod_pinctrl_digicolor__206_344_dc_pinctrl_driver_init6 = internal global ptr @dc_pinctrl_driver_init, section ".initcall6.init", align 4
@dc_pinctrl_driver = internal global %struct.platform_driver { ptr @dc_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @dc_pinctrl_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [18 x i8] c"pinctrl-digicolor\00", align 1
@dc_pinctrl_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"GP_%c%c\00", align 1
@dc_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @dc_get_groups_count, ptr @dc_get_group_name, ptr @dc_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, align 4
@dc_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @dc_get_functions_count, ptr @dc_get_fname, ptr @dc_get_groups, ptr @dc_set_mux, ptr @dc_pmx_request_gpio, ptr null, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pinctrl driver registration failed\0A\00", align 1
@dc_functions = internal unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"client_a\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"client_b\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"client_c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pinctrl_digicolor__206_344_dc_pinctrl_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dc_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dc_pinctrl_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 900, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %122, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  store ptr %6, ptr %3, align 4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %122

10:                                               ; preds = %5
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1728, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %122, label %13

13:                                               ; preds = %10
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 864, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %122, label %16

16:                                               ; preds = %16, %13
  %17 = phi i32 [ %75, %16 ], [ 0, %13 ]
  %18 = shl i32 %17, 3
  %19 = add nuw nsw i32 %17, 65
  %20 = mul i32 %17, 48
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 48)
  %23 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %18
  store i32 %18, ptr %23, align 4
  %24 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %18, i32 1
  store ptr %21, ptr %24, align 4
  %25 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %18
  store ptr %21, ptr %25, align 4
  %26 = or i32 %18, 1
  %27 = mul nuw nsw i32 %26, 6
  %28 = getelementptr i8, ptr %14, i32 %27
  %29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %28, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 49)
  %30 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %26
  store i32 %26, ptr %30, align 4
  %31 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %26, i32 1
  store ptr %28, ptr %31, align 4
  %32 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %26
  store ptr %28, ptr %32, align 4
  %33 = or i32 %18, 2
  %34 = mul nuw nsw i32 %33, 6
  %35 = getelementptr i8, ptr %14, i32 %34
  %36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 50)
  %37 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %33
  store i32 %33, ptr %37, align 4
  %38 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %33, i32 1
  store ptr %35, ptr %38, align 4
  %39 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %33
  store ptr %35, ptr %39, align 4
  %40 = or i32 %18, 3
  %41 = mul nuw nsw i32 %40, 6
  %42 = getelementptr i8, ptr %14, i32 %41
  %43 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %42, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 51)
  %44 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %40
  store i32 %40, ptr %44, align 4
  %45 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %40, i32 1
  store ptr %42, ptr %45, align 4
  %46 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %40
  store ptr %42, ptr %46, align 4
  %47 = or i32 %18, 4
  %48 = mul nuw nsw i32 %47, 6
  %49 = getelementptr i8, ptr %14, i32 %48
  %50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 52)
  %51 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %47
  store i32 %47, ptr %51, align 4
  %52 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %47, i32 1
  store ptr %49, ptr %52, align 4
  %53 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %47
  store ptr %49, ptr %53, align 4
  %54 = or i32 %18, 5
  %55 = mul nuw nsw i32 %54, 6
  %56 = getelementptr i8, ptr %14, i32 %55
  %57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %56, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 53)
  %58 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %54
  store i32 %54, ptr %58, align 4
  %59 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %54, i32 1
  store ptr %56, ptr %59, align 4
  %60 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %54
  store ptr %56, ptr %60, align 4
  %61 = or i32 %18, 6
  %62 = mul nuw nsw i32 %61, 6
  %63 = getelementptr i8, ptr %14, i32 %62
  %64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %63, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 54)
  %65 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %61
  store i32 %61, ptr %65, align 4
  %66 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %61, i32 1
  store ptr %63, ptr %66, align 4
  %67 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %61
  store ptr %63, ptr %67, align 4
  %68 = or i32 %18, 7
  %69 = mul nuw nsw i32 %68, 6
  %70 = getelementptr i8, ptr %14, i32 %69
  %71 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %70, i32 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 55)
  %72 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %68
  store i32 %68, ptr %72, align 4
  %73 = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %68, i32 1
  store ptr %70, ptr %73, align 4
  %74 = getelementptr %struct.dc_pinmap, ptr %3, i32 0, i32 4, i32 %68
  store ptr %70, ptr %74, align 4
  %75 = add nuw nsw i32 %17, 1
  %76 = icmp eq i32 %75, 18
  br i1 %76, label %77, label %16

77:                                               ; preds = %16
  %78 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %122, label %80

80:                                               ; preds = %77
  store ptr @.str, ptr %78, align 4
  %81 = getelementptr inbounds %struct.pinctrl_desc, ptr %78, i32 0, i32 6
  store ptr null, ptr %81, align 4
  %82 = getelementptr inbounds %struct.pinctrl_desc, ptr %78, i32 0, i32 3
  store ptr @dc_pinctrl_ops, ptr %82, align 4
  %83 = getelementptr inbounds %struct.pinctrl_desc, ptr %78, i32 0, i32 4
  store ptr @dc_pmxops, ptr %83, align 4
  %84 = getelementptr inbounds %struct.pinctrl_desc, ptr %78, i32 0, i32 2
  store i32 144, ptr %84, align 4
  %85 = getelementptr inbounds %struct.pinctrl_desc, ptr %78, i32 0, i32 1
  store ptr %11, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 3
  store ptr %78, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 1
  store ptr %2, ptr %87, align 4
  %88 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef nonnull %78, ptr noundef nonnull %3) #7
  %89 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 2
  store ptr %88, ptr %89, align 4
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  %92 = load ptr, ptr %89, align 4
  %93 = ptrtoint ptr %92 to i32
  br label %122

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5
  store ptr @.str, ptr %95, align 4
  %96 = load ptr, ptr %87, align 4
  %97 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 2
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 5
  store ptr @gpiochip_generic_request, ptr %98, align 4
  %99 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 6
  store ptr @gpiochip_generic_free, ptr %99, align 4
  %100 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 8
  store ptr @dc_gpio_direction_input, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 9
  store ptr @dc_gpio_direction_output, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 10
  store ptr @dc_gpio_get, ptr %102, align 4
  %103 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 12
  store ptr @dc_gpio_set, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 19
  store i32 -1, ptr %104, align 4
  %105 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 20
  store i16 144, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 5, i32 40
  store i32 2, ptr %106, align 4
  %107 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 6
  store i32 0, ptr %107, align 4
  %108 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %95, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #7
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %94
  %111 = load ptr, ptr %87, align 4
  %112 = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load ptr, ptr %111, align 4
  br label %117

117:                                              ; preds = %115, %110
  %118 = phi ptr [ %116, %115 ], [ %113, %110 ]
  %119 = tail call i32 @gpiochip_add_pin_range(ptr noundef %95, ptr noundef %118, i32 noundef 0, i32 noundef 0, i32 noundef 144) #7
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @gpiochip_remove(ptr noundef %95) #7
  br label %122

122:                                              ; preds = %121, %117, %94, %91, %77, %13, %10, %8, %1
  %123 = phi i32 [ %9, %8 ], [ %93, %91 ], [ -12, %1 ], [ -12, %10 ], [ -12, %13 ], [ -12, %77 ], [ %119, %121 ], [ %108, %94 ], [ 0, %117 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dc_get_groups_count(ptr nocapture noundef readnone %0) #5 {
  ret i32 144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @dc_get_group_name(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pinctrl_desc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.dc_pinmap, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %1
  store ptr %10, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dc_get_functions_count(ptr nocapture noundef readnone %0) #5 {
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @dc_get_fname(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = getelementptr [4 x ptr], ptr @dc_functions, i32 0, i32 %1
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.dc_pinmap, ptr %5, i32 0, i32 4
  store ptr %6, ptr %2, align 4
  store i32 144, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = sdiv i32 %2, 8
  %6 = mul i32 %5, 8
  %7 = sub i32 %2, %6
  %8 = shl nsw i32 %7, 1
  %9 = shl nsw i32 %5, 3
  %10 = icmp sgt i32 %7, 3
  %11 = add nsw i32 %8, -8
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = select i1 %10, i32 33, i32 32
  %14 = add i32 %13, %9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #7, !srcloc !8
  %18 = shl i32 3, %12
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, -1
  %21 = and i8 %17, %20
  %22 = shl i32 %1, %12
  %23 = trunc i32 %22 to i8
  %24 = or i8 %21, %23
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 %14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %26, i8 %24) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_pmx_request_gpio(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #7
  %5 = sdiv i32 %2, 8
  %6 = mul i32 %5, 8
  %7 = sub i32 %2, %6
  %8 = shl nsw i32 %7, 1
  %9 = shl nsw i32 %5, 3
  %10 = icmp sgt i32 %7, 3
  %11 = add nsw i32 %8, -8
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = select i1 %10, i32 33, i32 32
  %14 = add i32 %13, %9
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #7, !srcloc !8
  %18 = zext i8 %17 to i32
  %19 = shl i32 3, %12
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 -16
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_gpio_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = add i32 %1, 32
  %5 = and i32 %4, -8
  %6 = or i32 %5, 2
  %7 = and i32 %1, 7
  %8 = getelementptr inbounds %struct.dc_pinmap, ptr %3, i32 0, i32 6
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 %6
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %11) #7, !srcloc !8
  %13 = shl nuw nsw i32 1, %7
  %14 = trunc i32 %13 to i8
  %15 = xor i8 %14, -1
  %16 = and i8 %12, %15
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr i8, ptr %17, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %16) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = add i32 %1, 32
  %6 = and i32 %5, -8
  %7 = or i32 %6, 2
  %8 = and i32 %1, 7
  %9 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %10 = or i32 %6, 3
  %11 = getelementptr inbounds %struct.dc_pinmap, ptr %9, i32 0, i32 6
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 %10
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %14) #7, !srcloc !8
  %16 = icmp eq i32 %2, 0
  %17 = shl nuw nsw i32 1, %8
  %18 = trunc i32 %17 to i8
  %19 = or i8 %15, %18
  %20 = xor i8 %18, -1
  %21 = and i8 %15, %20
  %22 = select i1 %16, i8 %21, i8 %19
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr i8, ptr %23, i32 %10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 %22) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  %25 = getelementptr inbounds %struct.dc_pinmap, ptr %4, i32 0, i32 6
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #7
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 %7
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #7, !srcloc !8
  %30 = or i8 %29, %18
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i8, ptr %31, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 %30) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dc_gpio_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = add i32 %1, 32
  %5 = and i32 %4, -8
  %6 = or i32 %5, 6
  %7 = and i32 %1, 7
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 %6
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !8
  %11 = zext i8 %10 to i32
  %12 = lshr i32 %11, %7
  %13 = and i32 %12, 1
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dc_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = add i32 %1, 32
  %6 = and i32 %5, -8
  %7 = or i32 %6, 3
  %8 = and i32 %1, 7
  %9 = getelementptr inbounds %struct.dc_pinmap, ptr %4, i32 0, i32 6
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 %7
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #7, !srcloc !8
  %14 = icmp eq i32 %2, 0
  %15 = shl nuw nsw i32 1, %8
  %16 = trunc i32 %15 to i8
  %17 = or i8 %13, %16
  %18 = xor i8 %16, -1
  %19 = and i8 %13, %18
  %20 = select i1 %14, i8 %19, i8 %17
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #7, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 3787028}
!9 = !{i64 3786633}
