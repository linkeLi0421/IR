; ModuleID = '/llk/IR/drivers/thermal/amlogic_thermal.c_pt.bc'
source_filename = "../drivers/thermal/amlogic_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.amlogic_thermal_data = type { i32, ptr, ptr }
%struct.amlogic_thermal_soc_calib_data = type { i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.amlogic_thermal = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_amlogic_thermal__167_335_amlogic_thermal_driver_init6 = internal global ptr @amlogic_thermal_driver_init, section ".initcall6.init", align 4
@amlogic_thermal_driver = internal global %struct.platform_driver { ptr @amlogic_thermal_probe, ptr @amlogic_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_amlogic_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amlogic_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_amlogic_thermal_driver_exit = internal global ptr @amlogic_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author168 = internal constant [66 x i8] c"amlogic_thermal.author=Guillaume La Roque <glaroque@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [51 x i8] c"amlogic_thermal.description=Amlogic thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [53 x i8] c"amlogic_thermal.file=drivers/thermal/amlogic_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [31 x i8] c"amlogic_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"amlogic_thermal\00", align 1
@of_amlogic_thermal_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-ddr-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_thermal_g12a_ddr_param }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-cpu-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @amlogic_thermal_g12a_cpu_param }, %struct.of_device_id zeroinitializer], align 4
@amlogic_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr @amlogic_thermal_suspend, ptr @amlogic_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"amlogic,ao-secure\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@amlogic_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @amlogic_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to register tsensor: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to add hwmon sysfs attributes\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"tsensor thermal calibration not supported: 0x%x!\0A\00", align 1
@amlogic_thermal_g12a_ddr_param = internal constant %struct.amlogic_thermal_data { i32 240, ptr @amlogic_thermal_g12a, ptr @amlogic_thermal_regmap_config_g12a }, align 4
@amlogic_thermal_g12a_cpu_param = internal constant %struct.amlogic_thermal_data { i32 296, ptr @amlogic_thermal_g12a, ptr @amlogic_thermal_regmap_config_g12a }, align 4
@amlogic_thermal_g12a = internal constant %struct.amlogic_thermal_soc_calib_data { i32 9411, i32 3159, i32 424, i32 324 }, align 4
@amlogic_thermal_regmap_config_g12a = internal constant %struct.regmap_config { ptr null, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 100, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_amlogic_thermal_driver_exit, ptr @__initcall__kmod_amlogic_thermal__167_335_amlogic_thermal_driver_init6, ptr @amlogic_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @amlogic_thermal_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @amlogic_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @amlogic_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %7 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store ptr %0, ptr %3, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %8, align 8
  %9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %9 to i32
  br label %76

13:                                               ; preds = %5
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr inbounds %struct.amlogic_thermal_data, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %2, ptr noundef null, ptr noundef %9, ptr noundef %16, ptr noundef null, ptr noundef null) #5
  %18 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 2
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = ptrtoint ptr %17 to i32
  br label %76

22:                                               ; preds = %13
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %24 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = icmp eq ptr %23, inttoptr (i32 -517 to ptr)
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  %29 = load ptr, ptr %24, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %29, %28 ], [ inttoptr (i32 -517 to ptr), %26 ]
  %32 = ptrtoint ptr %31 to i32
  br label %76

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %35, ptr noundef nonnull @.str.2) #5
  %37 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 3
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %40 = load ptr, ptr %37, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %76

42:                                               ; preds = %33
  %43 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @amlogic_thermal_ops) #5
  %44 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 5
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = ptrtoint ptr %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %47) #6
  br label %76

48:                                               ; preds = %42
  %49 = tail call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %43) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.5) #6
  br label %52

52:                                               ; preds = %51, %48
  %53 = load ptr, ptr %37, align 4
  %54 = load ptr, ptr %7, align 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 6
  %57 = tail call i32 @regmap_read(ptr noundef %53, i32 noundef %55, ptr noundef %56) #5
  %58 = load i32, ptr %56, align 4
  %59 = and i32 %58, -1946157056
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = lshr i32 %58, 24
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.6, i32 noundef %62) #6
  br label %76

65:                                               ; preds = %52
  %66 = load ptr, ptr %24, align 4
  %67 = tail call i32 @clk_prepare(ptr noundef %66) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = tail call i32 @clk_enable(ptr noundef %66) #5
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @clk_unprepare(ptr noundef %66) #5
  br label %76

73:                                               ; preds = %69
  %74 = load ptr, ptr %18, align 4
  %75 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 4, i32 noundef 1579, i32 noundef 1579, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %76

76:                                               ; preds = %73, %72, %65, %61, %46, %39, %30, %20, %11, %1
  %77 = phi i32 [ %12, %11 ], [ %21, %20 ], [ %32, %30 ], [ %41, %39 ], [ %47, %46 ], [ -12, %1 ], [ -22, %61 ], [ 0, %73 ], [ %70, %72 ], [ %67, %65 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 1579, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_get_temp(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.amlogic_thermal, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 64, ptr noundef nonnull %7) #5
  %13 = load i32, ptr %7, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr inbounds %struct.amlogic_thermal, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.amlogic_thermal_data, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.amlogic_thermal, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, 32767
  %24 = sub nsw i32 0, %23
  %25 = select i1 %22, i32 %23, i32 %24
  %26 = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %18, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, %14
  %29 = sext i32 %28 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %30 = call i64 @div_s64_rem(i64 noundef %29, i32 noundef 100, ptr noundef nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  %31 = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %18, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %14
  %34 = sext i32 %33 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %35 = call i64 @div_s64_rem(i64 noundef %34, i32 noundef 100, ptr noundef nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  %36 = shl i64 %35, 16
  %37 = trunc i64 %30 to i32
  %38 = add i32 %37, 65536
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %39 = call i64 @div_s64_rem(i64 noundef %36, i32 noundef %38, ptr noundef nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  %40 = load i32, ptr %18, align 4
  %41 = trunc i64 %39 to i32
  %42 = add i32 %25, %41
  %43 = mul i32 %42, %40
  %44 = sext i32 %43 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %45 = call i64 @div_s64_rem(i64 noundef %44, i32 noundef 65536, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.amlogic_thermal_soc_calib_data, ptr %18, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %46, %48
  %50 = mul i32 %49, 100
  store i32 %50, ptr %1, align 4
  br label %51

51:                                               ; preds = %9, %2
  %52 = phi i32 [ 0, %9 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 4, i32 noundef 1579, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #5
  tail call void @clk_unprepare(ptr noundef %8) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @amlogic_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.amlogic_thermal, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 4, i32 noundef 1579, i32 noundef 1579, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %16

16:                                               ; preds = %12, %11, %1
  %17 = phi i32 [ 0, %12 ], [ %9, %11 ], [ %6, %1 ]
  ret i32 %17
}

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
!8 = !{!"auto-init"}
