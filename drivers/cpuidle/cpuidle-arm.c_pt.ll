; ModuleID = '/llk/IR/drivers/cpuidle/cpuidle-arm.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-arm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }

@__initcall__kmod_cpuidle_arm__166_168_arm_idle_init6 = internal global ptr @arm_idle_init, section ".initcall6.init", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@arm_idle_state_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,idle-state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_enter_idle_state }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [51 x i8] c"\013CPUidle arm: CPU %d failed to init idle CPU ops\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"arm_idle\00", align 1
@arm_idle_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.1, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_enter_idle_state, ptr null, ptr null }, [9 x %struct.cpuidle_state] zeroinitializer }>, i32 0, i32 0, ptr null, ptr null }, section ".init.data", align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpuidle_arm__166_168_arm_idle_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arm_idle_init() #0 section ".init.text" {
  br label %1

1:                                                ; preds = %6, %0
  %2 = phi i32 [ -1, %0 ], [ %3, %6 ]
  %3 = tail call i32 @cpumask_next(i32 noundef %2, ptr noundef nonnull @__cpu_possible_mask) #5
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @arm_idle_init_cpu(i32 noundef %3) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %1, label %9

9:                                                ; preds = %6
  %10 = add i32 %3, -1
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %12, %9
  %13 = phi i32 [ %20, %12 ], [ %10, %9 ]
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @cpuidle_devices to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %18) #7
  tail call void @cpuidle_unregister(ptr noundef %19) #7
  tail call void @kfree(ptr noundef %19) #7
  %20 = add nsw i32 %13, -1
  %21 = icmp sgt i32 %13, 0
  br i1 %21, label %12, label %22

22:                                               ; preds = %12, %9, %1
  %23 = phi i32 [ %7, %9 ], [ %7, %12 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @arm_idle_init_cpu(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @kmemdup(ptr noundef nonnull @arm_idle_driver, i32 noundef 992, i32 noundef 3264) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %1
  %5 = and i32 %0, 31
  %6 = add nuw nsw i32 %5, 1
  %7 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %6
  %8 = lshr i32 %0, 5
  %9 = sub nsw i32 0, %8
  %10 = getelementptr i32, ptr %7, i32 %9
  %11 = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 6
  store ptr %10, ptr %11, align 8
  %12 = tail call i32 @dt_init_idle_driver(ptr noundef nonnull %2, ptr noundef nonnull @arm_idle_state_match, i32 noundef 1) #7
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = icmp eq i32 %12, 0
  %16 = select i1 %15, i32 -19, i32 %12
  br label %27

17:                                               ; preds = %4
  %18 = tail call i32 @arm_cpuidle_init(i32 noundef %0) #7
  switch i32 %18, label %19 [
    i32 0, label %24
    i32 -95, label %21
  ]

19:                                               ; preds = %17
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #8
  br label %21

21:                                               ; preds = %19, %17
  %22 = icmp eq i32 %18, -6
  %23 = select i1 %22, i32 0, i32 %18
  br label %27

24:                                               ; preds = %17
  %25 = tail call i32 @cpuidle_register(ptr noundef nonnull %2, ptr noundef null) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %21, %14
  %28 = phi i32 [ %16, %14 ], [ %23, %21 ], [ %25, %24 ]
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %29

29:                                               ; preds = %27, %24, %1
  %30 = phi i32 [ %28, %27 ], [ -12, %1 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dt_init_idle_driver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arm_enter_idle_state(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 6), align 4
  %7 = tail call i32 %6() #7
  br label %18

8:                                                ; preds = %3
  %9 = tail call i32 @cpu_pm_enter() #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 @arm_cpuidle_suspend(i32 noundef %2) #7
  %13 = tail call i32 @cpu_pm_exit() #7
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %9, %8 ], [ %12, %11 ]
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 %2, i32 -1
  br label %18

18:                                               ; preds = %14, %5
  %19 = phi i32 [ %17, %14 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_suspend(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
