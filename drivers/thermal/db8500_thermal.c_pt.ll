; ModuleID = '/llk/IR/drivers/thermal/db8500_thermal.c_pt.bc'
source_filename = "../drivers/thermal/db8500_thermal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.db8500_thermal_zone = type { ptr, i32, i32, i32 }

@__initcall__kmod_db8500_thermal__170_258_db8500_thermal_driver_init6 = internal global ptr @db8500_thermal_driver_init, section ".initcall6.init", align 4
@db8500_thermal_driver = internal global %struct.platform_driver { ptr @db8500_thermal_probe, ptr null, ptr null, ptr @db8500_thermal_suspend, ptr @db8500_thermal_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @db8500_thermal_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_db8500_thermal_driver_exit = internal global ptr @db8500_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [65 x i8] c"db8500_thermal.author=Hongbo Zhang <hongbo.zhang@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [49 x i8] c"db8500_thermal.description=DB8500 thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [51 x i8] c"db8500_thermal.file=drivers/thermal/db8500_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"db8500_thermal.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"db8500-thermal\00", align 1
@db8500_thermal_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,db8500-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"IRQ_HOTMON_LOW\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Get IRQ_HOTMON_LOW failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"dbx500_temp_low\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to allocate temp low irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IRQ_HOTMON_HIGH\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Get IRQ_HOTMON_HIGH failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dbx500_temp_high\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to allocate temp high irq\0A\00", align 1
@thdev_ops = internal global %struct.thermal_zone_of_device_ops { ptr @db8500_thermal_get_temp, ptr @db8500_thermal_get_trend, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"register thermal zone sensor failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"thermal zone sensor registered\0A\00", align 1
@db8500_thermal_points = internal unnamed_addr constant [18 x i32] [i32 15000, i32 20000, i32 25000, i32 30000, i32 35000, i32 40000, i32 45000, i32 50000, i32 55000, i32 60000, i32 65000, i32 70000, i32 75000, i32 80000, i32 85000, i32 90000, i32 95000, i32 100000], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_db8500_thermal_driver_exit, ptr @__initcall__kmod_db8500_thermal__170_258_db8500_thermal_driver_init6, ptr @db8500_thermal_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @db8500_thermal_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @db8500_thermal_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @db8500_thermal_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @db8500_thermal_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_thermal_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %29

9:                                                ; preds = %5
  %10 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %6, ptr noundef null, ptr noundef nonnull @prcmu_low_irq_handler, i32 noundef 24576, ptr noundef nonnull @.str.3, ptr noundef nonnull %3) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #6
  br label %29

13:                                               ; preds = %9
  %14 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #6
  br label %29

17:                                               ; preds = %13
  %18 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %14, ptr noundef null, ptr noundef nonnull @prcmu_high_irq_handler, i32 noundef 24576, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #6
  br label %29

21:                                               ; preds = %17
  %22 = tail call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull @thdev_ops) #5
  store ptr %22, ptr %3, align 4
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #6
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %29

27:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.10) #6
  tail call fastcc void @db8500_thermal_update_config(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 15000)
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %28, align 8
  br label %29

29:                                               ; preds = %27, %24, %20, %16, %12, %8, %1
  %30 = phi i32 [ %6, %8 ], [ %10, %12 ], [ %14, %16 ], [ %18, %20 ], [ %26, %24 ], [ 0, %27 ], [ -12, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_thermal_suspend(ptr nocapture noundef readnone %0, [1 x i32] %1) #2 {
  %3 = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_thermal_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %5 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %3, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %3, i32 0, i32 2
  store i32 7500, ptr %6, align 4
  %7 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext 0, i8 noundef zeroext 15) #5
  %9 = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prcmu_low_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 0, label %28
    i32 1, label %12
  ]

5:                                                ; preds = %2
  %6 = add i32 %4, -1
  %7 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %4, -2
  %10 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %14 = phi i32 [ %11, %5 ], [ 0, %2 ]
  %15 = phi i32 [ %8, %5 ], [ 15000, %2 ]
  %16 = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  store i32 %13, ptr %3, align 4
  %17 = add i32 %15, %14
  %18 = lshr i32 %17, 1
  %19 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 1
  store i32 2, ptr %20, align 4
  %21 = udiv i32 %14, 1000
  %22 = trunc i32 %21 to i8
  %23 = udiv i32 %15, 1000
  %24 = trunc i32 %23 to i8
  %25 = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %22, i8 noundef zeroext %24) #5
  %26 = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  %27 = load ptr, ptr %1, align 4
  tail call void @thermal_zone_device_update(ptr noundef %27, i32 noundef 0) #5
  br label %28

28:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @prcmu_high_irq_handler(i32 noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 17
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = add nuw nsw i32 %4, 1
  %8 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [18 x i32], ptr @db8500_thermal_points, i32 0, i32 %4
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  store i32 %7, ptr %3, align 4
  %13 = add i32 %11, %9
  %14 = lshr i32 %13, 1
  %15 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 1
  store i32 1, ptr %16, align 4
  %17 = udiv i32 %11, 1000
  %18 = trunc i32 %17 to i8
  %19 = udiv i32 %9, 1000
  %20 = trunc i32 %19 to i8
  %21 = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %18, i8 noundef zeroext %20) #5
  %22 = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  br label %27

23:                                               ; preds = %2
  %24 = icmp eq i32 %4, 17
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %1, i32 0, i32 2
  store i32 100001, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %23, %6
  %28 = load ptr, ptr %1, align 4
  tail call void @thermal_zone_device_update(ptr noundef %28, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @db8500_thermal_update_config(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = tail call i32 @db8500_prcmu_stop_temp_sense() #5
  %7 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %0, i32 0, i32 3
  store i32 %1, ptr %7, align 4
  %8 = add i32 %4, %3
  %9 = lshr i32 %8, 1
  %10 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %0, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %0, i32 0, i32 1
  store i32 %2, ptr %11, align 4
  %12 = udiv i32 %3, 1000
  %13 = trunc i32 %12 to i8
  %14 = udiv i32 %4, 1000
  %15 = trunc i32 %14 to i8
  %16 = tail call i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext %13, i8 noundef zeroext %15) #5
  %17 = tail call i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext 4095) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_update(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @db8500_thermal_get_temp(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @db8500_thermal_get_trend(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.db8500_thermal_zone, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_stop_temp_sense() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_config_hotmon(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_start_temp_sense(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
