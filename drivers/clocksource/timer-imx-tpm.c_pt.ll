; ModuleID = '/llk/IR/drivers/clocksource/timer-imx-tpm.c_pt.bc'
source_filename = "../drivers/clocksource/timer-imx-tpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.timer_of = type { i32, ptr, [56 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.delay_timer = type { ptr, i32 }

@__of_table_imx7ulp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-tpm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tpm_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\013tpm: failed to get ipg clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\013tpm: ipg clock enable failed (%d)\0A\00", align 1
@to_tpm = internal global %struct.timer_of { i32 7, ptr null, [56 x i8] undef, %struct.clock_event_device { ptr null, ptr @tpm_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @tpm_set_state_oneshot, ptr null, ptr @tpm_set_state_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.3, i32 200, i32 0, i32 0, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq { i32 0, i32 0, i32 0, ptr null, i32 86528, ptr @tpm_timer_interrupt }, %struct.of_timer_clk { ptr null, ptr @.str.4, i32 0, i32 0, i32 0 }, ptr null }, align 64
@timer_base = internal unnamed_addr global ptr null, align 4
@counter_width = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"i.MX7ULP TPM Timer\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@tpm_delay_timer = internal global %struct.delay_timer zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"imx-tpm\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx7ulp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tpm_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str) #4
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #5
  br label %46

6:                                                ; preds = %1
  %7 = tail call i32 @clk_prepare(ptr noundef %2) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call i32 @clk_enable(ptr noundef %2) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %2) #4
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i32 [ %10, %12 ], [ %7, %6 ]
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %14) #5
  tail call void @clk_put(ptr noundef %2) #4
  br label %46

16:                                               ; preds = %9
  %17 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @to_tpm) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 4), align 64
  store ptr %20, ptr @timer_base, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !9
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  store i32 %24, ptr @counter_width, align 4
  %25 = icmp eq i32 %24, 32
  %26 = select i1 %25, i32 200, i32 150
  store i32 %26, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 3, i32 22), align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %27 = load ptr, ptr @timer_base, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %29 = load ptr, ptr @timer_base, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 128) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %31 = load ptr, ptr @timer_base, align 4
  %32 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr @timer_base, align 4
  %34 = getelementptr i8, ptr %33, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 128) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %35 = load i32, ptr @counter_width, align 4
  %36 = icmp eq i32 %35, 32
  %37 = select i1 %36, i32 11, i32 15
  %38 = load ptr, ptr @timer_base, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %40 = load i32, ptr @counter_width, align 4
  %41 = sub i32 32, %40
  %42 = lshr i32 -1, %41
  %43 = load ptr, ptr @timer_base, align 4
  %44 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #4, !srcloc !11
  tail call fastcc void @tpm_clockevent_init() #6
  %45 = tail call fastcc i32 @tpm_clocksource_init() #6
  br label %46

46:                                               ; preds = %19, %16, %13, %4
  %47 = phi i32 [ -19, %4 ], [ %14, %13 ], [ %45, %19 ], [ %17, %16 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tpm_clockevent_init() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 6, i32 3), align 16
  %2 = lshr i32 %1, 3
  %3 = load i32, ptr @counter_width, align 4
  %4 = sub i32 32, %3
  %5 = lshr i32 -1, %4
  %6 = and i32 %5, -2
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 3), i32 noundef %2, i32 noundef 300, i32 noundef %6) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @tpm_clocksource_init() unnamed_addr #0 section ".init.text" {
  store ptr @tpm_read_current_timer, ptr @tpm_delay_timer, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 6, i32 3), align 16
  %2 = lshr i32 %1, 3
  store i32 %2, ptr getelementptr inbounds (%struct.delay_timer, ptr @tpm_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @tpm_delay_timer) #4
  %3 = load i32, ptr @counter_width, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 6, i32 3), align 16
  %5 = lshr i32 %4, 3
  tail call void @sched_clock_register(ptr noundef nonnull @tpm_read_sched_clock, i32 noundef %3, i32 noundef %5) #4
  %6 = load ptr, ptr @timer_base, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 6, i32 3), align 16
  %9 = lshr i32 %8, 3
  %10 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to_tpm, i32 0, i32 3, i32 22), align 8
  %11 = load i32, ptr @counter_width, align 4
  %12 = tail call i32 @clocksource_mmio_init(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef nonnull @clocksource_mmio_readl_up) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %6 = add i32 %5, %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr @timer_base, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #4, !srcloc !11
  %9 = load ptr, ptr @timer_base, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %12 = sub i32 %6, %11
  %13 = icmp sgt i32 %12, 0
  %14 = select i1 %13, i32 0, i32 -62
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_set_state_oneshot(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @timer_base, align 4
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %5 = or i32 %4, 80
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @timer_base, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_set_state_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @timer_base, align 4
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %5 = and i32 %4, -125
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @timer_base, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !11
  %5 = load ptr, ptr %1, align 64
  tail call void %5(ptr noundef %1) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tpm_read_current_timer() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tpm_read_sched_clock() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { cold }

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
!8 = !{i64 2829454}
!9 = !{i64 2151300674}
!10 = !{i64 2151300878}
!11 = !{i64 2829036}
!12 = !{i64 2151301211}
!13 = !{i64 2151301542}
!14 = !{i64 2151301875}
!15 = !{i64 2151302275}
!16 = !{i64 2151303807}
!17 = !{i64 2151297539}
!18 = !{i64 2151297774}
!19 = !{i64 2151295982}
!20 = !{i64 2151296260}
!21 = !{i64 2151295068}
!22 = !{i64 2151295345}
!23 = !{i64 2151296854}
