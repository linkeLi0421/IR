; ModuleID = '/llk/IR/drivers/regulator/pbias-regulator.c_pt.bc'
source_filename = "../drivers/regulator/pbias-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pbias_reg_info = type { i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.pbias_of_data = type { i32 }
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
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }

@__initcall__kmod_pbias_regulator__247_238_pbias_regulator_driver_init6 = internal global ptr @pbias_regulator_driver_init, section ".initcall6.init", align 4
@pbias_regulator_driver = internal global %struct.platform_driver { ptr @pbias_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pbias_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_pbias_regulator_driver_exit = internal global ptr @pbias_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [52 x i8] c"pbias_regulator.author=Balaji T K <balajitk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [52 x i8] c"pbias_regulator.description=pbias voltage regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [55 x i8] c"pbias_regulator.file=drivers/regulator/pbias-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [28 x i8] c"pbias_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [47 x i8] c"pbias_regulator.alias=platform:pbias-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"pbias-regulator\00", align 1
@pbias_of_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-omap5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_omap5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pbias-dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pbias_of_data_dra7 }, %struct.of_device_id zeroinitializer], align 4
@pbias_matches = internal global [4 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.5, ptr @pbias_mmc_omap2430, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.6, ptr @pbias_sim_omap3, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.7, ptr @pbias_mmc_omap4, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.8, ptr @pbias_mmc_omap5, ptr null, ptr null, ptr null }], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"drivers/regulator/pbias-regulator.c\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%s %s: using legacy dt data for pbias offset\0A\00", align 1
@pbias_regulator_voltage_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"pbias_mmc_omap2430\00", align 1
@pbias_mmc_omap2430 = internal constant %struct.pbias_reg_info { i32 2, i32 2, i32 0, i32 1, i32 100, ptr @.str.5, ptr @pbias_volt_table_3_0V, i32 2 }, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"pbias_sim_omap3\00", align 1
@pbias_sim_omap3 = internal constant %struct.pbias_reg_info { i32 512, i32 512, i32 0, i32 256, i32 100, ptr @.str.6, ptr @pbias_volt_table_3_0V, i32 2 }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"pbias_mmc_omap4\00", align 1
@pbias_mmc_omap4 = internal constant %struct.pbias_reg_info { i32 71303168, i32 104857600, i32 33554432, i32 2097152, i32 100, ptr @.str.7, ptr @pbias_volt_table_3_0V, i32 2 }, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"pbias_mmc_omap5\00", align 1
@pbias_mmc_omap5 = internal constant %struct.pbias_reg_info { i32 201326592, i32 234881024, i32 33554432, i32 2097152, i32 100, ptr @.str.8, ptr @pbias_volt_table_3_3V, i32 2 }, align 4
@pbias_volt_table_3_0V = internal constant [2 x i32] [i32 1800000, i32 3000000], align 4
@pbias_volt_table_3_3V = internal constant [2 x i32] [i32 1800000, i32 3300000], align 4
@pbias_of_data_omap2 = internal constant %struct.pbias_of_data { i32 560 }, align 4
@pbias_of_data_omap3 = internal constant %struct.pbias_of_data { i32 688 }, align 4
@pbias_of_data_omap4 = internal constant %struct.pbias_of_data { i32 96 }, align 4
@pbias_of_data_omap5 = internal constant %struct.pbias_of_data { i32 96 }, align 4
@pbias_of_data_dra7 = internal constant %struct.pbias_of_data { i32 3584 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_pbias_regulator_driver_exit, ptr @__initcall__kmod_pbias_regulator__247_238_pbias_regulator_driver_init6, ptr @pbias_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pbias_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pbias_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pbias_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @pbias_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pbias_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %6 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 20, i1 false)
  %7 = tail call i32 @of_regulator_match(ptr noundef %3, ptr noundef %5, ptr noundef nonnull @pbias_matches, i32 noundef 4) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 244) #7
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %105, label %12, !prof !8

12:                                               ; preds = %9
  %13 = extractvalue { i32, i1 } %10, 0
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %13, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %105, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = ptrtoint ptr %17 to i32
  br label %105

21:                                               ; preds = %16
  %22 = tail call ptr @of_device_get_match_data(ptr noundef %3) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %22, align 4
  br label %39

26:                                               ; preds = %21
  %27 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 4
  %31 = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %33, %29 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 184, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %31, ptr noundef %38) #7
  br label %39

39:                                               ; preds = %37, %24
  %40 = phi i32 [ %25, %24 ], [ %30, %37 ]
  %41 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %17, ptr %41, align 4
  store ptr %3, ptr %2, align 4
  %42 = icmp eq i32 %7, 0
  br i1 %42, label %105, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  br label %46

46:                                               ; preds = %98, %43
  %47 = phi i32 [ 0, %43 ], [ %101, %98 ]
  %48 = phi i32 [ %7, %43 ], [ %100, %98 ]
  %49 = phi ptr [ %14, %43 ], [ %99, %98 ]
  %50 = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %47, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %98, label %53

53:                                               ; preds = %46
  %54 = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %47, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %57

57:                                               ; preds = %53
  %58 = getelementptr [4 x %struct.of_regulator_match], ptr @pbias_matches, i32 0, i32 %47, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %105, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  store ptr %63, ptr %49, align 4
  %64 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 13
  store ptr null, ptr %64, align 4
  %65 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 12
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 10
  store ptr @pbias_regulator_voltage_ops, ptr %66, align 4
  %67 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 23
  store ptr %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 8
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 57
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 27
  store i32 %40, ptr %76, align 4
  %77 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 28
  store i32 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 34
  store i32 %40, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 35
  store i32 %82, ptr %83, align 4
  %84 = load i32, ptr %59, align 4
  %85 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 36
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pbias_reg_info, ptr %59, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.regulator_desc, ptr %49, i32 0, i32 37
  store i32 %87, ptr %88, align 4
  %89 = load ptr, ptr %50, align 4
  store ptr %89, ptr %44, align 4
  %90 = load ptr, ptr %54, align 4
  store ptr %90, ptr %45, align 4
  %91 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %49, ptr noundef nonnull %2) #7
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %95

93:                                               ; preds = %61
  %94 = ptrtoint ptr %91 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %94) #8
  br label %105

95:                                               ; preds = %61
  %96 = getelementptr %struct.regulator_desc, ptr %49, i32 1
  %97 = add i32 %48, -1
  br label %98

98:                                               ; preds = %95, %53, %46
  %99 = phi ptr [ %96, %95 ], [ %49, %53 ], [ %49, %46 ]
  %100 = phi i32 [ %97, %95 ], [ %48, %53 ], [ %48, %46 ]
  %101 = add nuw nsw i32 %47, 1
  %102 = icmp ult i32 %47, 3
  %103 = icmp ne i32 %100, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %46, label %105

105:                                              ; preds = %98, %93, %57, %39, %26, %19, %12, %9, %1
  %106 = phi i32 [ %20, %19 ], [ %94, %93 ], [ %7, %1 ], [ -12, %12 ], [ -22, %26 ], [ -12, %9 ], [ 0, %39 ], [ -19, %57 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
