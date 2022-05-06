; ModuleID = '/llk/IR/drivers/clocksource/arm_global_timer.c_pt.bc'
source_filename = "../drivers/clocksource/arm_global_timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }

@__of_table_arm_gt = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-global-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @global_timer_of_register }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [51 x i8] c"\014global-timer: non support for this cpu version.\0A\00", align 1
@gt_ppi = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\014global-timer: unable to parse irq\0A\00", align 1
@gt_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\014global-timer: invalid base address\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\014global-timer: clk not found\0A\00", align 1
@gt_target_rate = internal unnamed_addr global i32 0, align 4
@gt_clk_rate_change_nb = internal global %struct.notifier_block zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"\014Unable to register clock notifier\0A\00", align 1
@gt_evt = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\014global-timer: can't allocate memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\014global-timer: can't register interrupt %d (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"clockevents/arm/global_timer:starting\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"drivers/clocksource/arm_global_timer.c\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"ARM Global timer register failed (%d)\0A\00", align 1
@gt_psv_bck = internal unnamed_addr global i32 0, align 4
@gt_psv_new = internal unnamed_addr global i32 0, align 4
@gt_clocksource = internal global %struct.clocksource { ptr @gt_clocksource_read, i64 -1, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.11, %struct.list_head zeroinitializer, i32 300, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr @gt_resume, ptr null, ptr null, ptr null }, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"arm_global_timer\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@gt_delay_timer = internal global %struct.delay_timer { ptr @gt_read_long, i32 0 }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_arm_gt], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @global_timer_of_register(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #7, !srcloc !9
  %3 = and i32 %2, -2031632
  %4 = icmp eq i32 %3, 1090568336
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %71

7:                                                ; preds = %1
  %8 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #9
  store i32 %8, ptr @gt_ppi, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %71

12:                                               ; preds = %7
  %13 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  store ptr %13, ptr @gt_base, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %71

17:                                               ; preds = %12
  %18 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #9
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @clk_prepare(ptr noundef %18) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef %18) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %68

27:                                               ; preds = %17
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %68

29:                                               ; preds = %23
  %30 = tail call i32 @clk_get_rate(ptr noundef %18) #9
  %31 = lshr i32 %30, 1
  store i32 %31, ptr @gt_target_rate, align 4
  store ptr @gt_clk_rate_change_cb, ptr @gt_clk_rate_change_nb, align 4
  %32 = tail call i32 @clk_notifier_register(ptr noundef %18, ptr noundef nonnull @gt_clk_rate_change_nb) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %66

36:                                               ; preds = %29
  %37 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #10
  store ptr %37, ptr @gt_evt, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %63

41:                                               ; preds = %36
  %42 = load i32, ptr @gt_ppi, align 4
  %43 = tail call i32 @__request_percpu_irq(i32 noundef %42, ptr noundef nonnull @gt_clockevent_interrupt, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %37) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @gt_ppi, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %46, i32 noundef %43) #8
  br label %60

48:                                               ; preds = %41
  %49 = tail call fastcc i32 @gt_clocksource_init() #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = tail call i32 @__cpuhp_setup_state(i32 noundef 123, ptr noundef nonnull @.str.8, i1 noundef zeroext true, ptr noundef nonnull @gt_starting_cpu, ptr noundef nonnull @gt_dying_cpu, i1 noundef zeroext false) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, ptr @gt_target_rate, align 4
  store i32 %55, ptr getelementptr inbounds (%struct.delay_timer, ptr @gt_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @gt_delay_timer) #9
  br label %71

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %49, %48 ], [ %52, %51 ]
  %58 = load i32, ptr @gt_ppi, align 4
  %59 = load ptr, ptr @gt_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %58, ptr noundef %59) #9
  br label %60

60:                                               ; preds = %56, %45
  %61 = phi i32 [ %43, %45 ], [ %57, %56 ]
  %62 = load ptr, ptr @gt_evt, align 4
  tail call void @free_percpu(ptr noundef %62) #9
  br label %63

63:                                               ; preds = %60, %39
  %64 = phi i32 [ %61, %60 ], [ -12, %39 ]
  %65 = tail call i32 @clk_notifier_unregister(ptr noundef %18, ptr noundef nonnull @gt_clk_rate_change_nb) #9
  br label %66

66:                                               ; preds = %63, %34
  %67 = phi i32 [ %32, %34 ], [ %64, %63 ]
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  br label %68

68:                                               ; preds = %66, %27, %26, %20
  %69 = phi i32 [ -22, %27 ], [ %67, %66 ], [ %24, %26 ], [ %21, %20 ]
  %70 = load ptr, ptr @gt_base, align 4
  tail call void @iounmap(ptr noundef %70) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 435, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %69) #9
  br label %71

71:                                               ; preds = %68, %54, %15, %10, %5
  %72 = phi i32 [ -38, %5 ], [ %69, %68 ], [ 0, %54 ], [ -6, %15 ], [ -22, %10 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_clk_rate_change_cb(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  switch i32 %1, label %69 [
    i32 1, label %4
    i32 2, label %37
    i32 4, label %53
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr @gt_target_rate, align 4
  %8 = lshr i32 %7, 1
  %9 = add i32 %8, %6
  %10 = udiv i32 %9, %7
  %11 = udiv i32 %6, %10
  %12 = sub i32 %7, %11
  %13 = tail call i32 @llvm.abs.i32(i32 %12, i1 false)
  %14 = icmp sgt i32 %13, 50
  br i1 %14, label %69, label %15

15:                                               ; preds = %4
  %16 = add i32 %10, -1
  %17 = icmp ugt i32 %16, 15
  br i1 %17, label %69, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @gt_base, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 15
  store i32 %23, ptr @gt_psv_bck, align 4
  store i32 %16, ptr @gt_psv_new, align 4
  %24 = load i32, ptr %5, align 4
  %25 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %69, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr @gt_base, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %32 = and i32 %31, -3841
  %33 = shl nuw nsw i32 %16, 8
  %34 = or i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %35 = load ptr, ptr @gt_base, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !14
  br label %69

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %69, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr @gt_psv_new, align 4
  %45 = load ptr, ptr @gt_base, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %48 = and i32 %47, -3841
  %49 = shl i32 %44, 8
  %50 = or i32 %48, %49
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %51 = load ptr, ptr @gt_base, align 4
  %52 = getelementptr i8, ptr %51, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !14
  br label %69

53:                                               ; preds = %3
  %54 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr @gt_psv_bck, align 4
  %61 = load ptr, ptr @gt_base, align 4
  %62 = getelementptr i8, ptr %61, i32 8
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %64 = and i32 %63, -3841
  %65 = shl i32 %60, 8
  %66 = or i32 %64, %65
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %67 = load ptr, ptr @gt_base, align 4
  %68 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #9, !srcloc !14
  br label %69

69:                                               ; preds = %59, %53, %43, %37, %28, %18, %15, %4, %3
  %70 = phi i32 [ 1, %37 ], [ 1, %53 ], [ 0, %3 ], [ 0, %28 ], [ 0, %59 ], [ 0, %43 ], [ 0, %18 ], [ 32770, %15 ], [ 32770, %4 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_clockevent_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr @gt_base, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 16
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load ptr, ptr @gt_base, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !10
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %15, %12 ], [ %22, %16 ]
  %18 = load ptr, ptr @gt_base, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !10
  %20 = load ptr, ptr @gt_base, align 4
  %21 = getelementptr i8, ptr %20, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !10
  %23 = icmp eq i32 %22, %17
  br i1 %23, label %24, label %16

24:                                               ; preds = %16
  %25 = zext i32 %17 to i64
  %26 = shl nuw i64 %25, 32
  %27 = zext i32 %19 to i64
  %28 = or i64 %26, 4294967295
  %29 = add i64 %28, %27
  %30 = load ptr, ptr @gt_base, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %33 = and i32 %32, -16
  %34 = or i32 %33, 1
  %35 = load ptr, ptr @gt_base, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !14
  %37 = trunc i64 %29 to i32
  %38 = load ptr, ptr @gt_base, align 4
  %39 = getelementptr i8, ptr %38, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !14
  %40 = lshr i64 %29, 32
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr @gt_base, align 4
  %43 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #9, !srcloc !14
  %44 = or i32 %33, 7
  %45 = load ptr, ptr @gt_base, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #9, !srcloc !14
  br label %47

47:                                               ; preds = %24, %8
  %48 = load ptr, ptr @gt_base, align 4
  %49 = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 1) #9, !srcloc !14
  %50 = load ptr, ptr %1, align 64
  tail call void %50(ptr noundef %1) #9
  br label %51

51:                                               ; preds = %47, %2
  %52 = phi i32 [ 1, %47 ], [ 0, %2 ]
  ret i32 %52
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @gt_clocksource_init() unnamed_addr #0 section ".init.text" {
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  %1 = load ptr, ptr @gt_base, align 4
  %2 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 0) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  %3 = load ptr, ptr @gt_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !18
  tail call void @arm_heavy_mb() #9
  %4 = load ptr, ptr @gt_base, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !19
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr @gt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 257) #9, !srcloc !14
  %8 = load i32, ptr @gt_target_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @gt_sched_clock_read, i32 noundef 64, i32 noundef %8) #9
  %9 = load i32, ptr @gt_target_rate, align 4
  %10 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @gt_clocksource, i32 noundef 1, i32 noundef %9) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_starting_cpu(i32 noundef %0) #3 {
  %2 = load ptr, ptr @gt_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #5, !srcloc !20
  %7 = add i32 %6, %3
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 21
  store ptr @.str.11, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 9
  store i32 67, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 14
  store ptr @gt_clockevent_shutdown, ptr %11, align 8
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 11
  store ptr @gt_clockevent_set_periodic, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 12
  store ptr @gt_clockevent_shutdown, ptr %13, align 64
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 13
  store ptr @gt_clockevent_shutdown, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 1
  store ptr @gt_clockevent_set_next_event, ptr %15, align 4
  %16 = and i32 %0, 31
  %17 = add nuw nsw i32 %16, 1
  %18 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %17
  %19 = lshr i32 %0, 5
  %20 = sub nsw i32 0, %19
  %21 = getelementptr i32, ptr %18, i32 %20
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 25
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22
  store i32 300, ptr %23, align 8
  %24 = load i32, ptr @gt_ppi, align 4
  %25 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  store i32 %24, ptr %25, align 4
  %26 = load i32, ptr @gt_target_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %8, i32 noundef %26, i32 noundef 1, i32 noundef -1) #9
  %27 = load i32, ptr %25, align 4
  tail call void @enable_percpu_irq(i32 noundef %27, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_dying_cpu(i32 noundef %0) #3 {
  %2 = load ptr, ptr @gt_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #5, !srcloc !20
  %7 = add i32 %6, %3
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr @gt_base, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %12 = and i32 %11, -15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %13 = load ptr, ptr @gt_base, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #9, !srcloc !14
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  tail call void @disable_percpu_irq(i32 noundef %16) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @gt_sched_clock_read() #3 {
  %1 = load ptr, ptr @gt_base, align 4
  %2 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #9, !srcloc !10
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %3, %0 ], [ %10, %4 ]
  %6 = load ptr, ptr @gt_base, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = load ptr, ptr @gt_base, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !10
  %11 = icmp eq i32 %10, %5
  br i1 %11, label %12, label %4

12:                                               ; preds = %4
  %13 = zext i32 %5 to i64
  %14 = shl nuw i64 %13, 32
  %15 = zext i32 %7 to i64
  %16 = or i64 %14, %15
  ret i64 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @gt_clocksource_read(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !10
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %4, %1 ], [ %11, %5 ]
  %7 = load ptr, ptr @gt_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #9, !srcloc !10
  %9 = load ptr, ptr @gt_base, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !10
  %12 = icmp eq i32 %11, %6
  br i1 %12, label %13, label %5

13:                                               ; preds = %5
  %14 = zext i32 %6 to i64
  %15 = shl nuw i64 %14, 32
  %16 = zext i32 %8 to i64
  %17 = or i64 %15, %16
  ret i64 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gt_resume(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %8 = load ptr, ptr @gt_base, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #9, !srcloc !14
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_clockevent_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @gt_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %5 = and i32 %4, -15
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !22
  tail call void @arm_heavy_mb() #9
  %6 = load ptr, ptr @gt_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #9, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_clockevent_set_periodic(ptr nocapture noundef readnone %0) #3 {
  %2 = load i32, ptr @gt_target_rate, align 4
  %3 = load ptr, ptr @gt_base, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %5, %1 ], [ %12, %6 ]
  %8 = load ptr, ptr @gt_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = load ptr, ptr @gt_base, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %6

14:                                               ; preds = %6
  %15 = add i32 %2, 50
  %16 = udiv i32 %15, 100
  %17 = zext i32 %7 to i64
  %18 = shl nuw i64 %17, 32
  %19 = zext i32 %9 to i64
  %20 = zext i32 %16 to i64
  %21 = or i64 %18, %20
  %22 = add i64 %21, %19
  %23 = load ptr, ptr @gt_base, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %26 = and i32 %25, -16
  %27 = or i32 %26, 1
  %28 = load ptr, ptr @gt_base, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #9, !srcloc !14
  %30 = trunc i64 %22 to i32
  %31 = load ptr, ptr @gt_base, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #9, !srcloc !14
  %33 = lshr i64 %22, 32
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr @gt_base, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #9, !srcloc !14
  %37 = load ptr, ptr @gt_base, align 4
  %38 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %16) #9, !srcloc !14
  %39 = or i32 %25, 15
  %40 = load ptr, ptr @gt_base, align 4
  %41 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #9, !srcloc !14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_clockevent_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = load ptr, ptr @gt_base, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !10
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %5, %2 ], [ %12, %6 ]
  %8 = load ptr, ptr @gt_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !10
  %10 = load ptr, ptr @gt_base, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !10
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %6

14:                                               ; preds = %6
  %15 = zext i32 %7 to i64
  %16 = shl nuw i64 %15, 32
  %17 = zext i32 %9 to i64
  %18 = zext i32 %0 to i64
  %19 = or i64 %16, %18
  %20 = add i64 %19, %17
  %21 = load ptr, ptr @gt_base, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !15
  %24 = and i32 %23, -16
  %25 = or i32 %24, 1
  %26 = load ptr, ptr @gt_base, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #9, !srcloc !14
  %28 = trunc i64 %20 to i32
  %29 = load ptr, ptr @gt_base, align 4
  %30 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #9, !srcloc !14
  %31 = lshr i64 %20, 32
  %32 = trunc i64 %31 to i32
  %33 = load ptr, ptr @gt_base, align 4
  %34 = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !14
  %35 = or i32 %24, 7
  %36 = load ptr, ptr @gt_base, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gt_read_long() #3 {
  %1 = load ptr, ptr @gt_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readnone }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }

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
!9 = !{i64 2151763491}
!10 = !{i64 3060184}
!11 = !{i64 2151779133}
!12 = !{i64 2151778417}
!13 = !{i64 2151778677}
!14 = !{i64 3059766}
!15 = !{i64 2151767563}
!16 = !{i64 2151779775}
!17 = !{i64 2151780082}
!18 = !{i64 2151780389}
!19 = !{i64 2151780835}
!20 = !{i64 371953}
!21 = !{i64 2151773372}
!22 = !{i64 2151773806}
!23 = !{i64 2151776503}
!24 = !{i64 2151776878}
