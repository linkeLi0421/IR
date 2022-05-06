; ModuleID = '/llk/IR/drivers/clocksource/timer-qcom.c_pt.bc'
source_filename = "../drivers/clocksource/timer-qcom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delay_timer = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }

@__of_table_kpss_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kpss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_dt_timer_init }, section "__timer_of_table", align 4
@__of_table_scss_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,scss-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_dt_timer_init }, section "__timer_of_table", align 4
@.str = private unnamed_addr constant [28 x i8] c"\013Failed to map event base\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\013Can't get irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cpu-offset\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013Failed to parse DGT resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\013Failed to map source base\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\013Unknown frequency\0A\00", align 1
@event_base = internal unnamed_addr global ptr null, align 4
@sts_base = internal unnamed_addr global ptr null, align 4
@source_base = internal unnamed_addr global ptr null, align 4
@msm_clocksource = internal global %struct.clocksource { ptr @msm_read_timer_count, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.12, %struct.list_head zeroinitializer, i32 300, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@msm_timer_irq = internal unnamed_addr global i32 0, align 4
@msm_timer_has_ppi = internal unnamed_addr global i32 0, align 4
@msm_evt = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"\013memory allocation failed for clockevents\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gp_timer\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\013request_percpu_irq failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"clockevents/qcom/timer:starting\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"\013clocksource_register failed\0A\00", align 1
@msm_delay_timer = internal global %struct.delay_timer { ptr @msm_read_current_timer, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"dg_timer\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"msm_timer\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"\013request_irq failed\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_kpss_timer, ptr @__of_table_scss_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @msm_dt_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca %struct.resource, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %51

9:                                                ; preds = %1
  %10 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 1) #7
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %51

14:                                               ; preds = %9
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %51

23:                                               ; preds = %18
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %4, align 4
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 1, %24
  %30 = add i32 %29, %28
  %31 = call ptr @ioremap(i32 noundef %26, i32 noundef %30) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %51

35:                                               ; preds = %23
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %51

40:                                               ; preds = %35
  %41 = getelementptr i8, ptr %5, i32 4
  store ptr %41, ptr @event_base, align 4
  %42 = getelementptr i8, ptr %5, i32 136
  store ptr %42, ptr @sts_base, align 4
  %43 = getelementptr i8, ptr %31, i32 36
  store ptr %43, ptr @source_base, align 4
  %44 = load i32, ptr %2, align 4
  %45 = lshr i32 %44, 2
  store i32 %45, ptr %2, align 4
  %46 = getelementptr i8, ptr %31, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 3) #7, !srcloc !9
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %4, align 4
  %49 = icmp ne i32 %48, 0
  %50 = call fastcc i32 @msm_timer_init(i32 noundef %47, i32 noundef %10, i1 noundef zeroext %49) #9
  br label %51

51:                                               ; preds = %40, %38, %33, %21, %12, %7
  %52 = phi i32 [ -22, %12 ], [ %19, %21 ], [ -22, %38 ], [ %50, %40 ], [ -22, %33 ], [ -6, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @msm_timer_init(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 section ".init.text" {
  store i32 %1, ptr @msm_timer_irq, align 4
  %4 = zext i1 %2 to i32
  store i32 %4, ptr @msm_timer_has_ppi, align 4
  %5 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #10
  store ptr %5, ptr @msm_evt, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %20

9:                                                ; preds = %3
  br i1 %2, label %10, label %15

10:                                               ; preds = %9
  %11 = tail call i32 @__request_percpu_irq(i32 noundef %1, ptr noundef nonnull @msm_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %5) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %20

15:                                               ; preds = %10, %9
  %16 = tail call i32 @__cpuhp_setup_state(i32 noundef 126, ptr noundef nonnull @.str.10, i1 noundef zeroext true, ptr noundef nonnull @msm_local_timer_starting_cpu, ptr noundef nonnull @msm_local_timer_dying_cpu, i1 noundef zeroext false) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @msm_evt, align 4
  tail call void @free_percpu_irq(i32 noundef %1, ptr noundef %19) #7
  br label %20

20:                                               ; preds = %18, %15, %13, %7
  %21 = load ptr, ptr @source_base, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #7, !srcloc !9
  %23 = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @msm_clocksource, i32 noundef 1, i32 noundef %0) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %27

27:                                               ; preds = %25, %20
  tail call void @sched_clock_register(ptr noundef nonnull @msm_sched_clock_read, i32 noundef 32, i32 noundef %0) #7
  store i32 %0, ptr getelementptr inbounds (%struct.delay_timer, ptr @msm_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @msm_delay_timer) #7
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_timer_interrupt(i32 noundef %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load ptr, ptr @event_base, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !10
  %10 = and i32 %9, -2
  %11 = load ptr, ptr @event_base, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !9
  br label %13

13:                                               ; preds = %6, %2
  %14 = load ptr, ptr %1, align 64
  tail call void %14(ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_local_timer_starting_cpu(i32 noundef %0) #6 {
  %2 = load ptr, ptr @msm_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr @msm_timer_irq, align 4
  %9 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 21
  store ptr @.str.13, ptr %10, align 4
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 22
  store i32 200, ptr %12, align 8
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 14
  store ptr @msm_timer_shutdown, ptr %13, align 8
  %14 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 12
  store ptr @msm_timer_shutdown, ptr %14, align 64
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 15
  store ptr @msm_timer_shutdown, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 1
  store ptr @msm_timer_set_next_event, ptr %16, align 4
  %17 = and i32 %0, 31
  %18 = add nuw nsw i32 %17, 1
  %19 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %18
  %20 = lshr i32 %0, 5
  %21 = sub nsw i32 0, %20
  %22 = getelementptr i32, ptr %19, i32 %21
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 25
  store ptr %22, ptr %23, align 4
  tail call void @clockevents_config_and_register(ptr noundef %7, i32 noundef 32768, i32 noundef 4, i32 noundef -1) #7
  %24 = load i32, ptr @msm_timer_has_ppi, align 4
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %9, align 4
  br i1 %25, label %28, label %27

27:                                               ; preds = %1
  tail call void @enable_percpu_irq(i32 noundef %26, i32 noundef 1) #7
  br label %33

28:                                               ; preds = %1
  %29 = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef nonnull @msm_timer_interrupt, ptr noundef null, i32 noundef 84481, ptr noundef nonnull @.str.8, ptr noundef %7) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %33

33:                                               ; preds = %31, %28, %27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_local_timer_dying_cpu(i32 noundef %0) #6 {
  %2 = load ptr, ptr @msm_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 %9(ptr noundef %7) #7
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  tail call void @disable_percpu_irq(i32 noundef %12) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @msm_sched_clock_read() #6 {
  %1 = load ptr, ptr @msm_clocksource, align 8
  %2 = tail call i64 %1(ptr noundef nonnull @msm_clocksource) #7
  ret i64 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @msm_read_timer_count(ptr nocapture noundef readnone %0) #6 {
  %2 = load ptr, ptr @source_base, align 4
  %3 = getelementptr i8, ptr %2, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  %5 = zext i32 %4 to i64
  ret i64 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_timer_shutdown(ptr nocapture noundef readnone %0) #6 {
  %2 = load ptr, ptr @event_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  %5 = and i32 %4, -4
  %6 = load ptr, ptr @event_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_timer_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #6 {
  %3 = load ptr, ptr @event_base, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !10
  %6 = and i32 %5, -2
  %7 = load ptr, ptr @event_base, align 4
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  %9 = load ptr, ptr @event_base, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #7, !srcloc !9
  %11 = load ptr, ptr @event_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %0) #7, !srcloc !9
  %12 = load ptr, ptr @sts_base, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #7, !srcloc !10
  %16 = and i32 %15, 1024
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %18, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !12
  %19 = load ptr, ptr @sts_base, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !10
  %21 = and i32 %20, 1024
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %18

23:                                               ; preds = %18, %14, %2
  %24 = or i32 %5, 1
  %25 = load ptr, ptr @event_base, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_read_current_timer() #6 {
  %1 = load ptr, ptr @msm_clocksource, align 8
  %2 = tail call i64 %1(ptr noundef nonnull @msm_clocksource) #7
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{i64 2793859}
!10 = !{i64 2794277}
!11 = !{i64 2151721849}
!12 = !{i64 2151721691}
