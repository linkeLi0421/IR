; ModuleID = '/llk/IR/drivers/clocksource/timer-rockchip.c_pt.bc'
source_filename = "../drivers/clocksource/timer-rockchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.rk_clkevt = type { %struct.clock_event_device, %struct.rk_timer, [40 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.rk_timer = type { ptr, ptr, ptr, ptr, i32, i32 }

@__of_table_rk3288_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk_timer_init }, section "__timer_of_table", align 4
@__of_table_rk3399_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk_timer_init }, section "__timer_of_table", align 4
@rk_clkevt = internal unnamed_addr global ptr null, align 4
@rk_clksrc = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [39 x i8] c"\013Too many timer definitions for '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rk_timer\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"\013Failed to initialize '%s': %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\013Failed to get base address for '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"rockchip,rk3399-timer\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\013Failed to get pclk for '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\013Failed to enable pclk for '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"\013Failed to get timer clock for '%s'\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\013Failed to enable timer clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013Failed to map interrupts for '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"\013Failed to register clocksource\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_rk3288_timer, ptr @__of_table_rk3399_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rk_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr @rk_clkevt, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @rk_clkevt_init(ptr noundef %0) #6
  br label %13

6:                                                ; preds = %1
  %7 = load ptr, ptr @rk_clksrc, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @rk_clksrc_init(ptr noundef %0) #6
  br label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %13

13:                                               ; preds = %11, %9, %4
  %14 = phi i32 [ -22, %11 ], [ %10, %9 ], [ %5, %4 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rk_clkevt_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #8
  store ptr %3, ptr @rk_clkevt, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rk_clkevt, ptr %3, i32 0, i32 1
  %7 = tail call fastcc i32 @rk_timer_probe(ptr noundef %6, ptr noundef %0) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load ptr, ptr @rk_clkevt, align 4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 21
  store ptr @.str.1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 9
  store i32 35, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 1
  store ptr @rk_timer_set_next_event, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 14
  store ptr @rk_timer_shutdown, ptr %14, align 8
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 11
  store ptr @rk_timer_set_periodic, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rk_clkevt, ptr %10, i32 0, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 23
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 25
  store ptr @__cpu_possible_mask, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 22
  store i32 250, ptr %20, align 8
  %21 = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @rk_timer_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef nonnull @.str.1, ptr noundef %10) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %9
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %21) #7
  %25 = load ptr, ptr @rk_clkevt, align 4
  %26 = getelementptr inbounds %struct.rk_clkevt, ptr %25, i32 0, i32 1
  tail call fastcc void @rk_timer_cleanup(ptr noundef %26) #6
  br label %31

27:                                               ; preds = %9
  %28 = load ptr, ptr @rk_clkevt, align 4
  %29 = getelementptr inbounds %struct.rk_clkevt, ptr %28, i32 0, i32 1, i32 4
  %30 = load i32, ptr %29, align 16
  tail call void @clockevents_config_and_register(ptr noundef %28, i32 noundef %30, i32 noundef 1, i32 noundef -1) #9
  br label %37

31:                                               ; preds = %23, %5
  %32 = phi i32 [ %7, %5 ], [ %21, %23 ]
  %33 = load ptr, ptr @rk_clkevt, align 4
  tail call void @kfree(ptr noundef %33) #9
  br label %34

34:                                               ; preds = %31, %1
  %35 = phi i32 [ %32, %31 ], [ -12, %1 ]
  %36 = inttoptr i32 %35 to ptr
  store ptr %36, ptr @rk_clkevt, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %35, %34 ], [ 0, %27 ]
  ret i32 %38
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rk_clksrc_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #8
  store ptr %3, ptr @rk_clksrc, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rk_timer_probe(ptr noundef nonnull %3, ptr noundef %0) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = load ptr, ptr @rk_clksrc, align 4
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1) #9, !srcloc !8
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #9, !srcloc !8
  %13 = load ptr, ptr @rk_clksrc, align 4
  %14 = getelementptr inbounds %struct.rk_timer, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #9, !srcloc !8
  %16 = load ptr, ptr @rk_clksrc, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  %19 = getelementptr inbounds %struct.rk_timer, ptr %16, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @clocksource_mmio_init(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef 250, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  %25 = load ptr, ptr @rk_clksrc, align 4
  tail call fastcc void @rk_timer_cleanup(ptr noundef %25) #6
  br label %30

26:                                               ; preds = %8
  %27 = load ptr, ptr @rk_clksrc, align 4
  %28 = getelementptr inbounds %struct.rk_timer, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @rk_timer_sched_read, i32 noundef 32, i32 noundef %29) #9
  br label %36

30:                                               ; preds = %23, %5
  %31 = phi i32 [ %6, %5 ], [ %21, %23 ]
  %32 = load ptr, ptr @rk_clksrc, align 4
  tail call void @kfree(ptr noundef %32) #9
  br label %33

33:                                               ; preds = %30, %1
  %34 = phi i32 [ %31, %30 ], [ -12, %1 ]
  %35 = inttoptr i32 %34 to ptr
  store ptr %35, ptr @rk_clksrc, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i32 [ %34, %33 ], [ 0, %26 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @rk_timer_probe(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #9
  store ptr %3, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %64

7:                                                ; preds = %2
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.4) #9
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 16, i32 28
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  %13 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.5) #9
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = ptrtoint ptr %14 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #7
  br label %61

19:                                               ; preds = %7
  %20 = tail call i32 @clk_prepare(ptr noundef %14) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %14) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %23, %25 ], [ %20, %19 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #7
  br label %61

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 3
  store ptr %14, ptr %30, align 4
  %31 = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef nonnull @.str.8) #9
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = ptrtoint ptr %31 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #7
  br label %59

36:                                               ; preds = %29
  %37 = tail call i32 @clk_prepare(ptr noundef %31) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = tail call i32 @clk_enable(ptr noundef %31) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef %31) #9
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %40, %42 ], [ %37, %36 ]
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %59

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 2
  store ptr %31, ptr %47, align 4
  %48 = tail call i32 @clk_get_rate(ptr noundef %31) #9
  %49 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #7
  tail call void @clk_disable(ptr noundef %31) #9
  tail call void @clk_unprepare(ptr noundef %31) #9
  br label %59

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 5
  store i32 %50, ptr %55, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr i8, ptr %56, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1) #9, !srcloc !8
  %58 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #9, !srcloc !8
  br label %64

59:                                               ; preds = %52, %43, %33
  %60 = phi i32 [ %34, %33 ], [ %44, %43 ], [ -22, %52 ]
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  br label %61

61:                                               ; preds = %59, %26, %16
  %62 = phi i32 [ %17, %16 ], [ %27, %26 ], [ %60, %59 ]
  %63 = load ptr, ptr %0, align 4
  tail call void @iounmap(ptr noundef %63) #9
  br label %64

64:                                               ; preds = %61, %54, %5
  %65 = phi i32 [ %62, %61 ], [ 0, %54 ], [ -6, %5 ]
  ret i32 %65
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_timer_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.rk_clkevt, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rk_clkevt, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #9, !srcloc !8
  %6 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %0) #9, !srcloc !8
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #9, !srcloc !8
  %9 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 7) #9, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_timer_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.rk_clkevt, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #9, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_timer_set_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.rk_clkevt, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rk_clkevt, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #9, !srcloc !8
  %5 = getelementptr inbounds %struct.rk_clkevt, ptr %0, i32 0, i32 1, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = udiv i32 %6, 100
  %8 = add nsw i32 %7, -1
  %9 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #9, !srcloc !8
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !8
  %12 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 5) #9, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.rk_clkevt, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #9, !srcloc !8
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 16
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rk_clkevt, ptr %1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #9, !srcloc !8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr %1, align 64
  tail call void %13(ptr noundef %1) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rk_timer_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.rk_timer, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %6 = load ptr, ptr %0, align 4
  tail call void @iounmap(ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @rk_timer_sched_read() #3 {
  %1 = load ptr, ptr @rk_clksrc, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #9, !srcloc !9
  %5 = xor i32 %4, -1
  %6 = zext i32 %5 to i64
  ret i64 %6
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }

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
!8 = !{i64 2830303}
!9 = !{i64 2830721}
