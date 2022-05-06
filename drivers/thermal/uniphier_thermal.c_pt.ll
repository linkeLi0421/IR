; ModuleID = '/llk/IR/drivers/thermal/uniphier_thermal.c_pt.bc'
source_filename = "../drivers/thermal/uniphier_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_tm_soc_data = type { i32, i32, i32 }
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
%struct.uniphier_tm_dev = type { ptr, ptr, [3 x i8], ptr, ptr }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_uniphier_thermal__170_377_uniphier_tm_driver_init6 = internal global ptr @uniphier_tm_driver_init, section ".initcall6.init", align 4
@uniphier_tm_driver = internal global %struct.platform_driver { ptr @uniphier_tm_probe, ptr @uniphier_tm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_tm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_tm_driver_exit = internal global ptr @uniphier_tm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [74 x i8] c"uniphier_thermal.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [53 x i8] c"uniphier_thermal.description=UniPhier thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [55 x i8] c"uniphier_thermal.file=drivers/thermal/uniphier_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [32 x i8] c"uniphier_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"uniphier-thermal\00", align 1
@uniphier_tm_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld20_tm_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/thermal/uniphier_thermal.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to get regmap (error %ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to initialize sensor\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@uniphier_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @uniphier_tm_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to register sensor device\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"thermal zone has too many trips\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"critical trip is over limit(>%d), or not set\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"socionext,tmod-calibration\00", align 1
@uniphier_pxs2_tm_data = internal constant %struct.uniphier_tm_soc_data { i32 57344, i32 57344, i32 59652 }, align 4
@uniphier_ld20_tm_data = internal constant %struct.uniphier_tm_soc_data { i32 57344, i32 59392, i32 59704 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_uniphier_tm_driver_exit, ptr @__initcall__kmod_uniphier_thermal__170_377_uniphier_tm_driver_init6, ptr @uniphier_tm_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_tm_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_tm_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_tm_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_tm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_tm_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %5, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %10 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %5, i32 0, i32 4
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 9, ptr noundef null) #6
  br label %166

13:                                               ; preds = %7
  %14 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %166, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = tail call ptr @of_get_parent(ptr noundef %18) #6
  %20 = tail call ptr @syscon_node_to_regmap(ptr noundef %19) #6
  tail call void @of_node_put(ptr noundef %19) #6
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %23) #7
  br label %166

24:                                               ; preds = %16
  store ptr %20, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !9
  %25 = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %9, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %26, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %28 = load i32, ptr %9, align 4
  %29 = add i32 %28, 3676
  %30 = call i32 @regmap_read(ptr noundef %20, i32 noundef %29, ptr noundef nonnull %2) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %66

33:                                               ; preds = %24
  %34 = load i32, ptr %2, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %38 = load ptr, ptr %37, align 8
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 0) #6
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %9, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = load i32, ptr %3, align 8
  %45 = shl i32 %44, 16
  %46 = and i32 %45, 1073676288
  %47 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 32767
  %50 = or i32 %46, %49
  %51 = or i32 %50, 1073774592
  %52 = call i32 @regmap_write(ptr noundef %20, i32 noundef %43, i32 noundef %51) #6
  br label %53

53:                                               ; preds = %41, %33
  %54 = load i32, ptr %25, align 4
  %55 = add i32 %54, 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %55, i32 noundef 15, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %57 = load i32, ptr %25, align 4
  %58 = add i32 %57, 64
  %59 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %58, i32 noundef 16777231, i32 noundef 16777225, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %60 = load i32, ptr %9, align 4
  %61 = add i32 %60, 2304
  %62 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %61, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %63 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %14, ptr noundef nonnull @uniphier_tm_alarm_irq, ptr noundef nonnull @uniphier_tm_alarm_irq_thread, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull %5) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %166

65:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %66

66:                                               ; preds = %65, %32
  %67 = phi i32 [ %30, %32 ], [ %39, %65 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %166

68:                                               ; preds = %53
  %69 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %69, align 8
  %70 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull @uniphier_of_thermal_ops) #6
  %71 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %5, i32 0, i32 3
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  %74 = load ptr, ptr %71, align 4
  %75 = ptrtoint ptr %74 to i32
  br label %166

76:                                               ; preds = %68
  %77 = call ptr @of_thermal_get_trip_points(ptr noundef %70) #6
  %78 = load ptr, ptr %71, align 4
  %79 = call i32 @of_thermal_get_ntrips(ptr noundef %78) #6
  %80 = icmp sgt i32 %79, 3
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = icmp sgt i32 %79, 0
  br i1 %82, label %84, label %142

83:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #7
  br label %166

84:                                               ; preds = %81
  %85 = getelementptr %struct.thermal_trip, ptr %77, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 3
  %88 = getelementptr %struct.thermal_trip, ptr %77, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = select i1 %87, i32 %89, i32 2147483647
  %91 = load ptr, ptr %5, align 4
  %92 = load ptr, ptr %10, align 4
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %93, 2320
  %95 = udiv i32 %89, 1000
  %96 = shl i32 %95, 16
  %97 = and i32 %96, 16711680
  %98 = or i32 %97, 1
  %99 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef %94, i32 noundef 16711681, i32 noundef %98, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %100 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 0
  store i8 1, ptr %100, align 1
  %101 = icmp eq i32 %79, 1
  br i1 %101, label %139, label %102

102:                                              ; preds = %84
  %103 = getelementptr %struct.thermal_trip, ptr %77, i32 1, i32 3
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 3
  %106 = getelementptr %struct.thermal_trip, ptr %77, i32 1, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = call i32 @llvm.smin.i32(i32 %107, i32 %90)
  %109 = select i1 %105, i32 %108, i32 %90
  %110 = load ptr, ptr %5, align 4
  %111 = load ptr, ptr %10, align 4
  %112 = load i32, ptr %111, align 4
  %113 = add i32 %112, 2324
  %114 = udiv i32 %107, 1000
  %115 = shl i32 %114, 16
  %116 = and i32 %115, 16711680
  %117 = or i32 %116, 1
  %118 = call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef %113, i32 noundef 16711681, i32 noundef %117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %119 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 1
  store i8 1, ptr %119, align 1
  %120 = icmp eq i32 %79, 2
  br i1 %120, label %139, label %121

121:                                              ; preds = %102
  %122 = getelementptr %struct.thermal_trip, ptr %77, i32 2, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 3
  %125 = getelementptr %struct.thermal_trip, ptr %77, i32 2, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = call i32 @llvm.smin.i32(i32 %126, i32 %109)
  %128 = select i1 %124, i32 %127, i32 %109
  %129 = load ptr, ptr %5, align 4
  %130 = load ptr, ptr %10, align 4
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, 2328
  %133 = udiv i32 %126, 1000
  %134 = shl i32 %133, 16
  %135 = and i32 %134, 16711680
  %136 = or i32 %135, 1
  %137 = call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef %132, i32 noundef 16711681, i32 noundef %136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %138 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 2
  store i8 1, ptr %138, align 1
  br label %139

139:                                              ; preds = %121, %102, %84
  %140 = phi i32 [ %90, %84 ], [ %109, %102 ], [ %128, %121 ]
  %141 = icmp sgt i32 %140, 120000
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %81
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef 120000) #7
  br label %166

143:                                              ; preds = %139
  %144 = load ptr, ptr %5, align 4
  %145 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 0
  %146 = load i8, ptr %145, align 1, !range !10
  %147 = zext i8 %146 to i32
  %148 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 1
  %149 = load i8, ptr %148, align 1, !range !10
  %150 = icmp eq i8 %149, 0
  %151 = select i1 %150, i32 0, i32 16
  %152 = or i32 %151, %147
  %153 = getelementptr %struct.uniphier_tm_dev, ptr %5, i32 0, i32 2, i32 2
  %154 = load i8, ptr %153, align 1, !range !10
  %155 = icmp eq i8 %154, 0
  %156 = select i1 %155, i32 0, i32 256
  %157 = or i32 %152, %156
  %158 = load ptr, ptr %10, align 4
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, 2336
  %161 = call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef %160, i32 noundef 1911, i32 noundef %157, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %162 = load ptr, ptr %10, align 4
  %163 = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %162, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  %165 = call i32 @regmap_update_bits_base(ptr noundef %144, i32 noundef %164, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @usleep_range_state(i32 noundef 700, i32 noundef 1500, i32 noundef 2) #6
  br label %166

166:                                              ; preds = %143, %142, %83, %73, %66, %53, %22, %13, %12, %1
  %167 = phi i32 [ -22, %12 ], [ %23, %22 ], [ %67, %66 ], [ %75, %73 ], [ -7, %83 ], [ -22, %142 ], [ 0, %143 ], [ -12, %1 ], [ %14, %13 ], [ %63, %53 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_tm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 2336
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %8, i32 noundef 1911, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.uniphier_tm_soc_data, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %12, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_tm_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @disable_irq_nosync(i32 noundef %0) #6
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 2336
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %7, i32 noundef 1638, i32 noundef 1092, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_tm_alarm_irq_thread(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call void @thermal_zone_device_update(ptr noundef %4, i32 noundef 0) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_tm_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.uniphier_tm_dev, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 2344
  %9 = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, ptr %3, align 4
  %13 = shl i32 %12, 23
  %14 = ashr exact i32 %13, 23
  %15 = mul nsw i32 %14, 1000
  store i32 %15, ptr %1, align 4
  br label %16

16:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
