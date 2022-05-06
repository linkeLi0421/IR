; ModuleID = '/llk/IR/drivers/clocksource/timer-owl.c_pt.bc'
source_filename = "../drivers/clocksource/timer-owl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@__of_table_owl_s500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_timer_init }, section "__timer_of_table", align 4
@__of_table_owl_s700 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_timer_init }, section "__timer_of_table", align 4
@__of_table_owl_s900 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [10 x i8] c"owl-timer\00", align 1
@owl_timer_base = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"\013Can't map timer registers\0A\00", align 1
@owl_clksrc_base = internal unnamed_addr global ptr null, align 4
@owl_clkevt_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"timer1\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\013Can't parse timer1 IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013Failed to get clock for clocksource (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"\013Failed to register clocksource (%d)\0A\00", align 1
@owl_clockevent = internal global %struct.clock_event_device { ptr null, ptr @owl_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 34, i32 0, ptr null, ptr @owl_timer_set_state_oneshot, ptr null, ptr @owl_timer_set_state_shutdown, ptr @owl_timer_tick_resume, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.7, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.6 = private unnamed_addr constant [28 x i8] c"\013failed to request irq %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"owl_tick\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_owl_s500, ptr @__of_table_owl_s700, ptr @__of_table_owl_s900], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @owl_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str) #5
  store ptr %2, ptr @owl_timer_base, align 4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %6 = load ptr, ptr @owl_timer_base, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %46

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %2, i32 8
  store ptr %9, ptr @owl_clksrc_base, align 4
  %10 = getelementptr i8, ptr %2, i32 20
  store ptr %10, ptr @owl_clkevt_base, align 4
  %11 = tail call i32 @of_irq_get_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %46

15:                                               ; preds = %8
  %16 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #6
  br label %46

21:                                               ; preds = %15
  %22 = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %23 = load ptr, ptr @owl_clksrc_base, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %25 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #5, !srcloc !9
  %26 = load ptr, ptr @owl_clksrc_base, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %28 = and i32 %27, -6
  %29 = or i32 %28, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %29) #5, !srcloc !9
  tail call void @sched_clock_register(ptr noundef nonnull @owl_timer_sched_read, i32 noundef 32, i32 noundef %22) #5
  %30 = load ptr, ptr @owl_clksrc_base, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = load ptr, ptr %0, align 4
  %33 = tail call i32 @clocksource_mmio_init(ptr noundef %31, ptr noundef %32, i32 noundef %22, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %33) #6
  br label %46

37:                                               ; preds = %21
  %38 = load ptr, ptr @owl_clkevt_base, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %39 = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %40 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #5, !srcloc !9
  %41 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @owl_timer1_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str, ptr noundef nonnull @owl_clockevent) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %11) #6
  br label %46

45:                                               ; preds = %37
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @owl_clockevent, i32 0, i32 25), align 4
  store i32 %11, ptr getelementptr inbounds (%struct.clock_event_device, ptr @owl_clockevent, i32 0, i32 23), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @owl_clockevent, i32 noundef %22, i32 noundef 15, i32 noundef -1) #5
  br label %46

46:                                               ; preds = %45, %43, %35, %18, %13, %4
  %47 = phi i32 [ %7, %4 ], [ -22, %13 ], [ %19, %18 ], [ %33, %35 ], [ %41, %43 ], [ 0, %45 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @owl_timer_sched_read() #3 {
  %1 = load ptr, ptr @owl_clksrc_base, align 4
  %2 = getelementptr i8, ptr %1, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_timer1_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @owl_clkevt_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #5, !srcloc !9
  %4 = load ptr, ptr %1, align 64
  tail call void %4(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_timer_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @owl_clkevt_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %5 = and i32 %4, -6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 2) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %6 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %0) #5, !srcloc !9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %9 = and i32 %8, -6
  %10 = or i32 %9, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %10) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_timer_set_state_oneshot(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @owl_clkevt_base, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %4 = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_timer_set_state_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @owl_clkevt_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %4 = and i32 %3, -6
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %4) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @owl_timer_tick_resume(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2151336782}
!9 = !{i64 2827506}
!10 = !{i64 2151337080}
!11 = !{i64 2151337378}
!12 = !{i64 2827924}
!13 = !{i64 2151337982}
!14 = !{i64 2151338410}
!15 = !{i64 2151338926}
!16 = !{i64 2151340303}
!17 = !{i64 2151339214}
!18 = !{i64 2151339564}
!19 = !{i64 2151339864}
