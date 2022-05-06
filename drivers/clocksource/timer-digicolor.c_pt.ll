; ModuleID = '/llk/IR/drivers/clocksource/timer-digicolor.c_pt.bc'
source_filename = "../drivers/clocksource/timer-digicolor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.digicolor_timer = type { %struct.clock_event_device, ptr, i32, i32, [52 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__of_table_conexant_digicolor = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @digicolor_timer_init }, section "__timer_of_table", align 4
@dc_timer_dev = internal global %struct.digicolor_timer { %struct.clock_event_device { ptr null, ptr @digicolor_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @digicolor_clkevt_set_periodic, ptr @digicolor_clkevt_set_oneshot, ptr null, ptr @digicolor_clkevt_shutdown, ptr @digicolor_clkevt_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.5, i32 340, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, ptr null, i32 0, i32 2, [52 x i8] undef }, align 64
@.str = private unnamed_addr constant [40 x i8] c"\013timer_digicolor: Can't map registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013timer_digicolor: Can't parse IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\013timer_digicolor: Can't get timer clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"digicolor_timerC\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\014timer_digicolor: request of timer irq %d failed (%d)\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"digicolor_tick\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_conexant_digicolor], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @digicolor_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %44

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 3), align 8
  %8 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %7) #4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %44

12:                                               ; preds = %6
  %13 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #4
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #5
  %17 = ptrtoint ptr %13 to i32
  br label %44

18:                                               ; preds = %12
  %19 = tail call i32 @clk_prepare(ptr noundef %13) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = tail call i32 @clk_enable(ptr noundef %13) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @clk_unprepare(ptr noundef %13) #4
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = tail call i32 @clk_get_rate(ptr noundef %13) #4
  %27 = add i32 %26, 99
  %28 = udiv i32 %27, 100
  store i32 %28, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %30 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %32 = getelementptr i8, ptr %31, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -1) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %34 = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 1) #4, !srcloc !9
  tail call void @sched_clock_register(ptr noundef nonnull @digicolor_timer_sched_read, i32 noundef 32, i32 noundef %26) #4
  %35 = load ptr, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %36 = getelementptr i8, ptr %35, i32 12
  %37 = load ptr, ptr %0, align 4
  %38 = tail call i32 @clocksource_mmio_init(ptr noundef %36, ptr noundef %37, i32 noundef %26, i32 noundef 340, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #4
  %39 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @digicolor_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.3, ptr noundef nonnull @dc_timer_dev) #4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %25
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %39) #5
  br label %44

43:                                               ; preds = %25
  store ptr @__cpu_possible_mask, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 0, i32 25), align 4
  store i32 %8, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 0, i32 23), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @dc_timer_dev, i32 noundef %26, i32 noundef 0, i32 noundef -1) #4
  br label %44

44:                                               ; preds = %43, %41, %15, %10, %4
  %45 = phi i32 [ -22, %10 ], [ %17, %15 ], [ %39, %41 ], [ 0, %43 ], [ -6, %4 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @digicolor_timer_sched_read() #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.digicolor_timer, ptr @dc_timer_dev, i32 0, i32 1), align 64
  %2 = getelementptr i8, ptr %1, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr %1, align 64
  tail call void %3(ptr noundef %1) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %3 = getelementptr inbounds %struct.digicolor_timer, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.digicolor_timer, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = shl i32 %6, 3
  %8 = getelementptr i8, ptr %4, i32 %7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %9 = load ptr, ptr %3, align 64
  %10 = load i32, ptr %5, align 8
  %11 = shl i32 %10, 3
  %12 = or i32 %11, 4
  %13 = getelementptr i8, ptr %9, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr %3, align 64
  %15 = load i32, ptr %5, align 8
  %16 = shl i32 %15, 3
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 17) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_clkevt_set_periodic(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 3
  %7 = getelementptr i8, ptr %3, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #4, !srcloc !9
  %8 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %10 = load ptr, ptr %2, align 64
  %11 = load i32, ptr %4, align 8
  %12 = shl i32 %11, 3
  %13 = or i32 %12, 4
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %9) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %15 = load ptr, ptr %2, align 64
  %16 = load i32, ptr %4, align 8
  %17 = shl i32 %16, 3
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 33) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_clkevt_set_oneshot(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 3
  %7 = getelementptr i8, ptr %3, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr %2, align 64
  %9 = load i32, ptr %4, align 8
  %10 = shl i32 %9, 3
  %11 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 17) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @digicolor_clkevt_shutdown(ptr nocapture noundef readonly %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %2 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.digicolor_timer, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 8
  %6 = shl i32 %5, 3
  %7 = getelementptr i8, ptr %3, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2151346807}
!9 = !{i64 2828362}
!10 = !{i64 2151347113}
!11 = !{i64 2828559}
!12 = !{i64 2151347593}
!13 = !{i64 2828977}
!14 = !{i64 2151344837}
!15 = !{i64 2151343049}
!16 = !{i64 2151344117}
!17 = !{i64 2151343618}
