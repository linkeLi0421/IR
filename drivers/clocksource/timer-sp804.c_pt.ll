; ModuleID = '/llk/IR/drivers/clocksource/timer-sp804.c_pt.bc'
source_filename = "../drivers/clocksource/timer-sp804.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sp804_timer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }
%struct.sp804_clkevt = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }

@__of_table_sp804 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,sp804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_sp804_of_init }, section "__timer_of_table", align 4
@__of_table_hisi_sp804 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,sp804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hisi_sp804_of_init }, section "__timer_of_table", align 4
@__of_table_intcp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,integrator-cp-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @integrator_cp_of_init }, section "__timer_of_table", align 4
@arm_sp804_timer = internal global %struct.sp804_timer { i32 0, i32 0, i32 4, i32 0, i32 8, i32 12, i32 0, i32 0, i32 0, i32 0, [2 x i32] [i32 0, i32 32], i32 32 }, section ".init.data", align 4
@sp804_of_init.initialized = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"\013timer_sp804: %pOFn clock not found: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"arm,sp804-has-irq\00", align 1
@sp804_clkevt = internal global [2 x %struct.sp804_clkevt] zeroinitializer, align 4
@sp804_clockevent = internal global %struct.clock_event_device { ptr null, ptr @sp804_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 35, i32 0, ptr @sp804_set_periodic, ptr @sp804_shutdown, ptr null, ptr @sp804_shutdown, ptr @sp804_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 300, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@common_clkevt = internal unnamed_addr global ptr null, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\013timer_sp804: request_irq() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"sp804\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"\013timer_sp804: %s clock not found: %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\013timer_sp804: clock failed to enable: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"drivers/clocksource/timer-sp804.c\00", align 1
@sched_clkevt = internal unnamed_addr global ptr null, align 4
@hisi_sp804_timer = internal global %struct.sp804_timer { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 0, i32 0, i32 0, i32 0, [2 x i32] [i32 0, i32 64], i32 64 }, section ".init.data", align 4
@integrator_cp_of_init.init_count = internal unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\013timer_sp804: Failed to iomap\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\013timer_sp804: Failed to get clock\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_hisi_sp804, ptr @__of_table_intcp, ptr @__of_table_sp804], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @arm_sp804_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @sp804_of_init(ptr noundef %0, ptr noundef nonnull @arm_sp804_timer) #6
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hisi_sp804_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @sp804_of_init(ptr noundef %0, ptr noundef nonnull @hisi_sp804_timer) #6
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @integrator_cp_of_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null) #7
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %37

7:                                                ; preds = %1
  %8 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  %12 = ptrtoint ptr %8 to i32
  br label %37

13:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %14 = load i32, ptr getelementptr inbounds (%struct.sp804_timer, ptr @arm_sp804_timer, i32 0, i32 4), align 4
  %15 = getelementptr i8, ptr %3, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #7, !srcloc !9
  %16 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i1 @of_device_is_available(ptr noundef %0) #7
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  tail call fastcc void @sp804_clkevt_init(ptr noundef nonnull @arm_sp804_timer, ptr noundef nonnull %3) #6
  %21 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef nonnull %3, ptr noundef %2, ptr noundef %8, i32 noundef 0) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %35

26:                                               ; preds = %20
  %27 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @sp804_clockevents_init(ptr noundef nonnull %3, i32 noundef %27, ptr noundef %8, ptr noundef %2) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %23
  %33 = load i32, ptr @integrator_cp_of_init.init_count, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr @integrator_cp_of_init.init_count, align 4
  br label %37

35:                                               ; preds = %29, %26, %23, %18, %13
  %36 = phi i32 [ -22, %13 ], [ -22, %26 ], [ %30, %29 ], [ %24, %23 ], [ -22, %18 ]
  tail call void @iounmap(ptr noundef nonnull %3) #7
  br label %37

37:                                               ; preds = %35, %32, %10, %5
  %38 = phi i32 [ %12, %10 ], [ %36, %35 ], [ 0, %32 ], [ -6, %5 ]
  ret i32 %38
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sp804_of_init(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %4 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null) #7
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sp804_timer, ptr %1, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  %11 = getelementptr %struct.sp804_timer, ptr %1, i32 0, i32 10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %14 = getelementptr inbounds %struct.sp804_timer, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %10, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %17 = load i32, ptr %14, align 4
  %18 = getelementptr i8, ptr %13, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #7, !srcloc !9
  %19 = load i1, ptr @sp804_of_init.initialized, align 1
  br i1 %19, label %55, label %20

20:                                               ; preds = %7
  %21 = tail call zeroext i1 @of_device_is_available(ptr noundef %0) #7
  br i1 %21, label %22, label %55

22:                                               ; preds = %20
  %23 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #7
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %25 = select i1 %24, ptr null, ptr %23
  %26 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #7
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 1) #7
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0, i32 noundef %32) #8
  br label %34

34:                                               ; preds = %31, %28, %22
  %35 = phi ptr [ null, %31 ], [ %29, %28 ], [ %25, %22 ]
  %36 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  tail call fastcc void @sp804_clkevt_init(ptr noundef %1, ptr noundef nonnull %5) #6
  %39 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = call fastcc i32 @sp804_clockevents_init(ptr noundef %13, i32 noundef %36, ptr noundef %35, ptr noundef %4) #6
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef %10, ptr noundef %4, ptr noundef %25, i32 noundef 1) #6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %55

48:                                               ; preds = %38
  %49 = call fastcc i32 @sp804_clockevents_init(ptr noundef %10, i32 noundef %36, ptr noundef %25, ptr noundef %4) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = call fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef %13, ptr noundef %4, ptr noundef %35, i32 noundef 1) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %45
  store i1 true, ptr @sp804_of_init.initialized, align 1
  br label %57

55:                                               ; preds = %51, %48, %45, %42, %34, %20, %7
  %56 = phi i32 [ -22, %34 ], [ %43, %42 ], [ %46, %45 ], [ %49, %48 ], [ %52, %51 ], [ -22, %20 ], [ -22, %7 ]
  call void @iounmap(ptr noundef nonnull %5) #7
  br label %57

57:                                               ; preds = %55, %54, %2
  %58 = phi i32 [ %56, %55 ], [ 0, %54 ], [ -6, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sp804_clkevt_init(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 section ".init.text" {
  %3 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 5
  %8 = getelementptr inbounds %struct.sp804_timer, ptr %0, i32 0, i32 11
  br label %9

9:                                                ; preds = %9, %2
  %10 = phi i1 [ true, %2 ], [ false, %9 ]
  %11 = phi i32 [ 0, %2 ], [ 1, %9 ]
  %12 = getelementptr %struct.sp804_timer, ptr %0, i32 0, i32 10, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %1, i32 %13
  %15 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11
  store ptr %14, ptr %15, align 4
  %16 = load i32, ptr %0, align 4
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 1
  store ptr %17, ptr %18, align 4
  %19 = load i32, ptr %3, align 4
  %20 = getelementptr i8, ptr %14, i32 %19
  %21 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 2
  store ptr %20, ptr %21, align 4
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr i8, ptr %14, i32 %22
  %24 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 3
  store ptr %23, ptr %24, align 4
  %25 = load i32, ptr %5, align 4
  %26 = getelementptr i8, ptr %14, i32 %25
  %27 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 4
  store ptr %26, ptr %27, align 4
  %28 = load i32, ptr %6, align 4
  %29 = getelementptr i8, ptr %14, i32 %28
  %30 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 5
  store ptr %29, ptr %30, align 4
  %31 = load i32, ptr %7, align 4
  %32 = getelementptr i8, ptr %14, i32 %31
  %33 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 6
  store ptr %32, ptr %33, align 4
  %34 = load i32, ptr %8, align 4
  %35 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %11, i32 12
  store i32 %34, ptr %35, align 4
  br i1 %10, label %9, label %36

36:                                               ; preds = %9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sp804_clockevents_init(ptr noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc i32 @sp804_get_clock_rate(ptr noundef %2, ptr noundef %3) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %30, label %8

7:                                                ; preds = %8
  br i1 %9, label %8, label %14

8:                                                ; preds = %7, %4
  %9 = phi i1 [ false, %7 ], [ true, %4 ]
  %10 = phi i32 [ 1, %7 ], [ 0, %4 ]
  %11 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %15, label %7

14:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi ptr [ null, %14 ], [ %11, %8 ]
  store ptr %16, ptr @common_clkevt, align 4
  %17 = icmp eq i32 %5, 0
  %18 = add i32 %5, 50
  %19 = sdiv i32 %18, 100
  %20 = select i1 %17, i32 0, i32 %19
  %21 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 11
  store i32 %20, ptr %21, align 4
  store ptr %3, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 21), align 4
  store i32 %1, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 23), align 4
  store ptr @__cpu_possible_mask, ptr getelementptr inbounds (%struct.clock_event_device, ptr @sp804_clockevent, i32 0, i32 25), align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %22 = load ptr, ptr @common_clkevt, align 4
  %23 = getelementptr inbounds %struct.sp804_clkevt, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #7, !srcloc !9
  %25 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @sp804_timer_interrupt, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.3, ptr noundef nonnull @sp804_clockevent) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %15
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %29

29:                                               ; preds = %27, %15
  tail call void @clockevents_config_and_register(ptr noundef nonnull @sp804_clockevent, i32 noundef %5, i32 noundef 15, i32 noundef -1) #7
  br label %30

30:                                               ; preds = %29, %4
  %31 = phi i32 [ 0, %29 ], [ -22, %4 ]
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sp804_clocksource_and_sched_clock_init(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = tail call fastcc i32 @sp804_get_clock_rate(ptr noundef %2, ptr noundef %1) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %37, label %8

7:                                                ; preds = %8
  br i1 %9, label %8, label %14

8:                                                ; preds = %7, %4
  %9 = phi i1 [ false, %7 ], [ true, %4 ]
  %10 = phi i32 [ 1, %7 ], [ 0, %4 ]
  %11 = getelementptr [2 x %struct.sp804_clkevt], ptr @sp804_clkevt, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %15, label %7

14:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 93, i32 noundef 9, ptr noundef null) #7
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi ptr [ null, %14 ], [ %11, %8 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %17 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %19 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 -1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -1) #7, !srcloc !9
  %23 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %27 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %29 = getelementptr inbounds %struct.sp804_clkevt, ptr %16, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #7, !srcloc !9
  br label %31

31:                                               ; preds = %26, %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %32 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 194) #7, !srcloc !9
  %33 = load ptr, ptr %21, align 4
  %34 = tail call i32 @clocksource_mmio_init(ptr noundef %33, ptr noundef %1, i32 noundef %5, i32 noundef 200, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_down) #7
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store ptr %16, ptr @sched_clkevt, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @sp804_read, i32 noundef 32, i32 noundef %5) #7
  br label %37

37:                                               ; preds = %36, %31, %4
  %38 = phi i32 [ -22, %4 ], [ 0, %36 ], [ 0, %31 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @sp804_get_clock_rate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str.5, ptr noundef %1) #7
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %0, %2 ], [ %5, %4 ]
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %10) #8
  br label %24

12:                                               ; preds = %6
  %13 = tail call i32 @clk_prepare(ptr noundef %7) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @clk_enable(ptr noundef %7) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %16, %18 ], [ %13, %12 ]
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %20) #8
  tail call void @clk_put(ptr noundef %7) #7
  br label %24

22:                                               ; preds = %15
  %23 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  br label %24

24:                                               ; preds = %22, %19, %9
  %25 = phi i32 [ %10, %9 ], [ %20, %19 ], [ %23, %22 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp804_timer_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @common_clkevt, align 4
  %4 = getelementptr inbounds %struct.sp804_clkevt, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #7, !srcloc !9
  %6 = load ptr, ptr %1, align 64
  tail call void %6(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp804_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %3 = load ptr, ptr @common_clkevt, align 4
  %4 = getelementptr inbounds %struct.sp804_clkevt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %6 = load ptr, ptr @common_clkevt, align 4
  %7 = getelementptr inbounds %struct.sp804_clkevt, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 163) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp804_set_periodic(ptr nocapture noundef readnone %0) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %2 = load ptr, ptr @common_clkevt, align 4
  %3 = getelementptr inbounds %struct.sp804_clkevt, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %5 = load ptr, ptr @common_clkevt, align 4
  %6 = getelementptr inbounds %struct.sp804_clkevt, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sp804_clkevt, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr @common_clkevt, align 4
  %11 = getelementptr inbounds %struct.sp804_clkevt, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 226) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sp804_shutdown(ptr nocapture noundef readnone %0) #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %2 = load ptr, ptr @common_clkevt, align 4
  %3 = getelementptr inbounds %struct.sp804_clkevt, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_down(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @sp804_read() #5 {
  %1 = load ptr, ptr @sched_clkevt, align 4
  %2 = getelementptr inbounds %struct.sp804_clkevt, ptr %1, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !25
  %5 = xor i32 %4, -1
  %6 = zext i32 %5 to i64
  ret i64 %6
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 2151356993}
!9 = !{i64 2824819}
!10 = !{i64 2151352760}
!11 = !{i64 2151353084}
!12 = !{i64 2151351459}
!13 = !{i64 2151346650}
!14 = !{i64 2151346957}
!15 = !{i64 2151347283}
!16 = !{i64 2151347611}
!17 = !{i64 2151347941}
!18 = !{i64 2151348316}
!19 = !{i64 2151348681}
!20 = !{i64 2151350244}
!21 = !{i64 2151350565}
!22 = !{i64 2151349164}
!23 = !{i64 2151349532}
!24 = !{i64 2151349887}
!25 = !{i64 2825237}
