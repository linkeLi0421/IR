; ModuleID = '/llk/IR/drivers/clocksource/timer-vt8500.c_pt.bc'
source_filename = "../drivers/clocksource/timer-vt8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }

@__of_table_vt8500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vt8500_timer_init }, section "__timer_of_table", align 4
@regbase = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [49 x i8] c"\013%s: Missing iobase description in Device Tree\0A\00", align 1
@__func__.vt8500_timer_init = private unnamed_addr constant [18 x i8] c"vt8500_timer_init\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\013%s: Missing irq description in Device Tree\0A\00", align 1
@clocksource = internal global %struct.clocksource { ptr @vt8500_timer_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.3, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"\013%s: clocksource_register failed for %s\0A\00", align 1
@clockevent = internal global %struct.clock_event_device { ptr null, ptr @vt8500_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 2, i32 0, ptr null, ptr @vt8500_shutdown, ptr null, ptr @vt8500_shutdown, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.3, i32 200, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.3 = private unnamed_addr constant [13 x i8] c"vt8500_timer\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\013%s: setup_irq failed for %s\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_vt8500], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @vt8500_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr @regbase, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.vt8500_timer_init) #5
  br label %29

6:                                                ; preds = %1
  %7 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vt8500_timer_init) #5
  br label %29

11:                                               ; preds = %6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %12 = load ptr, ptr @regbase, align 4
  %13 = getelementptr i8, ptr %12, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %14 = load ptr, ptr @regbase, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 15) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %16 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #4, !srcloc !9
  %17 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource, i32 noundef 1, i32 noundef 3000000) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr getelementptr inbounds (%struct.clocksource, ptr @clocksource, i32 0, i32 8), align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vt8500_timer_init, ptr noundef %20) #5
  br label %29

22:                                               ; preds = %11
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @clockevent, i32 0, i32 25), align 4
  %23 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @vt8500_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.3, ptr noundef nonnull @clockevent) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr getelementptr inbounds (%struct.clock_event_device, ptr @clockevent, i32 0, i32 21), align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vt8500_timer_init, ptr noundef %26) #5
  br label %29

28:                                               ; preds = %22
  tail call void @clockevents_config_and_register(ptr noundef nonnull @clockevent, i32 noundef 3000000, i32 noundef 32, i32 noundef -268435456) #4
  br label %29

29:                                               ; preds = %28, %25, %19, %9, %4
  %30 = phi i32 [ %17, %19 ], [ %23, %25 ], [ 0, %28 ], [ -22, %9 ], [ -6, %4 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @regbase, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 15) #4, !srcloc !9
  %5 = load ptr, ptr %1, align 64
  tail call void %5(ptr noundef %1) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @vt8500_timer_read(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr @loops_per_jiffy, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @regbase, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 3) #4, !srcloc !9
  %5 = load ptr, ptr @regbase, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = urem i32 %2, 1000
  %12 = sub i32 %2, %11
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi i32 [ %15, %17 ], [ %12, %10 ]
  %15 = add i32 %14, -1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !17
  %18 = load ptr, ptr @regbase, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !15
  %21 = and i32 %20, 32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %17, %13, %1
  %24 = load ptr, ptr @regbase, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  %27 = zext i32 %26 to i64
  ret i64 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_timer_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load i32, ptr @loops_per_jiffy, align 4
  %4 = load ptr, ptr @clocksource, align 8
  %5 = tail call i64 %4(ptr noundef nonnull @clocksource) #4
  %6 = zext i32 %0 to i64
  %7 = add i64 %5, %6
  %8 = load ptr, ptr @regbase, align 4
  %9 = getelementptr i8, ptr %8, i32 36
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = urem i32 %3, 1000
  %15 = sub i32 %3, %14
  br label %16

16:                                               ; preds = %20, %13
  %17 = phi i32 [ %18, %20 ], [ %15, %13 ]
  %18 = add i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !21
  %21 = load ptr, ptr @regbase, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !19
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %16

26:                                               ; preds = %20, %16, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %27 = trunc i64 %7 to i32
  %28 = load ptr, ptr @regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %27) #4, !srcloc !9
  %29 = load ptr, ptr @clocksource, align 8
  %30 = tail call i64 %29(ptr noundef nonnull @clocksource) #4
  %31 = sub i64 %7, %30
  %32 = trunc i64 %31 to i32
  %33 = icmp slt i32 %32, 17
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %35 = load ptr, ptr @regbase, align 4
  %36 = getelementptr i8, ptr %35, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1) #4, !srcloc !9
  br label %37

37:                                               ; preds = %34, %26
  %38 = phi i32 [ 0, %34 ], [ -62, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vt8500_shutdown(ptr nocapture noundef readnone %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %2 = load ptr, ptr @regbase, align 4
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !25
  %5 = or i32 %4, 1
  %6 = load ptr, ptr @regbase, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %8 = load ptr, ptr @regbase, align 4
  %9 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #4, !srcloc !9
  ret i32 0
}

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
!8 = !{i64 2151317734}
!9 = !{i64 363024}
!10 = !{i64 2151318049}
!11 = !{i64 2151318367}
!12 = !{i64 2151316141}
!13 = !{i64 2151311249}
!14 = !{i64 363442}
!15 = !{i64 2151311720}
!16 = !{i64 2151311975}
!17 = !{i64 2151311817}
!18 = !{i64 2151312316}
!19 = !{i64 2151313499}
!20 = !{i64 2151313754}
!21 = !{i64 2151313596}
!22 = !{i64 2151313965}
!23 = !{i64 2151314322}
!24 = !{i64 2151315150}
!25 = !{i64 2151315622}
!26 = !{i64 2151315817}
