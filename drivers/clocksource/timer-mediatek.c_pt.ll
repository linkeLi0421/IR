; ModuleID = '/llk/IR/drivers/clocksource/timer-mediatek.c_pt.bc'
source_filename = "../drivers/clocksource/timer-mediatek.c"
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

@__of_table_mtk_mt6577 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_gpt_init }, section "__timer_of_table", align 4
@__of_table_mtk_mt6765 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_syst_init }, section "__timer_of_table", align 4
@to = internal global %struct.timer_of { i32 7, ptr null, [56 x i8] undef, %struct.clock_event_device { ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str, i32 300, i32 0, i32 0, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq { i32 0, i32 0, i32 0, ptr null, i32 86528, ptr null }, %struct.of_timer_clk zeroinitializer, ptr null }, align 64
@gpt_sched_reg = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = private unnamed_addr constant [11 x i8] c"mtk-clkevt\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_mtk_mt6577, ptr @__of_table_mtk_mt6765], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_gpt_init(ptr noundef %0) #0 section ".init.text" {
  store i32 3, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 9), align 4
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 14), align 8
  store ptr @mtk_gpt_clkevt_set_periodic, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 11), align 4
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 12), align 64
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 15), align 4
  store ptr @mtk_gpt_clkevt_next_event, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 1), align 4
  store ptr @mtk_gpt_suspend, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 17), align 4
  store ptr @mtk_gpt_resume, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 18), align 8
  store ptr @mtk_gpt_interrupt, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 5, i32 5), align 32
  %2 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @to) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  tail call fastcc void @mtk_gpt_setup(i8 noundef zeroext 2, i8 noundef zeroext 3) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %6 = getelementptr i8, ptr %5, i32 40
  %7 = load ptr, ptr %0, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  %9 = tail call i32 @clocksource_mmio_init(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %11 = getelementptr i8, ptr %10, i32 40
  store ptr %11, ptr @gpt_sched_reg, align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @sched_clock_register(ptr noundef nonnull @mtk_gpt_read_sched_clock, i32 noundef 32, i32 noundef %12) #7
  tail call fastcc void @mtk_gpt_setup(i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %13 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %13, i32 noundef 3, i32 noundef -1) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %14 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 63) #7, !srcloc !9
  %17 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %19 = or i32 %18, 1
  %20 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #7, !srcloc !9
  br label %21

21:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mtk_syst_init(ptr noundef %0) #0 section ".init.text" {
  store i32 34, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 9), align 4
  store ptr @mtk_syst_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 14), align 8
  store ptr @mtk_syst_clkevt_oneshot, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 12), align 64
  store ptr @mtk_syst_clkevt_resume, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 15), align 4
  store ptr @mtk_syst_clkevt_next_event, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 1), align 4
  store ptr @mtk_syst_handler, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 5, i32 5), align 32
  %2 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @to) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %5, i32 noundef 3, i32 noundef -1) #7
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_shutdown(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_set_periodic(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  %9 = getelementptr i8, ptr %0, i32 244
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %2, align 64
  %12 = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %13 = load ptr, ptr %2, align 64
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1) #7, !srcloc !9
  %15 = load ptr, ptr %2, align 64
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %18 = and i32 %17, -52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %19 = or i32 %18, 19
  %20 = load ptr, ptr %2, align 64
  %21 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %7 = and i32 %6, -2
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr %3, align 64
  %11 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %12 = load ptr, ptr %3, align 64
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #7, !srcloc !9
  %14 = load ptr, ptr %3, align 64
  %15 = getelementptr i8, ptr %14, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %17 = and i32 %16, -52
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %18 = or i32 %17, 3
  %19 = load ptr, ptr %3, align 64
  %20 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_gpt_suspend(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %4 = load ptr, ptr %2, align 64
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 63) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_gpt_resume(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %4 = load ptr, ptr %2, align 64
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 63) #7, !srcloc !9
  %6 = load ptr, ptr %2, align 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %8 = or i32 %7, 1
  %9 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpt_interrupt(i32 noundef %0, ptr noundef %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #7, !srcloc !9
  %6 = load ptr, ptr %1, align 64
  tail call void %6(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mtk_gpt_setup(i8 noundef zeroext %0, i8 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %4 = zext i8 %0 to i32
  %5 = shl nuw nsw i32 %4, 4
  %6 = getelementptr i8, ptr %3, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %8 = or i32 %5, 4
  %9 = getelementptr i8, ptr %7, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %11 = or i32 %5, 12
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %13 = shl i8 %1, 4
  %14 = and i8 %13, 48
  %15 = or i8 %14, 1
  %16 = zext i8 %15 to i32
  %17 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %18 = getelementptr i8, ptr %17, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @mtk_gpt_read_sched_clock() #1 {
  %1 = load ptr, ptr @gpt_sched_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !11
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_shutdown(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr %2, align 64
  %6 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 17) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mtk_syst_clkevt_oneshot(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_resume(ptr nocapture noundef readonly %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr %2, align 64
  %6 = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 17) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %3, align 64
  %7 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !32
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 3) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_syst_handler(i32 noundef %0, ptr noundef %1) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr %3, align 64
  %7 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 17) #7, !srcloc !9
  %8 = load ptr, ptr %1, align 64
  tail call void %8(ptr noundef %1) #7
  ret i32 1
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind }
attributes #6 = { cold }
attributes #7 = { nounwind }

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
!8 = !{i64 2151271538}
!9 = !{i64 2804325}
!10 = !{i64 2151271872}
!11 = !{i64 2804743}
!12 = !{i64 2151272370}
!13 = !{i64 2151272717}
!14 = !{i64 2151266472}
!15 = !{i64 2151266711}
!16 = !{i64 2151267124}
!17 = !{i64 2151267628}
!18 = !{i64 2151268254}
!19 = !{i64 2151268584}
!20 = !{i64 2151273138}
!21 = !{i64 2151273472}
!22 = !{i64 2151269125}
!23 = !{i64 2151269762}
!24 = !{i64 2151270231}
!25 = !{i64 2151270689}
!26 = !{i64 2151271135}
!27 = !{i64 2151262668}
!28 = !{i64 2151263353}
!29 = !{i64 2151265655}
!30 = !{i64 2151263986}
!31 = !{i64 2151264455}
!32 = !{i64 2151265096}
