; ModuleID = '/llk/IR/drivers/clocksource/timer-sun5i.c_pt.bc'
source_filename = "../drivers/clocksource/timer-sun5i.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sun5i_timer = type { ptr, ptr, %struct.notifier_block, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sun5i_timer_clksrc = type { %struct.sun5i_timer, %struct.clocksource }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sun5i_timer_clkevt = type { %struct.sun5i_timer, [40 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__of_table_sun5i_a13 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-hstimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_timer_init }, section "__timer_of_table", align 4
@__of_table_sun7i_a20 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-hstimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [23 x i8] c"\013Can't map registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\013Can't parse IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\013Can't get timer clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\013Couldn't enable parent clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"\013Couldn't get parent clock rate\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\013Unable to register clock notifier.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\013Couldn't register clock source.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"sun5i_timer0\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\013Unable to register interrupt\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_sun5i_a13, ptr @__of_table_sun7i_a20], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun5i_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.3, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  %12 = ptrtoint ptr %8 to i32
  br label %34

13:                                               ; preds = %6
  %14 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #5
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %34

18:                                               ; preds = %13
  %19 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #5
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  %23 = ptrtoint ptr %19 to i32
  br label %34

24:                                               ; preds = %18
  %25 = tail call ptr @__of_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @reset_control_deassert(ptr noundef %25) #5
  br label %29

29:                                               ; preds = %27, %24
  %30 = tail call fastcc i32 @sun5i_setup_clocksource(ptr noundef %0, ptr noundef %8, ptr noundef %19) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call fastcc i32 @sun5i_setup_clockevent(ptr noundef %0, ptr noundef %8, ptr noundef %19, i32 noundef %14) #7
  br label %34

34:                                               ; preds = %32, %29, %21, %16, %10
  %35 = phi i32 [ %12, %10 ], [ -22, %16 ], [ %23, %21 ], [ %33, %32 ], [ %30, %29 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sun5i_setup_clocksource(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 128) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ %11, %13 ], [ %8, %7 ]
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %46

17:                                               ; preds = %10
  %18 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %44

22:                                               ; preds = %17
  store ptr %1, ptr %5, align 8
  %23 = getelementptr inbounds %struct.sun5i_timer, ptr %5, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sun5i_timer, ptr %5, i32 0, i32 2
  store ptr @sun5i_rate_cb_clksrc, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sun5i_timer, ptr %5, i32 0, i32 2, i32 1
  store ptr null, ptr %25, align 4
  %26 = tail call i32 @clk_notifier_register(ptr noundef %2, ptr noundef %24) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %44

30:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  %31 = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %32 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3) #5, !srcloc !9
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %5, i32 0, i32 1
  %35 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %5, i32 0, i32 1, i32 8
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %5, i32 0, i32 1, i32 10
  store i32 340, ptr %36, align 4
  store ptr @sun5i_clksrc_read, ptr %34, align 8
  %37 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %5, i32 0, i32 1, i32 1
  store i64 4294967295, ptr %37, align 8
  %38 = getelementptr inbounds %struct.sun5i_timer_clksrc, ptr %5, i32 0, i32 1, i32 13
  store i32 1, ptr %38, align 8
  %39 = tail call i32 @__clocksource_register_scale(ptr noundef %34, i32 noundef 1, i32 noundef %18) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %30
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  %43 = tail call i32 @clk_notifier_unregister(ptr noundef %2, ptr noundef %24) #5
  br label %44

44:                                               ; preds = %41, %28, %20
  %45 = phi i32 [ %26, %28 ], [ %39, %41 ], [ -22, %20 ]
  tail call void @clk_disable(ptr noundef %2) #5
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %46

46:                                               ; preds = %44, %14
  %47 = phi i32 [ %15, %14 ], [ %45, %44 ]
  tail call void @kfree(ptr noundef nonnull %5) #5
  br label %48

48:                                               ; preds = %46, %30, %3
  %49 = phi i32 [ %47, %46 ], [ -12, %3 ], [ 0, %30 ]
  ret i32 %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sun5i_setup_clockevent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 256) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @clk_prepare(ptr noundef %2) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call i32 @clk_enable(ptr noundef %2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ %12, %14 ], [ %9, %8 ]
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %56

18:                                               ; preds = %11
  %19 = tail call i32 @clk_get_rate(ptr noundef %2) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %54

23:                                               ; preds = %18
  store ptr %1, ptr %6, align 64
  %24 = add i32 %19, 99
  %25 = udiv i32 %24, 100
  %26 = getelementptr inbounds %struct.sun5i_timer, ptr %6, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sun5i_timer, ptr %6, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.sun5i_timer, ptr %6, i32 0, i32 2
  store ptr @sun5i_rate_cb_clkevt, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sun5i_timer, ptr %6, i32 0, i32 2, i32 1
  store ptr null, ptr %29, align 4
  %30 = tail call i32 @clk_notifier_register(ptr noundef %2, ptr noundef %28) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %54

34:                                               ; preds = %23
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2
  %37 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 21
  store ptr %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 9
  store i32 3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 1
  store ptr @sun5i_clkevt_next_event, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 14
  store ptr @sun5i_clkevt_shutdown, ptr %40, align 8
  %41 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 11
  store ptr @sun5i_clkevt_set_periodic, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 12
  store ptr @sun5i_clkevt_set_oneshot, ptr %42, align 64
  %43 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 15
  store ptr @sun5i_clkevt_shutdown, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 22
  store i32 340, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 23
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %6, i32 0, i32 2, i32 25
  store ptr @__cpu_possible_mask, ptr %46, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %48 = or i32 %47, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %48) #5, !srcloc !9
  tail call void @clockevents_config_and_register(ptr noundef %36, i32 noundef %19, i32 noundef 3, i32 noundef -1) #5
  %49 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @sun5i_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %34
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #6
  %53 = tail call i32 @clk_notifier_unregister(ptr noundef %2, ptr noundef %28) #5
  br label %54

54:                                               ; preds = %51, %32, %21
  %55 = phi i32 [ %30, %32 ], [ %49, %51 ], [ -22, %21 ]
  tail call void @clk_disable(ptr noundef %2) #5
  tail call void @clk_unprepare(ptr noundef %2) #5
  br label %56

56:                                               ; preds = %54, %15
  %57 = phi i32 [ %16, %15 ], [ %55, %54 ]
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %58

58:                                               ; preds = %56, %34, %4
  %59 = phi i32 [ %57, %56 ], [ -12, %4 ], [ 0, %34 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_rate_cb_clksrc(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  switch i32 %1, label %12 [
    i32 1, label %4
    i32 2, label %7
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = tail call i32 @clocksource_unregister(ptr noundef %5) #5
  br label %12

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 16
  %9 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__clocksource_register_scale(ptr noundef %8, i32 noundef 1, i32 noundef %10) #5
  br label %12

12:                                               ; preds = %7, %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @sun5i_clksrc_read(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %6 = xor i32 %5, -1
  %7 = zext i32 %6 to i64
  ret i64 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_rate_cb_clkevt(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 56
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @clockevents_update_freq(ptr noundef %6, i32 noundef %8) #5
  %10 = load i32, ptr %7, align 4
  %11 = add i32 %10, 99
  %12 = udiv i32 %11, 100
  %13 = getelementptr i8, ptr %0, i32 12
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %5, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %7 = and i32 %6, -2
  %8 = load ptr, ptr %3, align 64
  %9 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !9
  %10 = load ptr, ptr %3, align 64
  %11 = getelementptr i8, ptr %10, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %13 = load ptr, ptr %3, align 64
  %14 = getelementptr i8, ptr %13, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %16 = sub i32 %12, %15
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %24

18:                                               ; preds = %18, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !20
  %19 = load ptr, ptr %3, align 64
  %20 = getelementptr i8, ptr %19, i32 60
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %22 = sub i32 %12, %21
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %18, label %24

24:                                               ; preds = %18, %2
  %25 = add i32 %0, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %3, align 64
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !9
  %28 = load ptr, ptr %3, align 64
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %31 = or i32 %30, 131
  %32 = load ptr, ptr %3, align 64
  %33 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !9
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %15 = sub i32 %11, %14
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !20
  %18 = load ptr, ptr %2, align 64
  %19 = getelementptr i8, ptr %18, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %21 = sub i32 %11, %20
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %17, label %23

23:                                               ; preds = %17, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_set_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !9
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %15 = sub i32 %11, %14
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !20
  %18 = load ptr, ptr %2, align 64
  %19 = getelementptr i8, ptr %18, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %21 = sub i32 %11, %20
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %17, label %23

23:                                               ; preds = %17, %1
  %24 = getelementptr i8, ptr %0, i32 -44
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %2, align 64
  %27 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !9
  %28 = load ptr, ptr %2, align 64
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %31 = and i32 %30, -132
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %32 = or i32 %31, 3
  %33 = load ptr, ptr %2, align 64
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_clkevt_set_oneshot(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 16
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 64
  %8 = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !9
  %9 = load ptr, ptr %2, align 64
  %10 = getelementptr i8, ptr %9, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %12 = load ptr, ptr %2, align 64
  %13 = getelementptr i8, ptr %12, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %15 = sub i32 %11, %14
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !20
  %18 = load ptr, ptr %2, align 64
  %19 = getelementptr i8, ptr %18, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %21 = sub i32 %11, %20
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %17, label %23

23:                                               ; preds = %17, %1
  %24 = load ptr, ptr %2, align 64
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %27 = or i32 %26, 131
  %28 = load ptr, ptr %2, align 64
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun5i_timer_interrupt(i32 noundef %0, ptr noundef %1) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr %1, align 64
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #5, !srcloc !9
  %5 = getelementptr inbounds %struct.sun5i_timer_clkevt, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 64
  tail call void %6(ptr noundef %5) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 2151404246}
!9 = !{i64 2832981}
!10 = !{i64 2151404822}
!11 = !{i64 2833399}
!12 = !{i64 2151411182}
!13 = !{i64 2151411482}
!14 = !{i64 2151399620}
!15 = !{i64 2151389940}
!16 = !{i64 2151390292}
!17 = !{i64 2151388831}
!18 = !{i64 2151389252}
!19 = !{i64 2151389500}
!20 = !{i64 2151389342}
!21 = !{i64 2151390750}
!22 = !{i64 2151391345}
!23 = !{i64 2151391971}
!24 = !{i64 2151397741}
