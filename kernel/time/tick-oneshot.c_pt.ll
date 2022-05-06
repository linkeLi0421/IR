; ModuleID = '/llk/IR/kernel/time/tick-oneshot.c_pt.bc'
source_filename = "../kernel/time/tick-oneshot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tick_device = type { ptr, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@tick_cpu_device = external dso_local global %struct.tick_device, section ".data..percpu", align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"\016Clockevents: could not switch to one-shot mode:\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\01c no tick device\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\01c %s is not functional.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\01c %s does not support one-shot mode.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_program_event(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #3, !srcloc !9
  %6 = add i32 %5, ptrtoint (ptr @tick_cpu_device to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i64 %0, 9223372036854775807
  br i1 %9, label %10, label %12, !prof !10

10:                                               ; preds = %2
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 4) #4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 3
  store i64 9223372036854775807, ptr %11, align 16
  br label %20

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 8
  %14 = load i32, ptr %13, align 16
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %16, label %17, !prof !10

16:                                               ; preds = %12
  tail call void @clockevents_switch_state(ptr noundef %8, i32 noundef 3) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = icmp ne i32 %1, 0
  %19 = tail call i32 @clockevents_program_event(ptr noundef %8, i64 noundef %0, i1 noundef zeroext %18) #4
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ 0, %10 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_resume_oneshot() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #3, !srcloc !9
  %4 = add i32 %3, ptrtoint (ptr @tick_cpu_device to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call void @clockevents_switch_state(ptr noundef %6, i32 noundef 3) #4
  %7 = tail call i64 @ktime_get() #4
  %8 = tail call i32 @clockevents_program_event(ptr noundef %6, i64 noundef %7, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tick_setup_oneshot(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  store ptr %1, ptr %0, align 64
  tail call void @clockevents_switch_state(ptr noundef %0, i32 noundef 3) #4
  %4 = tail call i32 @clockevents_program_event(ptr noundef %0, i64 noundef %2, i1 noundef zeroext true) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_switch_to_oneshot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #3, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @tick_cpu_device to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 18
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %28, label %17

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %30

17:                                               ; preds = %9
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  %19 = load i32, ptr %10, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 21
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %26, label %24

24:                                               ; preds = %17
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %23) #5
  br label %30

26:                                               ; preds = %17
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %23) #5
  br label %30

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 1
  store i32 1, ptr %29, align 4
  store ptr %0, ptr %7, align 64
  tail call void @clockevents_switch_state(ptr noundef nonnull %7, i32 noundef 3) #4
  tail call void @tick_broadcast_switch_to_oneshot() #4
  br label %30

30:                                               ; preds = %28, %26, %24, %14
  %31 = phi i32 [ 0, %28 ], [ -22, %24 ], [ -22, %26 ], [ -22, %14 ]
  ret i32 %31
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_switch_to_oneshot() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_oneshot_mode_active() local_unnamed_addr #0 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !11
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #4
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #3, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr getelementptr inbounds (%struct.tick_device, ptr @tick_cpu_device, i32 0, i32 1) to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #4, !srcloc !12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tick_init_highres() local_unnamed_addr #0 {
  %1 = tail call i32 @tick_switch_to_oneshot(ptr noundef nonnull @hrtimer_interrupt)
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_interrupt(ptr noundef) #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 622207}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 615102, i64 615163}
!12 = !{i64 618119}
