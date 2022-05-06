; ModuleID = '/llk/IR/drivers/clocksource/dw_apb_timer_of.c_pt.bc'
source_filename = "../drivers/clocksource/dw_apb_timer_of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.delay_timer = type { ptr, i32 }

@__of_table_pc3x2_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"picochip,pc3x2-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer_sp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer-sp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@__of_table_apb_timer = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dw-apb-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dw_apb_timer_init }, section "__timer_of_table", align 4
@num_called = internal unnamed_addr global i32 0, align 4
@sched_rate = internal global i32 0, align 4
@dw_apb_delay_timer = internal global %struct.delay_timer { ptr @dw_apb_delay_timer_read, i32 0 }, align 4
@sched_io_base = internal global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to map regs for %pOFn\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\014pclk for %pOFn is present, but could not be activated\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"clock-freq\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@sptimer_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"picochip,pc3x2-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"No IRQ for clock event timer\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_apb_timer, ptr @__of_table_apb_timer_osc, ptr @__of_table_apb_timer_sp, ptr @__of_table_pc3x2_timer], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dw_apb_timer_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load i32, ptr @num_called, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @add_clocksource(ptr noundef %0) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  tail call fastcc void @init_sched_clock() #6
  %8 = load i32, ptr @sched_rate, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.delay_timer, ptr @dw_apb_delay_timer, i32 0, i32 1), align 4
  tail call void @register_current_timer_delay(ptr noundef nonnull @dw_apb_delay_timer) #7
  br label %12

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @add_clockevent(ptr noundef %0) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %7
  %13 = load i32, ptr @num_called, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr @num_called, align 4
  br label %15

15:                                               ; preds = %12, %9, %4
  %16 = phi i32 [ 0, %12 ], [ %5, %4 ], [ %10, %9 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @add_clocksource(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call fastcc i32 @timer_get_base_and_rate(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = load i32, ptr %3, align 4
  %10 = call ptr @dw_apb_clocksource_init(i32 noundef 300, ptr noundef %7, ptr noundef %8, i32 noundef %9) #7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  call void @dw_apb_clocksource_start(ptr noundef nonnull %10) #7
  call void @dw_apb_clocksource_register(ptr noundef nonnull %10) #7
  %13 = getelementptr i8, ptr %8, i32 4
  store ptr %13, ptr @sched_io_base, align 4
  %14 = load i32, ptr %3, align 4
  store i32 %14, ptr @sched_rate, align 4
  br label %15

15:                                               ; preds = %12, %6, %1
  %16 = phi i32 [ 0, %12 ], [ %4, %1 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_sched_clock() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @sptimer_ids, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc i32 @timer_get_base_and_rate(ptr noundef nonnull %1, ptr noundef nonnull @sched_io_base, ptr noundef nonnull @sched_rate) #6
  tail call void @of_node_put(ptr noundef nonnull %1) #7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @sched_rate, align 4
  tail call void @sched_clock_register(ptr noundef nonnull @read_sched_clock, i32 noundef 32, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_current_timer_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @add_clockevent(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.6) #8
  unreachable

7:                                                ; preds = %1
  %8 = call fastcc i32 @timer_get_base_and_rate(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 4
  %12 = load ptr, ptr %2, align 4
  %13 = load i32, ptr %3, align 4
  %14 = call ptr @dw_apb_clockevent_init(i32 noundef -1, ptr noundef %11, i32 noundef 300, ptr noundef %12, i32 noundef %4, i32 noundef %13) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  call void @dw_apb_clockevent_register(ptr noundef nonnull %14) #7
  br label %17

17:                                               ; preds = %16, %10, %7
  %18 = phi i32 [ 0, %16 ], [ %8, %7 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @timer_get_base_and_rate(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef %0) #8
  unreachable

7:                                                ; preds = %3
  %8 = tail call ptr @__of_reset_control_get(ptr noundef %0, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @reset_control_assert(ptr noundef %8) #7
  %12 = tail call i32 @reset_control_deassert(ptr noundef %8) #7
  br label %13

13:                                               ; preds = %10, %7
  %14 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef %14) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %23

23:                                               ; preds = %22, %16
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #9
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %2, i32 noundef 1, i32 noundef 0) #7
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %2, i32 noundef 1, i32 noundef 0) #7
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %55, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = ptrtoint ptr %32 to i32
  br label %50

36:                                               ; preds = %31
  %37 = tail call i32 @clk_prepare(ptr noundef %32) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = tail call i32 @clk_enable(ptr noundef %32) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = tail call i32 @clk_get_rate(ptr noundef %32) #7
  store i32 %43, ptr %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  tail call void @clk_disable(ptr noundef %32) #7
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ -22, %45 ], [ %40, %39 ]
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi i32 [ %37, %36 ], [ %47, %46 ]
  tail call void @clk_put(ptr noundef %32) #7
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi i32 [ %35, %34 ], [ %49, %48 ]
  br i1 %15, label %53, label %52

52:                                               ; preds = %50
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  tail call void @clk_put(ptr noundef %14) #7
  br label %53

53:                                               ; preds = %52, %50
  %54 = load ptr, ptr %1, align 4
  tail call void @iounmap(ptr noundef %54) #7
  br label %55

55:                                               ; preds = %53, %42, %28, %25
  %56 = phi i32 [ %51, %53 ], [ 0, %28 ], [ 0, %25 ], [ 0, %42 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_apb_clocksource_init(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clocksource_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clocksource_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @read_sched_clock() #5 {
  %1 = load ptr, ptr @sched_io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !9
  %3 = xor i32 %2, -1
  %4 = zext i32 %3 to i64
  ret i64 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dw_apb_delay_timer_read() #5 {
  %1 = load ptr, ptr @sched_io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !9
  %3 = xor i32 %2, -1
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_apb_clockevent_init(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_apb_clockevent_register(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 3320498}
