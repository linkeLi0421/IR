; ModuleID = '/llk/IR/drivers/i2c/busses/i2c-gpio.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.i2c_gpio_private_data = type { ptr, ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_gpio_platform_data }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_gpio_platform_data = type { i32, i32, i8 }

@i2c_gpio_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [34 x i8] c"author=Haavard Skinnemoen (Atmel)\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [55 x i8] c"description=Platform-independent bitbanging I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [24 x i8] c"alias=platform:i2c-gpio\00", section ".modinfo", align 1
@i2c_gpio_driver = internal global %struct.platform_driver { ptr @i2c_gpio_probe, ptr @i2c_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [30 x i8] c"\013i2c-gpio: probe failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"i2c-gpio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Slow GPIO pins might wreak havoc into I2C/SMBus bus timing\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"i2c-gpio%d\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"using lines %u (SDA) and %u (SCL%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c", no clock stretching\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"i2c-gpio,delay-us\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"i2c-gpio,timeout-ms\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"i2c-gpio,sda-open-drain\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"i2c-gpio,scl-open-drain\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"i2c-gpio,scl-output-only\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"error trying to get descriptor: %d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__i2c_gpio_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @i2c_gpio_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_gpio_driver, ptr noundef nonnull @__this_module) #8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #9
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_gpio_driver) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_gpio_probe(ptr noundef %0) #4 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 720, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %159, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3
  %11 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 4
  %12 = icmp eq ptr %5, null
  br i1 %12, label %41, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef 1, i32 noundef 0) #8
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 4
  %19 = call i32 @__msecs_to_jiffies(i32 noundef %18) #8
  %20 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 4, i32 1
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 4, i32 2
  %25 = zext i1 %23 to i8
  %26 = load i8, ptr %24, align 4
  %27 = and i8 %26, -2
  %28 = or i8 %27, %25
  store i8 %28, ptr %24, align 4
  %29 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %30 = icmp eq ptr %29, null
  %31 = load i8, ptr %24, align 4
  %32 = select i1 %30, i8 0, i8 2
  %33 = and i8 %31, -3
  %34 = or i8 %33, %32
  store i8 %34, ptr %24, align 4
  %35 = call ptr @of_find_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %36 = icmp eq ptr %35, null
  %37 = load i8, ptr %24, align 4
  %38 = select i1 %36, i8 0, i8 4
  %39 = and i8 %37, -5
  %40 = or i8 %39, %38
  store i8 %40, ptr %24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %46

41:                                               ; preds = %8
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %11, ptr noundef nonnull align 1 dereferenceable(12) %43, i32 12, i1 false)
  br label %46

46:                                               ; preds = %45, %41, %21
  %47 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 4, i32 2
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 15, i32 7
  %52 = call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %51) #8
  %53 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef %51) #8
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = ptrtoint ptr %55 to i32
  switch i32 %58, label %59 [
    i32 -22, label %60
    i32 -2, label %60
    i32 -517, label %60
  ]

59:                                               ; preds = %57
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %58) #9
  br label %61

60:                                               ; preds = %57, %57, %57
  store ptr inttoptr (i32 -517 to ptr), ptr %6, align 8
  br label %64

61:                                               ; preds = %59, %54, %46
  %62 = phi ptr [ %52, %46 ], [ %55, %54 ], [ %55, %59 ]
  store ptr %62, ptr %6, align 8
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %61, %60
  %65 = phi ptr [ inttoptr (i32 -517 to ptr), %60 ], [ %62, %61 ]
  %66 = ptrtoint ptr %65 to i32
  br label %159

67:                                               ; preds = %61
  %68 = load i8, ptr %47, align 4
  %69 = and i8 %68, 2
  %70 = icmp eq i8 %69, 0
  %71 = select i1 %70, i32 15, i32 7
  %72 = call ptr @devm_gpiod_get(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %71) #8
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = call ptr @devm_gpiod_get_index(ptr noundef %3, ptr noundef null, i32 noundef 1, i32 noundef %71) #8
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = ptrtoint ptr %75 to i32
  switch i32 %78, label %79 [
    i32 -22, label %80
    i32 -2, label %80
    i32 -517, label %80
  ]

79:                                               ; preds = %77
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %78) #9
  br label %82

80:                                               ; preds = %77, %77, %77
  %81 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 1
  store ptr inttoptr (i32 -517 to ptr), ptr %81, align 4
  br label %86

82:                                               ; preds = %79, %74, %67
  %83 = phi ptr [ %72, %67 ], [ %75, %74 ], [ %75, %79 ]
  %84 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 1
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %80
  %87 = phi ptr [ inttoptr (i32 -517 to ptr), %80 ], [ %83, %82 ]
  %88 = ptrtoint ptr %87 to i32
  br label %159

89:                                               ; preds = %82
  %90 = load ptr, ptr %6, align 8
  %91 = call i32 @gpiod_cansleep(ptr noundef %90) #8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load ptr, ptr %84, align 4
  %95 = call i32 @gpiod_cansleep(ptr noundef %94) #8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %89
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  br label %100

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 9
  store i8 1, ptr %99, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 1
  store ptr @i2c_gpio_setsda_val, ptr %101, align 4
  %102 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 2
  store ptr @i2c_gpio_setscl_val, ptr %102, align 4
  %103 = load i8, ptr %47, align 4
  %104 = and i8 %103, 4
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 4
  store ptr @i2c_gpio_getscl, ptr %107, align 4
  %108 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 3
  store ptr @i2c_gpio_getsda, ptr %108, align 4
  %109 = load i32, ptr %11, align 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 5, i32 %109
  br label %117

112:                                              ; preds = %100
  %113 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 3
  store ptr @i2c_gpio_getsda, ptr %113, align 4
  %114 = load i32, ptr %11, align 4
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 50, i32 %114
  br label %117

117:                                              ; preds = %112, %106
  %118 = phi i32 [ %116, %112 ], [ %111, %106 ]
  %119 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 7
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 4, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 10, i32 %121
  %124 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 3, i32 8
  store i32 %123, ptr %124, align 4
  store ptr %6, ptr %10, align 4
  store ptr @__this_module, ptr %9, align 8
  %125 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 12
  br i1 %12, label %135, label %126

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load ptr, ptr %3, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi ptr [ %131, %130 ], [ %128, %126 ]
  %134 = call i32 @strlcpy(ptr noundef %125, ptr noundef %133, i32 noundef 48) #8
  br label %139

135:                                              ; preds = %117
  %136 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %125, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %137)
  br label %139

139:                                              ; preds = %135, %132
  %140 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 3
  store ptr %10, ptr %140, align 4
  %141 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 1
  store i32 129, ptr %141, align 4
  %142 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 9, i32 1
  store ptr %3, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 9, i32 25
  store ptr %5, ptr %143, align 8
  %144 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %6, i32 0, i32 2, i32 11
  store i32 %145, ptr %146, align 4
  %147 = call i32 @i2c_bit_add_numbered_bus(ptr noundef %9) #8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %150, align 8
  %151 = load ptr, ptr %6, align 8
  %152 = call i32 @desc_to_gpio(ptr noundef %151) #8
  %153 = load ptr, ptr %84, align 4
  %154 = call i32 @desc_to_gpio(ptr noundef %153) #8
  %155 = load i8, ptr %47, align 4
  %156 = and i8 %155, 4
  %157 = icmp eq i8 %156, 0
  %158 = select i1 %157, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %152, i32 noundef %154, ptr noundef nonnull %158) #9
  br label %159

159:                                              ; preds = %149, %139, %86, %64, %1
  %160 = phi i32 [ %66, %64 ], [ %88, %86 ], [ 0, %149 ], [ -12, %1 ], [ %147, %139 ]
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_gpio_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %3, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %4) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_gpio_setsda_val(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr %0, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i2c_gpio_setscl_val(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_gpio_getscl(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.i2c_gpio_private_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #8
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @i2c_gpio_getsda(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %2) #8
  ret i32 %3
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_numbered_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
