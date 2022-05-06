; ModuleID = '/llk/IR/drivers/devfreq/governor_passive.c_pt.bc'
source_filename = "../drivers/devfreq/governor_passive.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.5, ptr }
%union.anon.5 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_passive_data = type { ptr, ptr, ptr, %struct.notifier_block }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_freqs = type { i32, i32 }

@__UNIQUE_ID_author162 = internal constant [44 x i8] c"author=Chanwoo Choi <cw00.choi@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author163 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [37 x i8] c"description=DEVFREQ Passive governor\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@devfreq_passive = internal global %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"passive\00\00\00\00\00\00\00\00\00", i64 0, i64 1, ptr @devfreq_passive_get_target_freq, ptr @devfreq_passive_event_handler }, align 8
@.str = private unnamed_addr constant [35 x i8] c"drivers/devfreq/governor_passive.c\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to update devfreq using passive governor\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\013%s: failed remove governor %d\0A\00", align 1
@__func__.devfreq_passive_exit = private unnamed_addr constant [21 x i8] c"devfreq_passive_exit\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_license165], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @devfreq_add_governor(ptr noundef nonnull @devfreq_passive) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @devfreq_remove_governor(ptr noundef nonnull @devfreq_passive) #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.devfreq_passive_exit, i32 noundef %1) #5
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_add_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_passive_get_target_freq(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.devfreq_passive_data, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #4
  br label %77

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %13, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %77, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %13, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.devfreq, ptr %5, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.devfreq, ptr %5, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @devfreq_recommended_opp(ptr noundef %33, ptr noundef %1, i32 noundef 0) #4
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = ptrtoint ptr %34 to i32
  br label %77

38:                                               ; preds = %31
  %39 = load ptr, ptr %28, align 8
  %40 = load ptr, ptr %24, align 8
  %41 = tail call ptr @dev_pm_opp_xlate_required_opp(ptr noundef %39, ptr noundef %40, ptr noundef %34) #4
  tail call void @dev_pm_opp_put(ptr noundef %34) #4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %41) #4
  store i32 %44, ptr %1, align 4
  tail call void @dev_pm_opp_put(ptr noundef %41) #4
  br label %77

45:                                               ; preds = %38, %27, %23
  %46 = getelementptr inbounds %struct.devfreq, ptr %5, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %47, i32 0, i32 9
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %47, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %1, align 4
  br label %55

55:                                               ; preds = %60, %51
  %56 = phi i32 [ 0, %51 ], [ %61, %60 ]
  %57 = getelementptr i32, ptr %53, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %54
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = add nuw i32 %56, 1
  %62 = icmp eq i32 %61, %49
  br i1 %62, label %77, label %55

63:                                               ; preds = %55, %45
  %64 = phi i32 [ 0, %45 ], [ %56, %55 ]
  %65 = icmp eq i32 %64, %49
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %12, align 8
  %68 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %67, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %64, %69
  %71 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %67, i32 0, i32 8
  %72 = load ptr, ptr %71, align 4
  %73 = add i32 %69, -1
  %74 = select i1 %70, i32 %64, i32 %73
  %75 = getelementptr i32, ptr %72, i32 %74
  %76 = load i32, ptr %75, align 4
  store i32 %76, ptr %1, align 4
  br label %77

77:                                               ; preds = %66, %63, %60, %43, %36, %19, %15, %11, %9
  %78 = phi i32 [ %10, %9 ], [ %37, %36 ], [ 0, %66 ], [ 0, %43 ], [ -22, %19 ], [ -22, %15 ], [ -22, %11 ], [ -22, %63 ], [ -22, %60 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_passive_event_handler(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.devfreq_passive_data, ptr %5, i32 0, i32 3
  %8 = icmp eq ptr %6, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  switch i32 %1, label %21 [
    i32 1, label %10
    i32 2, label %17
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.devfreq_passive_data, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr %0, ptr %11, align 4
  br label %15

15:                                               ; preds = %14, %10
  store ptr @devfreq_passive_notifier_call, ptr %7, align 4
  %16 = tail call i32 @devfreq_register_notifier(ptr noundef nonnull %6, ptr noundef %7, i32 noundef 0) #4
  br label %21

17:                                               ; preds = %9
  %18 = tail call i32 @devfreq_unregister_notifier(ptr noundef nonnull %6, ptr noundef %7, i32 noundef 0) #4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef null) #4
  br label %21

21:                                               ; preds = %20, %17, %15, %9, %3
  %22 = phi i32 [ -517, %3 ], [ 0, %9 ], [ %16, %15 ], [ 0, %20 ], [ 0, %17 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devfreq_recommended_opp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_xlate_required_opp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_passive_notifier_call(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.devfreq_freqs, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #4
  switch i32 %1, label %19 [
    i32 0, label %11
    i32 1, label %15
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %9
  br i1 %14, label %20, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.devfreq, ptr %7, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %9
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %3
  tail call void @mutex_unlock(ptr noundef %10) #4
  br label %25

20:                                               ; preds = %15, %11
  %21 = tail call i32 @devfreq_update_target(ptr noundef %6, i32 noundef %9) #4
  tail call void @mutex_unlock(ptr noundef %10) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.devfreq, ptr %6, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.1) #5
  br label %25

25:                                               ; preds = %23, %20, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_unregister_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_update_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_remove_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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
!8 = !{!"branch_weights", i32 2000, i32 1}
