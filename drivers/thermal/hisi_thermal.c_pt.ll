; ModuleID = '/llk/IR/drivers/thermal/hisi_thermal.c_pt.bc'
source_filename = "../drivers/thermal/hisi_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hisi_thermal_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.hisi_thermal_data = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hisi_thermal_sensor = type { ptr, ptr, ptr, i32, i32 }
%struct.thermal_trip = type { ptr, i32, i32, i32 }

@__initcall__kmod_hisi_thermal__182_669_hisi_thermal_driver_init6 = internal global ptr @hisi_thermal_driver_init, section ".initcall6.init", align 4
@hisi_thermal_driver = internal global %struct.platform_driver { ptr @hisi_thermal_probe, ptr @hisi_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_hisi_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_thermal_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hisi_thermal_driver_exit = internal global ptr @hisi_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author183 = internal constant [64 x i8] c"hisi_thermal.author=Xinwei Kong <kong.kongxinwei@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author184 = internal constant [49 x i8] c"hisi_thermal.author=Leo Yan <leo.yan@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [50 x i8] c"hisi_thermal.description=HiSilicon thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [47 x i8] c"hisi_thermal.file=drivers/thermal/hisi_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [28 x i8] c"hisi_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"hisi_thermal\00", align 1
@of_hisi_thermal_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-tsensor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_ops }, %struct.of_device_id zeroinitializer], align 4
@hisi_thermal_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr @hisi_thermal_suspend, ptr @hisi_thermal_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to register thermal sensor: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to request alarm irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to setup the sensor: %d\0A\00", align 1
@hisi_of_thermal_ops = internal constant %struct.thermal_zone_of_device_ops { ptr @hisi_thermal_get_temp, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to register sensor id %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"sensor <%d> THERMAL ALARM: %d > %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"sensor <%d> THERMAL ALARM stopped: %d < %d\0A\00", align 1
@hi6220_ops = internal constant %struct.hisi_thermal_ops { ptr @hi6220_thermal_get_temp, ptr @hi6220_thermal_enable_sensor, ptr @hi6220_thermal_disable_sensor, ptr @hi6220_thermal_irq_handler, ptr @hi6220_thermal_probe }, align 4
@hi3660_ops = internal constant %struct.hisi_thermal_ops { ptr @hi3660_thermal_get_temp, ptr @hi3660_thermal_enable_sensor, ptr @hi3660_thermal_disable_sensor, ptr @hi3660_thermal_irq_handler, ptr @hi3660_thermal_probe }, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"thermal_clk\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to get thermal clk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"tsensor_intr\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"tsensor_a73\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"tsensor_a53\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_hisi_thermal_driver_exit, ptr @__initcall__kmod_hisi_thermal__182_669_hisi_thermal_driver_init6, ptr @hisi_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hisi_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_thermal_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hisi_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_thermal_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  store ptr %8, ptr %3, align 4
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %10 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %10 to i32
  br label %80

15:                                               ; preds = %5
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef nonnull %3) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %80

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 1
  br label %27

27:                                               ; preds = %74, %25
  %28 = phi i32 [ 0, %25 ], [ %77, %74 ]
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr %struct.hisi_thermal_sensor, ptr %29, i32 %28
  %31 = getelementptr %struct.hisi_thermal_sensor, ptr %29, i32 %28, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef %32, ptr noundef %30, ptr noundef nonnull @hisi_of_thermal_ops) #4
  %34 = getelementptr %struct.hisi_thermal_sensor, ptr %29, i32 %28, i32 1
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %55, label %36

36:                                               ; preds = %27
  %37 = tail call ptr @of_thermal_get_trip_points(ptr noundef %33) #4
  %38 = load ptr, ptr %34, align 4
  %39 = tail call i32 @of_thermal_get_ntrips(ptr noundef %38) #4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %50, %36
  %42 = phi i32 [ %51, %50 ], [ 0, %36 ]
  %43 = getelementptr %struct.thermal_trip, ptr %37, i32 %42, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr %struct.thermal_trip, ptr %37, i32 %42, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.hisi_thermal_sensor, ptr %29, i32 %28, i32 4
  store i32 %48, ptr %49, align 4
  br label %58

50:                                               ; preds = %41
  %51 = add nuw nsw i32 %42, 1
  %52 = load ptr, ptr %34, align 4
  %53 = tail call i32 @of_thermal_get_ntrips(ptr noundef %52) #4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %41, label %58

55:                                               ; preds = %27
  %56 = ptrtoint ptr %33 to i32
  store ptr null, ptr %34, align 4
  %57 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %57, i32 noundef %56) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %56) #5
  br label %80

58:                                               ; preds = %50, %46, %36
  %59 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %58
  %62 = getelementptr %struct.hisi_thermal_sensor, ptr %29, i32 %28, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %59, ptr noundef null, ptr noundef nonnull @hisi_thermal_alarm_irq_thread, i32 noundef 8192, ptr noundef %63, ptr noundef %30) #4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %64) #5
  br label %80

67:                                               ; preds = %61
  %68 = load ptr, ptr %3, align 4
  %69 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef %30) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %71) #5
  br label %80

74:                                               ; preds = %67
  %75 = load ptr, ptr %34, align 4
  %76 = tail call i32 @thermal_zone_device_enable(ptr noundef %75) #4
  %77 = add nuw nsw i32 %28, 1
  %78 = load i32, ptr %22, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %27, label %80

80:                                               ; preds = %74, %73, %66, %58, %55, %21, %15, %13, %1
  %81 = phi i32 [ %14, %13 ], [ -12, %1 ], [ %19, %15 ], [ %71, %73 ], [ %64, %66 ], [ %56, %55 ], [ 0, %21 ], [ 0, %74 ], [ %59, %58 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %20, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.hisi_thermal_sensor, ptr %11, i32 %10
  %13 = getelementptr %struct.hisi_thermal_sensor, ptr %11, i32 %10, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @thermal_zone_device_disable(ptr noundef %14) #4
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %12) #4
  %20 = add nuw nsw i32 %10, 1
  %21 = load i32, ptr %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %9, label %23

23:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_alarm_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %1) #4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %1) #4
  %12 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ult i32 %11, %13
  %15 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  br i1 %14, label %23, label %20

20:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %11, i32 noundef %13) #5
  %21 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @thermal_zone_device_update(ptr noundef %22, i32 noundef 0) #4
  br label %24

23:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %17, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %11, i32 noundef %13) #5
  br label %24

24:                                               ; preds = %23, %20
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_thermal_get_trip_points(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_thermal_get_ntrips(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_get_temp(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_get_temp(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %7 = mul i32 %6, 785
  %8 = add i32 %7, -60000
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_enable_sensor(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #4
  br label %47

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %14 = getelementptr i8, ptr %13, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #4, !srcloc !11
  %15 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #4, !srcloc !11
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %20 = getelementptr i8, ptr %17, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %22 = and i32 %21, -61441
  %23 = shl i32 %19, 12
  %24 = or i32 %22, %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %24) #4, !srcloc !11
  %25 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %28 = and i32 %27, -49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #4, !srcloc !11
  %29 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 5) #4, !srcloc !11
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %33 = add i32 %32, 60784
  %34 = sdiv i32 %33, 785
  %35 = or i32 %34, -256
  %36 = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #4, !srcloc !11
  %37 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %38 = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 204) #4, !srcloc !11
  %39 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %40 = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #4, !srcloc !11
  %41 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %42 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1) #4, !srcloc !11
  %43 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %44 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #4, !srcloc !11
  %45 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %46 = getelementptr i8, ptr %45, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #4, !srcloc !11
  br label %47

47:                                               ; preds = %11, %10, %1
  %48 = phi i32 [ 0, %11 ], [ %8, %10 ], [ %5, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_disable_sensor(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #4, !srcloc !11
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #4, !srcloc !11
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !11
  %10 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_irq_handler(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %5 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi6220_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.7) #4
  %6 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 3
  store ptr %5, ptr %6, align 4
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = icmp eq ptr %5, inttoptr (i32 -517 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %8
  %11 = ptrtoint ptr %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %11) #5
  br label %20

12:                                               ; preds = %1
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #4
  %14 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %13, i32 0, i32 3
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %13, i32 0, i32 2
  store ptr @.str.9, ptr %18, align 4
  store ptr %0, ptr %13, align 4
  %19 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 5
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %12, %10, %8
  %21 = phi i32 [ 0, %16 ], [ %11, %10 ], [ -517, %8 ], [ -12, %12 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_get_temp(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 6
  %8 = or i32 %7, 28
  %9 = getelementptr i8, ptr %4, i32 %8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  %11 = mul i32 %10, 205
  %12 = add i32 %11, -63780
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_enable_sensor(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %7 = shl i32 %6, 6
  %8 = or i32 %7, 44
  %9 = getelementptr i8, ptr %4, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !11
  %10 = load ptr, ptr %3, align 4
  %11 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %12 = shl i32 %11, 6
  %13 = or i32 %12, 40
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 20) #4, !srcloc !11
  %15 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 63984
  %18 = sdiv i32 %17, 205
  %19 = load ptr, ptr %3, align 4
  %20 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %21 = shl i32 %20, 6
  %22 = or i32 %21, 32
  %23 = getelementptr i8, ptr %19, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #4, !srcloc !11
  %24 = load ptr, ptr %3, align 4
  %25 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %26 = shl i32 %25, 6
  %27 = or i32 %26, 48
  %28 = getelementptr i8, ptr %24, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 1) #4, !srcloc !11
  %29 = load ptr, ptr %3, align 4
  %30 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %31 = shl i32 %30, 6
  %32 = or i32 %31, 44
  %33 = getelementptr i8, ptr %29, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 1) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_disable_sensor(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %7 = shl i32 %6, 6
  %8 = or i32 %7, 44
  %9 = getelementptr i8, ptr %4, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_irq_handler(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.hisi_thermal_data, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %7 = shl i32 %6, 6
  %8 = or i32 %7, 48
  %9 = getelementptr i8, ptr %4, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3660_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 5
  store i32 1, ptr %5, align 4
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 20, i32 noundef 3520) #4
  %7 = getelementptr inbounds %struct.hisi_thermal_data, ptr %0, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %6, i32 0, i32 3
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.hisi_thermal_sensor, ptr %6, i32 0, i32 2
  store ptr @.str.10, ptr %11, align 4
  store ptr %0, ptr %6, align 4
  %12 = getelementptr %struct.hisi_thermal_sensor, ptr %6, i32 1, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.hisi_thermal_sensor, ptr %6, i32 1, i32 2
  store ptr @.str.11, ptr %13, align 4
  %14 = getelementptr %struct.hisi_thermal_sensor, ptr %6, i32 1
  store ptr %0, ptr %14, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i32 [ 0, %9 ], [ -12, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %17, %9 ]
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = getelementptr %struct.hisi_thermal_sensor, ptr %14, i32 %10
  %16 = tail call i32 %13(ptr noundef %15) #4
  %17 = add nuw nsw i32 %10, 1
  %18 = load i32, ptr %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hisi_thermal_data, ptr %3, i32 0, i32 1
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %18, %9 ]
  %11 = phi i32 [ 0, %7 ], [ %19, %9 ]
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.hisi_thermal_ops, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr %struct.hisi_thermal_sensor, ptr %15, i32 %11
  %17 = tail call i32 %14(ptr noundef %16) #4
  %18 = or i32 %17, %10
  %19 = add nuw nsw i32 %11, 1
  %20 = load i32, ptr %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %9, label %22

22:                                               ; preds = %9, %1
  %23 = phi i32 [ 0, %1 ], [ %18, %9 ]
  ret i32 %23
}

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
!8 = !{i64 4051775}
!9 = !{i64 2151884774}
!10 = !{i64 2151883659}
!11 = !{i64 4051357}
!12 = !{i64 2151884147}
!13 = !{i64 2151888750}
!14 = !{i64 2151889250}
!15 = !{i64 2151890184}
!16 = !{i64 2151890680}
!17 = !{i64 2151880930}
!18 = !{i64 2151882519}
!19 = !{i64 2151883116}
!20 = !{i64 2151881503}
!21 = !{i64 2151881991}
!22 = !{i64 2151887852}
!23 = !{i64 2151886535}
!24 = !{i64 2151885309}
!25 = !{i64 2151887105}
!26 = !{i64 2151885965}
