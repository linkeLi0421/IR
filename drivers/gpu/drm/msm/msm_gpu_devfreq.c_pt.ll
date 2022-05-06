; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gpu_devfreq.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpu_devfreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.93 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@msm_devfreq_profile = internal global %struct.devfreq_dev_profile { i32 0, i32 50, i32 1, i8 0, ptr @msm_devfreq_target, ptr @msm_devfreq_get_dev_status, ptr @msm_devfreq_get_cur_freq, ptr null, ptr null, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"simple_ondemand\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*ERROR* Couldn't initialize GPU devfreq\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"*ERROR* Couldn't register GPU cooling device\0A\00", align 1
@__tracepoint_msm_gpu_freq_change = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %4, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 1
  %13 = tail call i32 @dev_pm_qos_add_request(ptr noundef %11, ptr noundef %12, i32 noundef 4, i32 noundef 2147483647) #4
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 2
  %17 = tail call i32 @dev_pm_qos_add_request(ptr noundef %15, ptr noundef %16, i32 noundef 3, i32 noundef 0) #4
  %18 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 32
  %19 = load i32, ptr %18, align 8
  store i32 %19, ptr @msm_devfreq_profile, align 4
  store ptr null, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 8), align 4
  store i32 0, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 9), align 4
  %20 = load ptr, ptr %9, align 8
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %22 = tail call ptr @devm_devfreq_add_device(ptr noundef %21, ptr noundef nonnull @msm_devfreq_profile, ptr noundef nonnull @.str, ptr noundef null) #4
  store ptr %22, ptr %2, align 8
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load ptr, ptr %9, align 8
  %26 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #4
  store ptr null, ptr %2, align 8
  br label %45

27:                                               ; preds = %8
  %28 = tail call i32 @devfreq_suspend_device(ptr noundef %22) #4
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %2, align 8
  %33 = tail call ptr @of_devfreq_cooling_register(ptr noundef %31, ptr noundef %32) #4
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 46
  store ptr %33, ptr %34, align 4
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %38, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #4
  store ptr null, ptr %34, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 7
  %41 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 39
  %42 = load ptr, ptr %41, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %40, ptr noundef %42, ptr noundef nonnull @msm_devfreq_boost_work, i32 noundef 1, i32 noundef 1) #4
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6
  %44 = load ptr, ptr %41, align 8
  tail call void @msm_hrtimer_work_init(ptr noundef %43, ptr noundef %44, ptr noundef nonnull @msm_devfreq_idle_work, i32 noundef 1, i32 noundef 1) #4
  br label %45

45:                                               ; preds = %39, %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_devfreq_add_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_suspend_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_devfreq_cooling_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_work_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_devfreq_boost_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -184
  %3 = tail call i32 @dev_pm_qos_update_request(ptr noundef %2, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_devfreq_idle_work(ptr noundef %0) #0 {
  %2 = tail call i64 @ktime_get() #4
  %3 = getelementptr i8, ptr %0, i32 -56
  store i64 %2, ptr %3, align 8
  %4 = getelementptr i8, ptr %0, i32 104
  %5 = load i8, ptr %4, align 8, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -148
  %9 = tail call i32 @dev_pm_qos_update_request(ptr noundef %8, i32 noundef 0) #4
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 46
  %3 = load ptr, ptr %2, align 4
  tail call void @devfreq_cooling_unregister(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 2
  %5 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %4) #4
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 1
  %7 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_cooling_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_resume(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 3
  store i64 0, ptr %3, align 8
  %4 = tail call i64 @ktime_get() #4
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 4
  store i64 %4, ptr %5, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = tail call i32 @devfreq_resume_device(ptr noundef %6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_resume_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_suspend(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @devfreq_suspend_device(ptr noundef %3) #4
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6
  %6 = tail call i32 @hrtimer_cancel(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6, i32 1
  %8 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %7) #4
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 7
  %10 = tail call i32 @hrtimer_cancel(ptr noundef %9) #4
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 7, i32 1
  %12 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %11) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_boost(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 %6(ptr noundef %0) #4
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #4
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  %16 = zext i32 %15 to i64
  %17 = zext i32 %1 to i64
  %18 = mul nuw i64 %16, %17
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %18, i32 0) #5, !srcloc !9
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = extractvalue { i64, i32 } %19, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %18, i64 %20, i32 %21) #5, !srcloc !10
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = lshr i64 %23, 9
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 2
  %27 = tail call i32 @dev_pm_qos_update_request(ptr noundef %26, i32 noundef %25) #4
  %28 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 7
  %29 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  %30 = zext i32 %29 to i64
  %31 = mul nuw nsw i64 %30, 1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %28, i64 noundef %31, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hrtimer_queue_work(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6
  %7 = tail call i32 @hrtimer_cancel(ptr noundef %6) #4
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6, i32 1
  %9 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %8) #4
  %10 = tail call i64 @ktime_get() #4
  %11 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = sub i64 %10, %12
  %14 = icmp slt i64 %13, 0
  %15 = tail call i64 @llvm.abs.i64(i64 %13, i1 false) #4
  %16 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %15) #5, !srcloc !11
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %15, i64 %16, i32 0) #5, !srcloc !10
  %18 = extractvalue { i64, i32 } %17, 0
  %19 = lshr i64 %18, 18
  %20 = sub nsw i64 0, %19
  %21 = select i1 %14, i64 %20, i64 %19
  %22 = trunc i64 %21 to i32
  %23 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %25, label %54

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %27, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 %29(ptr noundef %0) #4
  br label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 30
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @clk_get_rate(ptr noundef %35) #4
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 1
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %40, i32 0) #5, !srcloc !9
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = extractvalue { i64, i32 } %41, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %40, i64 %42, i32 %43) #5, !srcloc !10
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = lshr i64 %45, 9
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 2
  %49 = tail call i32 @dev_pm_qos_update_request(ptr noundef %48, i32 noundef %47) #4
  %50 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 7
  %51 = load i32, ptr getelementptr inbounds (%struct.devfreq_dev_profile, ptr @msm_devfreq_profile, i32 0, i32 1), align 4
  %52 = zext i32 %51 to i64
  %53 = mul nuw nsw i64 %52, 1000000
  tail call void @msm_hrtimer_queue_work(ptr noundef %50, i64 noundef %53, i32 noundef 1) #4
  br label %54

54:                                               ; preds = %37, %5
  %55 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 1
  %56 = tail call i32 @dev_pm_qos_update_request(ptr noundef %55, i32 noundef 2147483647) #4
  %57 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 8
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr i8, ptr %60, i32 -16
  %62 = getelementptr i8, ptr %60, i32 -4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %63, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = tail call i32 %65(ptr noundef %61) #4
  br label %73

69:                                               ; preds = %54
  %70 = getelementptr i8, ptr %60, i32 200
  %71 = load ptr, ptr %70, align 8
  %72 = tail call i32 @clk_get_rate(ptr noundef %71) #4
  br label %73

73:                                               ; preds = %69, %67
  %74 = load ptr, ptr %62, align 4
  %75 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %74, i32 0, i32 12
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %61) #4
  %78 = tail call i64 @ktime_get() #4
  %79 = getelementptr i8, ptr %60, i32 424
  %80 = load i64, ptr %79, align 8
  %81 = sub i64 %78, %80
  %82 = tail call i64 @llvm.abs.i64(i64 %81, i1 false) #4
  %83 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %82, i32 0) #5, !srcloc !9
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = extractvalue { i64, i32 } %83, 1
  %86 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %82, i64 %84, i32 %85) #5, !srcloc !10
  store i64 %78, ptr %79, align 8
  br label %87

87:                                               ; preds = %73, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_devfreq_get_dev_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -16
  %6 = getelementptr i8, ptr %4, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %5) #4
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %4, i32 200
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #4
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  %19 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %20, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %5) #4
  %24 = getelementptr inbounds %struct.devfreq_dev_status, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = tail call i64 @ktime_get() #4
  %26 = getelementptr i8, ptr %4, i32 424
  %27 = load i64, ptr %26, align 8
  %28 = sub i64 %25, %27
  %29 = icmp slt i64 %28, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %28, i1 false) #4
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #5, !srcloc !9
  %32 = extractvalue { i64, i32 } %31, 0
  %33 = extractvalue { i64, i32 } %31, 1
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %32, i32 %33) #5, !srcloc !10
  %35 = extractvalue { i64, i32 } %34, 0
  %36 = lshr i64 %35, 9
  %37 = sub nsw i64 0, %36
  %38 = select i1 %29, i64 %37, i64 %36
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %1, align 4
  store i64 %25, ptr %26, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_devfreq_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 41, i32 6
  tail call void @msm_hrtimer_queue_work(ptr noundef %6, i64 noundef 1000000, i32 noundef 1) #4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_devfreq_target(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = tail call ptr @devfreq_recommended_opp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = ptrtoint ptr %7 to i32
  br label %41

11:                                               ; preds = %3
  %12 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %7) #4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gpu_freq_change, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #4
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %27 = tail call i32 @__traceiter_msm_gpu_freq_change(ptr noundef null, i32 noundef %12) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  br label %28

28:                                               ; preds = %26, %15, %11
  %29 = getelementptr i8, ptr %5, i32 -4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %30, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void %32(ptr noundef %6, ptr noundef %7) #4
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %5, i32 200
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %1, align 4
  %39 = tail call i32 @clk_set_rate(ptr noundef %37, i32 noundef %38) #4
  br label %40

40:                                               ; preds = %35, %34
  tail call void @dev_pm_opp_put(ptr noundef %7) #4
  br label %41

41:                                               ; preds = %40, %9
  %42 = phi i32 [ %10, %9 ], [ 0, %40 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_devfreq_get_cur_freq(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %4, i32 -16
  %12 = tail call i32 %8(ptr noundef %11) #4
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %4, i32 200
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @clk_get_rate(ptr noundef %15) #4
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %16, %13 ]
  store i32 %18, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gpu_freq_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!9 = !{i64 1316306, i64 1316333, i64 1316355, i64 1316383}
!10 = !{i64 1316714, i64 1316741, i64 1316774, i64 1316795, i64 1316822, i64 1316848}
!11 = !{i64 1316019, i64 1316046}
!12 = !{i64 2155722070}
!13 = !{i64 2155722228}
