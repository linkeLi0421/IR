; ModuleID = '/llk/IR/drivers/regulator/gpio-regulator.c_pt.bc'
source_filename = "../drivers/regulator/gpio-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gpio_regulator_config = type { ptr, i8, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.gpio_regulator_state = type { i32, i32 }
%struct.gpio_regulator_data = type { %struct.regulator_desc, ptr, i32, ptr, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_gpio_regulator__247_364_gpio_regulator_init4 = internal global ptr @gpio_regulator_init, section ".initcall4.init", align 4
@gpio_regulator_driver = internal global %struct.platform_driver { ptr @gpio_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @regulator_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_gpio_regulator_exit = internal global ptr @gpio_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [55 x i8] c"gpio_regulator.author=Heiko Stuebner <heiko@sntech.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [50 x i8] c"gpio_regulator.description=gpio voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [53 x i8] c"gpio_regulator.file=drivers/regulator/gpio-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [27 x i8] c"gpio_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [45 x i8] c"gpio_regulator.alias=platform:gpio-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"gpio-regulator\00", align 1
@regulator_gpio_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate supply name\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate state data\0A\00", align 1
@gpio_regulator_voltage_ops = internal constant %struct.regulator_ops { ptr @gpio_regulator_list_voltage, ptr @gpio_regulator_set_voltage, ptr null, ptr null, ptr @gpio_regulator_get_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gpio_regulator_current_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_regulator_set_current_limit, ptr @gpio_regulator_get_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"No regulator type set\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"enable-at-boot\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"startup-delay-us\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"gpios-states\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"No 'states' property found\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"regulator-type\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Unknown regulator-type '%s'\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_gpio_regulator_exit, ptr @__initcall__kmod_gpio_regulator__247_364_gpio_regulator_init4, ptr @gpio_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @gpio_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_regulator_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @gpio_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_regulator_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 264, i32 noundef 3520) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %226, label %12

12:                                               ; preds = %1
  %13 = icmp eq ptr %9, null
  br i1 %13, label %118, label %14

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %111, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @of_get_regulator_init_data(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10) #8
  %19 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 8
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %111, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.regulator_init_data, ptr %18, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  store ptr %23, ptr %15, align 4
  %24 = getelementptr inbounds %struct.regulator_init_data, ptr %18, i32 0, i32 1, i32 28
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.6, ptr noundef null) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = or i8 %37, 1
  store i8 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 2
  %41 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.7, ptr noundef %40, i32 noundef 1, i32 noundef 0) #8
  %42 = tail call i32 @gpiod_count(ptr noundef %5, ptr noundef null) #8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = shl i32 %42, 2
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %45, i32 noundef 3520) #8
  %47 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %111, label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %59, %49 ], [ 0, %44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %51 = call i32 @of_property_read_u32_index(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, i32 noundef %50, ptr noundef nonnull %3) #8
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  %56 = select i1 %55, i32 3, i32 7
  %57 = load ptr, ptr %47, align 4
  %58 = getelementptr i32, ptr %57, i32 %50
  store i32 %56, ptr %58, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %59 = add nuw nsw i32 %50, 1
  %60 = icmp eq i32 %59, %42
  br i1 %60, label %61, label %49

61:                                               ; preds = %49, %39
  %62 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 4
  store i32 %42, ptr %62, align 4
  %63 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, i32 noundef 4) #8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #9
  br label %111

66:                                               ; preds = %61
  %67 = lshr i32 %63, 1
  %68 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %67, i32 8) #8
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %70, label %72, !prof !9

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 5
  store ptr null, ptr %71, align 4
  br label %111

72:                                               ; preds = %66
  %73 = extractvalue { i32, i1 } %68, 0
  %74 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef %73, i32 noundef 3520) #8
  %75 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 5
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %111, label %77

77:                                               ; preds = %72
  %78 = icmp ult i32 %63, 2
  br i1 %78, label %95, label %79

79:                                               ; preds = %77
  %80 = call i32 @llvm.umax.i32(i32 %67, i32 1) #8
  br label %81

81:                                               ; preds = %93, %79
  %82 = phi ptr [ %94, %93 ], [ %74, %79 ]
  %83 = phi i32 [ %91, %93 ], [ 0, %79 ]
  %84 = shl nuw i32 %83, 1
  %85 = getelementptr %struct.gpio_regulator_state, ptr %82, i32 %83
  %86 = call i32 @of_property_read_u32_index(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, i32 noundef %84, ptr noundef %85) #8
  %87 = or i32 %84, 1
  %88 = load ptr, ptr %75, align 4
  %89 = getelementptr %struct.gpio_regulator_state, ptr %88, i32 %83, i32 1
  %90 = call i32 @of_property_read_u32_index(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, i32 noundef %87, ptr noundef %89) #8
  %91 = add nuw nsw i32 %83, 1
  %92 = icmp eq i32 %91, %80
  br i1 %92, label %95, label %93

93:                                               ; preds = %81
  %94 = load ptr, ptr %75, align 4
  br label %81

95:                                               ; preds = %81, %77
  %96 = phi i32 [ 0, %77 ], [ %80, %81 ]
  %97 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 6
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.gpio_regulator_config, ptr %15, i32 0, i32 7
  store i32 0, ptr %98, align 4
  %99 = call i32 @of_property_read_string(ptr noundef nonnull %9, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #8
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load ptr, ptr %2, align 4
  %103 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.12, ptr noundef %102, i32 noundef 7) #8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, ptr %98, align 4
  br label %113

106:                                              ; preds = %101
  %107 = call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @.str.13, ptr noundef %102, i32 noundef 7) #8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 1, ptr %98, align 4
  br label %113

110:                                              ; preds = %106
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef %102) #9
  br label %113

111:                                              ; preds = %72, %70, %65, %44, %17, %14
  %112 = phi ptr [ inttoptr (i32 -12 to ptr), %72 ], [ inttoptr (i32 -12 to ptr), %70 ], [ inttoptr (i32 -12 to ptr), %44 ], [ inttoptr (i32 -22 to ptr), %17 ], [ inttoptr (i32 -12 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %115

113:                                              ; preds = %110, %109, %105, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %114 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %118

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %112, %111 ], [ %15, %113 ]
  %117 = ptrtoint ptr %116 to i32
  br label %226

118:                                              ; preds = %113, %12
  %119 = phi ptr [ %15, %113 ], [ %7, %12 ]
  %120 = load ptr, ptr %119, align 4
  %121 = call noalias ptr @devm_kstrdup(ptr noundef %5, ptr noundef %120, i32 noundef 3264) #8
  store ptr %121, ptr %10, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %226

124:                                              ; preds = %118
  %125 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 4, i32 noundef 3520) #8
  %126 = getelementptr inbounds %struct.gpio_regulator_data, ptr %10, i32 0, i32 1
  store ptr %125, ptr %126, align 4
  %127 = icmp eq ptr %125, null
  br i1 %127, label %226, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 4
  %130 = load i32, ptr %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %154

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 3
  br label %134

134:                                              ; preds = %148, %132
  %135 = phi i32 [ 0, %132 ], [ %151, %148 ]
  %136 = load ptr, ptr %133, align 4
  %137 = getelementptr i32, ptr %136, i32 %135
  %138 = load i32, ptr %137, align 4
  %139 = call ptr @devm_gpiod_get_index(ptr noundef %5, ptr noundef null, i32 noundef %135, i32 noundef %138) #8
  %140 = load ptr, ptr %126, align 4
  %141 = getelementptr ptr, ptr %140, i32 %135
  store ptr %139, ptr %141, align 4
  %142 = load ptr, ptr %126, align 4
  %143 = getelementptr ptr, ptr %142, i32 %135
  %144 = load ptr, ptr %143, align 4
  %145 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = ptrtoint ptr %144 to i32
  br label %226

148:                                              ; preds = %134
  %149 = load ptr, ptr %10, align 4
  %150 = call i32 @gpiod_set_consumer_name(ptr noundef %144, ptr noundef %149) #8
  %151 = add nuw nsw i32 %135, 1
  %152 = load i32, ptr %129, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %134, label %154

154:                                              ; preds = %148, %128
  %155 = phi i32 [ %130, %128 ], [ %152, %148 ]
  %156 = getelementptr inbounds %struct.gpio_regulator_data, ptr %10, i32 0, i32 2
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 5
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = shl i32 %160, 3
  %162 = call ptr @devm_kmemdup(ptr noundef %5, ptr noundef %158, i32 noundef %161, i32 noundef 3264) #8
  %163 = getelementptr inbounds %struct.gpio_regulator_data, ptr %10, i32 0, i32 3
  store ptr %162, ptr %163, align 4
  %164 = icmp eq ptr %162, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #9
  br label %226

166:                                              ; preds = %154
  %167 = load i32, ptr %159, align 4
  %168 = getelementptr inbounds %struct.gpio_regulator_data, ptr %10, i32 0, i32 4
  store i32 %167, ptr %168, align 4
  %169 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 13
  store ptr null, ptr %169, align 4
  %170 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 2
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 57
  store i32 %171, ptr %172, align 4
  %173 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 7
  %174 = load i32, ptr %173, align 4
  switch i32 %174, label %183 [
    i32 0, label %175
    i32 1, label %180
  ]

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 12
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 10
  store ptr @gpio_regulator_voltage_ops, ptr %177, align 4
  %178 = load i32, ptr %159, align 4
  %179 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 8
  store i32 %178, ptr %179, align 4
  br label %184

180:                                              ; preds = %166
  %181 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 12
  store i32 1, ptr %181, align 4
  %182 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 10
  store ptr @gpio_regulator_current_ops, ptr %182, align 4
  br label %184

183:                                              ; preds = %166
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3) #9
  br label %226

184:                                              ; preds = %180, %175
  %185 = load i32, ptr %156, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 3
  %189 = load ptr, ptr %188, align 4
  br label %190

190:                                              ; preds = %190, %187
  %191 = phi i32 [ 0, %187 ], [ %198, %190 ]
  %192 = phi i32 [ 0, %187 ], [ %199, %190 ]
  %193 = getelementptr i32, ptr %189, i32 %192
  %194 = load i32, ptr %193, align 4
  %195 = icmp eq i32 %194, 7
  %196 = shl nuw i32 1, %192
  %197 = select i1 %195, i32 %196, i32 0
  %198 = or i32 %197, %191
  %199 = add nuw nsw i32 %192, 1
  %200 = icmp eq i32 %199, %185
  br i1 %200, label %201, label %190

201:                                              ; preds = %190, %184
  %202 = phi i32 [ 0, %184 ], [ %198, %190 ]
  %203 = getelementptr inbounds %struct.gpio_regulator_data, ptr %10, i32 0, i32 5
  store i32 %202, ptr %203, align 4
  store ptr %5, ptr %4, align 4
  %204 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 8
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr %205, ptr %206, align 4
  %207 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %10, ptr %207, align 4
  %208 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr %9, ptr %208, align 4
  %209 = getelementptr inbounds %struct.gpio_regulator_config, ptr %119, i32 0, i32 1
  %210 = load i8, ptr %209, align 4
  %211 = and i8 %210, 1
  %212 = icmp eq i8 %211, 0
  %213 = select i1 %212, i32 19, i32 23
  %214 = call ptr @gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %213) #8
  %215 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 5
  store ptr %214, ptr %215, align 4
  %216 = icmp ugt ptr %214, inttoptr (i32 -4096 to ptr)
  br i1 %216, label %217, label %219

217:                                              ; preds = %201
  %218 = ptrtoint ptr %214 to i32
  br label %226

219:                                              ; preds = %201
  %220 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef nonnull %10, ptr noundef nonnull %4) #8
  %221 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = ptrtoint ptr %220 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %223) #9
  br label %226

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %225, align 8
  br label %226

226:                                              ; preds = %224, %222, %217, %183, %165, %146, %124, %123, %115, %1
  %227 = phi i32 [ %117, %115 ], [ -12, %123 ], [ %147, %146 ], [ -12, %165 ], [ -22, %183 ], [ %218, %217 ], [ %223, %222 ], [ 0, %224 ], [ -12, %1 ], [ -12, %124 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret i32 %227
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_regulator_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.gpio_regulator_data, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gpio_regulator_data, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.gpio_regulator_state, ptr %9, i32 %1
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ -22, %2 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_regulator_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) #2 {
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.gpio_regulator_data, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gpio_regulator_data, ptr %5, i32 0, i32 3
  %11 = icmp eq ptr %3, null
  br label %12

12:                                               ; preds = %30, %9
  %13 = phi i32 [ %7, %9 ], [ %31, %30 ]
  %14 = phi i32 [ 2147483647, %9 ], [ %33, %30 ]
  %15 = phi i32 [ 0, %9 ], [ %32, %30 ]
  %16 = phi i32 [ 0, %9 ], [ %34, %30 ]
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr %struct.gpio_regulator_state, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = icmp sge i32 %19, %14
  %21 = icmp slt i32 %19, %1
  %22 = or i1 %20, %21
  %23 = icmp sgt i32 %19, %2
  %24 = or i1 %23, %22
  br i1 %24, label %30, label %25

25:                                               ; preds = %12
  %26 = getelementptr %struct.gpio_regulator_state, ptr %17, i32 %16, i32 1
  %27 = load i32, ptr %26, align 4
  br i1 %11, label %30, label %28

28:                                               ; preds = %25
  store i32 %16, ptr %3, align 4
  %29 = load i32, ptr %6, align 4
  br label %30

30:                                               ; preds = %28, %25, %12
  %31 = phi i32 [ %29, %28 ], [ %13, %25 ], [ %13, %12 ]
  %32 = phi i32 [ %27, %28 ], [ %27, %25 ], [ %15, %12 ]
  %33 = phi i32 [ %19, %28 ], [ %19, %25 ], [ %14, %12 ]
  %34 = add nuw nsw i32 %16, 1
  %35 = icmp slt i32 %34, %31
  br i1 %35, label %12, label %36

36:                                               ; preds = %30
  %37 = icmp eq i32 %33, 2147483647
  br i1 %37, label %57, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.gpio_regulator_data, ptr %5, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gpio_regulator_data, ptr %5, i32 0, i32 1
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ 0, %42 ], [ %52, %44 ]
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %32
  %48 = ashr i32 %47, %45
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr ptr, ptr %49, i32 %45
  %51 = load ptr, ptr %50, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %51, i32 noundef %48) #8
  %52 = add nuw nsw i32 %45, 1
  %53 = load i32, ptr %39, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %44, label %55

55:                                               ; preds = %44, %38
  %56 = getelementptr inbounds %struct.gpio_regulator_data, ptr %5, i32 0, i32 5
  store i32 %32, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %36, %4
  %58 = phi i32 [ 0, %55 ], [ -22, %36 ], [ -22, %4 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_regulator_get_value(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.gpio_regulator_data, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gpio_regulator_data, ptr %2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.gpio_regulator_data, ptr %2, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %19, %6
  %12 = phi i32 [ 0, %6 ], [ %20, %19 ]
  %13 = getelementptr %struct.gpio_regulator_state, ptr %8, i32 %12, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = getelementptr %struct.gpio_regulator_state, ptr %8, i32 %12
  %18 = load i32, ptr %17, align 4
  br label %22

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %11

22:                                               ; preds = %19, %16, %1
  %23 = phi i32 [ %18, %16 ], [ -22, %1 ], [ -22, %19 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gpio_regulator_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.gpio_regulator_data, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gpio_regulator_data, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %25, %8
  %12 = phi i32 [ 0, %8 ], [ %27, %25 ]
  %13 = phi i32 [ 0, %8 ], [ %26, %25 ]
  %14 = phi i32 [ 0, %8 ], [ %28, %25 ]
  %15 = getelementptr %struct.gpio_regulator_state, ptr %10, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp sle i32 %16, %12
  %18 = icmp slt i32 %16, %1
  %19 = or i1 %17, %18
  %20 = icmp sgt i32 %16, %2
  %21 = or i1 %20, %19
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = getelementptr %struct.gpio_regulator_state, ptr %10, i32 %14, i32 1
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = phi i32 [ %24, %22 ], [ %13, %11 ]
  %27 = phi i32 [ %16, %22 ], [ %12, %11 ]
  %28 = add nuw nsw i32 %14, 1
  %29 = icmp eq i32 %28, %6
  br i1 %29, label %30, label %11

30:                                               ; preds = %25
  %31 = icmp eq i32 %27, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.gpio_regulator_data, ptr %4, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gpio_regulator_data, ptr %4, i32 0, i32 1
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i32 [ 0, %36 ], [ %46, %38 ]
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %26
  %42 = ashr i32 %41, %39
  %43 = load ptr, ptr %37, align 4
  %44 = getelementptr ptr, ptr %43, i32 %39
  %45 = load ptr, ptr %44, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %45, i32 noundef %42) #8
  %46 = add nuw nsw i32 %39, 1
  %47 = load i32, ptr %33, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %38, label %49

49:                                               ; preds = %38, %32
  %50 = getelementptr inbounds %struct.gpio_regulator_data, ptr %4, i32 0, i32 5
  store i32 %26, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %30, %3
  %52 = phi i32 [ 0, %49 ], [ -22, %30 ], [ -22, %3 ]
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
