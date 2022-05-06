; ModuleID = '/llk/IR/drivers/clocksource/exynos_mct.c_pt.bc'
source_filename = "../drivers/clocksource/exynos_mct.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mct_clock_event_device = type { %struct.clock_event_device, i32, [10 x i8], [50 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.delay_timer = type { ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_exynos4210 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-mct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mct_init_spi }, section "__timer_of_table", align 4
@__of_table_exynos4412 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-mct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mct_init_ppi }, section "__timer_of_table", align 4
@reg_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: unable to ioremap mct address space\0A\00", align 1
@__func__.exynos4_timer_resources = private unnamed_addr constant [24 x i8] c"exynos4_timer_resources\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: unable to determine tick clock rate\0A\00", align 1
@clk_rate = internal unnamed_addr global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"mct\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: unable to retrieve mct clock instance\0A\00", align 1
@mct_int_type = internal unnamed_addr global i32 0, align 4
@mct_irqs = internal unnamed_addr global [12 x i32] zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"MCT\00", align 1
@percpu_mct_tick = internal global %struct.mct_clock_event_device zeroinitializer, section ".data..percpu", align 64
@.str.6 = private unnamed_addr constant [33 x i8] c"drivers/clocksource/exynos_mct.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"MCT: can't request IRQ %d (%d)\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"\013exynos-mct: cannot register IRQ (cpu%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"clockevents/exynos4/mct_timer:starting\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"MCT hangs after writing %d (offset:0x%lx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"mct_tick%d\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@exynos4_delay_timer = internal global %struct.delay_timer zeroinitializer, align 4
@mct_frc = internal global %struct.clocksource { ptr @exynos4_frc_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.13, %struct.list_head zeroinitializer, i32 450, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr @exynos4_frc_resume, ptr null, ptr null, ptr null }, align 8
@.str.12 = private unnamed_addr constant [32 x i8] c"%s: can't register clocksource\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"mct-frc\00", align 1
@mct_comp_device = internal global %struct.clock_event_device { ptr null, ptr @exynos4_comp_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @mct_set_state_periodic, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr @mct_set_state_shutdown, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str.16, i32 250, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, align 64
@.str.14 = private unnamed_addr constant [13 x i8] c"mct_comp_irq\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\013%s: request_irq() failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"mct-comp\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_exynos4210, ptr @__of_table_exynos4412], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mct_init_spi(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @mct_init_dt(ptr noundef %0, i32 noundef 0) #7
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mct_init_ppi(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @mct_init_dt(ptr noundef %0, i32 noundef 1) #7
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mct_init_dt(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  tail call fastcc void @exynos4_timer_resources(ptr noundef %0) #7
  %3 = tail call fastcc i32 @exynos4_timer_interrupts(ptr noundef %0, i32 noundef %1) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  tail call fastcc void @exynos4_clocksource_init() #7
  store ptr getelementptr inbounds ([33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 1), ptr getelementptr inbounds (%struct.clock_event_device, ptr @mct_comp_device, i32 0, i32 25), align 4
  %6 = load i32, ptr @clk_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef nonnull @mct_comp_device, i32 noundef %6, i32 noundef 15, i32 noundef -1) #8
  %7 = load i32, ptr @mct_irqs, align 4
  %8 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @exynos4_mct_comp_isr, ptr noundef null, i32 noundef 86528, ptr noundef nonnull @.str.14, ptr noundef nonnull @mct_comp_device) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #9
  br label %12

12:                                               ; preds = %10, %5, %2
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos4_timer_resources(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  store ptr %2, ptr @reg_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos4_timer_resources) #10
  unreachable

5:                                                ; preds = %1
  %6 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.exynos4_timer_resources) #10
  unreachable

9:                                                ; preds = %5
  %10 = tail call i32 @clk_get_rate(ptr noundef %6) #8
  store i32 %10, ptr @clk_rate, align 4
  %11 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.exynos4_timer_resources) #10
  unreachable

14:                                               ; preds = %9
  %15 = tail call i32 @clk_prepare(ptr noundef %11) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = tail call i32 @clk_enable(ptr noundef %11) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %21

21:                                               ; preds = %20, %17, %14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @exynos4_timer_interrupts(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  store i32 %1, ptr @mct_int_type, align 4
  %3 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #8
  store i32 %3, ptr @mct_irqs, align 4
  %4 = tail call i32 @of_irq_count(ptr noundef %0) #8
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %6, label %12

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %10, %6 ], [ 4, %2 ]
  %8 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %7) #8
  %9 = getelementptr [12 x i32], ptr @mct_irqs, i32 0, i32 %7
  store i32 %8, ptr %9, align 4
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %2
  %13 = load i32, ptr @mct_int_type, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %25, label %45

19:                                               ; preds = %12
  %20 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  %21 = tail call i32 @__request_percpu_irq(i32 noundef %20, ptr noundef nonnull @exynos4_mct_tick_isr, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @percpu_mct_tick) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %45, label %23, !prof !8

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 553, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %24, i32 noundef %21) #8
  br label %45

25:                                               ; preds = %41, %15
  %26 = phi i32 [ %42, %41 ], [ %16, %15 ]
  %27 = add i32 %26, 4
  %28 = getelementptr [12 x i32], ptr @mct_irqs, i32 0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, ptrtoint (ptr @percpu_mct_tick to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %33, i32 0, i32 23
  store i32 -1, ptr %34, align 4
  tail call void @irq_modify_status(i32 noundef %29, i32 noundef 0, i32 noundef 4096) #8
  %35 = getelementptr inbounds %struct.mct_clock_event_device, ptr %33, i32 0, i32 2
  %36 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @exynos4_mct_tick_isr, ptr noundef null, i32 noundef 84480, ptr noundef %35, ptr noundef %33) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %25
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %26) #9
  br label %41

40:                                               ; preds = %25
  store i32 %29, ptr %34, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_possible_mask) #11
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %25, label %45

45:                                               ; preds = %41, %23, %19, %15
  %46 = tail call i32 @__cpuhp_setup_state(i32 noundef 121, ptr noundef nonnull @.str.9, i1 noundef zeroext true, ptr noundef nonnull @exynos4_mct_starting_cpu, ptr noundef nonnull @exynos4_mct_dying_cpu, i1 noundef zeroext false) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr @mct_int_type, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %57, label %74

55:                                               ; preds = %48
  %56 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @free_percpu_irq(i32 noundef %56, ptr noundef nonnull @percpu_mct_tick) #8
  br label %74

57:                                               ; preds = %70, %51
  %58 = phi i32 [ %71, %70 ], [ %53, %51 ]
  %59 = phi i32 [ %72, %70 ], [ %52, %51 ]
  %60 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, ptrtoint (ptr @percpu_mct_tick to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.clock_event_device, ptr %63, i32 0, i32 23
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = tail call ptr @free_irq(i32 noundef %65, ptr noundef %63) #8
  store i32 -1, ptr %64, align 4
  %69 = load i32, ptr @nr_cpu_ids, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = phi i32 [ %69, %67 ], [ %58, %57 ]
  %72 = tail call i32 @cpumask_next(i32 noundef %59, ptr noundef nonnull @__cpu_possible_mask) #11
  %73 = icmp ult i32 %72, %71
  br i1 %73, label %57, label %74

74:                                               ; preds = %70, %55, %51, %45
  ret i32 %46
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos4_clocksource_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @reg_base, align 4
  %2 = getelementptr i8, ptr %1, i32 576
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = or i32 %3, 256
  %5 = load ptr, ptr @reg_base, align 4
  %6 = getelementptr i8, ptr %5, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #8, !srcloc !10
  %7 = load i32, ptr @loops_per_jiffy, align 4
  %8 = icmp ult i32 %7, 1000
  br i1 %8, label %22, label %15

9:                                                ; preds = %15
  %10 = add nuw nsw i32 %16, 1
  %11 = load i32, ptr @loops_per_jiffy, align 4
  %12 = udiv i32 %11, 1000
  %13 = mul nuw nsw i32 %12, 100
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %9, %0
  %16 = phi i32 [ %10, %9 ], [ 0, %0 ]
  %17 = load ptr, ptr @reg_base, align 4
  %18 = getelementptr i8, ptr %17, i32 588
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !9
  %20 = and i32 %19, 65536
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %9, label %23

22:                                               ; preds = %9, %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef 576) #10
  unreachable

23:                                               ; preds = %15
  %24 = load ptr, ptr @reg_base, align 4
  %25 = getelementptr i8, ptr %24, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 65536) #8, !srcloc !10
  store ptr @exynos4_read_current_timer, ptr @exynos4_delay_timer, align 4
  %26 = load i32, ptr @clk_rate, align 4
  store i32 %26, ptr getelementptr inbounds (%struct.delay_timer, ptr @exynos4_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @exynos4_delay_timer) #8
  %27 = load i32, ptr @clk_rate, align 4
  %28 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @mct_frc, i32 noundef 1, i32 noundef %27) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr getelementptr inbounds (%struct.clocksource, ptr @mct_frc, i32 0, i32 8), align 8
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12, ptr noundef %31) #10
  unreachable

32:                                               ; preds = %23
  %33 = load i32, ptr @clk_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @exynos4_read_sched_clock, i32 noundef 32, i32 noundef %33) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_mct_tick_isr(i32 noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mct_clock_event_device, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 64
  %9 = add i32 %8, 32
  %10 = load ptr, ptr @reg_base, align 4
  %11 = getelementptr i8, ptr %10, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !9
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = and i32 %12, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %16, i32 noundef %9) #8
  br label %17

17:                                               ; preds = %15, %6, %2
  %18 = load ptr, ptr @reg_base, align 4
  %19 = getelementptr inbounds %struct.mct_clock_event_device, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 64
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = getelementptr i8, ptr %21, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !9
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %19, align 64
  %28 = add i32 %27, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %28) #8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load ptr, ptr %1, align 64
  tail call void %30(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_mct_starting_cpu(i32 noundef %0) #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @percpu_mct_tick to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = shl i32 %0, 8
  %7 = add i32 %6, 768
  %8 = getelementptr inbounds %struct.mct_clock_event_device, ptr %5, i32 0, i32 1
  store i32 %7, ptr %8, align 64
  %9 = getelementptr inbounds %struct.mct_clock_event_device, ptr %5, i32 0, i32 2
  %10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %9, i32 noundef 10, ptr noundef nonnull @.str.11, i32 noundef %0)
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 21
  store ptr %9, ptr %11, align 4
  %12 = and i32 %0, 31
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %13
  %15 = lshr i32 %0, 5
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 25
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 1
  store ptr @exynos4_tick_set_next_event, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 11
  store ptr @set_state_periodic, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 14
  store ptr @set_state_shutdown, ptr %21, align 8
  %22 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 12
  store ptr @set_state_shutdown, ptr %22, align 64
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 13
  store ptr @set_state_shutdown, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 15
  store ptr @set_state_shutdown, ptr %24, align 4
  %25 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 9
  store i32 67, ptr %25, align 4
  %26 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 22
  store i32 500, ptr %26, align 8
  %27 = load i32, ptr %8, align 64
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %27)
  %28 = load i32, ptr @mct_int_type, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 23
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @irq_force_affinity(i32 noundef %32, ptr noundef %17) #8
  %36 = load i32, ptr %31, align 4
  tail call void @enable_irq(i32 noundef %36) #8
  br label %39

37:                                               ; preds = %1
  %38 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @enable_percpu_irq(i32 noundef %38, i32 noundef 0) #8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, ptr @clk_rate, align 4
  %41 = lshr i32 %40, 1
  tail call void @clockevents_config_and_register(ptr noundef %5, i32 noundef %41, i32 noundef 15, i32 noundef 2147483647) #8
  br label %42

42:                                               ; preds = %39, %30
  %43 = phi i32 [ 0, %39 ], [ -5, %30 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_mct_dying_cpu(i32 noundef %0) #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @percpu_mct_tick to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 %7(ptr noundef %5) #8
  %9 = load i32, ptr @mct_int_type, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %5, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @disable_irq_nosync(i32 noundef %13) #8
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.mct_clock_event_device, ptr %5, i32 0, i32 1
  %18 = load i32, ptr %17, align 64
  %19 = add i32 %18, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %19)
  br label %22

20:                                               ; preds = %1
  %21 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @mct_irqs, i32 0, i32 4), align 4
  tail call void @disable_percpu_irq(i32 noundef %21) #8
  br label %22

22:                                               ; preds = %20, %16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_write(i32 noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @reg_base, align 4
  %4 = getelementptr i8, ptr %3, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %0) #8, !srcloc !10
  %5 = icmp ugt i32 %1, 767
  br i1 %5, label %6, label %12, !prof !8

6:                                                ; preds = %2
  %7 = and i32 %1, -256
  %8 = or i32 %7, 64
  %9 = trunc i32 %1 to i8
  switch i8 %9, label %40 [
    i8 32, label %18
    i8 8, label %10
    i8 0, label %11
  ]

10:                                               ; preds = %6
  br label %18

11:                                               ; preds = %6
  br label %18

12:                                               ; preds = %2
  switch i32 %1, label %40 [
    i32 576, label %18
    i32 512, label %13
    i32 516, label %14
    i32 520, label %15
    i32 256, label %16
    i32 260, label %17
  ]

13:                                               ; preds = %12
  br label %18

14:                                               ; preds = %12
  br label %18

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %6
  %19 = phi i32 [ 1, %11 ], [ 2, %10 ], [ 2, %17 ], [ 1, %16 ], [ 4, %15 ], [ 2, %14 ], [ 1, %13 ], [ 8, %6 ], [ 65536, %12 ]
  %20 = phi i32 [ %8, %11 ], [ %8, %10 ], [ 272, %17 ], [ 272, %16 ], [ 588, %15 ], [ 588, %14 ], [ 588, %13 ], [ %8, %6 ], [ 588, %12 ]
  %21 = load i32, ptr @loops_per_jiffy, align 4
  %22 = icmp ult i32 %21, 1000
  br i1 %22, label %39, label %29

23:                                               ; preds = %29
  %24 = add nuw nsw i32 %30, 1
  %25 = load i32, ptr @loops_per_jiffy, align 4
  %26 = udiv i32 %25, 1000
  %27 = mul nuw nsw i32 %26, 100
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23, %18
  %30 = phi i32 [ %24, %23 ], [ 0, %18 ]
  %31 = load ptr, ptr @reg_base, align 4
  %32 = getelementptr i8, ptr %31, i32 %20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  %34 = and i32 %33, %19
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %23, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @reg_base, align 4
  %38 = getelementptr i8, ptr %37, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %19) #8, !srcloc !10
  br label %40

39:                                               ; preds = %23, %18
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %0, i32 noundef %1) #10
  unreachable

40:                                               ; preds = %36, %12, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_tick_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  tail call fastcc void @exynos4_mct_tick_start(i32 noundef %0, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_state_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mct_clock_event_device, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 64
  %8 = add i32 %7, 32
  %9 = load ptr, ptr @reg_base, align 4
  %10 = getelementptr i8, ptr %9, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !9
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = and i32 %11, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %15, i32 noundef %8) #8
  br label %16

16:                                               ; preds = %14, %1
  %17 = zext i32 %3 to i64
  %18 = mul nuw nsw i64 %17, 10000000
  %19 = zext i32 %5 to i64
  %20 = lshr i64 %18, %19
  %21 = trunc i64 %20 to i32
  tail call fastcc void @exynos4_mct_tick_start(i32 noundef %21, ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_state_shutdown(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.mct_clock_event_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 64
  %4 = add i32 %3, 32
  %5 = load ptr, ptr @reg_base, align 4
  %6 = getelementptr i8, ptr %5, i32 %4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = and i32 %7, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %11, i32 noundef %4) #8
  br label %12

12:                                               ; preds = %10, %1
  %13 = load ptr, ptr @reg_base, align 4
  %14 = load i32, ptr %2, align 64
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !9
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %2, align 64
  %22 = add i32 %21, 48
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %22) #8
  br label %23

23:                                               ; preds = %20, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_tick_start(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.mct_clock_event_device, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 64
  %5 = add i32 %4, 32
  %6 = load ptr, ptr @reg_base, align 4
  %7 = getelementptr i8, ptr %6, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = and i32 %8, -4
  tail call fastcc void @exynos4_mct_write(i32 noundef %12, i32 noundef %5) #8
  br label %13

13:                                               ; preds = %11, %2
  %14 = or i32 %0, -2147483648
  %15 = load i32, ptr %3, align 64
  %16 = add i32 %15, 8
  tail call fastcc void @exynos4_mct_write(i32 noundef %14, i32 noundef %16)
  %17 = load i32, ptr %3, align 64
  %18 = add i32 %17, 52
  tail call fastcc void @exynos4_mct_write(i32 noundef 1, i32 noundef %18)
  %19 = load ptr, ptr @reg_base, align 4
  %20 = load i32, ptr %3, align 64
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #8, !srcloc !9
  %24 = or i32 %23, 7
  %25 = load i32, ptr %3, align 64
  %26 = add i32 %25, 32
  tail call fastcc void @exynos4_mct_write(i32 noundef %24, i32 noundef %26)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_read_current_timer() #3 {
  %1 = load ptr, ptr @reg_base, align 4
  %2 = getelementptr i8, ptr %1, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @exynos4_read_sched_clock() #3 {
  %1 = load ptr, ptr @reg_base, align 4
  %2 = getelementptr i8, ptr %1, i32 256
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !9
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @exynos4_frc_read(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @reg_base, align 4
  %3 = getelementptr i8, ptr %2, i32 256
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @exynos4_frc_resume(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @reg_base, align 4
  %3 = getelementptr i8, ptr %2, i32 576
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = or i32 %4, 256
  %6 = load ptr, ptr @reg_base, align 4
  %7 = getelementptr i8, ptr %6, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !10
  %8 = load i32, ptr @loops_per_jiffy, align 4
  %9 = icmp ult i32 %8, 1000
  br i1 %9, label %23, label %16

10:                                               ; preds = %16
  %11 = add nuw nsw i32 %17, 1
  %12 = load i32, ptr @loops_per_jiffy, align 4
  %13 = udiv i32 %12, 1000
  %14 = mul nuw nsw i32 %13, 100
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %18 = load ptr, ptr @reg_base, align 4
  %19 = getelementptr i8, ptr %18, i32 588
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %10, label %24

23:                                               ; preds = %10, %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef 576) #10
  unreachable

24:                                               ; preds = %16
  %25 = load ptr, ptr @reg_base, align 4
  %26 = getelementptr i8, ptr %25, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 65536) #8, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_mct_comp_isr(i32 noundef %0, ptr noundef %1) #3 {
  %3 = load ptr, ptr @reg_base, align 4
  %4 = getelementptr i8, ptr %3, i32 580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #8, !srcloc !10
  %5 = load ptr, ptr %1, align 64
  tail call void %5(ptr noundef %1) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos4_comp_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #3 {
  tail call fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext false, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mct_set_state_periodic(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @reg_base, align 4
  %7 = getelementptr i8, ptr %6, i32 576
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !9
  %9 = and i32 %8, -4
  %10 = load ptr, ptr @reg_base, align 4
  %11 = getelementptr i8, ptr %10, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !10
  %12 = load i32, ptr @loops_per_jiffy, align 4
  %13 = icmp ult i32 %12, 1000
  br i1 %13, label %27, label %20

14:                                               ; preds = %20
  %15 = add nuw nsw i32 %21, 1
  %16 = load i32, ptr @loops_per_jiffy, align 4
  %17 = udiv i32 %16, 1000
  %18 = mul nuw nsw i32 %17, 100
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14, %1
  %21 = phi i32 [ %15, %14 ], [ 0, %1 ]
  %22 = load ptr, ptr @reg_base, align 4
  %23 = getelementptr i8, ptr %22, i32 588
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !9
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %14, label %28

27:                                               ; preds = %14, %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %9, i32 noundef 576) #10
  unreachable

28:                                               ; preds = %20
  %29 = zext i32 %3 to i64
  %30 = mul nuw nsw i64 %29, 10000000
  %31 = zext i32 %5 to i64
  %32 = lshr i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr @reg_base, align 4
  %35 = getelementptr i8, ptr %34, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 65536) #8, !srcloc !10
  %36 = load ptr, ptr @reg_base, align 4
  %37 = getelementptr i8, ptr %36, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #8, !srcloc !10
  tail call fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext true, i32 noundef %33)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mct_set_state_shutdown(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @reg_base, align 4
  %3 = getelementptr i8, ptr %2, i32 576
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !9
  %5 = and i32 %4, -4
  %6 = load ptr, ptr @reg_base, align 4
  %7 = getelementptr i8, ptr %6, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !10
  %8 = load i32, ptr @loops_per_jiffy, align 4
  %9 = icmp ult i32 %8, 1000
  br i1 %9, label %23, label %16

10:                                               ; preds = %16
  %11 = add nuw nsw i32 %17, 1
  %12 = load i32, ptr @loops_per_jiffy, align 4
  %13 = udiv i32 %12, 1000
  %14 = mul nuw nsw i32 %13, 100
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %18 = load ptr, ptr @reg_base, align 4
  %19 = getelementptr i8, ptr %18, i32 588
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !9
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %10, label %24

23:                                               ; preds = %10, %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %5, i32 noundef 576) #10
  unreachable

24:                                               ; preds = %16
  %25 = load ptr, ptr @reg_base, align 4
  %26 = getelementptr i8, ptr %25, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 65536) #8, !srcloc !10
  %27 = load ptr, ptr @reg_base, align 4
  %28 = getelementptr i8, ptr %27, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #8, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exynos4_mct_comp0_start(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @reg_base, align 4
  %4 = getelementptr i8, ptr %3, i32 576
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !9
  br i1 %0, label %6, label %29

6:                                                ; preds = %2
  %7 = or i32 %5, 2
  %8 = load ptr, ptr @reg_base, align 4
  %9 = getelementptr i8, ptr %8, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #8, !srcloc !10
  %10 = load i32, ptr @loops_per_jiffy, align 4
  %11 = icmp ult i32 %10, 1000
  br i1 %11, label %25, label %18

12:                                               ; preds = %18
  %13 = add nuw nsw i32 %19, 1
  %14 = load i32, ptr @loops_per_jiffy, align 4
  %15 = udiv i32 %14, 1000
  %16 = mul nuw nsw i32 %15, 100
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12, %6
  %19 = phi i32 [ %13, %12 ], [ 0, %6 ]
  %20 = load ptr, ptr @reg_base, align 4
  %21 = getelementptr i8, ptr %20, i32 588
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #8, !srcloc !9
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %12, label %26

25:                                               ; preds = %12, %6
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef 520) #10
  unreachable

26:                                               ; preds = %18
  %27 = load ptr, ptr @reg_base, align 4
  %28 = getelementptr i8, ptr %27, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 4) #8, !srcloc !10
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i32 [ %7, %26 ], [ %5, %2 ]
  %31 = load ptr, ptr @reg_base, align 4
  %32 = getelementptr i8, ptr %31, i32 260
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #8, !srcloc !9
  br label %34

34:                                               ; preds = %34, %29
  %35 = phi i32 [ %33, %29 ], [ %41, %34 ]
  %36 = load ptr, ptr @reg_base, align 4
  %37 = getelementptr i8, ptr %36, i32 256
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !9
  %39 = load ptr, ptr @reg_base, align 4
  %40 = getelementptr i8, ptr %39, i32 260
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !9
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %34

43:                                               ; preds = %34
  %44 = zext i32 %35 to i64
  %45 = shl nuw i64 %44, 32
  %46 = zext i32 %38 to i64
  %47 = zext i32 %1 to i64
  %48 = or i64 %45, %47
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr @reg_base, align 4
  %52 = getelementptr i8, ptr %51, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !10
  %53 = load i32, ptr @loops_per_jiffy, align 4
  %54 = icmp ult i32 %53, 1000
  br i1 %54, label %68, label %61

55:                                               ; preds = %61
  %56 = add nuw nsw i32 %62, 1
  %57 = load i32, ptr @loops_per_jiffy, align 4
  %58 = udiv i32 %57, 1000
  %59 = mul nuw nsw i32 %58, 100
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55, %43
  %62 = phi i32 [ %56, %55 ], [ 0, %43 ]
  %63 = load ptr, ptr @reg_base, align 4
  %64 = getelementptr i8, ptr %63, i32 588
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !9
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %55, label %69

68:                                               ; preds = %55, %43
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %50, i32 noundef 512) #10
  unreachable

69:                                               ; preds = %61
  %70 = load ptr, ptr @reg_base, align 4
  %71 = getelementptr i8, ptr %70, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 1) #8, !srcloc !10
  %72 = lshr i64 %49, 32
  %73 = trunc i64 %72 to i32
  %74 = load ptr, ptr @reg_base, align 4
  %75 = getelementptr i8, ptr %74, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %73) #8, !srcloc !10
  %76 = load i32, ptr @loops_per_jiffy, align 4
  %77 = icmp ult i32 %76, 1000
  br i1 %77, label %91, label %84

78:                                               ; preds = %84
  %79 = add nuw nsw i32 %85, 1
  %80 = load i32, ptr @loops_per_jiffy, align 4
  %81 = udiv i32 %80, 1000
  %82 = mul nuw nsw i32 %81, 100
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78, %69
  %85 = phi i32 [ %79, %78 ], [ 0, %69 ]
  %86 = load ptr, ptr @reg_base, align 4
  %87 = getelementptr i8, ptr %86, i32 588
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !9
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %78, label %92

91:                                               ; preds = %78, %69
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %73, i32 noundef 516) #10
  unreachable

92:                                               ; preds = %84
  %93 = load ptr, ptr @reg_base, align 4
  %94 = getelementptr i8, ptr %93, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 2) #8, !srcloc !10
  %95 = load ptr, ptr @reg_base, align 4
  %96 = getelementptr i8, ptr %95, i32 584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 1) #8, !srcloc !10
  %97 = or i32 %30, 1
  %98 = load ptr, ptr @reg_base, align 4
  %99 = getelementptr i8, ptr %98, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #8, !srcloc !10
  %100 = load i32, ptr @loops_per_jiffy, align 4
  %101 = icmp ult i32 %100, 1000
  br i1 %101, label %115, label %108

102:                                              ; preds = %108
  %103 = add nuw nsw i32 %109, 1
  %104 = load i32, ptr @loops_per_jiffy, align 4
  %105 = udiv i32 %104, 1000
  %106 = mul nuw nsw i32 %105, 100
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102, %92
  %109 = phi i32 [ %103, %102 ], [ 0, %92 ]
  %110 = load ptr, ptr @reg_base, align 4
  %111 = getelementptr i8, ptr %110, i32 588
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #8, !srcloc !9
  %113 = and i32 %112, 65536
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %102, label %116

115:                                              ; preds = %102, %92
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10, i32 noundef %97, i32 noundef 576) #10
  unreachable

116:                                              ; preds = %108
  %117 = load ptr, ptr @reg_base, align 4
  %118 = getelementptr i8, ptr %117, i32 588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 65536) #8, !srcloc !10
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind readonly willreturn }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 3065227}
!10 = !{i64 3064809}
