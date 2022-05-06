; ModuleID = '/llk/IR/drivers/clocksource/timer-cadence-ttc.c_pt.bc'
source_filename = "../drivers/clocksource/timer-cadence-ttc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ttc_timer_clocksource = type { i32, i32, %struct.ttc_timer, %struct.clocksource }
%struct.ttc_timer = type { ptr, i32, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ttc_timer_clockevent = type { %struct.ttc_timer, [40 x i8], %struct.clock_event_device }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__initcall__kmod_timer_cadence_ttc__170_545_ttc_timer_driver_init6 = internal global ptr @ttc_timer_driver_init, section ".initcall6.init", align 4
@ttc_timer_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ttc_timer_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"cdns_ttc_timer\00", align 1
@ttc_timer_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,ttc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ttc_timer_probe.initialized = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\013ERROR: invalid timer base address\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"\013ERROR: invalid interrupt number\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"timer-width\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013ERROR: timer input clock not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\016%pOFn #0 at %p, irq=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\014Unable to register clock notifier.\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ttc_clocksource\00", align 1
@ttc_sched_clock_val_reg = internal unnamed_addr global ptr null, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"ttc_clockevent\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_timer_cadence_ttc__170_545_ttc_timer_driver_init6], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ttc_timer_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ttc_timer_driver, ptr noundef nonnull @ttc_timer_probe, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ttc_timer_probe(ptr nocapture noundef readonly %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 16, ptr %2, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = load i1, ptr @ttc_timer_probe.initialized, align 4
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  store i1 true, ptr @ttc_timer_probe.initialized, align 4
  %7 = tail call ptr @of_iomap(ptr noundef %4, i32 noundef 0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %45

11:                                               ; preds = %6
  %12 = tail call i32 @irq_of_parse_and_map(ptr noundef %4, i32 noundef 1) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %45

16:                                               ; preds = %11
  %17 = call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #7, !srcloc !8
  %19 = lshr i32 %18, 5
  %20 = and i32 %19, 1
  %21 = call ptr @of_clk_get(ptr noundef %4, i32 noundef %20) #7
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %25 = ptrtoint ptr %21 to i32
  br label %45

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %7, i32 4
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !8
  %29 = lshr i32 %28, 5
  %30 = and i32 %29, 1
  %31 = call ptr @of_clk_get(ptr noundef %4, i32 noundef %30) #7
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %35 = ptrtoint ptr %31 to i32
  br label %45

36:                                               ; preds = %26
  %37 = load i32, ptr %2, align 4
  %38 = call fastcc i32 @ttc_setup_clocksource(ptr noundef %21, ptr noundef nonnull %7, i32 noundef %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = call fastcc i32 @ttc_setup_clockevent(ptr noundef %31, ptr noundef %27, i32 noundef %12) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %4, ptr noundef nonnull %7, i32 noundef %12) #8
  br label %45

45:                                               ; preds = %43, %40, %36, %33, %23, %14, %9, %1
  %46 = phi i32 [ -22, %14 ], [ %25, %23 ], [ %35, %33 ], [ 0, %43 ], [ -6, %9 ], [ 0, %1 ], [ %38, %36 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ttc_setup_clocksource(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 2, i32 2
  store ptr %0, ptr %9, align 8
  %10 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = tail call i32 @clk_enable(ptr noundef %0) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %16

16:                                               ; preds = %15, %7
  %17 = phi i32 [ %13, %15 ], [ %10, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %49

18:                                               ; preds = %12
  %19 = tail call i32 @clk_get_rate(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 2, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 2, i32 3
  store ptr @ttc_rate_change_clocksource_cb, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 2, i32 3, i32 1
  store ptr null, ptr %22, align 8
  %23 = tail call i32 @clk_notifier_register(ptr noundef %0, ptr noundef %21) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %27

27:                                               ; preds = %25, %18
  store ptr %1, ptr %8, align 8
  %28 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 3
  %29 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 3, i32 8
  store ptr @.str.7, ptr %29, align 8
  %30 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 3, i32 10
  store i32 200, ptr %30, align 4
  store ptr @__ttc_clocksource_read, ptr %28, align 8
  %31 = sub i32 64, %2
  %32 = zext i32 %31 to i64
  %33 = lshr i64 -1, %32
  %34 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 3, i32 1
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ttc_timer_clocksource, ptr %5, i32 0, i32 3, i32 13
  store i32 1, ptr %35, align 8
  %36 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #7, !srcloc !9
  %37 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 21) #7, !srcloc !9
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr i8, ptr %38, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 16) #7, !srcloc !9
  %40 = load i32, ptr %20, align 4
  %41 = lshr i32 %40, 11
  %42 = tail call i32 @__clocksource_register_scale(ptr noundef %28, i32 noundef 1, i32 noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %49

45:                                               ; preds = %27
  %46 = getelementptr i8, ptr %1, i32 24
  store ptr %46, ptr @ttc_sched_clock_val_reg, align 4
  %47 = load i32, ptr %20, align 4
  %48 = lshr i32 %47, 11
  tail call void @sched_clock_register(ptr noundef nonnull @ttc_sched_clock_read, i32 noundef %2, i32 noundef %48) #7
  br label %49

49:                                               ; preds = %45, %44, %16, %3
  %50 = phi i32 [ %17, %16 ], [ %42, %44 ], [ 0, %45 ], [ -12, %3 ]
  ret i32 %50
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ttc_setup_clockevent(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ttc_timer, ptr %5, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = tail call i32 @clk_prepare(ptr noundef %0) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = tail call i32 @clk_enable(ptr noundef %0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @clk_unprepare(ptr noundef %0) #7
  br label %48

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ttc_timer, ptr %5, i32 0, i32 3
  store ptr @ttc_rate_change_clockevent_cb, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ttc_timer, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = tail call i32 @clk_notifier_register(ptr noundef %18, ptr noundef %16) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %48

23:                                               ; preds = %15
  %24 = load ptr, ptr %8, align 8
  %25 = tail call i32 @clk_get_rate(ptr noundef %24) #7
  %26 = getelementptr inbounds %struct.ttc_timer, ptr %5, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  store ptr %1, ptr %5, align 64
  %27 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 21
  store ptr @.str.8, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 9
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 1
  store ptr @ttc_set_next_event, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 14
  store ptr @ttc_shutdown, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 11
  store ptr @ttc_set_periodic, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 12
  store ptr @ttc_shutdown, ptr %32, align 64
  %33 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 15
  store ptr @ttc_resume, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 22
  store i32 200, ptr %34, align 8
  %35 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 23
  store i32 %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2, i32 25
  store ptr @__cpu_possible_mask, ptr %36, align 4
  %37 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 35) #7, !srcloc !9
  %38 = load ptr, ptr %5, align 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 21) #7, !srcloc !9
  %39 = load ptr, ptr %5, align 64
  %40 = getelementptr i8, ptr %39, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 1) #7, !srcloc !9
  %41 = load ptr, ptr %27, align 4
  %42 = tail call i32 @request_threaded_irq(i32 noundef %2, ptr noundef nonnull @ttc_clock_event_interrupt, ptr noundef null, i32 noundef 82432, ptr noundef %41, ptr noundef nonnull %5) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %5, i32 0, i32 2
  %46 = load i32, ptr %26, align 4
  %47 = lshr i32 %46, 11
  tail call void @clockevents_config_and_register(ptr noundef %45, i32 noundef %47, i32 noundef 1, i32 noundef 65534) #7
  br label %50

48:                                               ; preds = %23, %21, %14, %7
  %49 = phi i32 [ %19, %21 ], [ %42, %23 ], [ %12, %14 ], [ %9, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #7
  br label %50

50:                                               ; preds = %48, %44, %3
  %51 = phi i32 [ %49, %48 ], [ 0, %44 ], [ -12, %3 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_rate_change_clocksource_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -20
  switch i32 %1, label %75 [
    i32 1, label %5
    i32 2, label %54
    i32 4, label %65
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = lshr i32 %9, 1
  br label %15

13:                                               ; preds = %5
  %14 = lshr i32 %7, 1
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %7, %11 ]
  %17 = phi i32 [ %9, %13 ], [ %12, %11 ]
  %18 = phi i32 [ %7, %13 ], [ %9, %11 ]
  %19 = phi i32 [ %9, %13 ], [ %7, %11 ]
  %20 = add i32 %17, %16
  %21 = udiv i32 %20, %18
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21) #7, !range !10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %75

24:                                               ; preds = %15
  %25 = mul i32 %21, %18
  %26 = sub i32 %19, %25
  %27 = tail call i32 @llvm.abs.i32(i32 %26, i1 false)
  %28 = icmp sgt i32 %27, 50
  br i1 %28, label %75, label %29

29:                                               ; preds = %24
  %30 = tail call i32 @llvm.ctlz.i32(i32 %21, i1 false) #7, !range !10
  %31 = sub nsw i32 31, %30
  %32 = getelementptr i8, ptr %0, i32 -12
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !8
  store i32 %34, ptr %4, align 8
  %35 = lshr i32 %34, 1
  %36 = and i32 %35, 15
  %37 = load i32, ptr %6, align 4
  %38 = load i32, ptr %8, align 4
  %39 = icmp ult i32 %37, %38
  %40 = sub nsw i32 0, %31
  %41 = select i1 %39, i32 %40, i32 %31
  %42 = add nsw i32 %41, %36
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %75

44:                                               ; preds = %29
  %45 = and i32 %34, -31
  %46 = getelementptr i8, ptr %0, i32 -16
  %47 = shl nuw nsw i32 %42, 1
  %48 = or i32 %47, %45
  store i32 %48, ptr %46, align 4
  %49 = load i32, ptr %6, align 4
  %50 = load i32, ptr %8, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %75, label %52

52:                                               ; preds = %44
  %53 = load ptr, ptr %32, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %48) #7, !srcloc !9
  br label %75

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ugt i32 %56, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %0, i32 -16
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i8, ptr %0, i32 -12
  %64 = load ptr, ptr %63, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %62) #7, !srcloc !9
  br label %75

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %4, align 8
  %73 = getelementptr i8, ptr %0, i32 -12
  %74 = load ptr, ptr %73, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #7, !srcloc !9
  br label %75

75:                                               ; preds = %71, %65, %60, %54, %52, %44, %29, %24, %15, %3
  %76 = phi i32 [ 1, %54 ], [ 1, %65 ], [ 0, %3 ], [ 0, %71 ], [ 0, %52 ], [ 0, %60 ], [ 0, %44 ], [ 32770, %29 ], [ 32770, %24 ], [ 32770, %15 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__ttc_clocksource_read(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @ttc_sched_clock_read() #4 {
  %1 = load ptr, ptr @ttc_sched_clock_val_reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !8
  %3 = zext i32 %2 to i64
  ret i64 %3
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_rate_change_clockevent_cb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #4 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -8
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %0, i32 52
  %10 = load i32, ptr %6, align 4
  %11 = lshr i32 %10, 11
  %12 = tail call i32 @clockevents_update_freq(ptr noundef %9, i32 noundef %11) #7
  br label %13

13:                                               ; preds = %5, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_set_next_event(i32 noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr i8, ptr %1, i32 -64
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  %7 = or i32 %6, 1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !9
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %0) #7, !srcloc !9
  %12 = and i32 %6, -18
  %13 = or i32 %12, 16
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_shutdown(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  %6 = or i32 %5, 1
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_set_periodic(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -60
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 102400
  %6 = udiv i32 %5, 204800
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !8
  %10 = or i32 %9, 1
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !9
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %6) #7, !srcloc !9
  %15 = and i32 %9, -18
  %16 = or i32 %15, 16
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  %6 = and i32 %5, -2
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttc_clock_event_interrupt(i32 noundef %0, ptr noundef %1) #4 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  %6 = getelementptr inbounds %struct.ttc_timer_clockevent, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 64
  tail call void %7(ptr noundef %6) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clockevents_update_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }

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
!8 = !{i64 3095117}
!9 = !{i64 3094699}
!10 = !{i32 0, i32 33}
