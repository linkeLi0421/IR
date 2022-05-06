; ModuleID = '/llk/IR/drivers/input/touchscreen/resistive-adc-touch.c_pt.bc'
source_filename = "../drivers/input/touchscreen/resistive-adc-touch.c"
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
%struct.grts_state = type { i32, i32, i8, ptr, ptr, ptr, %struct.touchscreen_properties, [5 x i8] }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@grts_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"resistive-adc-touch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author202 = internal constant [51 x i8] c"author=Eugen Hristev <eugen.hristev@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description203 = internal constant [47 x i8] c"description=Generic ADC Resistive Touch Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license204 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@grts_driver = internal global %struct.platform_driver { ptr @grts_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @grts_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [20 x i8] c"resistive-adc-touch\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't get iio channels.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"io-channel-names\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to parse properties\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"touchscreen-min-pressure\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to allocate input device.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register input device.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"failed to allocate callback buffer.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to add disable action.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"z1\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"z2\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"touchscreen-x-plate-ohms\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"can't get touchscreen-x-plate-ohms property\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"failed to start callback buffer.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author202, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_license204], section "llvm.metadata"

@__mod_of__grts_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @grts_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @grts_driver, ptr noundef nonnull @__this_module) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @grts_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @grts_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %106, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_iio_channel_get_all(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, inttoptr (i32 -517 to ptr)
  br i1 %10, label %106, label %11

11:                                               ; preds = %9
  %12 = ptrtoint ptr %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #5
  br label %106

13:                                               ; preds = %5
  %14 = tail call zeroext i1 @device_property_present(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  br i1 %14, label %15, label %106

15:                                               ; preds = %13
  %16 = tail call i32 @device_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %15
  %19 = icmp ugt i32 %16, 3
  br i1 %19, label %57, label %20

20:                                               ; preds = %18
  %21 = trunc i32 %16 to i8
  %22 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 0
  store i8 %21, ptr %22, align 1
  %23 = tail call i32 @device_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %20
  %26 = icmp ugt i32 %23, 3
  br i1 %26, label %57, label %27

27:                                               ; preds = %25
  %28 = trunc i32 %23 to i8
  %29 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 1
  store i8 %28, ptr %29, align 1
  %30 = tail call i32 @device_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 2
  store i8 4, ptr %33, align 1
  %34 = tail call i32 @device_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %62, label %41

36:                                               ; preds = %27
  %37 = icmp ugt i32 %30, 3
  br i1 %37, label %57, label %38

38:                                               ; preds = %36
  %39 = trunc i32 %30 to i8
  %40 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 2
  store i8 %39, ptr %40, align 1
  br label %59

41:                                               ; preds = %32
  %42 = icmp ugt i32 %34, 3
  br i1 %42, label %57, label %43

43:                                               ; preds = %41
  %44 = trunc i32 %34 to i8
  %45 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 3
  store i8 %44, ptr %45, align 1
  %46 = tail call i32 @device_property_match_string(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.13) #4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = icmp ugt i32 %46, 3
  br i1 %49, label %57, label %50

50:                                               ; preds = %48, %43
  %51 = phi i32 [ %46, %48 ], [ 4, %43 ]
  %52 = trunc i32 %51 to i8
  %53 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 4
  store i8 %52, ptr %53, align 1
  %54 = tail call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %3, i32 noundef 1) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15) #5
  br label %57

57:                                               ; preds = %56, %48, %41, %36, %25, %20, %18, %15
  %58 = phi i32 [ -75, %25 ], [ %23, %20 ], [ -75, %18 ], [ %16, %15 ], [ -75, %48 ], [ -75, %41 ], [ -75, %36 ], [ %54, %56 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %106

59:                                               ; preds = %50, %38
  %60 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 2
  store i8 1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 2
  br label %68

62:                                               ; preds = %32
  %63 = getelementptr %struct.grts_state, ptr %3, i32 0, i32 7, i32 3
  store i8 4, ptr %63, align 1
  %64 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 2
  %65 = load i8, ptr %64, align 4, !range !8
  %66 = icmp eq i8 %65, 0
  %67 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 2
  br i1 %66, label %74, label %68

68:                                               ; preds = %62, %59
  %69 = phi ptr [ %61, %59 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 1
  %71 = tail call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %70, i32 noundef 1) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 50000, ptr %70, align 4
  br label %74

74:                                               ; preds = %73, %68, %62
  %75 = phi ptr [ %69, %68 ], [ %69, %73 ], [ %67, %62 ]
  %76 = tail call ptr @devm_input_allocate_device(ptr noundef %2) #4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %106

79:                                               ; preds = %74
  store ptr @.str, ptr %76, align 8
  %80 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 3
  store i16 25, ptr %80, align 4
  %81 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 31
  store ptr @grts_open, ptr %81, align 4
  %82 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 32
  store ptr @grts_close, ptr %82, align 8
  tail call void @input_set_abs_params(ptr noundef nonnull %76, i32 noundef 0, i32 noundef 0, i32 noundef 4094, i32 noundef 0, i32 noundef 0) #4
  tail call void @input_set_abs_params(ptr noundef nonnull %76, i32 noundef 1, i32 noundef 0, i32 noundef 4094, i32 noundef 0, i32 noundef 0) #4
  %83 = load i8, ptr %75, align 4, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %76, i32 noundef 24, i32 noundef %87, i32 noundef 65535, i32 noundef 0, i32 noundef 0) #4
  br label %88

88:                                               ; preds = %85, %79
  tail call void @input_set_capability(ptr noundef nonnull %76, i32 noundef 1, i32 noundef 330) #4
  %89 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 6
  tail call void @touchscreen_parse_properties(ptr noundef nonnull %76, i1 noundef zeroext false, ptr noundef %89) #4
  %90 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 5
  store ptr %76, ptr %90, align 4
  %91 = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 40, i32 8
  store ptr %3, ptr %91, align 8
  %92 = tail call i32 @input_register_device(ptr noundef nonnull %76) #4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  br label %106

95:                                               ; preds = %88
  %96 = tail call ptr @iio_channel_get_all_cb(ptr noundef %2, ptr noundef nonnull @grts_cb, ptr noundef nonnull %3) #4
  %97 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 4
  store ptr %96, ptr %97, align 4
  %98 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #5
  %100 = load ptr, ptr %97, align 4
  %101 = ptrtoint ptr %100 to i32
  br label %106

102:                                              ; preds = %95
  %103 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @grts_disable, ptr noundef %96) #4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void @iio_channel_release_all_cb(ptr noundef %96) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  br label %106

106:                                              ; preds = %105, %102, %99, %94, %78, %57, %13, %11, %9, %1
  %107 = phi i32 [ %58, %57 ], [ %92, %94 ], [ %101, %99 ], [ %103, %105 ], [ -12, %78 ], [ -12, %1 ], [ %12, %11 ], [ -517, %9 ], [ -19, %13 ], [ 0, %102 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @grts_open(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @iio_channel_start_all_cb(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #5
  br label %11

11:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @grts_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.grts_state, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @iio_channel_stop_all_cb(ptr noundef %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get_all_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @grts_cb(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = getelementptr i16, ptr %0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.grts_state, ptr %1, i32 0, i32 7, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i16, ptr %0, i32 %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr %struct.grts_state, ptr %1, i32 0, i32 7, i32 2
  %16 = load i8, ptr %15, align 2
  %17 = icmp ult i8 %16, 4
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = zext i8 %16 to i32
  %20 = getelementptr i16, ptr %0, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  br label %54

23:                                               ; preds = %2
  %24 = getelementptr %struct.grts_state, ptr %1, i32 0, i32 7, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = icmp ult i8 %25, 4
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = zext i8 %25 to i32
  %29 = getelementptr i16, ptr %0, i32 %28
  %30 = load i16, ptr %29, align 2
  %31 = icmp ne i16 %7, 0
  %32 = icmp ne i16 %30, 0
  %33 = select i1 %31, i1 %32, i1 false, !prof !9
  br i1 %33, label %34, label %54, !prof !9

34:                                               ; preds = %27
  %35 = zext i16 %30 to i32
  %36 = getelementptr %struct.grts_state, ptr %1, i32 0, i32 7, i32 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr i16, ptr %0, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  %42 = sub nsw i32 %41, %35
  %43 = load i32, ptr %1, align 4
  %44 = mul i32 %42, %43
  %45 = add i32 %44, 8
  %46 = lshr i32 %45, 4
  %47 = mul i32 %46, %8
  %48 = udiv i32 %47, %35
  %49 = add i32 %48, 128
  %50 = icmp ult i32 %49, 16776960
  br i1 %50, label %51, label %59

51:                                               ; preds = %34
  %52 = lshr i32 %49, 8
  %53 = sub nuw nsw i32 65535, %52
  br label %59

54:                                               ; preds = %27, %23, %18
  %55 = phi i32 [ %22, %18 ], [ 0, %23 ], [ 0, %27 ]
  %56 = icmp ne i16 %7, 0
  %57 = icmp ne i16 %13, 0
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54, %51, %34
  %60 = phi i32 [ %55, %54 ], [ 0, %34 ], [ %53, %51 ]
  %61 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 2
  %62 = load i8, ptr %61, align 4, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %60, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %54
  %69 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 5
  br label %78

70:                                               ; preds = %64, %59
  %71 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.grts_state, ptr %1, i32 0, i32 6
  tail call void @touchscreen_report_pos(ptr noundef %72, ptr noundef %73, i32 noundef %8, i32 noundef %14, i1 noundef zeroext false) #4
  %74 = load i8, ptr %61, align 4, !range !8
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 4
  tail call void @input_event(ptr noundef %77, i32 noundef 3, i32 noundef 24, i32 noundef %60) #4
  br label %78

78:                                               ; preds = %76, %70, %68
  %79 = phi ptr [ %69, %68 ], [ %71, %76 ], [ %71, %70 ]
  %80 = phi i32 [ 0, %68 ], [ 1, %76 ], [ 1, %70 ]
  %81 = load ptr, ptr %79, align 4
  tail call void @input_event(ptr noundef %81, i32 noundef 1, i32 noundef 330, i32 noundef %80) #4
  %82 = load ptr, ptr %79, align 4
  tail call void @input_event(ptr noundef %82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @grts_disable(ptr noundef %0) #2 {
  tail call void @iio_channel_release_all_cb(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_channel_start_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_stop_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release_all_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 2000, i32 1}
