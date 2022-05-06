; ModuleID = '/llk/IR/drivers/regulator/fixed.c_pt.bc'
source_filename = "../drivers/regulator/fixed.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fixed_dev_type = type { i8, i8 }
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
%struct.fixed_voltage_config = type { ptr, ptr, i32, i32, i32, i8, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.fixed_voltage_data = type { %struct.regulator_desc, ptr, ptr, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_fixed__247_348_regulator_fixed_voltage_init4 = internal global ptr @regulator_fixed_voltage_init, section ".initcall4.init", align 4
@regulator_fixed_voltage_driver = internal global %struct.platform_driver { ptr @reg_fixed_voltage_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fixed_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_regulator_fixed_voltage_exit = internal global ptr @regulator_fixed_voltage_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [62 x i8] c"fixed.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [42 x i8] c"fixed.description=Fixed voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [35 x i8] c"fixed.file=drivers/regulator/fixed\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [18 x i8] c"fixed.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [39 x i8] c"fixed.alias=platform:reg-fixed-voltage\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"reg-fixed-voltage\00", align 1
@fixed_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_voltage_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_clkenable_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"regulator-fixed-domain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fixed_domain_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate supply name\0A\00", align 1
@fixed_voltage_clkenabled_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_clock_enable, ptr @reg_clock_disable, ptr @reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Can't get enable-clock from devicetree\0A\00", align 1
@fixed_voltage_domain_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @reg_domain_enable, ptr @reg_domain_disable, ptr @reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Can't get performance state from devicetree\0A\00", align 1
@fixed_voltage_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate input supply\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"can't get GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to register regulator: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Fixed regulator specified with variable voltages\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"startup-delay-us\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"off-on-delay-us\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vin-supply\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@fixed_voltage_data = internal constant %struct.fixed_dev_type zeroinitializer, align 1
@fixed_clkenable_data = internal constant %struct.fixed_dev_type { i8 1, i8 0 }, align 1
@fixed_domain_data = internal constant %struct.fixed_dev_type { i8 0, i8 1 }, align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_regulator_fixed_voltage_exit, ptr @__initcall__kmod_fixed__247_348_regulator_fixed_voltage_init4, ptr @regulator_fixed_voltage_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @regulator_fixed_voltage_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @regulator_fixed_voltage_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @regulator_fixed_voltage_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @regulator_fixed_voltage_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_fixed_voltage_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 260, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %142, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %7
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8
  %16 = tail call ptr @of_get_regulator_init_data(ptr noundef %3, ptr noundef %15, ptr noundef nonnull %5) #6
  %17 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 6
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.regulator_init_data, ptr %16, i32 0, i32 1
  %21 = getelementptr inbounds %struct.regulator_init_data, ptr %16, i32 0, i32 1, i32 28
  %22 = load i16, ptr %21, align 4
  %23 = and i16 %22, -5
  store i16 %23, ptr %21, align 4
  %24 = load ptr, ptr %20, align 4
  store ptr %24, ptr %12, align 4
  %25 = getelementptr inbounds %struct.regulator_init_data, ptr %16, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.regulator_init_data, ptr %16, i32 0, i32 1, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 2
  store i32 %26, ptr %31, align 4
  %32 = load i16, ptr %21, align 4
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %40, label %36

35:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %51

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 5
  %38 = load i8, ptr %37, align 4
  %39 = or i8 %38, 1
  store i8 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 3
  %42 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, ptr noundef %41, i32 noundef 1, i32 noundef 0) #6
  %43 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 4
  %44 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.9, ptr noundef %43, i32 noundef 1, i32 noundef 0) #6
  %45 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.fixed_voltage_config, ptr %12, i32 0, i32 1
  store ptr @.str.11, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %40
  %50 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %58

51:                                               ; preds = %49, %35, %14, %11
  %52 = phi ptr [ %12, %49 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -12 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %35 ]
  %53 = ptrtoint ptr %52 to i32
  br label %142

54:                                               ; preds = %7
  %55 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %142, label %58

58:                                               ; preds = %54, %49
  %59 = phi ptr [ %56, %54 ], [ %12, %49 ]
  %60 = load ptr, ptr %59, align 4
  %61 = tail call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef %60, i32 noundef 3264) #6
  store ptr %61, ptr %5, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %142

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 12
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 13
  store ptr null, ptr %66, align 4
  %67 = icmp eq ptr %4, null
  br i1 %67, label %89, label %68

68:                                               ; preds = %64
  %69 = load i8, ptr %4, align 1, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  store ptr @fixed_voltage_clkenabled_ops, ptr %72, align 4
  %73 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %74 = getelementptr inbounds %struct.fixed_voltage_data, ptr %5, i32 0, i32 2
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %142

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.fixed_dev_type, ptr %4, i32 0, i32 1
  %79 = load i8, ptr %78, align 1, !range !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  store ptr @fixed_voltage_domain_ops, ptr %82, align 4
  %83 = load ptr, ptr %8, align 8
  %84 = tail call i32 @of_get_required_opp_performance_state(ptr noundef %83, i32 noundef 0) #6
  %85 = getelementptr inbounds %struct.fixed_voltage_data, ptr %5, i32 0, i32 4
  store i32 %84, ptr %85, align 4
  %86 = icmp slt i32 %84, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  %88 = load i32, ptr %85, align 4
  br label %142

89:                                               ; preds = %77, %64
  %90 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  store ptr @fixed_voltage_ops, ptr %90, align 4
  br label %91

91:                                               ; preds = %89, %81, %71
  %92 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 57
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 58
  store i32 %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %91
  %102 = tail call noalias ptr @devm_kstrdup(ptr noundef %3, ptr noundef nonnull %99, i32 noundef 3264) #6
  %103 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  %104 = icmp eq ptr %102, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %142

106:                                              ; preds = %101, %91
  %107 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 8
  store i32 1, ptr %111, align 4
  %112 = load i32, ptr %107, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i32 [ %112, %110 ], [ 0, %106 ]
  %115 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 17
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 5
  %117 = load i8, ptr %116, align 4
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i32 19, i32 23
  %121 = tail call ptr @gpiod_get_optional(ptr noundef %3, ptr noundef null, i32 noundef %120) #6
  %122 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 5
  store ptr %121, ptr %122, align 4
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = ptrtoint ptr %121 to i32
  %126 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %125, ptr noundef nonnull @.str.5) #6
  br label %142

127:                                              ; preds = %113
  store ptr %3, ptr %2, align 4
  %128 = getelementptr inbounds %struct.fixed_voltage_config, ptr %59, i32 0, i32 6
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  store ptr %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %5, ptr %131, align 4
  %132 = load ptr, ptr %8, align 8
  %133 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  store ptr %132, ptr %133, align 4
  %134 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef nonnull %5, ptr noundef nonnull %2) #6
  %135 = getelementptr inbounds %struct.fixed_voltage_data, ptr %5, i32 0, i32 1
  store ptr %134, ptr %135, align 4
  %136 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %136, label %137, label %140

137:                                              ; preds = %127
  %138 = ptrtoint ptr %134 to i32
  %139 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %138, ptr noundef nonnull @.str.6, i32 noundef %138) #6
  br label %142

140:                                              ; preds = %127
  %141 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %141, align 8
  br label %142

142:                                              ; preds = %140, %137, %124, %105, %87, %76, %63, %54, %51, %1
  %143 = phi i32 [ %53, %51 ], [ -12, %63 ], [ -2, %76 ], [ %126, %124 ], [ %139, %137 ], [ 0, %140 ], [ -12, %105 ], [ %88, %87 ], [ -12, %1 ], [ -12, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %143
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_required_opp_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_clock_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #6
  br label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %10, %1
  %16 = phi i32 [ 0, %11 ], [ %8, %10 ], [ %5, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_clock_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %4) #6
  tail call void @clk_unprepare(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_domain_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %4, i32 noundef %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reg_domain_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @dev_pm_genpd_set_performance_state(ptr noundef %4, i32 noundef 0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fixed_voltage_data, ptr %2, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_genpd_set_performance_state(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
