; ModuleID = '/llk/IR/kernel/time/tick-broadcast-hrtimer.c_pt.bc'
source_filename = "../kernel/time/tick-broadcast-hrtimer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@bctimer = internal global %struct.hrtimer zeroinitializer, align 8
@ce_broadcast_hrtimer = internal global %struct.clock_event_device { ptr null, ptr null, ptr @bc_set_next, i64 0, i64 9223372036854775807, i64 1, i32 1, i32 0, i32 0, i32 134, i32 0, ptr null, ptr null, ptr null, ptr @bc_shutdown, ptr null, ptr null, ptr null, ptr null, i32 1, i32 -1, ptr @.str, i32 0, i32 0, i32 -1, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str = private unnamed_addr constant [11 x i8] c"bc_hrtimer\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_setup_hrtimer_broadcast() local_unnamed_addr #0 {
  tail call void @hrtimer_init(ptr noundef nonnull @bctimer, i32 noundef 1, i32 noundef 8) #2
  store ptr @bc_handler, ptr getelementptr inbounds (%struct.hrtimer, ptr @bctimer, i32 0, i32 2), align 8
  tail call void @clockevents_register_device(ptr noundef nonnull @ce_broadcast_hrtimer) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bc_handler(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @ce_broadcast_hrtimer, align 64
  tail call void %2(ptr noundef nonnull @ce_broadcast_hrtimer) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bc_set_next(i64 noundef %0, ptr nocapture noundef writeonly %1) #0 {
  tail call void @rcu_irq_enter_irqson() #2
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @bctimer, i64 noundef %0, i64 noundef 0, i32 noundef 10) #2
  %3 = load ptr, ptr getelementptr inbounds (%struct.hrtimer, ptr @bctimer, i32 0, i32 3), align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 24
  store i32 %6, ptr %7, align 16
  tail call void @rcu_irq_exit_irqson() #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bc_shutdown(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @hrtimer_try_to_cancel(ptr noundef nonnull @bctimer) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
