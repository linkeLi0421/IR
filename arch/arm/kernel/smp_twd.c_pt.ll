; ModuleID = '/llk/IR/arch/arm/kernel/smp_twd.c_pt.bc'
source_filename = "../arch/arm/kernel/smp_twd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_smp_twd__170_139_twd_clk_init1 = internal global ptr @twd_clk_init, section ".initcall1.init", align 4
@__of_table_arm_twd_a9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a9-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@__of_table_arm_twd_a5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,cortex-a5-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@__of_table_arm_twd_11mp = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,arm11mp-twd-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @twd_local_timer_of_register }, section "__timer_of_table", align 4
@twd_evt = internal unnamed_addr global ptr null, align 4
@twd_clk = internal unnamed_addr global ptr null, align 4
@twd_clk_nb = internal global %struct.notifier_block { ptr @twd_rate_change, ptr null, i32 0 }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@twd_timer_rate = internal unnamed_addr global i32 0, align 4
@twd_ppi = internal unnamed_addr global i32 0, align 4
@twd_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [26 x i8] c"arch/arm/kernel/smp_twd.c\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"twd_local_timer_of_register failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013twd: can't register interrupt %d (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"arm/timer/twd:starting\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"always-on\00", align 1
@twd_features = internal unnamed_addr global i32 3, align 4
@late_time_init = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"smp_twd\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\013smp_twd: clock not found %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\013smp_twd: clock failed to prepare+enable: %d\0A\00", align 1
@percpu_setup_called = internal global i8 0, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"local_timer\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"\016Calibrating local timer... \00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"\01c%lu.%02luMHz.\0A\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_smp_twd__170_139_twd_clk_init1, ptr @__of_table_arm_twd_11mp, ptr @__of_table_arm_twd_a5, ptr @__of_table_arm_twd_a9], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_clk_init() #0 {
  %1 = load ptr, ptr @twd_evt, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #3, !srcloc !9
  %8 = sub i32 0, %4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @twd_clk, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @clk_notifier_register(ptr noundef %11, ptr noundef nonnull @twd_clk_nb) #7
  br label %15

15:                                               ; preds = %13, %10, %3, %0
  %16 = phi i32 [ %14, %13 ], [ 0, %10 ], [ 0, %3 ], [ 0, %0 ]
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twd_local_timer_of_register(ptr noundef %0) #1 section ".init.text" {
  %2 = tail call i32 @irq_of_parse_and_map(ptr noundef %0, i32 noundef 0) #7
  store i32 %2, ptr @twd_ppi, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  store ptr %5, ptr @twd_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @twd_local_timer_common_register(ptr noundef %0) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %7, %4, %1
  %11 = phi i32 [ %8, %7 ], [ -12, %4 ], [ -22, %1 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %11) #7
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_rate_change(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @twd_update_frequency, ptr noundef %6, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #7
  br label %7

7:                                                ; preds = %5, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twd_update_frequency(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 4
  store i32 %2, ptr @twd_timer_rate, align 4
  %3 = load ptr, ptr @twd_evt, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #3, !srcloc !9
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @clockevents_update_freq(ptr noundef %9, i32 noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @twd_local_timer_common_register(ptr noundef %0) unnamed_addr #1 section ".init.text" {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 192, i32 noundef 64) #9
  store ptr %2, ptr @twd_evt, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %49, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @twd_ppi, align 4
  %6 = tail call i32 @__request_percpu_irq(i32 noundef %5, ptr noundef nonnull @twd_handler, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %2) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @twd_ppi, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %6) #10
  br label %49

11:                                               ; preds = %4
  %12 = tail call i32 @__cpuhp_setup_state(i32 noundef 125, ptr noundef nonnull @.str.4, i1 noundef zeroext false, ptr noundef nonnull @twd_timer_starting_cpu, ptr noundef nonnull @twd_timer_dying_cpu, i1 noundef zeroext false) #7
  %13 = icmp eq ptr %0, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @of_clk_get(ptr noundef nonnull %0, i32 noundef 0) #7
  br label %18

16:                                               ; preds = %11
  %17 = tail call ptr @clk_get_sys(ptr noundef nonnull @.str.6, ptr noundef null) #7
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store ptr %19, ptr @twd_clk, align 4
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %22) #10
  br label %38

24:                                               ; preds = %18
  %25 = tail call i32 @clk_prepare(ptr noundef %19) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call i32 @clk_enable(ptr noundef %19) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %31

31:                                               ; preds = %30, %24
  %32 = phi i32 [ %28, %30 ], [ %25, %24 ]
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %32) #10
  %34 = load ptr, ptr @twd_clk, align 4
  tail call void @clk_put(ptr noundef %34) #7
  br label %38

35:                                               ; preds = %27
  %36 = load ptr, ptr @twd_clk, align 4
  %37 = tail call i32 @clk_get_rate(ptr noundef %36) #7
  store i32 %37, ptr @twd_timer_rate, align 4
  br label %38

38:                                               ; preds = %35, %31, %21
  %39 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, ptr @twd_features, align 4
  %43 = or i32 %42, 8
  store i32 %43, ptr @twd_features, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, ptr @twd_timer_rate, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void @twd_timer_setup()
  br label %53

48:                                               ; preds = %44
  store ptr @twd_timer_setup, ptr @late_time_init, align 4
  br label %53

49:                                               ; preds = %8, %1
  %50 = phi i32 [ %6, %8 ], [ -12, %1 ]
  %51 = load ptr, ptr @twd_base, align 4
  tail call void @iounmap(ptr noundef %51) #7
  store ptr null, ptr @twd_base, align 4
  %52 = load ptr, ptr @twd_evt, align 4
  tail call void @free_percpu(ptr noundef %52) #7
  br label %53

53:                                               ; preds = %49, %48, %47
  %54 = phi i32 [ %50, %49 ], [ 0, %48 ], [ 0, %47 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @twd_base, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @twd_base, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 1) #7, !srcloc !12
  %10 = load ptr, ptr %1, align 64
  tail call void %10(ptr noundef %1) #7
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_timer_starting_cpu(i32 noundef %0) #0 {
  tail call void @twd_timer_setup()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_timer_dying_cpu(i32 noundef %0) #0 {
  %2 = load ptr, ptr @twd_evt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #3, !srcloc !9
  %7 = add i32 %6, %3
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr @twd_base, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #7, !srcloc !12
  %11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  tail call void @disable_percpu_irq(i32 noundef %12) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @twd_timer_setup() #0 {
  %1 = load ptr, ptr @twd_evt, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #3, !srcloc !9
  %6 = add i32 %5, %2
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call ptr @llvm.thread.pointer() #7
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @percpu_setup_called to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i8, ptr %14, align 1, !range !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = load ptr, ptr @twd_base, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #7, !srcloc !12
  tail call void @clockevents_register_device(ptr noundef %7) #7
  %20 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23
  br label %78

21:                                               ; preds = %0
  store i8 1, ptr %14, align 1
  %22 = load i32, ptr @twd_timer_rate, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %26 = tail call i64 @get_jiffies_64() #7
  %27 = add i64 %26, 1
  %28 = tail call i64 @get_jiffies_64() #7
  %29 = icmp ult i64 %28, %27
  br i1 %29, label %30, label %34

30:                                               ; preds = %30, %24
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #7
  %32 = tail call i64 @get_jiffies_64() #7
  %33 = icmp ult i64 %32, %27
  br i1 %33, label %30, label %34

34:                                               ; preds = %30, %24
  %35 = add i64 %26, 6
  %36 = load ptr, ptr @twd_base, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #7, !srcloc !12
  %38 = load ptr, ptr @twd_base, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -1) #7, !srcloc !12
  %40 = tail call i64 @get_jiffies_64() #7
  %41 = icmp ult i64 %40, %35
  br i1 %41, label %42, label %46

42:                                               ; preds = %42, %34
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 2147480) #7
  %44 = tail call i64 @get_jiffies_64() #7
  %45 = icmp ult i64 %44, %35
  br i1 %45, label %42, label %46

46:                                               ; preds = %42, %34
  %47 = load ptr, ptr @twd_base, align 4
  %48 = getelementptr i8, ptr %47, i32 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !11
  %50 = xor i32 %49, -1
  %51 = mul i32 %50, 20
  store i32 %51, ptr @twd_timer_rate, align 4
  %52 = udiv i32 %51, 1000000
  %53 = udiv i32 %51, 10000
  %54 = urem i32 %53, 100
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %52, i32 noundef %54) #10
  br label %56

56:                                               ; preds = %46, %21
  %57 = load ptr, ptr @twd_base, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #7, !srcloc !12
  %59 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 21
  store ptr @.str.9, ptr %59, align 4
  %60 = load i32, ptr @twd_features, align 4
  %61 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 22
  store i32 350, ptr %62, align 8
  %63 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 14
  store ptr @twd_shutdown, ptr %63, align 8
  %64 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 11
  store ptr @twd_set_periodic, ptr %64, align 4
  %65 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 12
  store ptr @twd_set_oneshot, ptr %65, align 64
  %66 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 15
  store ptr @twd_shutdown, ptr %66, align 4
  %67 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 1
  store ptr @twd_set_next_event, ptr %67, align 4
  %68 = load i32, ptr @twd_ppi, align 4
  %69 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 23
  store i32 %68, ptr %69, align 4
  %70 = and i32 %10, 31
  %71 = add nuw nsw i32 %70, 1
  %72 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %71
  %73 = lshr i32 %10, 5
  %74 = sub nsw i32 0, %73
  %75 = getelementptr i32, ptr %72, i32 %74
  %76 = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 25
  store ptr %75, ptr %76, align 4
  %77 = load i32, ptr @twd_timer_rate, align 4
  tail call void @clockevents_config_and_register(ptr noundef %7, i32 noundef %77, i32 noundef 15, i32 noundef -1) #7
  br label %78

78:                                               ; preds = %56, %17
  %79 = phi ptr [ %69, %56 ], [ %20, %17 ]
  %80 = load i32, ptr %79, align 4
  tail call void @enable_percpu_irq(i32 noundef %80, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_shutdown(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @twd_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_percpu_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_percpu_irq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_set_periodic(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @twd_timer_rate, align 4
  %3 = add i32 %2, 50
  %4 = udiv i32 %3, 100
  %5 = load ptr, ptr @twd_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #7, !srcloc !12
  %6 = load ptr, ptr @twd_base, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 7) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_set_oneshot(ptr nocapture noundef readnone %0) #0 {
  %2 = load ptr, ptr @twd_base, align 4
  %3 = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 4) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twd_set_next_event(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr @twd_base, align 4
  %4 = getelementptr i8, ptr %3, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !11
  %6 = or i32 %5, 1
  %7 = load ptr, ptr @twd_base, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %0) #7, !srcloc !12
  %9 = load ptr, ptr @twd_base, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %6) #7, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 342619}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 3813584}
!12 = !{i64 3813166}
!13 = !{i8 0, i8 2}
