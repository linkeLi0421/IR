; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_devfreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.75, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.75 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"More than 1 supply is not supported yet\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"*ERROR* Couldn't set OPP regulators\0A\00", align 1
@panfrost_devfreq_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @panfrost_devfreq_target, ptr @panfrost_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"*ERROR* Couldn't initialize GPU devfreq\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to register cooling device\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/panfrost/panfrost_devfreq.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_devfreq_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27
  %7 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  br label %50

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.panfrost_compatible, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @devm_pm_opp_set_regulators(ptr noundef %5, ptr noundef %14, i32 noundef %9) #4
  switch i32 %15, label %16 [
    i32 -19, label %17
    i32 0, label %17
    i32 -517, label %50
  ]

16:                                               ; preds = %12
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #4
  br label %50

17:                                               ; preds = %12, %12
  %18 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %5) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = icmp eq i32 %18, -19
  %22 = select i1 %21, i32 0, i32 %18
  br label %50

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 3
  store i8 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 8
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false) #4
  %27 = tail call i64 @ktime_get() #4
  %28 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 6
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @clk_get_rate(ptr noundef %30) #4
  store i32 %31, ptr %2, align 4
  %32 = call ptr @devfreq_recommended_opp(ptr noundef %5, ptr noundef nonnull %2, i32 noundef 0) #4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = ptrtoint ptr %32 to i32
  br label %50

36:                                               ; preds = %23
  %37 = load i32, ptr %2, align 4
  store i32 %37, ptr @panfrost_devfreq_profile, align 4
  call void @dev_pm_opp_put(ptr noundef %32) #4
  %38 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 2
  store i32 45, ptr %38, align 8
  %39 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 2, i32 1
  store i32 5, ptr %39, align 4
  %40 = call ptr @devm_devfreq_add_device(ptr noundef %5, ptr noundef nonnull @panfrost_devfreq_profile, ptr noundef nonnull @.str.4, ptr noundef %38) #4
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5) #4
  %43 = ptrtoint ptr %40 to i32
  br label %50

44:                                               ; preds = %36
  store ptr %40, ptr %6, align 8
  %45 = call ptr @devfreq_cooling_em_register(ptr noundef %40, ptr noundef null) #4
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #4
  br label %50

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 1
  store ptr %45, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %47, %42, %34, %20, %16, %12, %11
  %51 = phi i32 [ 0, %11 ], [ %22, %20 ], [ %35, %34 ], [ %43, %42 ], [ %15, %12 ], [ %15, %16 ], [ 0, %48 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_cooling_em_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @devfreq_cooling_unregister(ptr noundef nonnull %3) #4
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_resume(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false) #4
  %7 = tail call i64 @ktime_get() #4
  %8 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27, i32 6
  store i64 %7, ptr %8, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = tail call i32 @devfreq_resume_device(ptr noundef %9) #4
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @devfreq_suspend_device(ptr noundef nonnull %3) #4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_record_busy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = tail call i64 @ktime_get() #4
  %8 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, 0
  %13 = sub i64 %7, %9
  %14 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 4
  %16 = select i1 %12, ptr %15, ptr %14
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %13, %17
  store i64 %18, ptr %16, align 8
  store i64 %7, ptr %8, align 8
  %19 = add i32 %11, 1
  store i32 %19, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  br label %20

20:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_devfreq_record_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = tail call i64 @ktime_get() #4
  %8 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, 0
  %13 = sub i64 %7, %9
  %14 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.panfrost_devfreq, ptr %0, i32 0, i32 4
  %16 = select i1 %12, ptr %15, ptr %14
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %13, %17
  store i64 %18, ptr %16, align 8
  store i64 %7, ptr %8, align 8
  %19 = add i32 %11, -1
  store i32 %19, ptr %10, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 221, i32 noundef 9, ptr noundef null) #4
  br label %22

22:                                               ; preds = %21, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_devfreq_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %11

8:                                                ; preds = %3
  tail call void @dev_pm_opp_put(ptr noundef %4) #4
  %9 = load i32, ptr %1, align 4
  %10 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef %9) #4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_devfreq_get_dev_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @clk_get_rate(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 27, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #4
  %11 = tail call i64 @ktime_get() #4
  %12 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 27, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 27, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  %17 = sub i64 %11, %13
  %18 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 27, i32 5
  %19 = getelementptr inbounds %struct.panfrost_device, ptr %4, i32 0, i32 27, i32 4
  %20 = select i1 %16, ptr %19, ptr %18
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %17, %21
  store i64 %22, ptr %20, align 8
  store i64 %11, ptr %12, align 8
  %23 = load i64, ptr %19, align 8
  %24 = load i64, ptr %18, align 8
  %25 = add i64 %24, %23
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %1, align 4
  %27 = load i64, ptr %19, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false) #4
  %30 = tail call i64 @ktime_get() #4
  store i64 %30, ptr %12, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
