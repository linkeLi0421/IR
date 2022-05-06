; ModuleID = '/llk/IR/drivers/cpuidle/governor.c_pt.bc'
source_filename = "../drivers/cpuidle/governor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@cpuidle_governors = dso_local global %struct.list_head { ptr @cpuidle_governors, ptr @cpuidle_governors }, align 4
@cpuidle_curr_governor = dso_local local_unnamed_addr global ptr null, align 4
@cpuidle_detected_devices = external dso_local global %struct.list_head, align 4
@.str = private unnamed_addr constant [30 x i8] c"\016cpuidle: using governor %s\0A\00", align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@param_governor = dso_local global [16 x i8] zeroinitializer, align 1
@cpuidle_prev_governor = dso_local local_unnamed_addr global ptr null, align 4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @cpuidle_find_governor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @cpuidle_governors, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @cpuidle_governors
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -16
  %8 = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef %7, i32 noundef 16)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_switch_governor(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @cpuidle_curr_governor, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  tail call void @cpuidle_uninstall_idle_handler() #6
  %7 = load ptr, ptr @cpuidle_curr_governor, align 4
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr @cpuidle_detected_devices, align 4
  %10 = icmp eq ptr %9, @cpuidle_detected_devices
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %6
  %13 = phi ptr [ %15, %12 ], [ %9, %6 ]
  %14 = getelementptr i8, ptr %13, i32 -736
  tail call void @cpuidle_disable_device(ptr noundef %14) #6
  %15 = load ptr, ptr %13, align 4
  %16 = icmp eq ptr %15, @cpuidle_detected_devices
  br i1 %16, label %17, label %12

17:                                               ; preds = %12
  %18 = load ptr, ptr @cpuidle_detected_devices, align 4
  br label %19

19:                                               ; preds = %17, %6
  %20 = phi ptr [ %18, %17 ], [ %9, %6 ]
  store ptr %0, ptr @cpuidle_curr_governor, align 4
  %21 = icmp eq ptr %20, @cpuidle_detected_devices
  br i1 %21, label %28, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %26, %22 ], [ %20, %19 ]
  %24 = getelementptr i8, ptr %23, i32 -736
  %25 = tail call i32 @cpuidle_enable_device(ptr noundef %24) #6
  %26 = load ptr, ptr %23, align 4
  %27 = icmp eq ptr %26, @cpuidle_detected_devices
  br i1 %27, label %28, label %22

28:                                               ; preds = %22, %19
  tail call void @cpuidle_install_idle_handler() #6
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %0) #7
  br label %30

30:                                               ; preds = %28, %3, %1
  %31 = phi i32 [ 0, %28 ], [ -22, %1 ], [ 0, %3 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_uninstall_idle_handler() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_disable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enable_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_install_idle_handler() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_register_governor(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.cpuidle_governor, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @cpuidle_disabled() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #6
  br label %11

11:                                               ; preds = %15, %10
  %12 = phi ptr [ @cpuidle_governors, %10 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @cpuidle_governors
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %13, i32 -16
  %17 = tail call i32 @strncasecmp(ptr noundef nonnull %0, ptr noundef %16, i32 noundef 16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = icmp eq ptr %16, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %19, %11
  %22 = getelementptr inbounds %struct.cpuidle_governor, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @cpuidle_governors, i32 0, i32 1), align 4
  store ptr %22, ptr getelementptr inbounds (%struct.list_head, ptr @cpuidle_governors, i32 0, i32 1), align 4
  store ptr @cpuidle_governors, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cpuidle_governor, ptr %0, i32 0, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  store volatile ptr %22, ptr %23, align 4
  %25 = load ptr, ptr @cpuidle_curr_governor, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @strncasecmp(ptr noundef nonnull @param_governor, ptr noundef nonnull %0, i32 noundef 16)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.cpuidle_governor, ptr %25, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cpuidle_governor, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = tail call i32 @strncasecmp(ptr noundef nonnull @param_governor, ptr noundef nonnull %25, i32 noundef 16)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %27, %21
  %40 = tail call i32 @cpuidle_switch_governor(ptr noundef nonnull %0)
  br label %41

41:                                               ; preds = %39, %36, %30, %19
  %42 = phi i32 [ 0, %39 ], [ 0, %36 ], [ 0, %30 ], [ -17, %19 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #6
  br label %43

43:                                               ; preds = %41, %7, %3, %1
  %44 = phi i32 [ %42, %41 ], [ -22, %3 ], [ -22, %1 ], [ -19, %7 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @cpuidle_governor_latency_req(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @get_cpu_device(i32 noundef %0) #6
  %3 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @pm_qos_read_value(ptr noundef nonnull %4) #6
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ 2147483647, %1 ]
  %12 = tail call i32 @cpu_latency_qos_limit() #6
  %13 = tail call i32 @llvm.smin.i32(i32 %11, i32 %12)
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, 1000
  ret i64 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_latency_qos_limit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_read_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
