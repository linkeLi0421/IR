; ModuleID = '/llk/IR/drivers/gpio/gpio-twl4030.c_pt.bc'
source_filename = "../drivers/gpio/gpio-twl4030.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.62, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.62 = type { ptr }
%struct.lock_class_key = type {}
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
%struct.gpio_twl4030_priv = type { %struct.gpio_chip, %struct.mutex, i32, i32, i32, i32 }
%struct.twl4030_gpio_platform_data = type { i8, i8, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID_alias210 = internal constant [41 x i8] c"gpio_twl4030.alias=platform:twl4030_gpio\00", section ".modinfo", align 1
@__initcall__kmod_gpio_twl4030__211_641_gpio_twl4030_init4 = internal global ptr @gpio_twl4030_init, section ".initcall4.init", align 4
@gpio_twl4030_driver = internal global %struct.platform_driver { ptr @gpio_twl4030_probe, ptr @gpio_twl4030_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_twl4030_exit = internal global ptr @gpio_twl4030_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author212 = internal constant [44 x i8] c"gpio_twl4030.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [52 x i8] c"gpio_twl4030.description=GPIO interface for TWL4030\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [44 x i8] c"gpio_twl4030.file=drivers/gpio/gpio-twl4030\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [25 x i8] c"gpio_twl4030.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"twl4030_gpio\00", align 1
@twl_gpio_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to alloc irq_descs\0A\00", align 1
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@template_chip = internal unnamed_addr constant %struct.gpio_chip { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr @twl_request, ptr @twl_free, ptr @twl_get_direction, ptr @twl_direction_in, ptr @twl_direction_out, ptr @twl_get, ptr null, ptr @twl_set, ptr null, ptr null, ptr @twl_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@gpio_twl4030_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Platform data is missing\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"could not register gpiochip, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"twl4030\00", align 1
@cached_leden = internal global i8 0, align 1
@twl4030_led_set_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"drivers/gpio/gpio-twl4030.c\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"ti,use-leds\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ti,debounce\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ti,mmc-cd\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ti,pullups\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"ti,pulldowns\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias210, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_gpio_twl4030_exit, ptr @__initcall__kmod_gpio_twl4030__211_641_gpio_twl4030_init4, ptr @gpio_twl4030_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_twl4030_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_twl4030_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_twl4030_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_probe(ptr noundef %0) #2 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 340, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %155, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %4, i32 noundef -1, i32 noundef 0, i32 noundef 18, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #8
  br label %155

15:                                               ; preds = %11
  %16 = tail call ptr @irq_domain_add_legacy(ptr noundef %8, i32 noundef 18, i32 noundef %12, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #7
  %17 = tail call i32 @twl4030_sih_setup(ptr noundef %4, i32 noundef 10, i32 noundef %12) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %155, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %9, i32 0, i32 2
  store i32 %12, ptr %20, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(304) %9, ptr noundef nonnull align 4 dereferenceable(304) @template_chip, i32 304, i1 false)
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 19
  store i32 -1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 20
  store i16 18, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gpio_chip, ptr %9, i32 0, i32 2
  store ptr %4, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %9, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef nonnull @gpio_twl4030_probe.__key) #7
  %25 = icmp eq ptr %8, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %19
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 24, i32 noundef 3520) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %51, label %29

29:                                               ; preds = %26
  %30 = icmp eq ptr %6, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %27, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 24, i1 false) #7
  br label %32

32:                                               ; preds = %31, %29
  %33 = load ptr, ptr %7, align 8
  %34 = tail call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.7, ptr noundef null) #7
  %35 = icmp ne ptr %34, null
  %36 = zext i1 %35 to i8
  store i8 %36, ptr %27, align 4
  %37 = load ptr, ptr %7, align 8
  %38 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %27, i32 0, i32 2
  %39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %37, ptr noundef nonnull @.str.8, ptr noundef %38, i32 noundef 1, i32 noundef 0) #7
  %40 = load ptr, ptr %7, align 8
  %41 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %27, i32 0, i32 1
  %42 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef 1, i32 noundef 0) #7
  %43 = load ptr, ptr %7, align 8
  %44 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %27, i32 0, i32 3
  %45 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %43, ptr noundef nonnull @.str.10, ptr noundef %44, i32 noundef 1, i32 noundef 0) #7
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %27, i32 0, i32 4
  %48 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.11, ptr noundef %47, i32 noundef 1, i32 noundef 0) #7
  br label %52

49:                                               ; preds = %19
  %50 = icmp eq ptr %6, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %49, %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #8
  br label %155

52:                                               ; preds = %49, %32
  %53 = phi ptr [ %27, %32 ], [ %6, %49 ]
  %54 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false) #7, !annotation !8
  br label %58

58:                                               ; preds = %101, %52
  %59 = phi i32 [ 1, %52 ], [ %103, %101 ]
  %60 = phi i32 [ 0, %52 ], [ %105, %101 ]
  %61 = and i32 %59, %55
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %59, %57
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i8
  %66 = select i1 %62, i8 %65, i8 2
  %67 = shl i32 %59, 1
  %68 = and i32 %67, %55
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = or i8 %66, 8
  br label %77

72:                                               ; preds = %58
  %73 = and i32 %67, %57
  %74 = icmp eq i32 %73, 0
  %75 = or i8 %66, 4
  %76 = select i1 %74, i8 %66, i8 %75
  br label %77

77:                                               ; preds = %72, %70
  %78 = phi i8 [ %71, %70 ], [ %76, %72 ]
  %79 = shl i32 %59, 2
  %80 = and i32 %79, %55
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = or i8 %78, 32
  br label %89

84:                                               ; preds = %77
  %85 = and i32 %79, %57
  %86 = icmp eq i32 %85, 0
  %87 = or i8 %78, 16
  %88 = select i1 %86, i8 %78, i8 %87
  br label %89

89:                                               ; preds = %84, %82
  %90 = phi i8 [ %83, %82 ], [ %88, %84 ]
  %91 = shl i32 %59, 3
  %92 = and i32 %91, %55
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = or i8 %90, -128
  br label %101

96:                                               ; preds = %89
  %97 = and i32 %91, %57
  %98 = icmp eq i32 %97, 0
  %99 = or i8 %90, 64
  %100 = select i1 %98, i8 %90, i8 %99
  br label %101

101:                                              ; preds = %96, %94
  %102 = phi i8 [ %95, %94 ], [ %100, %96 ]
  %103 = shl i32 %59, 4
  %104 = getelementptr [5 x i8], ptr %3, i32 0, i32 %60
  store i8 %102, ptr %104, align 1
  %105 = add nuw nsw i32 %60, 1
  %106 = icmp eq i32 %105, 5
  br i1 %106, label %107, label %58

107:                                              ; preds = %101
  %108 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext 19, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #7
  %109 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 1
  %112 = load i8, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #7
  %113 = and i8 %112, 3
  %114 = trunc i32 %110 to i8
  %115 = or i8 %113, %114
  store i8 %115, ptr %2, align 1
  %116 = lshr i32 %110, 8
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 1
  store i8 %117, ptr %118, align 1
  %119 = lshr i32 %110, 16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 3
  %122 = getelementptr inbounds [3 x i8], ptr %2, i32 0, i32 2
  store i8 %121, ptr %122, align 1
  %123 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %2, i8 noundef zeroext 15, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #7
  %124 = load i8, ptr %53, align 4, !range !9
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %107
  %127 = load i16, ptr %22, align 4
  %128 = add i16 %127, 2
  store i16 %128, ptr %22, align 4
  br label %129

129:                                              ; preds = %126, %107
  %130 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #7
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %130) #8
  store i16 0, ptr %22, align 4
  %133 = load ptr, ptr %5, align 4
  %134 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %133, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %133, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.gpio_chip, ptr %135, i32 0, i32 19
  %143 = load i32, ptr %142, align 4
  %144 = call i32 %139(ptr noundef %4, i32 noundef %143, i32 noundef 18) #7
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141, %137, %132
  call void @gpiochip_remove(ptr noundef %135) #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 615, i32 noundef 9, ptr noundef null) #7
  br label %155

147:                                              ; preds = %129
  %148 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %148, align 8
  %149 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 5
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load i32, ptr %21, align 4
  %154 = call i32 %150(ptr noundef %4, i32 noundef %153, i32 noundef 18) #7
  br label %155

155:                                              ; preds = %152, %147, %146, %141, %51, %15, %14, %1
  %156 = phi i32 [ %12, %14 ], [ -6, %51 ], [ -12, %1 ], [ %17, %15 ], [ %130, %147 ], [ %130, %152 ], [ %130, %141 ], [ %130, %146 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %4, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %6, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 %10(ptr noundef %2, i32 noundef %14, i32 noundef 18) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %8, %1
  tail call void @gpiochip_remove(ptr noundef %6) #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 615, i32 noundef 9, ptr noundef null) #7
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ -5, %17 ], [ %15, %12 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_sih_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_request(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #7
  %9 = icmp ugt i32 %1, 17
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = add i32 %1, -18
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i8 -86, i8 85
  %14 = select i1 %12, i8 1, i8 3
  %15 = add nuw nsw i8 %14, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 127, ptr %6, align 1
  %16 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %6, i8 noundef zeroext %15, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 127, ptr %5, align 1
  %19 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %5, i8 noundef zeroext %14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %18
  %22 = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull @cached_leden, i8 noundef zeroext 0, i32 noundef 1) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr @cached_leden, align 1
  %26 = and i8 %25, %13
  store i8 %26, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %26, ptr %4, align 1
  %27 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %54, label %48

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %7, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %37, i32 0, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 3
  %43 = or i8 %42, 4
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i8 [ %43, %39 ], [ 4, %33 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %45, ptr %3, align 1
  %46 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %29, %24
  %49 = phi i32 [ %1, %44 ], [ %11, %24 ], [ %1, %29 ]
  %50 = shl nuw i32 1, %49
  %51 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %7, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %48, %44, %24, %21, %18, %10
  %55 = phi i32 [ 0, %48 ], [ %46, %44 ], [ %22, %21 ], [ %19, %18 ], [ %16, %10 ], [ %27, %24 ]
  call void @mutex_unlock(ptr noundef %8) #7
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl_free(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = icmp ugt i32 %1, 17
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 18
  %10 = load i8, ptr @cached_leden, align 1
  %11 = select i1 %9, i8 -18, i8 -35
  %12 = and i8 %10, %11
  store i8 %12, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %12, ptr %4, align 1
  %13 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %14 = icmp ne i32 %13, 0
  %15 = load i1, ptr @twl4030_led_set_value.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %28, !prof !10

18:                                               ; preds = %8
  store i1 true, ptr @twl4030_led_set_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 134, i32 noundef 9, ptr noundef null) #7
  br label %28

19:                                               ; preds = %2
  %20 = shl nuw nsw i32 1, %1
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %5, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, ptr %22, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1
  %27 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %28

28:                                               ; preds = %26, %19, %18, %8
  call void @mutex_unlock(ptr noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = icmp ult i32 %1, 18
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = lshr i32 %1, 3
  %9 = trunc i32 %8 to i8
  %10 = add nuw nsw i8 %9, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %11 = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext %10, i32 noundef 1) #7
  %12 = icmp slt i32 %11, 0
  %13 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %14 = zext i8 %13 to i32
  %15 = and i32 %1, 7
  %16 = xor i32 %14, -1
  %17 = lshr i32 %16, %15
  %18 = and i32 %17, 1
  %19 = select i1 %12, i32 %11, i32 %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %7, %2
  br label %22

22:                                               ; preds = %21, %7
  %23 = phi i32 [ 0, %21 ], [ %19, %7 ]
  call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_direction_in(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = icmp ult i32 %1, 18
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = lshr i32 %1, 3
  %10 = trunc i32 %9 to i8
  %11 = add nuw nsw i8 %10, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %12 = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %4, i8 noundef zeroext %11, i32 noundef 1) #7
  %13 = icmp slt i32 %12, 0
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i32
  %16 = select i1 %13, i32 %12, i32 %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %8
  %19 = and i32 %1, 7
  %20 = shl nuw nsw i32 1, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %16, %21
  %23 = trunc i32 %22 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 %23, ptr %3, align 1
  %24 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext %11, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = shl nuw nsw i32 1, %1
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %5, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %28
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %26, %18, %8, %2
  %33 = phi i32 [ 0, %26 ], [ %24, %18 ], [ %16, %8 ], [ -22, %2 ]
  call void @mutex_unlock(ptr noundef %6) #7
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_direction_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = icmp ult i32 %1, 18
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = lshr i32 %1, 3
  %11 = trunc i32 %10 to i8
  %12 = add nuw nsw i8 %11, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %13 = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %5, i8 noundef zeroext %12, i32 noundef 1) #7
  %14 = icmp slt i32 %13, 0
  %15 = load i8, ptr %5, align 1
  %16 = zext i8 %15 to i32
  %17 = select i1 %14, i32 %13, i32 %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = and i32 %1, 7
  %21 = shl nuw nsw i32 1, %20
  %22 = or i32 %17, %21
  %23 = trunc i32 %22 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %23, ptr %4, align 1
  %24 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %4, i8 noundef zeroext %12, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19, %9
  %27 = phi i32 [ %24, %19 ], [ %17, %9 ]
  call void @mutex_unlock(ptr noundef %7) #7
  br label %33

28:                                               ; preds = %19, %3
  %29 = shl nuw i32 1, %1
  %30 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %6, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, ptr %30, align 4
  call void @mutex_unlock(ptr noundef %7) #7
  call void @twl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i8, align 1
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %4, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = shl nuw i32 1, %1
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %4, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %8
  br label %33

20:                                               ; preds = %11
  %21 = lshr i32 %1, 3
  %22 = trunc i32 %21 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %23 = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %3, i8 noundef zeroext %22, i32 noundef 1) #7
  %24 = icmp slt i32 %23, 0
  %25 = load i8, ptr %3, align 1
  %26 = zext i8 %25 to i32
  %27 = select i1 %24, i32 %23, i32 %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %28 = icmp sgt i32 %27, 0
  %29 = and i32 %1, 7
  %30 = lshr i32 %27, %29
  %31 = and i32 %30, 1
  %32 = select i1 %28, i32 %31, i32 %27
  br label %33

33:                                               ; preds = %20, %16
  %34 = phi i32 [ %19, %16 ], [ %32, %20 ]
  %35 = icmp slt i32 %34, 0
  %36 = icmp ne i32 %34, 0
  %37 = zext i1 %36 to i32
  %38 = select i1 %35, i32 %34, i32 %37
  br label %39

39:                                               ; preds = %33, %2
  %40 = phi i32 [ %38, %33 ], [ -1, %2 ]
  call void @mutex_unlock(ptr noundef %5) #7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twl_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %7 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #7
  %8 = icmp ult i32 %1, 18
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = lshr i32 %1, 3
  %11 = icmp eq i32 %2, 0
  %12 = trunc i32 %10 to i8
  %13 = select i1 %11, i8 9, i8 12
  %14 = add nuw nsw i8 %13, %12
  %15 = and i32 %1, 7
  %16 = shl nuw nsw i32 1, %15
  %17 = trunc i32 %16 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 %17, ptr %5, align 1
  %18 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %5, i8 noundef zeroext %14, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %34

19:                                               ; preds = %3
  %20 = icmp eq i32 %1, 18
  %21 = select i1 %20, i8 17, i8 34
  %22 = icmp eq i32 %2, 0
  %23 = load i8, ptr @cached_leden, align 1
  %24 = or i8 %23, %21
  %25 = xor i8 %21, -1
  %26 = and i8 %23, %25
  %27 = select i1 %22, i8 %24, i8 %26
  store i8 %27, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %27, ptr %4, align 1
  %28 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %4, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %29 = icmp ne i32 %28, 0
  %30 = load i1, ptr @twl4030_led_set_value.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !10

33:                                               ; preds = %19
  store i1 true, ptr @twl4030_led_set_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 134, i32 noundef 9, ptr noundef null) #7
  br label %34

34:                                               ; preds = %33, %19, %9
  %35 = icmp eq i32 %2, 0
  %36 = shl nuw i32 1, %1
  br i1 %35, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %6, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, ptr %38, align 4
  br label %46

41:                                               ; preds = %34
  %42 = xor i32 %36, -1
  %43 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %6, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %41, %37
  call void @mutex_unlock(ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_to_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = icmp ult i32 %1, 18
  %8 = and i1 %7, %6
  %9 = add i32 %5, %1
  %10 = select i1 %8, i32 %9, i32 -22
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
