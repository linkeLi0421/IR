; ModuleID = '/llk/IR/drivers/power/supply/power_supply_leds.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_leds.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.power_supply_propval = type { i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s-charging-or-full\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s-charging\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s-full\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s-charging-blink-full-solid\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s-online\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_update_leds(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %union.power_supply_propval, align 4
  %3 = alloca %union.power_supply_propval, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %43

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #3
  store i32 0, ptr %5, align 4
  %11 = call i32 @power_supply_get_property(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i32, ptr %3, align 4
  switch i32 %14, label %33 [
    i32 4, label %15
    i32 1, label %24
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  call void @led_trigger_event(ptr noundef %17, i32 noundef 255) #3
  %18 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 8
  call void @led_trigger_event(ptr noundef %19, i32 noundef 0) #3
  %20 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 21
  %21 = load ptr, ptr %20, align 8
  call void @led_trigger_event(ptr noundef %21, i32 noundef 255) #3
  %22 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  call void @led_trigger_event(ptr noundef %23, i32 noundef 255) #3
  br label %42

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 17
  %26 = load ptr, ptr %25, align 8
  call void @led_trigger_event(ptr noundef %26, i32 noundef 255) #3
  %27 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 19
  %28 = load ptr, ptr %27, align 8
  call void @led_trigger_event(ptr noundef %28, i32 noundef 255) #3
  %29 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 21
  %30 = load ptr, ptr %29, align 8
  call void @led_trigger_event(ptr noundef %30, i32 noundef 0) #3
  %31 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 25
  %32 = load ptr, ptr %31, align 8
  call void @led_trigger_blink(ptr noundef %32, ptr noundef nonnull %4, ptr noundef nonnull %5) #3
  br label %42

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 8
  call void @led_trigger_event(ptr noundef %35, i32 noundef 0) #3
  %36 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 19
  %37 = load ptr, ptr %36, align 8
  call void @led_trigger_event(ptr noundef %37, i32 noundef 0) #3
  %38 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 21
  %39 = load ptr, ptr %38, align 8
  call void @led_trigger_event(ptr noundef %39, i32 noundef 0) #3
  %40 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  call void @led_trigger_event(ptr noundef %41, i32 noundef 0) #3
  br label %42

42:                                               ; preds = %33, %24, %15, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  br label %53

43:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4, !annotation !8
  %44 = call i32 @power_supply_get_property(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, ptr %2, align 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 23
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, i32 0, i32 255
  call void @led_trigger_event(ptr noundef %50, i32 noundef %51) #3
  br label %52

52:                                               ; preds = %46, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %53

53:                                               ; preds = %52, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_create_triggers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  %6 = load ptr, ptr %2, align 4
  br i1 %5, label %7, label %44

7:                                                ; preds = %1
  %8 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %6) #3
  %9 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 18
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %13) #3
  %15 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 20
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %19) #3
  %21 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 22
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %0, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %25) #3
  %27 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 26
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 17
  tail call void @led_trigger_register_simple(ptr noundef %30, ptr noundef %31) #3
  %32 = load ptr, ptr %15, align 4
  %33 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 19
  tail call void @led_trigger_register_simple(ptr noundef %32, ptr noundef %33) #3
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 21
  tail call void @led_trigger_register_simple(ptr noundef %34, ptr noundef %35) #3
  %36 = load ptr, ptr %27, align 4
  %37 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 25
  tail call void @led_trigger_register_simple(ptr noundef %36, ptr noundef %37) #3
  br label %50

38:                                               ; preds = %23
  %39 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %39) #3
  br label %40

40:                                               ; preds = %38, %17
  %41 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %41) #3
  br label %42

42:                                               ; preds = %40, %11
  %43 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %43) #3
  br label %50

44:                                               ; preds = %1
  %45 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %6) #3
  %46 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 24
  store ptr %45, ptr %46, align 4
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 23
  tail call void @led_trigger_register_simple(ptr noundef nonnull %45, ptr noundef %49) #3
  br label %50

50:                                               ; preds = %48, %44, %42, %29, %7
  %51 = phi i32 [ 0, %29 ], [ -12, %7 ], [ -12, %42 ], [ 0, %48 ], [ -12, %44 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_remove_triggers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  tail call void @led_trigger_unregister_simple(ptr noundef %8) #3
  %9 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  tail call void @led_trigger_unregister_simple(ptr noundef %10) #3
  %11 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 8
  tail call void @led_trigger_unregister_simple(ptr noundef %12) #3
  %13 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  tail call void @led_trigger_unregister_simple(ptr noundef %14) #3
  %15 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #3
  %17 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #3
  %19 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 20
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #3
  %21 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 18
  br label %26

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 23
  %24 = load ptr, ptr %23, align 8
  tail call void @led_trigger_unregister_simple(ptr noundef %24) #3
  %25 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 24
  br label %26

26:                                               ; preds = %22, %6
  %27 = phi ptr [ %25, %22 ], [ %21, %6 ]
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_blink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
