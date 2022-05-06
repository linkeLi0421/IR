; ModuleID = '/llk/IR/drivers/cpuidle/cpuidle-qcom-spm.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-qcom-spm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.cpuidle_qcom_spm_data = type { %struct.cpuidle_driver, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }

@__initcall__kmod_cpuidle_qcom_spm__166_176_qcom_spm_cpuidle_init6 = internal global ptr @qcom_spm_cpuidle_init, section ".initcall6.init", align 4
@spm_cpuidle_driver = internal global %struct.platform_driver { ptr @spm_cpuidle_drv_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [17 x i8] c"qcom-spm-cpuidle\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot register for CPU%d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"qcom,saw\00", align 1
@qcom_idle_state_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,idle-state-spc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @spm_enter_idle_state }, %struct.of_device_id zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"qcom_spm\00", align 1
@qcom_spm_idle_driver = internal unnamed_addr constant { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.3, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @spm_enter_idle_state, ptr null, ptr null }, [9 x %struct.cpuidle_state] zeroinitializer }>, i32 0, i32 0, ptr null, ptr null }, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpuidle_qcom_spm__166_176_qcom_spm_cpuidle_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @qcom_spm_cpuidle_init() #0 section ".init.text" {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spm_cpuidle_driver, ptr noundef null) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #8
  %5 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #8
  store ptr @.str, ptr %5, align 4
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %7, i8 0, i64 16, i1 false) #8
  %8 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  call void @platform_driver_unregister(ptr noundef nonnull @spm_cpuidle_driver) #8
  %11 = ptrtoint ptr %8 to i32
  br label %12

12:                                               ; preds = %10, %4, %0
  %13 = phi i32 [ %11, %10 ], [ %2, %0 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spm_cpuidle_drv_probe(ptr noundef %0) #3 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = tail call zeroext i1 @qcom_scm_is_available() #8
  br i1 %3, label %4, label %65

4:                                                ; preds = %1
  %5 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %65

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %61, %8
  %11 = phi i32 [ %5, %8 ], [ %62, %61 ]
  %12 = call ptr @get_cpu_device(i32 noundef %11) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call ptr @of_get_cpu_node(i32 noundef %11, ptr noundef null) #8
  br label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @of_node_get(ptr noundef %18) #8
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi ptr [ %19, %16 ], [ %15, %14 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %24 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %21, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %25 = icmp ne i32 %24, 0
  %26 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %61, label %29

29:                                               ; preds = %23
  %30 = call ptr @of_find_device_by_node(ptr noundef nonnull %26) #8
  call void @of_node_put(ptr noundef nonnull %26) #8
  call void @of_node_put(ptr noundef nonnull %21) #8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %29
  %33 = call noalias ptr @devm_kmalloc(ptr noundef %9, i32 noundef 1000, i32 noundef 3520) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 8
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.cpuidle_qcom_spm_data, ptr %33, i32 0, i32 1
  store ptr %37, ptr %38, align 8
  %39 = icmp eq ptr %37, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(992) %33, ptr noundef nonnull align 8 dereferenceable(992) @qcom_spm_idle_driver, i32 992, i1 false) #8
  %41 = and i32 %11, 31
  %42 = add nuw nsw i32 %41, 1
  %43 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %42
  %44 = lshr i32 %11, 5
  %45 = sub nsw i32 0, %44
  %46 = getelementptr i32, ptr %43, i32 %45
  %47 = getelementptr inbounds %struct.cpuidle_driver, ptr %33, i32 0, i32 6
  store ptr %46, ptr %47, align 8
  %48 = call i32 @dt_init_idle_driver(ptr noundef nonnull %33, ptr noundef nonnull @qcom_idle_state_match, i32 noundef 1) #8
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %61, label %57

52:                                               ; preds = %40
  %53 = call i32 @qcom_scm_set_warm_boot_addr(ptr noundef nonnull @cpu_resume_arm, ptr noundef %46) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @cpuidle_register(ptr noundef nonnull %33, ptr noundef null) #8
  br label %57

57:                                               ; preds = %55, %52, %50
  %58 = phi i32 [ %48, %50 ], [ %56, %55 ], [ %53, %52 ]
  switch i32 %58, label %59 [
    i32 -19, label %61
    i32 0, label %61
  ]

59:                                               ; preds = %57, %35, %32
  %60 = phi i32 [ %58, %57 ], [ -22, %35 ], [ -12, %32 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %60) #10
  br label %61

61:                                               ; preds = %59, %57, %57, %50, %29, %23, %20
  %62 = call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #9
  %63 = load i32, ptr @nr_cpu_ids, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %10, label %65

65:                                               ; preds = %61, %4, %1
  %66 = phi i32 [ -517, %1 ], [ 0, %4 ], [ 0, %61 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dt_init_idle_driver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_set_warm_boot_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume_arm() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spm_enter_idle_state(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %7 = tail call i32 %6() #8
  br label %20

8:                                                ; preds = %3
  %9 = tail call i32 @cpu_pm_enter() #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cpuidle_qcom_spm_data, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  tail call void @spm_set_low_power_mode(ptr noundef %13, i32 noundef 2) #8
  %14 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @qcom_pm_collapse) #8
  tail call void @spm_set_low_power_mode(ptr noundef %13, i32 noundef 0) #8
  %15 = tail call i32 @cpu_pm_exit() #8
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i32 [ %9, %8 ], [ %14, %11 ]
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %2, i32 -1
  br label %20

20:                                               ; preds = %16, %5
  %21 = phi i32 [ %19, %16 ], [ 0, %5 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spm_set_low_power_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_pm_collapse(i32 noundef %0) #3 {
  tail call void @qcom_scm_cpu_power_down(i32 noundef 0) #8
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_scm_cpu_power_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
