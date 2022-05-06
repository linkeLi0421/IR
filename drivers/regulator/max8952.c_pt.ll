; ModuleID = '/llk/IR/drivers/regulator/max8952.c_pt.bc'
source_filename = "../drivers/regulator/max8952.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.max8952_platform_data = type { i32, [4 x i32], i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8952_data = type { ptr, ptr, ptr, ptr, i8, i8 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@max8952_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8952\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@max8952_ids = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max8952\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [48 x i8] c"description=MAXIM 8952 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@max8952_pmic_driver = internal global %struct.i2c_driver { i32 0, ptr @max8952_pmic_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8952_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8952_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"max8952\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Require the platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"max8952,en\00", align 1
@regulator = internal constant %struct.regulator_desc { ptr @.str.17, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max8952_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"regulator init failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"max8952,vid\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"VID0/1 gpio invalid: DVS not available.\0A\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"DVS modes disabled because VID0 and VID1 do not have proper controls.\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"max8952,default-mode\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Default mode not specified, assuming 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"max8952,dvs-mode-microvolt\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"max8952,dvs-mode-microvolt property not specified\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"DVS voltage %d out of range\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"max8952,sync-freq\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"max8952,sync-freq property not specified, defaulting to 26MHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"max8952,ramp-speed\00", align 1
@.str.15 = private unnamed_addr constant [66 x i8] c"max8952,ramp-speed property not specified, defaulting to 32mV/us\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"Failed to parse regulator init data\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"MAX8952_VOUT\00", align 1
@max8952_ops = internal constant %struct.regulator_ops { ptr @max8952_list_voltage, ptr null, ptr null, ptr @max8952_set_voltage_sel, ptr null, ptr @max8952_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

@__mod_of__max8952_dt_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @max8952_dt_match
@__mod_i2c__max8952_ids_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @max8952_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @max8952_pmic_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @max8952_pmic_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8952_pmic_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.regulator_config, align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  %9 = getelementptr inbounds i8, ptr %3, i32 16
  store i64 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %2
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 32, i32 noundef 3520) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.7, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 0) #5
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.8) #6
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr %struct.max8952_platform_data, ptr %14, i32 0, i32 1
  %22 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.9, ptr noundef %21, i32 noundef 4, i32 noundef 0) #5
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, ptr %21, align 4
  %26 = add i32 %25, -1400001
  %27 = icmp ult i32 %26, -630001
  br i1 %27, label %29, label %31

28:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.10) #6
  br label %71

29:                                               ; preds = %45, %38, %31, %24
  %30 = phi i32 [ 0, %24 ], [ 1, %31 ], [ 2, %38 ], [ 3, %45 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %30) #6
  br label %71

31:                                               ; preds = %24
  %32 = add nsw i32 %25, -770000
  %33 = udiv i32 %32, 10000
  store i32 %33, ptr %21, align 4
  %34 = getelementptr %struct.max8952_platform_data, ptr %14, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1400001
  %37 = icmp ult i32 %36, -630001
  br i1 %37, label %29, label %38

38:                                               ; preds = %31
  %39 = add nsw i32 %35, -770000
  %40 = udiv i32 %39, 10000
  store i32 %40, ptr %34, align 4
  %41 = getelementptr %struct.max8952_platform_data, ptr %14, i32 0, i32 1, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -1400001
  %44 = icmp ult i32 %43, -630001
  br i1 %44, label %29, label %45

45:                                               ; preds = %38
  %46 = add nsw i32 %42, -770000
  %47 = udiv i32 %46, 10000
  store i32 %47, ptr %41, align 4
  %48 = getelementptr %struct.max8952_platform_data, ptr %14, i32 0, i32 1, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1400001
  %51 = icmp ult i32 %50, -630001
  br i1 %51, label %29, label %52

52:                                               ; preds = %45
  %53 = add nsw i32 %49, -770000
  %54 = udiv i32 %53, 10000
  store i32 %54, ptr %48, align 4
  %55 = getelementptr inbounds %struct.max8952_platform_data, ptr %14, i32 0, i32 2
  %56 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.12, ptr noundef %55, i32 noundef 1, i32 noundef 0) #5
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.13) #6
  br label %59

59:                                               ; preds = %58, %52
  %60 = getelementptr inbounds %struct.max8952_platform_data, ptr %14, i32 0, i32 3
  %61 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.14, ptr noundef %60, i32 noundef 1, i32 noundef 0) #5
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.15) #6
  br label %64

64:                                               ; preds = %63, %59
  %65 = tail call ptr @of_get_regulator_init_data(ptr noundef %6, ptr noundef nonnull %11, ptr noundef nonnull @regulator) #5
  %66 = getelementptr inbounds %struct.max8952_platform_data, ptr %14, i32 0, i32 4
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.16) #6
  br label %71

69:                                               ; preds = %2
  %70 = icmp eq ptr %8, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %69, %68, %29, %28, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #6
  br label %217

72:                                               ; preds = %69, %64
  %73 = phi ptr [ %8, %69 ], [ %14, %64 ]
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.i2c_algorithm, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %5) #5
  %79 = and i32 %78, 393216
  %80 = icmp eq i32 %79, 393216
  br i1 %80, label %81, label %217

81:                                               ; preds = %72
  %82 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 20, i32 noundef 3520) #5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %217, label %84

84:                                               ; preds = %81
  store ptr %0, ptr %82, align 4
  %85 = getelementptr inbounds %struct.max8952_data, ptr %82, i32 0, i32 1
  store ptr %73, ptr %85, align 4
  store ptr %6, ptr %3, align 4
  %86 = getelementptr inbounds %struct.max8952_platform_data, ptr %73, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  store ptr %82, ptr %89, align 4
  %90 = load ptr, ptr %10, align 8
  %91 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 3
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.regulator_init_data, ptr %87, i32 0, i32 1, i32 28
  %93 = load i16, ptr %92, align 4
  %94 = and i16 %93, 2
  %95 = icmp eq i16 %94, 0
  %96 = select i1 %95, i32 19, i32 23
  %97 = tail call ptr @gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef %96) #5
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = ptrtoint ptr %97 to i32
  br label %217

101:                                              ; preds = %84
  %102 = icmp eq ptr %97, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 5
  store ptr %97, ptr %104, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = call ptr @devm_regulator_register(ptr noundef %6, ptr noundef nonnull @regulator, ptr noundef nonnull %3) #5
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = ptrtoint ptr %106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %109) #6
  br label %217

110:                                              ; preds = %105
  %111 = load i32, ptr %73, align 4
  %112 = getelementptr inbounds %struct.max8952_data, ptr %82, i32 0, i32 4
  %113 = trunc i32 %111 to i8
  %114 = and i8 %113, 1
  store i8 %114, ptr %112, align 4
  %115 = load i32, ptr %73, align 4
  %116 = getelementptr inbounds %struct.max8952_data, ptr %82, i32 0, i32 5
  %117 = trunc i32 %115 to i8
  %118 = lshr i8 %117, 1
  %119 = and i8 %118, 1
  store i8 %119, ptr %116, align 1
  %120 = icmp eq i8 %114, 0
  %121 = select i1 %120, i32 3, i32 7
  %122 = call ptr @devm_gpiod_get_index_optional(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %121) #5
  %123 = getelementptr inbounds %struct.max8952_data, ptr %82, i32 0, i32 2
  store ptr %122, ptr %123, align 4
  %124 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %127

125:                                              ; preds = %110
  %126 = ptrtoint ptr %122 to i32
  br label %217

127:                                              ; preds = %110
  %128 = load i8, ptr %116, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  %130 = select i1 %129, i32 3, i32 7
  %131 = call ptr @devm_gpiod_get_index_optional(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %130) #5
  %132 = getelementptr inbounds %struct.max8952_data, ptr %82, i32 0, i32 3
  store ptr %131, ptr %132, align 4
  %133 = icmp ugt ptr %131, inttoptr (i32 -4096 to ptr)
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = ptrtoint ptr %131 to i32
  br label %217

136:                                              ; preds = %127
  %137 = load ptr, ptr %123, align 4
  %138 = icmp eq ptr %137, null
  %139 = icmp eq ptr %131, null
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.5) #6
  store i8 0, ptr %112, align 4
  store i8 0, ptr %116, align 1
  %142 = load ptr, ptr %123, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  call void @gpiod_set_value(ptr noundef nonnull %142, i32 noundef 0) #5
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr %132, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void @gpiod_set_value(ptr noundef nonnull %146, i32 noundef 0) #5
  br label %149

149:                                              ; preds = %148, %145
  %150 = load ptr, ptr %82, align 4
  %151 = call i32 @i2c_smbus_write_byte_data(ptr noundef %150, i8 noundef zeroext 4, i8 noundef zeroext 96) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #6
  br label %155

152:                                              ; preds = %136
  %153 = load ptr, ptr %82, align 4
  %154 = call i32 @i2c_smbus_write_byte_data(ptr noundef %153, i8 noundef zeroext 4, i8 noundef zeroext 0) #5
  br label %155

155:                                              ; preds = %152, %149
  %156 = load ptr, ptr %82, align 4
  %157 = call i32 @i2c_smbus_read_byte_data(ptr noundef %156, i8 noundef zeroext 0) #5
  %158 = and i32 %157, 192
  %159 = getelementptr inbounds %struct.max8952_platform_data, ptr %73, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 63
  %162 = or i32 %161, %158
  %163 = trunc i32 %162 to i8
  %164 = load ptr, ptr %82, align 4
  %165 = call i32 @i2c_smbus_write_byte_data(ptr noundef %164, i8 noundef zeroext 0, i8 noundef zeroext %163) #5
  %166 = load ptr, ptr %82, align 4
  %167 = call i32 @i2c_smbus_read_byte_data(ptr noundef %166, i8 noundef zeroext 1) #5
  %168 = and i32 %167, 192
  %169 = getelementptr %struct.max8952_platform_data, ptr %73, i32 0, i32 1, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = and i32 %170, 63
  %172 = or i32 %171, %168
  %173 = trunc i32 %172 to i8
  %174 = load ptr, ptr %82, align 4
  %175 = call i32 @i2c_smbus_write_byte_data(ptr noundef %174, i8 noundef zeroext 1, i8 noundef zeroext %173) #5
  %176 = load ptr, ptr %82, align 4
  %177 = call i32 @i2c_smbus_read_byte_data(ptr noundef %176, i8 noundef zeroext 2) #5
  %178 = and i32 %177, 192
  %179 = getelementptr %struct.max8952_platform_data, ptr %73, i32 0, i32 1, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 63
  %182 = or i32 %181, %178
  %183 = trunc i32 %182 to i8
  %184 = load ptr, ptr %82, align 4
  %185 = call i32 @i2c_smbus_write_byte_data(ptr noundef %184, i8 noundef zeroext 2, i8 noundef zeroext %183) #5
  %186 = load ptr, ptr %82, align 4
  %187 = call i32 @i2c_smbus_read_byte_data(ptr noundef %186, i8 noundef zeroext 3) #5
  %188 = and i32 %187, 192
  %189 = getelementptr %struct.max8952_platform_data, ptr %73, i32 0, i32 1, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 63
  %192 = or i32 %191, %188
  %193 = trunc i32 %192 to i8
  %194 = load ptr, ptr %82, align 4
  %195 = call i32 @i2c_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext 3, i8 noundef zeroext %193) #5
  %196 = load ptr, ptr %82, align 4
  %197 = call i32 @i2c_smbus_read_byte_data(ptr noundef %196, i8 noundef zeroext 5) #5
  %198 = and i32 %197, 63
  %199 = getelementptr inbounds %struct.max8952_platform_data, ptr %73, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = shl i32 %200, 6
  %202 = or i32 %201, %198
  %203 = trunc i32 %202 to i8
  %204 = load ptr, ptr %82, align 4
  %205 = call i32 @i2c_smbus_write_byte_data(ptr noundef %204, i8 noundef zeroext 5, i8 noundef zeroext %203) #5
  %206 = load ptr, ptr %82, align 4
  %207 = call i32 @i2c_smbus_read_byte_data(ptr noundef %206, i8 noundef zeroext 6) #5
  %208 = and i32 %207, 31
  %209 = getelementptr inbounds %struct.max8952_platform_data, ptr %73, i32 0, i32 3
  %210 = load i32, ptr %209, align 4
  %211 = shl i32 %210, 5
  %212 = or i32 %211, %208
  %213 = trunc i32 %212 to i8
  %214 = load ptr, ptr %82, align 4
  %215 = call i32 @i2c_smbus_write_byte_data(ptr noundef %214, i8 noundef zeroext 6, i8 noundef zeroext %213) #5
  %216 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %82, ptr %216, align 8
  br label %217

217:                                              ; preds = %155, %134, %125, %108, %99, %81, %72, %71
  %218 = phi i32 [ %100, %99 ], [ %109, %108 ], [ %126, %125 ], [ %135, %134 ], [ 0, %155 ], [ -22, %71 ], [ -5, %72 ], [ -12, %81 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret i32 %218
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8952_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #5
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.max8952_data, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.max8952_platform_data, ptr %8, i32 0, i32 1, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, 10000
  %12 = add i32 %11, 770000
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8952_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.max8952_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.max8952_data, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.max8952_data, ptr %3, i32 0, i32 4
  %13 = trunc i32 %1 to i8
  %14 = and i8 %13, 1
  store i8 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.max8952_data, ptr %3, i32 0, i32 5
  %16 = lshr i8 %13, 1
  %17 = and i8 %16, 1
  store i8 %17, ptr %15, align 1
  %18 = zext i8 %14 to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef %18) #5
  %19 = load ptr, ptr %8, align 4
  %20 = load i8, ptr %15, align 1, !range !8
  %21 = zext i8 %20 to i32
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %21) #5
  br label %22

22:                                               ; preds = %11, %7, %2
  %23 = phi i32 [ 0, %11 ], [ -1, %7 ], [ -1, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8952_get_voltage_sel(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.max8952_data, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = getelementptr inbounds %struct.max8952_data, ptr %2, i32 0, i32 5
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  %8 = or i8 %4, 2
  %9 = select i1 %7, i8 %4, i8 %8
  %10 = zext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
