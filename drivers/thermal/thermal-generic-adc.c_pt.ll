; ModuleID = '/llk/IR/drivers/thermal/thermal-generic-adc.c_pt.bc'
source_filename = "../drivers/thermal/thermal-generic-adc.c"
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
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.gadc_thermal_info = type { ptr, ptr, ptr, ptr, i32 }

@of_adc_thermal_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"generic-adc-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author166 = internal constant [46 x i8] c"author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [67 x i8] c"description=Generic ADC thermal driver using IIO framework with DT\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@gadc_thermal_driver = internal global %struct.platform_driver { ptr @gadc_thermal_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_adc_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [20 x i8] c"generic-adc-thermal\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Only DT based supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sensor-channel\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"IIO channel not found: %d\0A\00", align 1
@gadc_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @gadc_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Thermal zone sensor register failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"temperature-lookup-table\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"no lookup table, assuming DAC channel returns milliCelcius\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Pair of temperature vs ADC read value missing\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Failed to read temperature lookup table: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"IIO channel read failed %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168], section "llvm.metadata"

@__mod_of__of_adc_thermal_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @of_adc_thermal_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gadc_thermal_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @gadc_thermal_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadc_thermal_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %62

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %62, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @devm_iio_channel_get(ptr noundef %3, ptr noundef nonnull @.str.2) #6
  %13 = getelementptr inbounds %struct.gadc_thermal_info, ptr %9, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  br i1 %16, label %62, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %18) #7
  br label %62

19:                                               ; preds = %11
  %20 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %21 = tail call i32 @of_property_count_elems_of_size(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef 4) #6
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = call i32 @iio_get_channel_type(ptr noundef %12, ptr noundef nonnull %2) #6
  %25 = icmp ne i32 %24, 0
  %26 = load i32, ptr %2, align 4
  %27 = icmp ne i32 %26, 9
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %3, ptr noundef nonnull @.str.6) #7
  br label %53

30:                                               ; preds = %19
  %31 = and i32 %21, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #7
  br label %51

34:                                               ; preds = %30
  %35 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #6
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %37, label %39, !prof !9

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gadc_thermal_info, ptr %9, i32 0, i32 3
  store ptr null, ptr %38, align 4
  br label %51

39:                                               ; preds = %34
  %40 = extractvalue { i32, i1 } %35, 0
  %41 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %40, i32 noundef 3520) #6
  %42 = getelementptr inbounds %struct.gadc_thermal_info, ptr %9, i32 0, i32 3
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef nonnull %41, i32 noundef %21, i32 noundef 0) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %45) #7
  br label %51

48:                                               ; preds = %44
  %49 = lshr i32 %21, 1
  %50 = getelementptr inbounds %struct.gadc_thermal_info, ptr %9, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  br label %53

51:                                               ; preds = %47, %39, %37, %33
  %52 = phi i32 [ -12, %37 ], [ -12, %39 ], [ %45, %47 ], [ -22, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %62

53:                                               ; preds = %48, %29, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  store ptr %3, ptr %9, align 4
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %54, align 8
  %55 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull @gadc_thermal_ops) #6
  %56 = getelementptr inbounds %struct.gadc_thermal_info, ptr %9, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = icmp eq ptr %55, inttoptr (i32 -517 to ptr)
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = ptrtoint ptr %55 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %61) #7
  br label %62

62:                                               ; preds = %60, %58, %53, %51, %17, %15, %8, %7
  %63 = phi i32 [ -19, %7 ], [ -12, %8 ], [ %18, %17 ], [ -517, %15 ], [ %61, %60 ], [ -517, %58 ], [ 0, %53 ], [ %52, %51 ]
  ret i32 %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gadc_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.gadc_thermal_info, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @iio_read_channel_processed(ptr noundef %5, ptr noundef nonnull %3) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %6) #7
  br label %62

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.gadc_thermal_info, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %60, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.gadc_thermal_info, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %26, %15
  %20 = phi i32 [ %27, %26 ], [ 0, %15 ]
  %21 = shl nuw i32 %20, 1
  %22 = or i32 %21, 1
  %23 = getelementptr i32, ptr %13, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, %11
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = add nuw nsw i32 %20, 1
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %33, label %19

29:                                               ; preds = %19
  %30 = icmp eq i32 %20, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %29, %15
  %32 = load i32, ptr %13, align 4
  br label %60

33:                                               ; preds = %26
  %34 = shl nuw i32 %17, 1
  %35 = add i32 %34, -2
  %36 = getelementptr i32, ptr %13, i32 %35
  %37 = load i32, ptr %36, align 4
  br label %60

38:                                               ; preds = %29
  %39 = add i32 %21, -1
  %40 = getelementptr i32, ptr %13, i32 %39
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %21, -2
  %43 = getelementptr i32, ptr %13, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i32, ptr %13, i32 %21
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %46, %44
  %48 = sub i32 %24, %41
  %49 = freeze i32 %47
  %50 = freeze i32 %48
  %51 = sdiv i32 %49, %50
  %52 = mul i32 %51, %50
  %53 = sub i32 %49, %52
  %54 = sub i32 %11, %41
  %55 = mul i32 %51, %54
  %56 = mul i32 %53, %54
  %57 = sdiv i32 %56, %48
  %58 = add i32 %55, %44
  %59 = add i32 %58, %57
  br label %60

60:                                               ; preds = %38, %33, %31, %10
  %61 = phi i32 [ %11, %10 ], [ %32, %31 ], [ %37, %33 ], [ %59, %38 ]
  store i32 %61, ptr %1, align 4
  br label %62

62:                                               ; preds = %60, %8
  %63 = phi i32 [ %6, %8 ], [ 0, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
