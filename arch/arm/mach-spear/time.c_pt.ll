; ModuleID = '/llk/IR/arch/arm/mach-spear/time.c_pt.bc'
source_filename = "../arch/arm/mach-spear/time.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }

@timer_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%s: No timer passed via DT\0A\00", align 1
@__func__.spear_setup_of_timer = private unnamed_addr constant [21 x i8] c"spear_setup_of_timer\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\013%s: No irq passed for timer via DT\0A\00", align 1
@gpt_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"\013%s: of iomap failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gpt0\00", align 1
@gpt_clk = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"\013%s:couldn't get clk for gpt\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\013%s:couldn't prepare-enable gpt clock\0A\00", align 1
@clkevt = internal global %struct.clock_event_device { ptr null, ptr @clockevent_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @spear_set_periodic, ptr @spear_set_oneshot, ptr null, ptr @spear_shutdown, ptr @spear_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.6 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\013Failed to request irq %d (timer)\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"tmr0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tmr1\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @spear_setup_of_timer() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @timer_of_match, ptr noundef null) #4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.spear_setup_of_timer) #5
  br label %36

5:                                                ; preds = %0
  %6 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %1, i32 noundef 0) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.spear_setup_of_timer) #5
  br label %36

10:                                               ; preds = %5
  %11 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #4
  store ptr %11, ptr @gpt_base, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.spear_setup_of_timer) #5
  br label %36

15:                                               ; preds = %10
  %16 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str.3, ptr noundef null) #4
  store ptr %16, ptr @gpt_clk, align 4
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.spear_setup_of_timer) #5
  br label %34

20:                                               ; preds = %15
  %21 = tail call i32 @clk_prepare(ptr noundef %16) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef %16) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %16) #4
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %21, %20 ], [ %24, %26 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.spear_setup_of_timer) #5
  %32 = load ptr, ptr @gpt_clk, align 4
  tail call void @clk_put(ptr noundef %32) #4
  br label %34

33:                                               ; preds = %27, %23
  tail call fastcc void @spear_clockevent_init(i32 noundef %6) #6
  tail call fastcc void @spear_clocksource_init() #6
  br label %36

34:                                               ; preds = %30, %18
  %35 = load ptr, ptr @gpt_base, align 4
  tail call void @iounmap(ptr noundef %35) #4
  br label %36

36:                                               ; preds = %34, %33, %13, %8, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @spear_clockevent_init(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %2 = load ptr, ptr @gpt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 4) #4, !srcloc !9
  %4 = load ptr, ptr @gpt_clk, align 4
  %5 = tail call i32 @clk_get_rate(ptr noundef %4) #4
  %6 = lshr i32 %5, 4
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @clkevt, i32 0, i32 25), align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @clkevt, i32 noundef %6, i32 noundef 3, i32 noundef 65520) #4
  %7 = tail call i32 @request_threaded_irq(i32 noundef %0, ptr noundef nonnull @spear_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.6, ptr noundef null) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %0) #5
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @spear_clocksource_init() unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %1 = load ptr, ptr @gpt_base, align 4
  %2 = getelementptr i8, ptr %1, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %2, i16 8) #4, !srcloc !9
  %3 = load ptr, ptr @gpt_clk, align 4
  %4 = tail call i32 @clk_get_rate(ptr noundef %3) #4
  %5 = lshr i32 %4, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @gpt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 264
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 -1) #4, !srcloc !9
  %8 = load ptr, ptr @gpt_base, align 4
  %9 = getelementptr i8, ptr %8, i32 256
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %11 = and i16 %10, -49
  %12 = or i16 %11, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %13 = load ptr, ptr @gpt_base, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #4, !srcloc !9
  %15 = load ptr, ptr @gpt_base, align 4
  %16 = getelementptr i8, ptr %15, i32 268
  %17 = tail call i32 @clocksource_mmio_init(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef 200, i32 noundef 16, ptr noundef nonnull @clocksource_mmio_readw_up) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_timer_interrupt(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @gpt_base, align 4
  %4 = getelementptr i8, ptr %3, i32 132
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %4, i16 1) #4, !srcloc !9
  %5 = load ptr, ptr @clkevt, align 64
  tail call void %5(ptr noundef nonnull @clkevt) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clockevent_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @gpt_base, align 4
  %4 = getelementptr i8, ptr %3, i32 128
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %9 = and i16 %5, -33
  %10 = load ptr, ptr @gpt_base, align 4
  %11 = getelementptr i8, ptr %10, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #4, !srcloc !9
  br label %12

12:                                               ; preds = %8, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  %13 = trunc i32 %0 to i16
  %14 = load ptr, ptr @gpt_base, align 4
  %15 = getelementptr i8, ptr %14, i32 136
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %13) #4, !srcloc !9
  %16 = or i16 %5, 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %17 = load ptr, ptr @gpt_base, align 4
  %18 = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %16) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_set_periodic(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gpt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %5 = and i16 %4, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @gpt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #4, !srcloc !9
  %8 = load ptr, ptr @gpt_clk, align 4
  %9 = tail call i32 @clk_get_rate(ptr noundef %8) #4
  %10 = udiv i32 %9, 100
  %11 = lshr i32 %10, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %12 = trunc i32 %11 to i16
  %13 = load ptr, ptr @gpt_base, align 4
  %14 = getelementptr i8, ptr %13, i32 136
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %12) #4, !srcloc !9
  %15 = load ptr, ptr @gpt_base, align 4
  %16 = getelementptr i8, ptr %15, i32 128
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %16) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %18 = and i16 %17, -305
  %19 = or i16 %18, 288
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %20 = load ptr, ptr @gpt_base, align 4
  %21 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %19) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_set_oneshot(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gpt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %5 = and i16 %4, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @gpt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #4, !srcloc !9
  %8 = load ptr, ptr @gpt_base, align 4
  %9 = getelementptr i8, ptr %8, i32 128
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %9) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !25
  %11 = or i16 %10, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr @gpt_base, align 4
  %13 = getelementptr i8, ptr %12, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %11) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gpt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 128
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %5 = and i16 %4, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %6 = load ptr, ptr @gpt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 128
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #4, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readw_up(ptr noundef) #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2153070850}
!9 = !{i64 2828492}
!10 = !{i64 2153064217}
!11 = !{i64 2153064592}
!12 = !{i64 2828692}
!13 = !{i64 2153065145}
!14 = !{i64 2153065383}
!15 = !{i64 2153070286}
!16 = !{i64 2153068884}
!17 = !{i64 2153069133}
!18 = !{i64 2153069526}
!19 = !{i64 2153069914}
!20 = !{i64 2153066123}
!21 = !{i64 2153066354}
!22 = !{i64 2153067521}
!23 = !{i64 2153068074}
!24 = !{i64 2153068319}
!25 = !{i64 2153066901}
!26 = !{i64 2153067132}
