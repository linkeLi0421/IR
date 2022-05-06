; ModuleID = '/llk/IR/drivers/regulator/anatop-regulator.c_pt.bc'
source_filename = "../drivers/regulator/anatop-regulator.c"
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
%struct.anatop_regulator = type { i32, i32, i32, %struct.regulator_desc, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__initcall__kmod_anatop_regulator__247_340_anatop_regulator_init2 = internal global ptr @anatop_regulator_init, section ".initcall2.init", align 4
@anatop_regulator_driver = internal global %struct.platform_driver { ptr @anatop_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_anatop_regulator_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_anatop_regulator_exit = internal global ptr @anatop_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [62 x i8] c"anatop_regulator.author=Nancy Chen <Nancy.Chen@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [70 x i8] c"anatop_regulator.author=Ying-Chun Liu (PaulLiu) <paul.liu@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [53 x i8] c"anatop_regulator.description=ANATOP Regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [57 x i8] c"anatop_regulator.file=drivers/regulator/anatop-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [32 x i8] c"anatop_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [49 x i8] c"anatop_regulator.alias=platform:anatop_regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"anatop_regulator\00", align 1
@of_anatop_regulator_match_tbl = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,anatop-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get a regulator-name\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"anatop-reg-offset\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"no anatop-reg-offset property set\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"anatop-vol-bit-width\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"no anatop-vol-bit-width property set\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"anatop-vol-bit-shift\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"no anatop-vol-bit-shift property set\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"anatop-min-bit-val\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"no anatop-min-bit-val property set\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"anatop-min-voltage\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"no anatop-min-voltage property set\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"anatop-max-voltage\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"no anatop-max-voltage property set\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"anatop-delay-reg-offset\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"anatop-delay-bit-width\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"anatop-delay-bit-shift\00", align 1
@anatop_core_rops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @anatop_regmap_core_set_voltage_sel, ptr null, ptr @anatop_regmap_core_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_enable, ptr @anatop_regmap_disable, ptr @anatop_regmap_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @anatop_regmap_set_bypass, ptr @anatop_regmap_get_bypass, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"failed to read initial state\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"vddpu\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"vddpcie\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"Failed to read a valid default voltage selector.\0A\00", align 1
@anatop_rops = internal global %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"anatop-enable-bit\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"failed to register %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"drivers/regulator/anatop-regulator.c\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_anatop_regulator_exit, ptr @__initcall__kmod_anatop_regulator__247_340_anatop_regulator_init2, ptr @anatop_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @anatop_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @anatop_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @anatop_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @anatop_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #7
  store i32 0, ptr %8, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #7
  store i32 0, ptr %9, align 4, !annotation !8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 264, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %151, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3
  %18 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 12
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 13
  store ptr null, ptr %19, align 4
  %20 = tail call i32 @of_property_read_string(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef %17) #7
  %21 = load ptr, ptr %17, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #8
  br label %151

24:                                               ; preds = %16
  %25 = tail call ptr @of_get_regulator_init_data(ptr noundef %11, ptr noundef %13, ptr noundef %17) #7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %151, label %27

27:                                               ; preds = %24
  store ptr @.str.3, ptr %25, align 4
  %28 = tail call ptr @of_get_parent(ptr noundef %13) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %151, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %28) #7
  tail call void @of_node_put(ptr noundef nonnull %28) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = ptrtoint ptr %31 to i32
  br label %151

35:                                               ; preds = %30
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #8
  br label %151

39:                                               ; preds = %35
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #8
  br label %151

43:                                               ; preds = %39
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  br label %151

47:                                               ; preds = %43
  %48 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #7
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.11) #8
  br label %151

51:                                               ; preds = %47
  %52 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #7
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13) #8
  br label %151

55:                                               ; preds = %51
  %56 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.14, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #7
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.15) #8
  br label %151

59:                                               ; preds = %55
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef nonnull %14, i32 noundef 1, i32 noundef 0) #7
  %61 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 2
  %62 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef %61, i32 noundef 1, i32 noundef 0) #7
  %63 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 1
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %63, i32 noundef 1, i32 noundef 0) #7
  %65 = load i32, ptr %8, align 4
  %66 = load i32, ptr %7, align 4
  %67 = sub i32 %65, %66
  %68 = udiv i32 %67, 25000
  %69 = load i32, ptr %6, align 4
  %70 = add i32 %69, 1
  %71 = add i32 %70, %68
  %72 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 8
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 14
  store i32 %66, ptr %73, align 4
  %74 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 15
  store i32 25000, ptr %74, align 4
  %75 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 16
  store i32 %69, ptr %75, align 4
  %76 = load i32, ptr %3, align 4
  %77 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 27
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %5, align 4
  %79 = shl nsw i32 -1, %78
  %80 = xor i32 %79, -1
  %81 = load i32, ptr %4, align 4
  %82 = shl i32 %80, %81
  %83 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 28
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 19
  store i32 125000, ptr %84, align 4
  store ptr %11, ptr %2, align 4
  %85 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  store ptr %25, ptr %85, align 4
  %86 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %14, ptr %86, align 4
  %87 = load ptr, ptr %12, align 8
  %88 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %31, ptr %89, align 4
  %90 = icmp eq i32 %76, 0
  br i1 %90, label %130, label %91

91:                                               ; preds = %59
  %92 = load i32, ptr %61, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %130, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 10
  store ptr @anatop_core_rops, ptr %95, align 4
  %96 = call i32 @regmap_read(ptr noundef %31, i32 noundef %76, ptr noundef nonnull %9) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19) #8
  br label %151

99:                                               ; preds = %94
  %100 = load i32, ptr %9, align 4
  %101 = load i32, ptr %83, align 4
  %102 = and i32 %101, %100
  %103 = load i32, ptr %4, align 4
  %104 = lshr i32 %102, %103
  %105 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 5
  store i32 %104, ptr %105, align 4
  switch i32 %104, label %118 [
    i32 31, label %106
    i32 0, label %108
  ]

106:                                              ; preds = %99
  store i32 0, ptr %105, align 4
  %107 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 4
  store i8 1, ptr %107, align 4
  br label %108

108:                                              ; preds = %106, %99
  %109 = load ptr, ptr %17, align 4
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef nonnull dereferenceable(6) @.str.20)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %17, align 4
  %114 = call i32 @strcmp(ptr noundef %113, ptr noundef nonnull dereferenceable(8) @.str.21)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112, %108
  %117 = phi i32 [ 22, %108 ], [ 16, %112 ]
  store i32 %117, ptr %105, align 4
  br label %118

118:                                              ; preds = %116, %99
  %119 = phi i32 [ %104, %99 ], [ 22, %116 ]
  %120 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 4
  %121 = load i8, ptr %120, align 4, !range !9
  %122 = icmp eq i8 %121, 0
  %123 = icmp eq i32 %119, 0
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %129, label %141

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 4
  %127 = load i8, ptr %126, align 4, !range !9
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %125, %118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22) #8
  br label %151

130:                                              ; preds = %91, %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #7
  store i32 0, ptr %10, align 4, !annotation !8
  %131 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 10
  store ptr @anatop_rops, ptr %131, align 4
  %132 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef nonnull %10, i32 noundef 1, i32 noundef 0) #7
  %133 = icmp sgt i32 %132, -1
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  store ptr @regulator_enable_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 14), align 4
  store ptr @regulator_disable_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 15), align 4
  store ptr @regulator_is_enabled_regmap, ptr getelementptr inbounds (%struct.regulator_ops, ptr @anatop_rops, i32 0, i32 16), align 4
  %135 = load i32, ptr %3, align 4
  %136 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 34
  store i32 %135, ptr %136, align 4
  %137 = load i32, ptr %10, align 4
  %138 = shl nuw i32 1, %137
  %139 = getelementptr inbounds %struct.anatop_regulator, ptr %14, i32 0, i32 3, i32 35
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %134, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #7
  br label %141

141:                                              ; preds = %140, %125, %118
  %142 = call ptr @devm_regulator_register(ptr noundef %11, ptr noundef %17, ptr noundef nonnull %2) #7
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = icmp eq ptr %142, inttoptr (i32 -517 to ptr)
  br i1 %145, label %151, label %146

146:                                              ; preds = %144
  %147 = ptrtoint ptr %142 to i32
  %148 = load ptr, ptr %17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.24, ptr noundef %148) #8
  br label %151

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %142, ptr %150, align 8
  br label %151

151:                                              ; preds = %149, %146, %144, %129, %98, %58, %54, %50, %46, %42, %38, %33, %27, %24, %23, %1
  %152 = phi i32 [ %34, %33 ], [ %36, %38 ], [ %40, %42 ], [ %44, %46 ], [ %48, %50 ], [ %52, %54 ], [ %56, %58 ], [ %96, %98 ], [ 0, %149 ], [ -22, %129 ], [ -22, %23 ], [ -12, %1 ], [ -12, %24 ], [ -19, %27 ], [ -517, %144 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %152
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_core_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.anatop_regulator, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef %1) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %7, %2
  %14 = getelementptr inbounds %struct.anatop_regulator, ptr %3, i32 0, i32 5
  store i32 %1, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi i32 [ %11, %10 ], [ 0, %13 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_core_get_voltage_sel(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.anatop_regulator, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.anatop_regulator, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  br label %14

12:                                               ; preds = %6
  %13 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %11, %9 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.anatop_regulator, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.anatop_regulator, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 31, %1 ]
  %11 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef %10) #7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_disable(ptr noundef %0) #2 {
  %2 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef 0) #7
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_is_enabled(ptr noundef %0) #2 {
  %2 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.anatop_regulator, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = icmp ugt i32 %2, %1
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %5, align 4
  %15 = call i32 @regmap_read(ptr noundef %13, i32 noundef %14, ptr noundef nonnull %4) #7
  %16 = load i32, ptr %4, align 4
  %17 = getelementptr inbounds %struct.anatop_regulator, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %16, %18
  %20 = load i32, ptr %6, align 4
  %21 = shl nsw i32 -1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = sub i32 %2, %1
  %25 = shl i32 64, %23
  %26 = mul i32 %25, %24
  %27 = udiv i32 %26, 24
  %28 = add nuw nsw i32 %27, 1
  br label %29

29:                                               ; preds = %11, %3
  %30 = phi i32 [ %28, %11 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_set_bypass(ptr noundef %0, i1 noundef zeroext %1) #2 {
  %3 = zext i1 %1 to i8
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.anatop_regulator, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, %3
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  br i1 %1, label %12, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.anatop_regulator, ptr %4, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ %11, %9 ], [ 31, %8 ]
  store i8 %3, ptr %5, align 4
  %14 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef %13) #7
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i32 [ %14, %12 ], [ 0, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @anatop_regmap_get_bypass(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  switch i32 %4, label %9 [
    i32 31, label %5
    i32 0, label %15
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.anatop_regulator, ptr %3, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %15, !prof !10

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.anatop_regulator, ptr %3, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 113, %5 ], [ 115, %9 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef %14, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %13, %9, %5, %2
  %16 = getelementptr inbounds %struct.anatop_regulator, ptr %3, i32 0, i32 4
  %17 = load i8, ptr %16, align 4, !range !9
  store i8 %17, ptr %1, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!11 = !{!"branch_weights", i32 2000, i32 1}
