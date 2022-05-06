; ModuleID = '/llk/IR/drivers/clocksource/timer-orion.c_pt.bc'
source_filename = "../drivers/clocksource/timer-orion.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }

@__of_table_orion_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @orion_timer_init }, section "__timer_of_table", align 4
@timer_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [33 x i8] c"\013%pOFn: unable to map resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\013%pOFn: unable to get clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013Failed to prepare clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%pOFn: unable to parse timer1 irq\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"orion_clocksource\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\013Failed to initialize mmio timer\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"orion_event\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\013%pOFn: unable to setup irq\0A\00", align 1
@ticks_per_jiffy = internal unnamed_addr global i32 0, align 4
@orion_clkevt = internal global %struct.clock_event_device { ptr null, ptr @orion_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 32, i32 0, i32 3, i32 0, ptr @orion_clkevt_set_periodic, ptr @orion_clkevt_shutdown, ptr null, ptr @orion_clkevt_shutdown, ptr @orion_clkevt_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.6, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@orion_delay_timer = internal global %struct.delay_timer { ptr @orion_read_timer, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_orion_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @orion_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr @timer_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #5
  br label %51

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #5
  %11 = ptrtoint ptr %7 to i32
  br label %51

12:                                               ; preds = %6
  %13 = tail call i32 @clk_prepare(ptr noundef %7) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %7) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %16, %18 ], [ %13, %12 ]
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  br label %51

22:                                               ; preds = %15
  %23 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 1) #4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #5
  br label %49

27:                                               ; preds = %22
  %28 = tail call i32 @clk_get_rate(ptr noundef %7) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr @timer_base, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr @timer_base, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #4, !srcloc !9
  %33 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %33, i32 noundef 3, i32 noundef 3) #4
  %34 = load ptr, ptr @timer_base, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  %36 = tail call i32 @clocksource_mmio_init(ptr noundef %35, ptr noundef nonnull @.str.4, i32 noundef %28, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %49

40:                                               ; preds = %27
  tail call void @sched_clock_register(ptr noundef nonnull @orion_read_sched_clock, i32 noundef 32, i32 noundef %28) #4
  %41 = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @orion_clkevt_irq_handler, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0) #5
  br label %49

45:                                               ; preds = %40
  %46 = tail call i32 @clk_get_rate(ptr noundef %7) #4
  %47 = add i32 %46, 50
  %48 = udiv i32 %47, 100
  store i32 %48, ptr @ticks_per_jiffy, align 4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @orion_clkevt, i32 0, i32 25), align 4
  store i32 %23, ptr getelementptr inbounds (%struct.clock_event_device, ptr @orion_clkevt, i32 0, i32 23), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @orion_clkevt, i32 noundef %28, i32 noundef 1, i32 noundef -2) #4
  store i32 %28, ptr getelementptr inbounds (%struct.delay_timer, ptr @orion_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @orion_delay_timer) #4
  br label %51

49:                                               ; preds = %43, %38, %25
  %50 = phi i32 [ -22, %25 ], [ %36, %38 ], [ %41, %43 ]
  tail call void @clk_disable(ptr noundef %7) #4
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %51

51:                                               ; preds = %49, %45, %19, %9, %4
  %52 = phi i32 [ %11, %9 ], [ %20, %19 ], [ %50, %49 ], [ 0, %45 ], [ -6, %4 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @orion_read_sched_clock() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_clkevt_irq_handler(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @orion_clkevt, align 64
  tail call void %3(ptr noundef nonnull @orion_clkevt) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #4, !srcloc !9
  %5 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %5, i32 noundef 12, i32 noundef 4) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_clkevt_set_periodic(ptr nocapture noundef readnone %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %2 = load i32, ptr @ticks_per_jiffy, align 4
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @timer_base, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %6 = load i32, ptr @ticks_per_jiffy, align 4
  %7 = add i32 %6, -1
  %8 = load ptr, ptr @timer_base, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !9
  %10 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %10, i32 noundef 12, i32 noundef 12) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_clkevt_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %2, i32 noundef 12, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @orion_read_timer() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2151349539}
!9 = !{i64 2828130}
!10 = !{i64 2151349855}
!11 = !{i64 2828548}
!12 = !{i64 2151345571}
!13 = !{i64 2151345763}
!14 = !{i64 2151346522}
!15 = !{i64 2151346889}
!16 = !{i64 2151345188}
