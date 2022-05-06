; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_devfreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.51 }
%union.anon.51 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@lima_devfreq_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @lima_devfreq_target, ptr @lima_devfreq_get_dev_status, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Couldn't initialize GPU devfreq\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to register cooling device\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"drivers/gpu/drm/lima/lima_devfreq.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_devfreq_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @devfreq_cooling_unregister(ptr noundef nonnull %4) #5
  store ptr null, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8
  tail call void @devm_devfreq_remove_device(ptr noundef %11, ptr noundef nonnull %8) #5
  store ptr null, ptr %2, align 8
  br label %12

12:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_devfreq_remove_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x ptr], align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %6 = tail call zeroext i1 @device_property_present(ptr noundef %4, ptr noundef nonnull @.str) #5
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 7
  store i32 0, ptr %8, align 4
  %9 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %4, ptr noundef nonnull @.str.1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  store ptr @.str.2, ptr %3, align 4
  %12 = call i32 @devm_pm_opp_set_regulators(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1) #5
  switch i32 %12, label %43 [
    i32 -19, label %13
    i32 0, label %13
  ]

13:                                               ; preds = %11, %11
  %14 = call i32 @devm_pm_opp_of_add_table(ptr noundef %4) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false) #5
  %18 = call i64 @ktime_get() #5
  %19 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 5
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @clk_get_rate(ptr noundef %21) #5
  store i32 %22, ptr %2, align 4
  %23 = call ptr @devfreq_recommended_opp(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 0) #5
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = ptrtoint ptr %23 to i32
  br label %43

27:                                               ; preds = %16
  %28 = load i32, ptr %2, align 4
  store i32 %28, ptr @lima_devfreq_profile, align 4
  call void @dev_pm_opp_put(ptr noundef %23) #5
  %29 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 2
  store i32 30, ptr %29, align 8
  %30 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 2, i32 1
  store i32 5, ptr %30, align 4
  %31 = call ptr @devm_devfreq_add_device(ptr noundef %4, ptr noundef nonnull @lima_devfreq_profile, ptr noundef nonnull @.str.3, ptr noundef %29) #5
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  %34 = ptrtoint ptr %31 to i32
  br label %43

35:                                               ; preds = %27
  store ptr %31, ptr %5, align 8
  %36 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @of_devfreq_cooling_register(ptr noundef %37, ptr noundef %31) #5
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.5) #6
  br label %43

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.lima_device, ptr %0, i32 0, i32 18, i32 1
  store ptr %38, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %40, %33, %25, %13, %11, %7, %1
  %44 = phi i32 [ %26, %25 ], [ %34, %33 ], [ 0, %1 ], [ %9, %7 ], [ %12, %11 ], [ %14, %13 ], [ 0, %41 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_devfreq_cooling_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_devfreq_record_busy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = tail call i64 @ktime_get() #5
  %8 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, 0
  %13 = sub i64 %7, %9
  %14 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 3
  %16 = select i1 %12, ptr %15, ptr %14
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %13, %17
  store i64 %18, ptr %16, align 8
  store i64 %7, ptr %8, align 8
  %19 = add i32 %11, 1
  store i32 %19, ptr %10, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  br label %20

20:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lima_devfreq_record_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = tail call i64 @ktime_get() #5
  %8 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 5
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = icmp sgt i32 %11, 0
  %13 = sub i64 %7, %9
  %14 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 3
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
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 200, i32 noundef 9, ptr noundef null) #5
  br label %22

22:                                               ; preds = %21, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  br label %23

23:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 7
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false) #5
  %8 = tail call i64 @ktime_get() #5
  %9 = getelementptr inbounds %struct.lima_devfreq, ptr %0, i32 0, i32 5
  store i64 %8, ptr %9, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  %10 = load ptr, ptr %0, align 8
  %11 = tail call i32 @devfreq_resume_device(ptr noundef %10) #5
  br label %12

12:                                               ; preds = %4, %1
  %13 = phi i32 [ %11, %4 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lima_devfreq_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @devfreq_suspend_device(ptr noundef nonnull %2) #5
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_devfreq_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ptrtoint ptr %4 to i32
  br label %11

8:                                                ; preds = %3
  tail call void @dev_pm_opp_put(ptr noundef %4) #5
  %9 = load i32, ptr %1, align 4
  %10 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %0, i32 noundef %9) #5
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %8 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_devfreq_get_dev_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @clk_get_rate(ptr noundef %6) #5
  %8 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 18, i32 7
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %11 = tail call i64 @ktime_get() #5
  %12 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 18, i32 5
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 18, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = icmp sgt i32 %15, 0
  %17 = sub i64 %11, %13
  %18 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 18, i32 4
  %19 = getelementptr inbounds %struct.lima_device, ptr %4, i32 0, i32 18, i32 3
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
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false) #5
  %30 = tail call i64 @ktime_get() #5
  store i64 %30, ptr %12, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
