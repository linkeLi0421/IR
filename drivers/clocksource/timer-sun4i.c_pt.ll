; ModuleID = '/llk/IR/drivers/clocksource/timer-sun4i.c_pt.bc'
source_filename = "../drivers/clocksource/timer-sun4i.c"
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

@__of_table_sun4i = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_timer_init }, section "__timer_of_table", align 4
@__of_table_sun8i_a23 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_timer_init }, section "__timer_of_table", align 4
@__of_table_sun8i_v3s = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_timer_init }, section "__timer_of_table", align 4
@__of_table_suniv = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,suniv-f1c100s-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_timer_init }, section "__timer_of_table", align 4
@to = internal global %struct.timer_of { i32 7, ptr null, [56 x i8] undef, %struct.clock_event_device { ptr null, ptr @sun4i_clkevt_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @sun4i_clkevt_set_periodic, ptr @sun4i_clkevt_set_oneshot, ptr null, ptr @sun4i_clkevt_shutdown, ptr @sun4i_clkevt_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.5, i32 350, i32 0, i32 0, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq { i32 0, i32 0, i32 0, ptr null, i32 86528, ptr @sun4i_timer_interrupt }, %struct.of_timer_clk zeroinitializer, ptr null }, align 64
@.str = private unnamed_addr constant [20 x i8] c"allwinner,sun4i-a10\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"allwinner,sun5i-a13\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"allwinner,sun5i-a10s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"allwinner,suniv-f1c100s\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"\013Failed to register clocksource\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"sun4i_tick\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_sun4i, ptr @__of_table_sun8i_a23, ptr @__of_table_sun8i_v3s, ptr @__of_table_suniv], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @to) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %6 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %8 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 7) #5, !srcloc !9
  %9 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %14, %11, %4
  %21 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @sched_clock_register(ptr noundef nonnull @sun4i_timer_sched_read, i32 noundef 32, i32 noundef %21) #5
  br label %22

22:                                               ; preds = %20, %17
  %23 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %24 = getelementptr i8, ptr %23, i32 40
  %25 = load ptr, ptr %0, align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  %27 = tail call i32 @clocksource_mmio_init(ptr noundef %24, ptr noundef %25, i32 noundef %26, i32 noundef 350, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #4
  br label %55

31:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %32 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %33 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 4) #5, !srcloc !9
  %34 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %35 = getelementptr i8, ptr %34, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %37 = and i32 %36, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %37) #5, !srcloc !9
  %38 = getelementptr i8, ptr %34, i32 40
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %41 = sub i32 %39, %40
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %43, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %45 = sub i32 %39, %44
  %46 = icmp ult i32 %45, 3
  br i1 %46, label %43, label %47

47:                                               ; preds = %43, %31
  %48 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %49 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #5, !srcloc !9
  %50 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %50, i32 noundef 3, i32 noundef -1) #5
  %51 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %53 = or i32 %52, 1
  %54 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %53) #5, !srcloc !9
  br label %55

55:                                               ; preds = %47, %29, %1
  %56 = phi i32 [ %27, %29 ], [ 0, %47 ], [ %2, %1 ]
  ret i32 %56
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @sun4i_timer_sched_read() #3 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 64
  %2 = getelementptr i8, ptr %1, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %7 = and i32 %6, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #5, !srcloc !9
  %8 = getelementptr i8, ptr %4, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %11 = sub i32 %9, %10
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %13, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %15 = sub i32 %9, %14
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %13, label %17

17:                                               ; preds = %13, %2
  %18 = load ptr, ptr %3, align 64
  %19 = add i32 %0, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %20 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #5, !srcloc !9
  %21 = load ptr, ptr %3, align 64
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %24 = or i32 %23, 131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_clkevt_set_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #5, !srcloc !9
  %7 = getelementptr i8, ptr %3, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %10 = sub i32 %8, %9
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = sub i32 %8, %13
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %12, label %16

16:                                               ; preds = %12, %1
  %17 = load ptr, ptr %2, align 64
  %18 = getelementptr i8, ptr %0, i32 244
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %20 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %19) #5, !srcloc !9
  %21 = load ptr, ptr %2, align 64
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %24 = and i32 %23, -132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %25 = or i32 %24, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %25) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_clkevt_set_oneshot(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #5, !srcloc !9
  %7 = getelementptr i8, ptr %3, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %10 = sub i32 %8, %9
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = sub i32 %8, %13
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %12, label %16

16:                                               ; preds = %12, %1
  %17 = load ptr, ptr %2, align 64
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %20 = or i32 %19, 131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %20) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_clkevt_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #5, !srcloc !9
  %7 = getelementptr i8, ptr %3, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %10 = sub i32 %8, %9
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %14 = sub i32 %8, %13
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %12, label %16

16:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #5, !srcloc !9
  %6 = load ptr, ptr %1, align 64
  tail call void %6(ptr noundef %1) #5
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
!8 = !{i64 2151347599}
!9 = !{i64 2829731}
!10 = !{i64 2151348251}
!11 = !{i64 2151349304}
!12 = !{i64 2830149}
!13 = !{i64 2151343878}
!14 = !{i64 2151344214}
!15 = !{i64 2151342843}
!16 = !{i64 2151343234}
!17 = !{i64 2151343482}
!18 = !{i64 2151343324}
!19 = !{i64 2151346355}
!20 = !{i64 2151349857}
!21 = !{i64 2151350171}
!22 = !{i64 2151347174}
!23 = !{i64 2151344648}
!24 = !{i64 2151345189}
!25 = !{i64 2151345799}
