; ModuleID = '/llk/IR/drivers/clocksource/timer-milbeaut.c_pt.bc'
source_filename = "../drivers/clocksource/timer-milbeaut.c"
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

@__of_table_mlb_peritimer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlb_timer_init }, section "__timer_of_table", align 4
@to = internal global %struct.timer_of { i32 7, ptr null, [56 x i8] undef, %struct.clock_event_device { ptr null, ptr @mlb_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 34, i32 0, ptr @mlb_set_state_periodic, ptr @mlb_set_state_oneshot, ptr null, ptr @mlb_set_state_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str, i32 500, i32 0, i32 0, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq { i32 0, i32 0, i32 0, ptr null, i32 86528, ptr @mlb_timer_interrupt }, %struct.of_timer_clk zeroinitializer, ptr null }, align 64
@.str = private unnamed_addr constant [11 x i8] c"mlb-clkevt\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_mlb_peritimer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mlb_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @to) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  %6 = lshr i32 %5, 1
  %7 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #5, !srcloc !8
  %9 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %10 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #5, !srcloc !8
  %11 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #5, !srcloc !8
  %13 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 19) #5, !srcloc !8
  %15 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %16 = getelementptr i8, ptr %15, i32 20
  %17 = load ptr, ptr %0, align 4
  %18 = tail call i32 @clocksource_mmio_init(ptr noundef %16, ptr noundef %17, i32 noundef %6, i32 noundef 500, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  tail call void @sched_clock_register(ptr noundef nonnull @mlb_timer_sched_read, i32 noundef 32, i32 noundef %6) #5
  %19 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !8
  %20 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %20, i32 noundef 15, i32 noundef -1) #5
  br label %21

21:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mlb_timer_sched_read() #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !9
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  %6 = and i32 %5, -3
  %7 = load ptr, ptr %3, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #5, !srcloc !8
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %0) #5, !srcloc !8
  %10 = load ptr, ptr %3, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 11) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_set_state_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = and i32 %4, -3
  %6 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #5, !srcloc !8
  %7 = getelementptr i8, ptr %0, i32 244
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !8
  %11 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 27) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_set_state_oneshot(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = and i32 %4, -3
  %6 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #5, !srcloc !8
  %7 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 11) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_set_state_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  %5 = and i32 %4, -3
  %6 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mlb_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !9
  %6 = and i32 %5, -5
  %7 = load ptr, ptr %3, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #5, !srcloc !8
  %8 = load ptr, ptr %1, align 64
  tail call void %8(ptr noundef %1) #5
  ret i32 1
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!8 = !{i64 3085076}
!9 = !{i64 3085494}
