; ModuleID = '/llk/IR/drivers/clocksource/timer-armada-370-xp.c_pt.bc'
source_filename = "../drivers/clocksource/timer-armada-370-xp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }

@__of_table_armada_xp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_xp_timer_init }, section "__timer_of_table", align 4
@__of_table_armada_375 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-375-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_375_timer_init }, section "__timer_of_table", align 4
@__of_table_armada_370 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-370-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada_370_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\013Failed to get clock\0A\00", align 1
@timer_clk = internal unnamed_addr global i32 0, align 4
@timer_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"\013Failed to iomap\0A\00", align 1
@local_base = internal unnamed_addr global ptr null, align 4
@timer25Mhz = internal unnamed_addr global i1 false, align 1
@enable_mask = internal unnamed_addr global i32 0, align 4
@armada_370_xp_clkevt_irq = internal unnamed_addr global i32 0, align 4
@ticks_per_jiffy = internal unnamed_addr global i32 0, align 4
@armada_370_delay_timer = internal global %struct.delay_timer { ptr @armada_370_delay_timer_read, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"armada_370_xp_clocksource\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013Failed to initialize clocksource mmio\0A\00", align 1
@armada_370_xp_evt = internal unnamed_addr global ptr null, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"armada_370_xp_per_cpu_tick\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\013Failed to request percpu irq\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"clockevents/armada:starting\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\013Failed to setup hotplug state and timer\0A\00", align 1
@armada_370_xp_timer_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @armada_370_xp_timer_suspend, ptr @armada_370_xp_timer_resume, ptr null }, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@timer0_ctrl_reg = internal unnamed_addr global i32 0, align 4
@timer0_local_ctrl_reg = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_armada_370, ptr @__of_table_armada_375, ptr @__of_table_armada_xp], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_xp_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %6 = ptrtoint ptr %2 to i32
  br label %17

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %17

14:                                               ; preds = %10
  %15 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  store i32 %15, ptr @timer_clk, align 4
  %16 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %0) #7
  br label %17

17:                                               ; preds = %14, %13, %7, %4
  %18 = phi i32 [ %6, %4 ], [ %16, %14 ], [ %11, %13 ], [ %8, %7 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_375_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = tail call i32 @clk_enable(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %31

11:                                               ; preds = %7
  %12 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  store i32 %12, ptr @timer_clk, align 4
  br label %29

13:                                               ; preds = %1
  %14 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %18 = ptrtoint ptr %14 to i32
  br label %31

19:                                               ; preds = %13
  %20 = tail call i32 @clk_prepare(ptr noundef %14) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %14) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %31

26:                                               ; preds = %22
  %27 = tail call i32 @clk_get_rate(ptr noundef %14) #5
  %28 = lshr i32 %27, 5
  store i32 %28, ptr @timer_clk, align 4
  store i1 true, ptr @timer25Mhz, align 1
  br label %29

29:                                               ; preds = %26, %11
  %30 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %0) #7
  br label %31

31:                                               ; preds = %29, %25, %19, %16, %10, %4
  %32 = phi i32 [ %18, %16 ], [ %30, %29 ], [ %8, %10 ], [ %5, %4 ], [ %23, %25 ], [ %20, %19 ]
  ret i32 %32
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @armada_370_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  %6 = ptrtoint ptr %2 to i32
  br label %18

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %18

14:                                               ; preds = %10
  %15 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  %16 = lshr i32 %15, 5
  store i32 %16, ptr @timer_clk, align 4
  store i1 true, ptr @timer25Mhz, align 1
  %17 = tail call fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %0) #7
  br label %18

18:                                               ; preds = %14, %13, %7, %4
  %19 = phi i32 [ %6, %4 ], [ %17, %14 ], [ %11, %13 ], [ %8, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @armada_370_xp_timer_common_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %2, ptr @timer_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %57

6:                                                ; preds = %1
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #5
  store ptr %7, ptr @local_base, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %57

11:                                               ; preds = %6
  %12 = load i1, ptr @timer25Mhz, align 1
  %13 = select i1 %12, i32 2621441, i32 1
  %14 = select i1 %12, i32 0, i32 2048
  store i32 %13, ptr @enable_mask, align 4
  %15 = load ptr, ptr @timer_base, align 4
  tail call void @atomic_io_modify(ptr noundef %15, i32 noundef 2048, i32 noundef %14) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr @local_base, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %18 = select i1 %12, i32 -2049, i32 -1
  %19 = and i32 %17, %18
  %20 = or i32 %19, %14
  %21 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #5, !srcloc !11
  %22 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 4) #5
  store i32 %22, ptr @armada_370_xp_clkevt_irq, align 4
  %23 = load i32, ptr @timer_clk, align 4
  %24 = add i32 %23, 50
  %25 = udiv i32 %24, 100
  store i32 %25, ptr @ticks_per_jiffy, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr @timer_base, align 4
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 -1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %28 = load ptr, ptr @timer_base, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #5, !srcloc !11
  %30 = load ptr, ptr @timer_base, align 4
  %31 = load i32, ptr @enable_mask, align 4
  %32 = or i32 %31, 2
  tail call void @atomic_io_modify(ptr noundef %30, i32 noundef %32, i32 noundef %32) #5
  %33 = load i32, ptr @timer_clk, align 4
  store i32 %33, ptr getelementptr inbounds (%struct.delay_timer, ptr @armada_370_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @armada_370_delay_timer) #5
  %34 = load i32, ptr @timer_clk, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @armada_370_xp_read_sched_clock, i32 noundef 32, i32 noundef %34) #5
  %35 = load ptr, ptr @timer_base, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = load i32, ptr @timer_clk, align 4
  %38 = tail call i32 @clocksource_mmio_init(ptr noundef %36, ptr noundef nonnull @.str.3, i32 noundef %37, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %11
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %57

42:                                               ; preds = %11
  %43 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #8
  store ptr %43, ptr @armada_370_xp_evt, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr @armada_370_xp_clkevt_irq, align 4
  %47 = tail call i32 @__request_percpu_irq(i32 noundef %46, ptr noundef nonnull @armada_370_xp_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %43) #5
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %57

51:                                               ; preds = %45
  %52 = tail call i32 @__cpuhp_setup_state(i32 noundef 128, ptr noundef nonnull @.str.7, i1 noundef zeroext true, ptr noundef nonnull @armada_370_xp_timer_starting_cpu, ptr noundef nonnull @armada_370_xp_timer_dying_cpu, i1 noundef zeroext false) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #6
  br label %57

56:                                               ; preds = %51
  tail call void @register_syscore_ops(ptr noundef nonnull @armada_370_xp_timer_syscore_ops) #5
  br label %57

57:                                               ; preds = %56, %54, %49, %42, %40, %9, %4
  %58 = phi i32 [ %38, %40 ], [ %47, %49 ], [ %52, %54 ], [ 0, %56 ], [ -6, %9 ], [ -6, %4 ], [ -12, %42 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atomic_io_modify(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @armada_370_xp_read_sched_clock() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %4 = xor i32 %3, -1
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @local_base, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -2) #5, !srcloc !11
  %5 = load ptr, ptr %1, align 64
  tail call void %5(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_starting_cpu(i32 noundef %0) #3 {
  %2 = load ptr, ptr @armada_370_xp_evt, align 4
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = load i1, ptr @timer25Mhz, align 1
  %6 = select i1 %5, i32 0, i32 2048
  %7 = ptrtoint ptr %2 to i32
  %8 = add i32 %4, %7
  %9 = inttoptr i32 %8 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr @local_base, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %12 = select i1 %5, i32 -2049, i32 -1
  %13 = and i32 %11, %12
  %14 = or i32 %13, %6
  %15 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !11
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 21
  store ptr @.str.5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 9
  store i32 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 7
  store i32 32, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 22
  store i32 300, ptr %19, align 8
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 1
  store ptr @armada_370_xp_clkevt_next_event, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 14
  store ptr @armada_370_xp_clkevt_shutdown, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 11
  store ptr @armada_370_xp_clkevt_set_periodic, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 12
  store ptr @armada_370_xp_clkevt_shutdown, ptr %23, align 64
  %24 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 15
  store ptr @armada_370_xp_clkevt_shutdown, ptr %24, align 4
  %25 = load i32, ptr @armada_370_xp_clkevt_irq, align 4
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 23
  store i32 %25, ptr %26, align 4
  %27 = and i32 %0, 31
  %28 = add nuw nsw i32 %27, 1
  %29 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %28
  %30 = lshr i32 %0, 5
  %31 = sub nsw i32 0, %30
  %32 = getelementptr i32, ptr %29, i32 %31
  %33 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 25
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr @timer_clk, align 4
  tail call void @clockevents_config_and_register(ptr noundef %9, i32 noundef %34, i32 noundef 1, i32 noundef -2) #5
  %35 = load i32, ptr %26, align 4
  tail call void @enable_percpu_irq(i32 noundef %35, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_dying_cpu(i32 noundef %0) #3 {
  %2 = load ptr, ptr @armada_370_xp_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 %9(ptr noundef %7) #5
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  tail call void @disable_percpu_irq(i32 noundef %12) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_delay_timer_read() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %4 = xor i32 %3, -1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @local_base, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -2) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %5 = load ptr, ptr @local_base, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #5, !srcloc !11
  %7 = load i32, ptr @enable_mask, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %8 = load ptr, ptr @local_base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %10 = and i32 %9, -3
  %11 = or i32 %10, %7
  %12 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_shutdown(ptr nocapture noundef readnone %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %2 = load ptr, ptr @local_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %4 = and i32 %3, -2
  %5 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %6 = load ptr, ptr @local_base, align 4
  %7 = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 -2) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_clkevt_set_periodic(ptr nocapture noundef readnone %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %2 = load i32, ptr @ticks_per_jiffy, align 4
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @local_base, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %6 = load i32, ptr @ticks_per_jiffy, align 4
  %7 = add i32 %6, -1
  %8 = load ptr, ptr @local_base, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !11
  %10 = load i32, ptr @enable_mask, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr @local_base, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %13 = or i32 %10, %12
  %14 = or i32 %13, 2
  %15 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #5, !srcloc !11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @armada_370_xp_timer_suspend() #3 {
  %1 = load ptr, ptr @timer_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  store i32 %2, ptr @timer0_ctrl_reg, align 4
  %3 = load ptr, ptr @local_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  store i32 %4, ptr @timer0_local_ctrl_reg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @armada_370_xp_timer_resume() #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %1 = load ptr, ptr @timer_base, align 4
  %2 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @timer_base, align 4
  %4 = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %5 = load i32, ptr @timer0_ctrl_reg, align 4
  %6 = load ptr, ptr @timer_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %7 = load i32, ptr @timer0_local_ctrl_reg, align 4
  %8 = load ptr, ptr @local_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{i64 2151763438}
!9 = !{i64 3821921}
!10 = !{i64 2151763933}
!11 = !{i64 3821503}
!12 = !{i64 2151776488}
!13 = !{i64 2151776834}
!14 = !{i64 2151764340}
!15 = !{i64 2151766549}
!16 = !{i64 2151774966}
!17 = !{i64 2151764544}
!18 = !{i64 2151764877}
!19 = !{i64 2151765380}
!20 = !{i64 2151765727}
!21 = !{i64 2151766100}
!22 = !{i64 2151772840}
!23 = !{i64 2151773187}
!24 = !{i64 2151773388}
!25 = !{i64 2151773734}
!26 = !{i64 2151774085}
!27 = !{i64 2151774452}
