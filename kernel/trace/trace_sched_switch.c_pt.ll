; ModuleID = '/llk/IR/kernel/trace/trace_sched_switch.c_pt.bc'
source_filename = "../kernel/trace/trace_sched_switch.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }

@sched_register_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sched_register_mutex, i64 12), ptr getelementptr (i8, ptr @sched_register_mutex, i64 12) } }, align 4
@sched_cmdline_ref = internal unnamed_addr global i32 0, align 4
@sched_tgid_ref = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"\016wakeup trace: Couldn't activate tracepoint probe to kernel_sched_wakeup_new\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"\016sched trace: Couldn't activate tracepoint probe to kernel_sched_switch\0A\00", align 1
@__tracepoint_sched_wakeup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_wakeup_new = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_switch = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_start_cmdline_record() local_unnamed_addr #0 {
  tail call fastcc void @tracing_start_sched_switch(i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tracing_start_sched_switch(i32 noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_register_mutex) #4
  %2 = load i32, ptr @sched_cmdline_ref, align 4
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @sched_tgid_ref, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  switch i32 %0, label %11 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %1
  %8 = add i32 %2, 1
  store i32 %8, ptr @sched_cmdline_ref, align 4
  br label %11

9:                                                ; preds = %1
  %10 = add i32 %4, 1
  store i32 %10, ptr @sched_tgid_ref, align 4
  br label %11

11:                                               ; preds = %9, %7, %1
  %12 = phi i32 [ %4, %1 ], [ %10, %9 ], [ %4, %7 ]
  %13 = phi i32 [ %2, %1 ], [ %2, %9 ], [ %8, %7 ]
  br i1 %6, label %14, label %36

14:                                               ; preds = %11
  %15 = icmp ne i32 %13, 0
  %16 = icmp ne i32 %12, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %36

23:                                               ; preds = %18
  %24 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %34

28:                                               ; preds = %23
  %29 = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_sched_switch, ptr noundef null) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  %33 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  br label %34

34:                                               ; preds = %31, %26
  %35 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  br label %36

36:                                               ; preds = %34, %28, %21, %14, %11
  tail call void @mutex_unlock(ptr noundef nonnull @sched_register_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_stop_cmdline_record() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_register_mutex) #4
  %1 = load i32, ptr @sched_cmdline_ref, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @sched_cmdline_ref, align 4
  %3 = icmp ne i32 %2, 0
  %4 = load i32, ptr @sched_tgid_ref, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_sched_switch, ptr noundef null) #4
  %9 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  %10 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  br label %11

11:                                               ; preds = %7, %0
  tail call void @mutex_unlock(ptr noundef nonnull @sched_register_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_start_tgid_record() local_unnamed_addr #0 {
  tail call fastcc void @tracing_start_sched_switch(i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_stop_tgid_record() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @sched_register_mutex) #4
  %1 = load i32, ptr @sched_tgid_ref, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @sched_tgid_ref, align 4
  %3 = load i32, ptr @sched_cmdline_ref, align 4
  %4 = icmp ne i32 %3, 0
  %5 = icmp ne i32 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @probe_sched_switch, ptr noundef null) #4
  %9 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  %10 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @probe_sched_wakeup, ptr noundef null) #4
  br label %11

11:                                               ; preds = %7, %0
  tail call void @mutex_unlock(ptr noundef nonnull @sched_register_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @probe_sched_wakeup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load i32, ptr @sched_tgid_ref, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 0, i32 2
  %6 = load i32, ptr @sched_cmdline_ref, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = or i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #4
  tail call void @tracing_record_taskinfo(ptr noundef %12, i32 noundef %9) #4
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @probe_sched_switch(ptr nocapture noundef readnone %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr @sched_tgid_ref, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 2
  %8 = load i32, ptr @sched_cmdline_ref, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = or i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  tail call void @tracing_record_taskinfo_sched_switch(ptr noundef %2, ptr noundef %3, i32 noundef %11) #4
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_taskinfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_record_taskinfo_sched_switch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
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
