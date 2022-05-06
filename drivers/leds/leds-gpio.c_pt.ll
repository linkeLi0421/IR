; ModuleID = '/llk/IR/drivers/leds/leds-gpio.c_pt.bc'
source_filename = "../drivers/leds/leds-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_led = type { ptr, ptr, i32, i8, ptr }
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
%struct.gpio_led_platform_data = type { i32, ptr, ptr }
%struct.gpio_leds_priv = type { i32, [0 x %struct.gpio_led_data] }
%struct.gpio_led_data = type { %struct.led_classdev, ptr, i8, i8, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }

@__initcall__kmod_leds_gpio__206_308_gpio_led_driver_init6 = internal global ptr @gpio_led_driver_init, section ".initcall6.init", align 4
@gpio_led_driver = internal global %struct.platform_driver { ptr @gpio_led_probe, ptr null, ptr @gpio_led_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_gpio_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_led_driver_exit = internal global ptr @gpio_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [85 x i8] c"leds_gpio.author=Raphael Assenat <raph@8d.com>, Trent Piepho <tpiepho@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [38 x i8] c"leds_gpio.description=GPIO LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [38 x i8] c"leds_gpio.file=drivers/leds/leds-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [22 x i8] c"leds_gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias211 = internal constant [35 x i8] c"leds_gpio.alias=platform:leds-gpio\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"leds-gpio\00", align 1
@of_gpio_leds_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Skipping unavailable LED gpio %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"retain-state-suspended\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"retain-state-shutdown\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"panic-indicator\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__exitcall_gpio_led_driver_exit, ptr @__initcall__kmod_leds_gpio__206_308_gpio_led_driver_init6, ptr @gpio_led_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_led_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_led_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_led_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_led_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_led_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.gpio_led, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %76, label %10

10:                                               ; preds = %7
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 204) #7
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %14 = add nuw i32 %13, 4
  %15 = select i1 %12, i32 -1, i32 %14
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %15, i32 noundef 3520) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %145, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4
  store i32 %19, ptr %16, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %142

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gpio_led_platform_data, ptr %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.gpio_led_platform_data, ptr %5, i32 0, i32 2
  br label %24

24:                                               ; preds = %72, %21
  %25 = phi i32 [ 0, %21 ], [ %73, %72 ]
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr %struct.gpio_led, ptr %26, i32 %25
  %28 = getelementptr %struct.gpio_leds_priv, ptr %16, i32 0, i32 1, i32 %25
  %29 = getelementptr %struct.gpio_led, ptr %26, i32 %25, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %24
  %33 = tail call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef null, i32 noundef %25, i32 noundef 3) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 4
  %37 = tail call i32 @gpiod_set_consumer_name(ptr noundef %33, ptr noundef %36) #7
  br label %60

38:                                               ; preds = %32
  %39 = icmp eq ptr %33, inttoptr (i32 -2 to ptr)
  br i1 %39, label %40, label %60

40:                                               ; preds = %38
  %41 = getelementptr %struct.gpio_led, ptr %26, i32 %25, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 2048
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = getelementptr %struct.gpio_led, ptr %26, i32 %25, i32 3
  %46 = load i8, ptr %45, align 4
  %47 = shl i8 %46, 2
  %48 = and i8 %47, 4
  %49 = zext i8 %48 to i32
  %50 = load ptr, ptr %27, align 4
  %51 = tail call i32 @devm_gpio_request_one(ptr noundef %3, i32 noundef %42, i32 noundef %49, ptr noundef %50) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = inttoptr i32 %51 to ptr
  br label %60

55:                                               ; preds = %44
  %56 = load i32, ptr %41, align 4
  %57 = tail call ptr @gpio_to_desc(i32 noundef %56) #7
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr inttoptr (i32 -22 to ptr), ptr %57
  br label %60

60:                                               ; preds = %55, %53, %40, %38, %35, %24
  %61 = phi ptr [ %30, %24 ], [ %54, %53 ], [ %33, %35 ], [ %33, %38 ], [ inttoptr (i32 -2 to ptr), %40 ], [ %59, %55 ]
  %62 = getelementptr %struct.gpio_leds_priv, ptr %16, i32 0, i32 1, i32 %25, i32 1
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr %struct.gpio_led, ptr %26, i32 %25, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %66, ptr noundef %67) #8
  br label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %23, align 4
  %70 = tail call fastcc i32 @create_gpio_led(ptr noundef %27, ptr noundef %28, ptr noundef %3, ptr noundef null, ptr noundef %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %145, label %72

72:                                               ; preds = %68, %64
  %73 = add nuw nsw i32 %25, 1
  %74 = load i32, ptr %16, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %24, label %142

76:                                               ; preds = %7, %1
  %77 = tail call i32 @device_get_child_node_count(ptr noundef %3) #7
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %139, label %79

79:                                               ; preds = %76
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %77, i32 204) #7
  %81 = extractvalue { i32, i1 } %80, 1
  %82 = extractvalue { i32, i1 } %80, 0
  %83 = add nuw i32 %82, 4
  %84 = select i1 %81, i32 -1, i32 %83
  %85 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %84, i32 noundef 3520) #7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %139, label %87

87:                                               ; preds = %79
  %88 = tail call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef null) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %136, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.gpio_led, ptr %2, i32 0, i32 4
  %92 = getelementptr inbounds %struct.gpio_led, ptr %2, i32 0, i32 3
  br label %93

93:                                               ; preds = %126, %90
  %94 = phi ptr [ %88, %90 ], [ %134, %126 ]
  %95 = load i32, ptr %85, align 4
  %96 = getelementptr %struct.gpio_leds_priv, ptr %85, i32 0, i32 1, i32 %95
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 16, i1 false) #7
  %97 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %3, ptr noundef nonnull %94, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  store ptr %97, ptr %91, align 4
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  tail call void @fwnode_handle_put(ptr noundef nonnull %94) #7
  br label %124

100:                                              ; preds = %93
  %101 = getelementptr %struct.gpio_leds_priv, ptr %85, i32 0, i32 1, i32 %95, i32 1
  store ptr %97, ptr %101, align 4
  %102 = tail call i32 @led_init_default_state_get(ptr noundef nonnull %94) #7
  %103 = trunc i32 %102 to i8
  %104 = shl i8 %103, 3
  %105 = and i8 %104, 24
  store i8 %105, ptr %92, align 4
  %106 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %94, ptr noundef nonnull @.str.2) #7
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = or i8 %105, 2
  store i8 %108, ptr %92, align 4
  br label %109

109:                                              ; preds = %107, %100
  %110 = phi i8 [ %108, %107 ], [ %105, %100 ]
  %111 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %94, ptr noundef nonnull @.str.3) #7
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = or i8 %110, 32
  store i8 %113, ptr %92, align 4
  br label %114

114:                                              ; preds = %112, %109
  %115 = phi i8 [ %113, %112 ], [ %110, %109 ]
  %116 = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %94, ptr noundef nonnull @.str.4) #7
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = or i8 %115, 4
  store i8 %118, ptr %92, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = call fastcc i32 @create_gpio_led(ptr noundef nonnull %2, ptr noundef %96, ptr noundef %3, ptr noundef nonnull %94, ptr noundef null) #7
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  tail call void @fwnode_handle_put(ptr noundef nonnull %94) #7
  %123 = inttoptr i32 %120 to ptr
  br label %124

124:                                              ; preds = %122, %99
  %125 = phi ptr [ %123, %122 ], [ %97, %99 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %136

126:                                              ; preds = %119
  %127 = load ptr, ptr %101, align 4
  %128 = getelementptr inbounds %struct.led_classdev, ptr %96, i32 0, i32 11
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 8
  %131 = tail call i32 @gpiod_set_consumer_name(ptr noundef %127, ptr noundef %130) #7
  %132 = load i32, ptr %85, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %85, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  %134 = tail call ptr @device_get_next_child_node(ptr noundef %3, ptr noundef nonnull %94) #7
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %93

136:                                              ; preds = %126, %124, %87
  %137 = phi ptr [ %125, %124 ], [ %85, %87 ], [ %85, %126 ]
  %138 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %139, label %142

139:                                              ; preds = %136, %79, %76
  %140 = phi ptr [ %137, %136 ], [ inttoptr (i32 -12 to ptr), %79 ], [ inttoptr (i32 -19 to ptr), %76 ]
  %141 = ptrtoint ptr %140 to i32
  br label %145

142:                                              ; preds = %136, %72, %18
  %143 = phi ptr [ %137, %136 ], [ %16, %18 ], [ %16, %72 ]
  %144 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %143, ptr %144, align 8
  br label %145

145:                                              ; preds = %142, %139, %68, %10
  %146 = phi i32 [ 0, %142 ], [ %141, %139 ], [ -12, %10 ], [ %70, %68 ]
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_led_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %30, %1
  %7 = phi i32 [ %31, %30 ], [ 0, %1 ]
  %8 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %18(ptr noundef %20, i32 noundef 0, ptr noundef null, ptr noundef null) #7
  store i8 0, ptr %13, align 1
  br label %30

22:                                               ; preds = %12
  %23 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr %struct.gpio_leds_priv, ptr %3, i32 0, i32 1, i32 %7, i32 1
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %29, label %28

28:                                               ; preds = %22
  tail call void @gpiod_set_value_cansleep(ptr noundef %27, i32 noundef 0) #7
  br label %30

29:                                               ; preds = %22
  tail call void @gpiod_set_value(ptr noundef %27, i32 noundef 0) #7
  br label %30

30:                                               ; preds = %29, %28, %16, %6
  %31 = add nuw nsw i32 %7, 1
  %32 = load i32, ptr %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %6, label %34

34:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_gpio_led(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 {
  %6 = alloca %struct.led_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  %7 = getelementptr inbounds %struct.gpio_led, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 14
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gpio_led_data, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gpiod_cansleep(ptr noundef %11) #7
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.gpio_led_data, ptr %1, i32 0, i32 2
  store i8 %13, ptr %14, align 4
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 5
  store ptr @gpio_led_set, ptr %17, align 4
  br label %20

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 6
  store ptr @gpio_led_set_blocking, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = getelementptr inbounds %struct.gpio_led_data, ptr %1, i32 0, i32 3
  store i8 0, ptr %21, align 1
  %22 = icmp eq ptr %4, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.gpio_led_data, ptr %1, i32 0, i32 4
  store ptr %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 8
  store ptr @gpio_blink_set, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.gpio_led, ptr %0, i32 0, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 3
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load ptr, ptr %10, align 4
  %34 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %33) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %79, label %39

36:                                               ; preds = %26
  %37 = icmp eq i8 %30, 1
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %34, %32 ], [ %38, %36 ]
  %41 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 2
  store i32 1, ptr %42, align 4
  %43 = load i8, ptr %27, align 4
  %44 = and i8 %43, 2
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 65536
  store i32 %49, ptr %47, align 4
  %50 = load i8, ptr %27, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i8 [ %50, %46 ], [ %43, %39 ]
  %53 = and i8 %52, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 1048576
  store i32 %58, ptr %56, align 4
  %59 = load i8, ptr %27, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i8 [ %59, %55 ], [ %52, %51 ]
  %62 = and i8 %61, 32
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.led_classdev, ptr %1, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 4194304
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %64, %60
  %69 = load ptr, ptr %10, align 4
  %70 = tail call i32 @gpiod_direction_output(ptr noundef %69, i32 noundef %40) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %0, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  store ptr %73, ptr %1, align 4
  %76 = tail call i32 @devm_led_classdev_register_ext(ptr noundef %2, ptr noundef %1, ptr noundef null) #7
  br label %79

77:                                               ; preds = %72
  store ptr %3, ptr %6, align 4
  %78 = call i32 @devm_led_classdev_register_ext(ptr noundef %2, ptr noundef %1, ptr noundef nonnull %6) #7
  br label %79

79:                                               ; preds = %77, %75, %68, %32
  %80 = phi i32 [ %34, %32 ], [ %70, %68 ], [ %76, %75 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret i32 %80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gpio_led_set(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %10(ptr noundef %12, i32 noundef %4, ptr noundef null, ptr noundef null) #7
  store i8 0, ptr %5, align 1
  br label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %21, label %20

20:                                               ; preds = %14
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %4) #7
  br label %22

21:                                               ; preds = %14
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %4) #7
  br label %22

22:                                               ; preds = %21, %20, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_led_set_blocking(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %10(ptr noundef %12, i32 noundef %4, ptr noundef null, ptr noundef null) #7
  store i8 0, ptr %5, align 1
  br label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %21, label %20

20:                                               ; preds = %14
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %4) #7
  br label %22

21:                                               ; preds = %14
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %4) #7
  br label %22

22:                                               ; preds = %21, %20, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_blink_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 3
  store i8 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gpio_led_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %6(ptr noundef %8, i32 noundef 2, ptr noundef %1, ptr noundef %2) #7
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_init_default_state_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
