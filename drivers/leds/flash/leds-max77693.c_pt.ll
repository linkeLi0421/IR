; ModuleID = '/llk/IR/drivers/leds/flash/leds-max77693.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-max77693.c"
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
%struct.lock_class_key = type {}
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max77693_led_config_data = type { [2 x ptr], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32 }
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
%struct.max77693_led_device = type { ptr, ptr, %struct.mutex, [2 x %struct.max77693_sub_led], [2 x i32], [2 x i32], i32, i8, i32, i32, i8, i8, i8 }
%struct.max77693_sub_led = type { i32, %struct.led_classdev_flash, ptr, i32, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@max77693_led_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77693-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author261 = internal constant [51 x i8] c"author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [43 x i8] c"author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [44 x i8] c"description=Maxim MAX77693 led flash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@max77693_led_driver = internal global %struct.platform_driver { ptr @max77693_led_probe, ptr @max77693_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77693_led_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"max77693-led\00", align 1
@max77693_led_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&led->lock\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"maxim,boost-mode\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"maxim,boost-mvout\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"maxim,mvsys-min\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"led-sources\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"led-sources DT property missing\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Wrong led-sources DT property value.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Conflicting \22led-sources\22 DT properties\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"led-max-microamp\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"led-max-microamp DT property missing\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"flash-max-microamp\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"flash-max-microamp DT property missing\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"flash-max-timeout-us\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"No DT child node found for connected LED(s).\0A\00", align 1
@flash_ops = internal constant %struct.led_flash_ops { ptr @max77693_led_flash_brightness_set, ptr null, ptr @max77693_led_flash_strobe_set, ptr @max77693_led_flash_strobe_get, ptr @max77693_led_flash_timeout_set, ptr @max77693_led_flash_fault_get }, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author261, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_license264], section "llvm.metadata"

@__mod_of__max77693_led_dt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @max77693_led_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_led_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = alloca [2 x ptr], align 8
  %5 = alloca %struct.max77693_led_config_data, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false)
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 600, i32 noundef 3520) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %481, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max77693_dev, ptr %10, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  store ptr %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 11
  store i8 51, ptr %17, align 1
  %18 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 3
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %19, align 8
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %21 = load ptr, ptr %20, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %22 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 5
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef %22, i32 noundef 1, i32 noundef 0) #8
  %24 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 6
  %25 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef %24, i32 noundef 1, i32 noundef 0) #8
  %26 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 7
  %27 = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef %26, i32 noundef 1, i32 noundef 0) #8
  %28 = call ptr @of_get_next_available_child(ptr noundef %21, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %95, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %32 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 4
  %33 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  br label %34

34:                                               ; preds = %92, %30
  %35 = phi ptr [ %28, %30 ], [ %93, %92 ]
  %36 = call ptr @of_find_property(ptr noundef nonnull %35, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = call ptr @of_prop_next_u32(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull %3) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = call ptr @of_prop_next_u32(ptr noundef nonnull %36, ptr noundef nonnull %39, ptr noundef %33) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %53

44:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  call void @of_node_put(ptr noundef nonnull %35) #8
  br label %100

45:                                               ; preds = %41, %38
  %46 = load i32, ptr %3, align 8
  switch i32 %46, label %48 [
    i32 0, label %49
    i32 1, label %47
  ]

47:                                               ; preds = %45
  br label %49

48:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  call void @of_node_put(ptr noundef nonnull %35) #8
  br label %100

49:                                               ; preds = %47, %45
  %50 = phi i8 [ 2, %47 ], [ 1, %45 ]
  %51 = load i8, ptr %31, align 4
  %52 = or i8 %51, %50
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i8 [ 3, %41 ], [ %52, %49 ]
  %55 = phi i32 [ 0, %41 ], [ %46, %49 ]
  store i8 %54, ptr %31, align 4
  %56 = getelementptr ptr, ptr %4, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #9
  call void @of_node_put(ptr noundef nonnull %35) #8
  br label %100

60:                                               ; preds = %53
  store ptr %35, ptr %56, align 4
  %61 = getelementptr %struct.max77693_sub_led, ptr %18, i32 %55
  store i32 %55, ptr %61, align 4
  %62 = call ptr @of_get_property(ptr noundef nonnull %35, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %35, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %62, %60 ]
  %68 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %55
  store ptr %67, ptr %68, align 4
  %69 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 %55
  %70 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %35, ptr noundef nonnull @.str.10, ptr noundef %69, i32 noundef 1, i32 noundef 0) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 15625, ptr %69, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.11) #9
  br label %73

73:                                               ; preds = %72, %66
  %74 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 %55
  %75 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %35, ptr noundef nonnull @.str.12, ptr noundef %74, i32 noundef 1, i32 noundef 0) #8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 15625, ptr %74, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.13) #9
  br label %78

78:                                               ; preds = %77, %73
  %79 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 3, i32 %55
  %80 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %35, ptr noundef nonnull @.str.14, ptr noundef %79, i32 noundef 1, i32 noundef 0) #8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 62500, ptr %79, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.15) #9
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, ptr %32, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %32, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8, ptr %31, align 4
  %89 = and i8 %88, 3
  %90 = icmp eq i8 %89, 3
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %83
  call void @of_node_put(ptr noundef nonnull %35) #8
  br label %95

92:                                               ; preds = %87
  %93 = call ptr @of_get_next_available_child(ptr noundef %21, ptr noundef nonnull %35) #8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %34

95:                                               ; preds = %92, %91, %13
  %96 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16) #9
  br label %100

100:                                              ; preds = %99, %59, %48, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  br label %481

101:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %102 = load i32, ptr %22, align 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 1000000, i32 625000
  %105 = icmp eq i32 %97, 1
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %108 = load i8, ptr %107, align 4
  %109 = and i8 %108, 3
  %110 = icmp eq i8 %109, 3
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 12
  store i8 1, ptr %112, align 2
  br label %113

113:                                              ; preds = %111, %106, %101
  %114 = call i32 @llvm.umin.i32(i32 %102, i32 2) #8
  store i32 %114, ptr %22, align 4
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 12
  %117 = load i8, ptr %116, align 2, !range !9
  br i1 %115, label %118, label %126

118:                                              ; preds = %113
  %119 = icmp eq i8 %117, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1
  %122 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 12
  br label %141

123:                                              ; preds = %118
  store i32 2, ptr %22, align 4
  %124 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1
  %125 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 12
  br label %130

126:                                              ; preds = %113
  %127 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1
  %128 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 12
  %129 = icmp eq i8 %117, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %126, %123
  %131 = phi ptr [ %125, %123 ], [ %128, %126 ]
  %132 = phi ptr [ %124, %123 ], [ %127, %126 ]
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, 15625
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = lshr i32 %133, 1
  store i32 %136, ptr %132, align 4
  %137 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 1
  store i32 %136, ptr %137, align 4
  br label %141

138:                                              ; preds = %130
  store i32 15625, ptr %132, align 4
  %139 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 1
  store i32 0, ptr %139, align 4
  %140 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  br label %171

141:                                              ; preds = %135, %126, %120
  %142 = phi i1 [ true, %120 ], [ false, %135 ], [ true, %126 ]
  %143 = phi ptr [ %122, %120 ], [ %131, %135 ], [ %128, %126 ]
  %144 = phi ptr [ %121, %120 ], [ %132, %135 ], [ %127, %126 ]
  %145 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %146 = load i8, ptr %145, align 4
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %141
  %150 = load i32, ptr %144, align 4
  %151 = call i32 @llvm.umax.i32(i32 %150, i32 15625) #8
  %152 = call i32 @llvm.umin.i32(i32 %151, i32 250000) #8
  %153 = add nsw i32 %152, -15625
  %154 = urem i32 %153, 15625
  %155 = sub nuw nsw i32 %152, %154
  br label %156

156:                                              ; preds = %149, %141
  %157 = phi i32 [ %155, %149 ], [ 0, %141 ]
  store i32 %157, ptr %144, align 4
  %158 = and i8 %146, 2
  %159 = icmp eq i8 %158, 0
  %160 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 1
  br i1 %159, label %168, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %160, align 4
  %163 = call i32 @llvm.umax.i32(i32 %162, i32 15625) #8
  %164 = call i32 @llvm.umin.i32(i32 %163, i32 250000) #8
  %165 = add nsw i32 %164, -15625
  %166 = urem i32 %165, 15625
  %167 = sub nuw nsw i32 %164, %166
  br label %168

168:                                              ; preds = %161, %156
  %169 = phi i32 [ %167, %161 ], [ 0, %156 ]
  store i32 %169, ptr %160, align 4
  %170 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  br i1 %142, label %185, label %171

171:                                              ; preds = %168, %138
  %172 = phi ptr [ %131, %138 ], [ %143, %168 ]
  %173 = phi ptr [ %132, %138 ], [ %144, %168 ]
  %174 = phi ptr [ %140, %138 ], [ %170, %168 ]
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, 15625
  br i1 %176, label %177, label %183

177:                                              ; preds = %171
  %178 = lshr i32 %175, 1
  store i32 %178, ptr %174, align 4
  %179 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 1
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %181 = load i8, ptr %180, align 4
  %182 = and i8 %181, 1
  br label %185

183:                                              ; preds = %171
  store i32 15625, ptr %174, align 4
  %184 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 1
  store i32 0, ptr %184, align 4
  br label %212

185:                                              ; preds = %177, %168
  %186 = phi ptr [ %172, %177 ], [ %143, %168 ]
  %187 = phi ptr [ %173, %177 ], [ %144, %168 ]
  %188 = phi i8 [ %182, %177 ], [ %147, %168 ]
  %189 = phi i8 [ %181, %177 ], [ %146, %168 ]
  %190 = phi ptr [ %174, %177 ], [ %170, %168 ]
  %191 = icmp eq i8 %188, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %185
  %193 = load i32, ptr %190, align 4
  %194 = call i32 @llvm.umax.i32(i32 %193, i32 15625) #8
  %195 = call i32 @llvm.umin.i32(i32 %194, i32 %104) #8
  %196 = add nsw i32 %195, -15625
  %197 = urem i32 %196, 15625
  %198 = sub nuw nsw i32 %195, %197
  br label %199

199:                                              ; preds = %192, %185
  %200 = phi i32 [ %198, %192 ], [ 0, %185 ]
  store i32 %200, ptr %190, align 4
  %201 = and i8 %189, 2
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 1
  br i1 %202, label %211, label %204

204:                                              ; preds = %199
  %205 = load i32, ptr %203, align 4
  %206 = call i32 @llvm.umax.i32(i32 %205, i32 15625) #8
  %207 = call i32 @llvm.umin.i32(i32 %206, i32 %104) #8
  %208 = add nsw i32 %207, -15625
  %209 = urem i32 %208, 15625
  %210 = sub nuw nsw i32 %207, %209
  store i32 %210, ptr %203, align 4
  br label %212

211:                                              ; preds = %199
  store i32 0, ptr %203, align 4
  br label %212

212:                                              ; preds = %211, %204, %183
  %213 = phi ptr [ %186, %211 ], [ %186, %204 ], [ %172, %183 ]
  %214 = phi ptr [ %187, %211 ], [ %187, %204 ], [ %173, %183 ]
  %215 = phi i32 [ 0, %211 ], [ %210, %204 ], [ 0, %183 ]
  %216 = phi ptr [ %190, %211 ], [ %190, %204 ], [ %174, %183 ]
  %217 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 3, i32 0
  %218 = load i32, ptr %217, align 4
  %219 = call i32 @llvm.umax.i32(i32 %218, i32 62500) #8
  %220 = call i32 @llvm.umin.i32(i32 %219, i32 1000000) #8
  %221 = add nsw i32 %220, -62500
  %222 = urem i32 %221, 62500
  %223 = sub nuw nsw i32 %220, %222
  store i32 %223, ptr %217, align 4
  %224 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 3, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = call i32 @llvm.umax.i32(i32 %225, i32 62500) #8
  %227 = call i32 @llvm.umin.i32(i32 %226, i32 1000000) #8
  %228 = add nsw i32 %227, -62500
  %229 = urem i32 %228, 62500
  %230 = sub nuw nsw i32 %227, %229
  store i32 %230, ptr %224, align 4
  %231 = load i32, ptr %24, align 4
  %232 = call i32 @llvm.umax.i32(i32 %231, i32 3300) #8
  %233 = call i32 @llvm.umin.i32(i32 %232, i32 5500) #8
  %234 = add nsw i32 %233, -3300
  %235 = trunc i32 %234 to i16
  %236 = urem i16 %235, 25
  %237 = sub nuw nsw i16 3300, %236
  %238 = zext i16 %237 to i32
  %239 = add nuw nsw i32 %234, %238
  store i32 %239, ptr %24, align 4
  %240 = load i32, ptr %26, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %212
  %243 = call i32 @llvm.umax.i32(i32 %240, i32 2400) #8
  %244 = call i32 @llvm.umin.i32(i32 %243, i32 3400) #8
  %245 = add nsw i32 %244, -2400
  %246 = trunc i32 %245 to i16
  %247 = urem i16 %246, 33
  %248 = sub nuw nsw i16 2400, %247
  %249 = zext i16 %248 to i32
  %250 = add nuw nsw i32 %245, %249
  store i32 %250, ptr %26, align 4
  br label %251

251:                                              ; preds = %242, %212
  %252 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 4
  %253 = load i64, ptr %214, align 4
  store i64 %253, ptr %252, align 4
  %254 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 5
  %255 = load i64, ptr %216, align 4
  store i64 %255, ptr %254, align 4
  %256 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  %257 = load i8, ptr %213, align 2, !range !9
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %215, %261
  store i32 %262, ptr %2, align 8
  br label %275

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %265 = load i8, ptr %264, align 4
  %266 = zext i8 %265 to i32
  %267 = and i32 %266, 1
  %268 = xor i32 %267, 1
  %269 = lshr i32 %266, 1
  %270 = and i32 %269, 1
  %271 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  %272 = load i32, ptr %271, align 4
  store i32 %272, ptr %2, align 8
  %273 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 %215, ptr %273, align 4
  %274 = icmp ugt i32 %268, %270
  br i1 %274, label %287, label %275

275:                                              ; preds = %263, %259
  %276 = phi i32 [ 0, %259 ], [ %270, %263 ]
  %277 = phi i32 [ 0, %259 ], [ %268, %263 ]
  br label %281

278:                                              ; preds = %281
  %279 = add nuw nsw i32 %282, 1
  %280 = icmp eq i32 %282, %276
  br i1 %280, label %287, label %281

281:                                              ; preds = %278, %275
  %282 = phi i32 [ %279, %278 ], [ %277, %275 ]
  %283 = getelementptr [2 x i32], ptr %2, i32 0, i32 %282
  %284 = load i32, ptr %283, align 4
  %285 = call fastcc i32 @max77693_set_flash_current(ptr noundef %11, i32 noundef %282, i32 noundef %284) #8
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %330, label %278

287:                                              ; preds = %278, %263
  %288 = call i32 @regmap_write(ptr noundef %256, i32 noundef 3, i32 noundef 65) #8
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %330, label %290

290:                                              ; preds = %287
  %291 = load i32, ptr %26, align 4
  %292 = icmp eq i32 %291, 0
  %293 = add i32 %291, -2400
  %294 = udiv i32 %293, 33
  %295 = shl nuw nsw i32 %294, 2
  %296 = and i32 %295, 124
  %297 = or i32 %296, 128
  %298 = select i1 %292, i32 0, i32 %297
  %299 = call i32 @regmap_write(ptr noundef %256, i32 noundef 6, i32 noundef %298) #8
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %330, label %301

301:                                              ; preds = %290
  %302 = call i32 @regmap_write(ptr noundef %256, i32 noundef 7, i32 noundef 0) #8
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %330, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %22, align 4
  %306 = icmp eq i32 %305, 2
  %307 = shl i32 %305, 1
  %308 = or i32 %307, %305
  %309 = trunc i32 %308 to i8
  %310 = select i1 %306, i8 4, i8 %309
  %311 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 10
  %312 = load i8, ptr %311, align 4
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  %315 = shl i8 %312, 6
  %316 = and i8 %315, -128
  %317 = select i1 %314, i8 0, i8 %316
  %318 = or i8 %310, %317
  %319 = zext i8 %318 to i32
  %320 = call i32 @regmap_write(ptr noundef %256, i32 noundef 10, i32 noundef %319) #8
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %330, label %322

322:                                              ; preds = %304
  %323 = load i32, ptr %24, align 4
  %324 = add i32 %323, -3300
  %325 = udiv i32 %324, 25
  %326 = add nuw nsw i32 %325, 12
  %327 = and i32 %326, 255
  %328 = call i32 @regmap_write(ptr noundef %256, i32 noundef 11, i32 noundef %327) #8
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %322, %304, %301, %290, %287, %281
  %331 = phi i32 [ %328, %322 ], [ %320, %304 ], [ %302, %301 ], [ %299, %290 ], [ %288, %287 ], [ %285, %281 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %481

332:                                              ; preds = %322
  %333 = load ptr, ptr %11, align 4
  %334 = call i32 @regmap_write(ptr noundef %333, i32 noundef 5, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %481, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 2
  call void @__mutex_init(ptr noundef %337, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77693_led_probe.__key) #8
  %338 = load i8, ptr %213, align 2, !range !9
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 1
  %342 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  %343 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 1
  br label %354

344:                                              ; preds = %336
  %345 = load i8, ptr %311, align 4
  %346 = and i8 %345, 1
  %347 = lshr i8 %345, 1
  %348 = and i8 %347, 1
  %349 = zext i8 %348 to i32
  %350 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 1
  %351 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2
  %352 = getelementptr inbounds %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 1
  %353 = icmp eq i8 %346, 0
  br i1 %353, label %415, label %354

354:                                              ; preds = %344, %340
  %355 = phi ptr [ %343, %340 ], [ %352, %344 ]
  %356 = phi ptr [ %342, %340 ], [ %351, %344 ]
  %357 = phi ptr [ %341, %340 ], [ %350, %344 ]
  %358 = phi i32 [ 0, %340 ], [ %349, %344 ]
  %359 = load i32, ptr %18, align 4
  %360 = mul i32 %359, -268
  %361 = add i32 %360, -28
  %362 = getelementptr i8, ptr %18, i32 %361
  %363 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1
  %364 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr @flash_ops, ptr %364, align 4
  %365 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %359
  %366 = load ptr, ptr %365, align 4
  store ptr %366, ptr %363, align 4
  %367 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 0, i32 6
  store ptr @max77693_led_brightness_set, ptr %367, align 4
  %368 = getelementptr inbounds %struct.max77693_led_device, ptr %362, i32 0, i32 12
  %369 = load i8, ptr %368, align 2, !range !9
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %354
  %372 = load i32, ptr %214, align 4
  %373 = load i32, ptr %357, align 4
  %374 = add i32 %373, %372
  br label %378

375:                                              ; preds = %354
  %376 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 %359
  %377 = load i32, ptr %376, align 4
  br label %378

378:                                              ; preds = %375, %371
  %379 = phi i32 [ %374, %371 ], [ %377, %375 ]
  %380 = udiv i32 %379, 15625
  %381 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 0, i32 2
  store i32 %380, ptr %381, align 4
  %382 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 0, i32 3
  %383 = load i32, ptr %382, align 4
  %384 = or i32 %383, 262144
  store i32 %384, ptr %382, align 4
  %385 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 2
  store i32 15625, ptr %385, align 4
  %386 = load i8, ptr %368, align 2, !range !9
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %378
  %389 = load i32, ptr %356, align 4
  %390 = load i32, ptr %355, align 4
  %391 = add i32 %390, %389
  br label %395

392:                                              ; preds = %378
  %393 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 %359
  %394 = load i32, ptr %393, align 4
  br label %395

395:                                              ; preds = %392, %388
  %396 = phi i32 [ %391, %388 ], [ %394, %392 ]
  %397 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 2, i32 1
  store i32 %396, ptr %397, align 4
  %398 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 2, i32 2
  store i32 15625, ptr %398, align 4
  %399 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 2, i32 3
  store i32 %396, ptr %399, align 4
  %400 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 3
  store i32 62500, ptr %400, align 4
  %401 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 3, i32 %359
  %402 = load i32, ptr %401, align 4
  %403 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 3, i32 1
  store i32 %402, ptr %403, align 4
  %404 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 3, i32 2
  store i32 62500, ptr %404, align 4
  %405 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 3, i32 3
  store i32 %402, ptr %405, align 4
  %406 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 4
  store i32 %402, ptr %406, align 4
  %407 = getelementptr inbounds %struct.max77693_led_device, ptr %362, i32 0, i32 1
  %408 = load ptr, ptr %407, align 4
  %409 = getelementptr inbounds %struct.platform_device, ptr %408, i32 0, i32 3
  %410 = call i32 @led_classdev_flash_register_ext(ptr noundef %409, ptr noundef %363, ptr noundef null) #8
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %481, label %412

412:                                              ; preds = %395
  %413 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 2
  store ptr null, ptr %413, align 4
  br label %415

414:                                              ; preds = %460
  br i1 %420, label %479, label %481

415:                                              ; preds = %412, %344
  %416 = phi ptr [ %355, %412 ], [ %352, %344 ]
  %417 = phi ptr [ %356, %412 ], [ %351, %344 ]
  %418 = phi ptr [ %357, %412 ], [ %350, %344 ]
  %419 = phi i32 [ %358, %412 ], [ %349, %344 ]
  %420 = phi i1 [ true, %412 ], [ false, %344 ]
  %421 = icmp eq i32 %419, 0
  br i1 %421, label %481, label %422

422:                                              ; preds = %415
  %423 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1
  %424 = load i32, ptr %423, align 4
  %425 = mul i32 %424, -268
  %426 = add i32 %425, -28
  %427 = getelementptr i8, ptr %423, i32 %426
  %428 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1
  %429 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 1
  store ptr @flash_ops, ptr %429, align 4
  %430 = getelementptr [2 x ptr], ptr %5, i32 0, i32 %424
  %431 = load ptr, ptr %430, align 4
  store ptr %431, ptr %428, align 4
  %432 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 0, i32 6
  store ptr @max77693_led_brightness_set, ptr %432, align 4
  %433 = getelementptr inbounds %struct.max77693_led_device, ptr %427, i32 0, i32 12
  %434 = load i8, ptr %433, align 2, !range !9
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %440, label %436

436:                                              ; preds = %422
  %437 = load i32, ptr %214, align 4
  %438 = load i32, ptr %418, align 4
  %439 = add i32 %438, %437
  br label %443

440:                                              ; preds = %422
  %441 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 1, i32 %424
  %442 = load i32, ptr %441, align 4
  br label %443

443:                                              ; preds = %440, %436
  %444 = phi i32 [ %439, %436 ], [ %442, %440 ]
  %445 = udiv i32 %444, 15625
  %446 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 0, i32 2
  store i32 %445, ptr %446, align 4
  %447 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 0, i32 3
  %448 = load i32, ptr %447, align 4
  %449 = or i32 %448, 262144
  store i32 %449, ptr %447, align 4
  %450 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 2
  store i32 15625, ptr %450, align 4
  %451 = load i8, ptr %433, align 2, !range !9
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %443
  %454 = load i32, ptr %417, align 4
  %455 = load i32, ptr %416, align 4
  %456 = add i32 %455, %454
  br label %460

457:                                              ; preds = %443
  %458 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 2, i32 %424
  %459 = load i32, ptr %458, align 4
  br label %460

460:                                              ; preds = %457, %453
  %461 = phi i32 [ %456, %453 ], [ %459, %457 ]
  %462 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 2, i32 1
  store i32 %461, ptr %462, align 4
  %463 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 2, i32 2
  store i32 15625, ptr %463, align 4
  %464 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 2, i32 3
  store i32 %461, ptr %464, align 4
  %465 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 3
  store i32 62500, ptr %465, align 4
  %466 = getelementptr %struct.max77693_led_config_data, ptr %5, i32 0, i32 3, i32 %424
  %467 = load i32, ptr %466, align 4
  %468 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 3, i32 1
  store i32 %467, ptr %468, align 4
  %469 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 3, i32 2
  store i32 62500, ptr %469, align 4
  %470 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 1, i32 3, i32 3
  store i32 %467, ptr %470, align 4
  %471 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 4
  store i32 %467, ptr %471, align 4
  %472 = getelementptr inbounds %struct.max77693_led_device, ptr %427, i32 0, i32 1
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.platform_device, ptr %473, i32 0, i32 3
  %475 = call i32 @led_classdev_flash_register_ext(ptr noundef %474, ptr noundef %428, ptr noundef null) #8
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %414, label %477

477:                                              ; preds = %460
  %478 = getelementptr %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 1, i32 2
  store ptr null, ptr %478, align 4
  br label %481

479:                                              ; preds = %414
  %480 = getelementptr inbounds %struct.max77693_led_device, ptr %11, i32 0, i32 3, i32 0, i32 1
  call void @led_classdev_flash_unregister(ptr noundef %480) #8
  br label %481

481:                                              ; preds = %479, %477, %415, %414, %395, %332, %330, %100, %1
  %482 = phi i32 [ -12, %1 ], [ %334, %332 ], [ -22, %100 ], [ %331, %330 ], [ %475, %414 ], [ %475, %479 ], [ 0, %477 ], [ 0, %415 ], [ %410, %395 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %482
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.max77693_led_device, ptr %3, i32 0, i32 12
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.max77693_led_device, ptr %3, i32 0, i32 10
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.max77693_led_device, ptr %3, i32 0, i32 3, i32 0, i32 1
  tail call void @led_classdev_flash_unregister(ptr noundef %13) #8
  %14 = load i8, ptr %4, align 2, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %7
  %17 = getelementptr inbounds %struct.max77693_led_device, ptr %3, i32 0, i32 10
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.max77693_led_device, ptr %3, i32 0, i32 3, i32 1, i32 1
  tail call void @led_classdev_flash_unregister(ptr noundef %22) #8
  br label %23

23:                                               ; preds = %21, %16, %12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_flash_current(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [2 x i32], align 8
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 12
  %7 = load i8, ptr %6, align 2, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %2) #8
  store i32 %12, ptr %4, align 8
  %13 = sub i32 %2, %12
  %14 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, -52
  %18 = or i8 %17, 17
  store i8 %18, ptr %15, align 1
  %19 = icmp ult i32 %11, %2
  br i1 %19, label %20, label %35

20:                                               ; preds = %9
  %21 = or i8 %16, 51
  store i8 %21, ptr %15, align 1
  br label %35

22:                                               ; preds = %3
  %23 = getelementptr i32, ptr %4, i32 %1
  store i32 %2, ptr %23, align 4
  %24 = shl nuw i32 1, %1
  %25 = add i32 %1, 4
  %26 = shl nuw i32 1, %25
  %27 = or i32 %26, %24
  %28 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 11
  %29 = load i8, ptr %28, align 1
  %30 = trunc i32 %27 to i8
  %31 = or i8 %29, %30
  store i8 %31, ptr %28, align 1
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load i32, ptr %4, align 8
  br label %35

35:                                               ; preds = %33, %20, %9
  %36 = phi i32 [ %34, %33 ], [ %12, %20 ], [ %12, %9 ]
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 15625) #8
  %38 = add i32 %37, -15625
  %39 = udiv i32 %38, 15625
  %40 = and i32 %39, 255
  %41 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef %40) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %35, %22
  %44 = phi i32 [ %41, %35 ], [ -22, %22 ]
  %45 = icmp eq i32 %1, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8, ptr %6, align 2, !range !9
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46, %43
  %50 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 15625) #8
  %53 = add i32 %52, -15625
  %54 = udiv i32 %53, 15625
  %55 = and i32 %54, 255
  %56 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef %55) #8
  br label %57

57:                                               ; preds = %49, %46, %35
  %58 = phi i32 [ %41, %35 ], [ %56, %49 ], [ %44, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_brightness_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -268
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = add i32 %5, 2
  %13 = shl nuw i32 1, %12
  %14 = trunc i32 %13 to i8
  %15 = tail call fastcc i32 @max77693_clear_mode(ptr noundef %8, i8 noundef zeroext %14)
  br label %88

16:                                               ; preds = %2
  %17 = mul i32 %1, 15625
  %18 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %19 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 12
  %20 = load i8, ptr %19, align 2, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %17) #8
  store i32 %25, ptr %3, align 8
  %26 = sub i32 %17, %25
  %27 = getelementptr inbounds i32, ptr %3, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 11
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, -13
  %31 = or i8 %30, 4
  store i8 %31, ptr %28, align 1
  %32 = icmp ult i32 %24, %17
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = or i8 %29, 12
  store i8 %34, ptr %28, align 1
  br label %46

35:                                               ; preds = %16
  %36 = getelementptr i32, ptr %3, i32 %5
  store i32 %17, ptr %36, align 4
  %37 = add i32 %5, 2
  %38 = shl nuw i32 1, %37
  %39 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 11
  %40 = load i8, ptr %39, align 1
  %41 = trunc i32 %38 to i8
  %42 = or i8 %40, %41
  store i8 %42, ptr %39, align 1
  %43 = icmp eq i32 %5, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i32, ptr %3, align 8
  br label %46

46:                                               ; preds = %44, %33, %22
  %47 = phi i32 [ %45, %44 ], [ %25, %33 ], [ %25, %22 ]
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 15625) #8
  %49 = add i32 %48, -15625
  %50 = udiv i32 %49, 15625
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 7
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, -16
  store i8 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %46, %35
  %56 = phi i8 [ %51, %46 ], [ 0, %35 ]
  %57 = icmp eq i32 %5, 1
  %58 = xor i1 %21, true
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 7
  %62 = load i8, ptr %61, align 4
  br label %74

63:                                               ; preds = %55
  %64 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 15625) #8
  %67 = add i32 %66, -15625
  %68 = udiv i32 %67, 15625
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 7
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 15
  %73 = shl i8 %69, 4
  br label %74

74:                                               ; preds = %63, %60
  %75 = phi i8 [ %72, %63 ], [ %62, %60 ]
  %76 = phi i8 [ %73, %63 ], [ 0, %60 ]
  %77 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 7
  %78 = or i8 %75, %56
  %79 = or i8 %78, %76
  store i8 %79, ptr %77, align 4
  %80 = zext i8 %79 to i32
  %81 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 2, i32 noundef %80) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %74
  %84 = add i32 %5, 2
  %85 = shl nuw i32 1, %84
  %86 = trunc i32 %85 to i8
  %87 = tail call fastcc i32 @max77693_add_mode(ptr noundef %8, i8 noundef zeroext %86)
  br label %88

88:                                               ; preds = %83, %74, %11
  %89 = phi i32 [ %15, %11 ], [ %81, %74 ], [ %87, %83 ]
  tail call void @mutex_unlock(ptr noundef %9) #8
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_brightness_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, -268
  %6 = add i32 %5, -28
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.max77693_led_device, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = load i32, ptr %3, align 4
  %10 = tail call fastcc i32 @max77693_set_flash_current(ptr noundef %7, i32 noundef %9, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %8) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_strobe_set(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -268
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #8
  br i1 %1, label %14, label %10

10:                                               ; preds = %2
  %11 = shl nuw i32 1, %5
  %12 = trunc i32 %11 to i8
  %13 = tail call fastcc i32 @max77693_clear_mode(ptr noundef %8, i8 noundef zeroext %12)
  br label %73

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 256
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %8, align 4
  %22 = add i32 %16, -62500
  %23 = udiv i32 %22, 62500
  %24 = and i32 %23, 127
  %25 = or i32 %24, 128
  %26 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 4, i32 noundef %25) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %73, label %28

28:                                               ; preds = %20
  store i32 %16, ptr %17, align 4
  br label %29

29:                                               ; preds = %28, %14
  %30 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 9
  store i32 %5, ptr %30, align 4
  %31 = shl nuw i32 1, %5
  %32 = trunc i32 %31 to i8
  %33 = tail call fastcc i32 @max77693_add_mode(ptr noundef %8, i8 noundef zeroext %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %29
  %36 = load i32, ptr %4, align 4
  %37 = mul i32 %36, -268
  %38 = add i32 %37, -28
  %39 = getelementptr i8, ptr %4, i32 %38
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %41 = getelementptr i8, ptr %0, i32 260
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.max77693_led_device, ptr %39, i32 0, i32 12
  %43 = load i8, ptr %42, align 2, !range !9
  %44 = icmp eq i8 %43, 0
  %45 = icmp eq i32 %36, 0
  %46 = select i1 %45, i32 8, i32 2
  %47 = select i1 %44, i32 %46, i32 10
  %48 = call i32 @regmap_read(ptr noundef %40, i32 noundef 14, ptr noundef nonnull %3) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %35
  %51 = select i1 %45, i32 4, i32 1
  %52 = select i1 %44, i32 %51, i32 5
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %41, align 4
  %58 = or i32 %57, 1
  store i32 %58, ptr %41, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = and i32 %53, %47
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %41, align 4
  %64 = or i32 %63, 8
  store i32 %64, ptr %41, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = and i32 %53, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %41, align 4
  %70 = or i32 %69, 16
  store i32 %70, ptr %41, align 4
  br label %71

71:                                               ; preds = %68, %65, %35
  %72 = phi i32 [ %48, %35 ], [ 0, %68 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %73

73:                                               ; preds = %71, %29, %20, %10
  %74 = phi i32 [ %33, %29 ], [ %72, %71 ], [ %13, %10 ], [ %26, %20 ]
  call void @mutex_unlock(ptr noundef %9) #8
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_strobe_get(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -268
  %7 = add i32 %6, -28
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = icmp eq ptr %1, null
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %11) #8
  %12 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 16, ptr noundef nonnull %3) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %3, align 4
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 3
  %19 = and i8 %18, 1
  store i8 %19, ptr %1, align 1
  br label %22

20:                                               ; preds = %10
  %21 = load i8, ptr %1, align 1
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i8 [ %21, %20 ], [ %19, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.max77693_led_device, ptr %8, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %4, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  %32 = zext i1 %31 to i8
  store i8 %32, ptr %1, align 1
  call void @mutex_unlock(ptr noundef %11) #8
  br label %33

33:                                               ; preds = %30, %2
  %34 = phi i32 [ %13, %30 ], [ -22, %2 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_timeout_set(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, -268
  %6 = add i32 %5, -28
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.max77693_led_device, ptr %7, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr i8, ptr %0, i32 256
  store i32 %1, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @max77693_led_flash_fault_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr i8, ptr %0, i32 260
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_clear_mode(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 2, !range !9
  %5 = icmp eq i8 %4, 0
  %6 = shl i8 %1, 1
  %7 = select i1 %5, i8 0, i8 %6
  %8 = or i8 %7, %1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %9, -1
  %11 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = load ptr, ptr %0, align 4
  %15 = and i32 %13, 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 12
  %18 = and i32 %13, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = or i32 %17, 192
  br label %27

22:                                               ; preds = %2
  %23 = and i32 %13, 16
  %24 = icmp eq i32 %23, 0
  %25 = or i32 %17, 72
  %26 = select i1 %24, i32 %17, i32 %25
  br label %27

27:                                               ; preds = %22, %20
  %28 = phi i32 [ %21, %20 ], [ %26, %22 ]
  %29 = and i32 %13, 8
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 0, i32 3
  %32 = or i32 %28, %31
  %33 = and i32 %13, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = or i32 %32, 48
  br label %42

37:                                               ; preds = %27
  %38 = and i32 %13, 32
  %39 = icmp eq i32 %38, 0
  %40 = or i32 %32, 18
  %41 = select i1 %39, i32 %32, i32 %40
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ %36, %35 ], [ %41, %37 ]
  %44 = and i32 %13, 243
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 5, i32 noundef 0) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46, %42
  %50 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 5, i32 noundef %43) #8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %50, %49 ], [ %47, %46 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max77693_add_mode(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 2, !range !9
  %5 = icmp eq i8 %4, 0
  %6 = shl i8 %1, 1
  %7 = select i1 %5, i8 0, i8 %6
  %8 = or i8 %7, %1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 8
  %11 = and i32 %9, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr %10, align 4
  %15 = and i32 %14, -6
  store i32 %15, ptr %10, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = and i32 %9, 32
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %10, align 4
  br i1 %18, label %22, label %20

20:                                               ; preds = %16
  %21 = and i32 %19, -11
  store i32 %21, ptr %10, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ %19, %16 ]
  %24 = trunc i32 %23 to i8
  %25 = or i8 %8, %24
  %26 = getelementptr inbounds %struct.max77693_led_device, ptr %0, i32 0, i32 11
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %25, %27
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %77, label %31

31:                                               ; preds = %22
  store i32 %29, ptr %10, align 4
  %32 = load ptr, ptr %0, align 4
  %33 = and i32 %29, 4
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 12
  %36 = and i32 %29, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = or i32 %35, 192
  br label %45

40:                                               ; preds = %31
  %41 = and i32 %29, 16
  %42 = icmp eq i32 %41, 0
  %43 = or i32 %35, 72
  %44 = select i1 %42, i32 %35, i32 %43
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i32 [ %39, %38 ], [ %44, %40 ]
  %47 = and i32 %29, 8
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 3
  %50 = or i32 %46, %49
  %51 = and i32 %29, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = or i32 %50, 48
  br label %60

55:                                               ; preds = %45
  %56 = and i32 %29, 32
  %57 = icmp eq i32 %56, 0
  %58 = or i32 %50, 18
  %59 = select i1 %57, i32 %50, i32 %58
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = and i8 %28, -13
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 5, i32 noundef 0) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64, %60
  %68 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 5, i32 noundef %61) #8
  %69 = icmp slt i32 %68, 0
  %70 = and i32 %9, 51
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %67
  %74 = xor i32 %9, -1
  %75 = load i32, ptr %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, ptr %10, align 4
  br label %77

77:                                               ; preds = %73, %67, %64, %22
  %78 = phi i32 [ 0, %22 ], [ %68, %67 ], [ %68, %73 ], [ %65, %64 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
