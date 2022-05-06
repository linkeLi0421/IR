; ModuleID = '/llk/IR/drivers/clocksource/timer-tegra.c_pt.bc'
source_filename = "../drivers/clocksource/timer-tegra.c"
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
%struct.delay_timer = type { ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__of_table_tegra210_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_init_timer }, section "__timer_of_table", align 4
@__of_table_tegra20_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_init_timer }, section "__timer_of_table", align 4
@__of_table_tegra20_rtc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_init_rtc }, section "__timer_of_table", align 4
@tegra_to = internal global %struct.timer_of { i32 3, ptr null, [56 x i8] undef, %struct.clock_event_device { ptr null, ptr @tegra_timer_set_next_event, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 3, i32 0, ptr @tegra_timer_set_periodic, ptr @tegra_timer_shutdown, ptr null, ptr @tegra_timer_shutdown, ptr @tegra_timer_shutdown, ptr null, ptr @tegra_timer_suspend, ptr @tegra_timer_resume, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, [60 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq zeroinitializer, %struct.of_timer_clk zeroinitializer, ptr null }, section ".data..percpu", align 64
@timer_reg_base = internal unnamed_addr global ptr null, align 4
@usec_config = internal unnamed_addr global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [44 x i8] c"\013tegra-timer: failed to map irq for cpu%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013tegra-timer: failed to set up irq for cpu%d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timer_us\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\013tegra-timer: failed to register clocksource: %d\0A\00", align 1
@tegra_delay_timer = internal global %struct.delay_timer { ptr @tegra_delay_timer_read_counter_long, i32 1000000 }, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"AP_TEGRA_TIMER_STARTING\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\013tegra-timer: failed to set up cpu hp state: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"tegra_timer\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"nvidia,tegra20\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"nvidia,tegra30\00", align 1
@suspend_rtc_to = internal global %struct.timer_of { i32 3, ptr null, [56 x i8] undef, %struct.clock_event_device zeroinitializer, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq zeroinitializer, %struct.of_timer_clk zeroinitializer, ptr null }, align 64
@suspend_rtc_clocksource = internal global %struct.clocksource { ptr @tegra_rtc_read_ms, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.9, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 129, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"tegra_suspend_timer\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_tegra20_rtc, ptr @__of_table_tegra20_timer, ptr @__of_table_tegra210_timer], section "llvm.metadata"
@switch.table.tegra_init_timer = private unnamed_addr constant [3 x i32] [i32 0, i32 8, i32 80], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra210_init_timer(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @tegra_init_timer(ptr noundef %0, i1 noundef zeroext false, i32 noundef 460) #6
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra20_init_timer(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #7
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 330, i32 460
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 460, %1 ], [ %7, %4 ]
  %10 = tail call fastcc i32 @tegra_init_timer(ptr noundef %0, i1 noundef zeroext true, i32 noundef %9) #6
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra20_init_rtc(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef nonnull @suspend_rtc_to) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @suspend_rtc_clocksource, i32 noundef 1, i32 noundef 1000) #7
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @tegra_init_timer(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #5, !srcloc !9
  %7 = add i32 %6, ptrtoint (ptr @tegra_to to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 @timer_of_init(ptr noundef %0, ptr noundef %8) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %119

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.timer_of, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 64
  store ptr %13, ptr @timer_reg_base, align 4
  %14 = getelementptr inbounds %struct.timer_of, ptr %8, i32 0, i32 6, i32 3
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %119 [
    i32 12000000, label %23
    i32 12800000, label %16
    i32 13000000, label %17
    i32 16800000, label %18
    i32 19200000, label %19
    i32 26000000, label %20
    i32 38400000, label %21
    i32 48000000, label %22
  ]

16:                                               ; preds = %11
  br label %23

17:                                               ; preds = %11
  br label %23

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  br label %23

20:                                               ; preds = %11
  br label %23

21:                                               ; preds = %11
  br label %23

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16, %11
  %24 = phi i32 [ 47, %22 ], [ 1215, %21 ], [ 25, %20 ], [ 1119, %19 ], [ 1107, %18 ], [ 12, %17 ], [ 1087, %16 ], [ 11, %11 ]
  store i32 %24, ptr @usec_config, align 4
  %25 = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #7, !srcloc !10
  br label %26

26:                                               ; preds = %52, %23
  %27 = phi i32 [ -1, %23 ], [ %28, %52 ]
  %28 = tail call i32 @cpumask_next(i32 noundef %27, ptr noundef nonnull @__cpu_possible_mask) #9
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %26
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %33 = load i32, ptr %32, align 4
  br i1 %1, label %34, label %36

34:                                               ; preds = %31
  %35 = icmp ult i32 %28, 3
  br i1 %35, label %40, label %43

36:                                               ; preds = %31
  %37 = load i32, ptr %14, align 4
  %38 = shl i32 %28, 3
  %39 = add i32 %38, 144
  br label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_init_timer, i32 0, i32 %28
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %34
  %44 = phi i32 [ %37, %36 ], [ 1000000, %40 ], [ 1000000, %34 ]
  %45 = phi i32 [ %39, %36 ], [ %42, %40 ], [ 88, %34 ]
  %46 = add i32 %28, 10
  %47 = select i1 %1, i32 %28, i32 %46
  %48 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %28) #8
  br label %81

52:                                               ; preds = %43
  %53 = add i32 %33, ptrtoint (ptr @tegra_to to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 3, i32 23
  store i32 %48, ptr %56, align 4
  %57 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 3, i32 22
  store i32 %2, ptr %57, align 8
  %58 = and i32 %28, 31
  %59 = add nuw nsw i32 %58, 1
  %60 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %59
  %61 = lshr i32 %28, 5
  %62 = sub nsw i32 0, %61
  %63 = getelementptr i32, ptr %60, i32 %62
  %64 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 3, i32 25
  store ptr %63, ptr %64, align 4
  %65 = load ptr, ptr @timer_reg_base, align 4
  %66 = getelementptr i8, ptr %65, i32 %45
  %67 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 4
  store ptr %66, ptr %67, align 64
  %68 = udiv i32 %44, 100
  %69 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 6, i32 4
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 6, i32 3
  store i32 %44, ptr %70, align 4
  tail call void @irq_modify_status(i32 noundef %48, i32 noundef 0, i32 noundef 4096) #7
  %71 = load i32, ptr %56, align 4
  %72 = getelementptr inbounds %struct.timer_of, ptr %54, i32 0, i32 3, i32 21
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @request_threaded_irq(i32 noundef %71, ptr noundef nonnull @tegra_timer_isr, ptr noundef null, i32 noundef 84480, ptr noundef %73, ptr noundef %55) #7
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %26, label %76

76:                                               ; preds = %52
  %77 = inttoptr i32 %53 to ptr
  %78 = getelementptr inbounds %struct.timer_of, ptr %77, i32 0, i32 3, i32 23
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %28, i32 noundef %74) #8
  %80 = load i32, ptr %78, align 4
  tail call void @irq_dispose_mapping(i32 noundef %80) #7
  store i32 0, ptr %78, align 4
  br label %81

81:                                               ; preds = %76, %50
  %82 = phi i32 [ -22, %50 ], [ %74, %76 ]
  %83 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %98, label %117

86:                                               ; preds = %26
  tail call void @sched_clock_register(ptr noundef nonnull @tegra_read_sched_clock, i32 noundef 32, i32 noundef 1000000) #7
  %87 = load ptr, ptr @timer_reg_base, align 4
  %88 = getelementptr i8, ptr %87, i32 16
  %89 = tail call i32 @clocksource_mmio_init(ptr noundef %88, ptr noundef nonnull @.str.2, i32 noundef 1000000, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #7
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %89) #8
  br label %93

93:                                               ; preds = %91, %86
  tail call void @register_current_timer_delay(ptr noundef nonnull @tegra_delay_timer) #7
  %94 = tail call i32 @__cpuhp_setup_state(i32 noundef 127, ptr noundef nonnull @.str.4, i1 noundef zeroext true, ptr noundef nonnull @tegra_timer_setup, ptr noundef nonnull @tegra_timer_stop, i1 noundef zeroext false) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %94) #8
  br label %121

98:                                               ; preds = %113, %81
  %99 = phi i32 [ %114, %113 ], [ %84, %81 ]
  %100 = phi i32 [ %115, %113 ], [ %83, %81 ]
  %101 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %100
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, ptrtoint (ptr @tegra_to to i32)
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.timer_of, ptr %104, i32 0, i32 3, i32 23
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.timer_of, ptr %104, i32 0, i32 3
  %110 = tail call ptr @free_irq(i32 noundef %106, ptr noundef %109) #7
  %111 = load i32, ptr %105, align 4
  tail call void @irq_dispose_mapping(i32 noundef %111) #7
  %112 = load i32, ptr @nr_cpu_ids, align 4
  br label %113

113:                                              ; preds = %108, %98
  %114 = phi i32 [ %112, %108 ], [ %99, %98 ]
  %115 = tail call i32 @cpumask_next(i32 noundef %100, ptr noundef nonnull @__cpu_possible_mask) #9
  %116 = icmp ult i32 %115, %114
  br i1 %116, label %98, label %117

117:                                              ; preds = %113, %81
  %118 = load ptr, ptr @timer_reg_base, align 4
  store ptr %118, ptr %12, align 64
  br label %119

119:                                              ; preds = %117, %11, %3
  %120 = phi i32 [ %9, %3 ], [ %82, %117 ], [ -22, %11 ]
  tail call void @timer_of_cleanup(ptr noundef %8) #8
  br label %121

121:                                              ; preds = %119, %96, %93
  %122 = phi i32 [ %120, %119 ], [ %94, %96 ], [ 0, %93 ]
  ret i32 %122
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_isr(i32 noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1073741824) #7, !srcloc !10
  %6 = load ptr, ptr %1, align 64
  tail call void %6(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tegra_read_sched_clock() #4 {
  %1 = load ptr, ptr @timer_reg_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !11
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_setup(i32 noundef %0) #4 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tegra_to to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !10
  %8 = load ptr, ptr %6, align 64
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1073741824) #7, !srcloc !10
  %10 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 3
  %11 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 3, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %0, 31
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %14
  %16 = lshr i32 %0, 5
  %17 = sub nsw i32 0, %16
  %18 = getelementptr i32, ptr %15, i32 %17
  %19 = tail call i32 @irq_force_affinity(i32 noundef %12, ptr noundef %18) #7
  %20 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %20) #7
  %21 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 6, i32 3
  %22 = load i32, ptr %21, align 4
  tail call void @clockevents_config_and_register(ptr noundef %10, i32 noundef %22, i32 noundef 1, i32 noundef 536870912) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_stop(i32 noundef %0) #4 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tegra_to to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 3, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 %8(ptr noundef %6) #7
  %10 = getelementptr inbounds %struct.timer_of, ptr %5, i32 0, i32 3, i32 23
  %11 = load i32, ptr %10, align 4
  tail call void @disable_irq_nosync(i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @timer_of_cleanup(ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 192
  %4 = load ptr, ptr %3, align 64
  %5 = add i32 %0, 2147483647
  %6 = or i32 %5, -2147483648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_set_periodic(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %0, i32 244
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1073741823
  %7 = or i32 %6, -1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_timer_shutdown(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_timer_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 192
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1073741824) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_timer_resume(ptr nocapture noundef readnone %0) #4 {
  %2 = load i32, ptr @usec_config, align 4
  %3 = load ptr, ptr @timer_reg_base, align 4
  %4 = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_delay_timer_read_counter_long() #4 {
  %1 = load ptr, ptr @timer_reg_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !11
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_force_affinity(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @tegra_rtc_read_ms(ptr nocapture noundef readnone %0) #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @suspend_rtc_to, i32 0, i32 4), align 64
  %3 = getelementptr i8, ptr %2, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !11
  %5 = getelementptr i8, ptr %2, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !11
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 1000
  %9 = zext i32 %4 to i64
  %10 = add nuw nsw i64 %8, %9
  ret i64 %10
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!9 = !{i64 363177}
!10 = !{i64 2833879}
!11 = !{i64 2834297}
