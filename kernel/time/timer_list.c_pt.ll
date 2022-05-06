; ModuleID = '/llk/IR/kernel/time/timer_list.c_pt.bc'
source_filename = "../kernel/time/timer_list.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tick_sched = type { %struct.hrtimer, i32, i32, i8, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tick_device = type { ptr, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list_iter = type { i32, i8, i64 }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_timer_list__219_359_init_timer_list_procfs6 = internal global ptr @init_timer_list_procfs, section ".initcall6.init", align 4
@.str = private unnamed_addr constant [26 x i8] c"Timer List Version: v0.9\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"HRTIMER_MAX_CLOCK_BASES: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"now at %Ld nsecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@hrtimer_bases = external dso_local global %struct.hrtimer_cpu_base, section ".data..percpu", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"cpu: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" clock %d:\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"  .%-15s: %Lu nsecs\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"expires_next\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"  .%-15s: %Lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"hres_active\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"nr_events\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"nr_retries\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"nr_hangs\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"max_hang_time\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"nohz_mode\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"last_tick\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"tick_stopped\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"idle_jiffies\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"idle_calls\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"idle_sleeps\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"idle_entrytime\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"idle_waketime\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"idle_exittime\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"idle_sleeptime\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"iowait_sleeptime\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"last_jiffies\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"next_timer\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"idle_expires\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"jiffies: %Lu\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.29 = private unnamed_addr constant [20 x i8] c"  .base:       %pK\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"  .index:      %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"  .resolution: %u nsecs\0A\00", align 1
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [20 x i8] c"  .get_time:   %ps\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"  .offset:     %Lu nsecs\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"active timers:\0A\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c" #%d: <%pK>, %ps\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c", S:%02x\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c" # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"tick_broadcast_mask: %*pb\0A\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"tick_broadcast_oneshot_mask: %*pb\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Tick Device: mode:     %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"Broadcast device\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"Per CPU device: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"Clock Event Device: \00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c" max_delta_ns:   %llu\0A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c" min_delta_ns:   %llu\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c" mult:           %u\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c" shift:          %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c" mode:           %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c" next_event:     %Ld nsecs\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c" set_next_event: %ps\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c" shutdown:       %ps\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c" periodic:       %ps\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c" oneshot:        %ps\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c" oneshot stopped: %ps\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c" resume:         %ps\0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c" event_handler:  %ps\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c" retries:        %lu\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Wakeup Device: %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"timer_list\00", align 1
@timer_list_sops = internal constant %struct.seq_operations { ptr @timer_list_start, ptr @timer_list_stop, ptr @timer_list_next, ptr @timer_list_show }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_timer_list__219_359_init_timer_list_procfs6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sysrq_timer_list_show() local_unnamed_addr #0 {
  %1 = tail call i64 @ktime_get() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 8) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.2, i64 noundef %1) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.3) #8
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %0
  %6 = phi i32 [ %7, %5 ], [ %2, %0 ]
  tail call fastcc void @print_cpu(ptr noundef null, i32 noundef %6, i64 noundef %1)
  %7 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_online_mask) #9
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %0
  %11 = tail call ptr @tick_get_broadcast_device() #8
  tail call fastcc void @print_tickdevice(ptr noundef null, ptr noundef %11, i32 noundef -1) #8
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %13 = tail call ptr @tick_get_broadcast_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef %12, ptr noundef %13) #8
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call ptr @tick_get_broadcast_oneshot_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef %14, ptr noundef %15) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.3) #8
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %19, %10
  %20 = phi i32 [ %22, %19 ], [ %16, %10 ]
  %21 = tail call ptr @tick_get_device(i32 noundef %20) #8
  tail call fastcc void @print_tickdevice(ptr noundef null, ptr noundef %21, i32 noundef %20)
  %22 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_online_mask) #9
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %19, label %25

25:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_cpu(ptr noundef %0, i32 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @hrtimer_bases to i32)
  %7 = inttoptr i32 %6 to ptr
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %1)
  %8 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 13
  br label %9

9:                                                ; preds = %56, %3
  %10 = phi i32 [ 0, %3 ], [ %58, %56 ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %10)
  %11 = getelementptr %struct.hrtimer_clock_base, ptr %8, i32 %10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11) #8
  %12 = getelementptr %struct.hrtimer_clock_base, ptr %8, i32 %10, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %13) #8
  %14 = load i32, ptr @hrtimer_resolution, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %14) #8
  %15 = getelementptr %struct.hrtimer_clock_base, ptr %8, i32 %10, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %16) #8
  %17 = getelementptr %struct.hrtimer_clock_base, ptr %8, i32 %10, i32 7
  %18 = load i64, ptr %17, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef %18) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.34) #8
  %19 = load i64, ptr %17, align 8
  %20 = add i64 %19, %2
  %21 = getelementptr %struct.hrtimer_clock_base, ptr %8, i32 %10, i32 5, i32 0, i32 1
  br label %22

22:                                               ; preds = %42, %9
  %23 = phi i32 [ 0, %9 ], [ %55, %42 ]
  %24 = load ptr, ptr %11, align 8
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #8
  %26 = load ptr, ptr %21, align 4
  %27 = icmp ne ptr %26, null
  %28 = icmp ne i32 %23, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %38

30:                                               ; preds = %30, %22
  %31 = phi i32 [ %34, %30 ], [ 0, %22 ]
  %32 = phi ptr [ %33, %30 ], [ %26, %22 ]
  %33 = tail call ptr @timerqueue_iterate_next(ptr noundef nonnull %32) #8
  %34 = add nuw i32 %31, 1
  %35 = icmp ne ptr %33, null
  %36 = icmp ult i32 %34, %23
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %30, label %38

38:                                               ; preds = %30, %22
  %39 = phi ptr [ %26, %22 ], [ %33, %30 ]
  %40 = phi i32 [ 0, %22 ], [ %34, %30 ]
  %41 = phi i1 [ %27, %22 ], [ %35, %30 ]
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %39, i32 16
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds i8, ptr %39, i32 24
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds i8, ptr %39, i32 32
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds i8, ptr %39, i32 40
  %50 = load i8, ptr %49, align 8
  %51 = load ptr, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %25) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %40, ptr noundef nonnull %39, ptr noundef %48) #8
  %52 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %52) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %53 = sub i64 %46, %20
  %54 = sub i64 %44, %20
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef %46, i64 noundef %44, i64 noundef %53, i64 noundef %54) #8
  %55 = add i32 %23, 1
  br label %22

56:                                               ; preds = %38
  %57 = load ptr, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %57, i32 noundef %25) #8
  %58 = add nuw nsw i32 %10, 1
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %9

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 9
  %62 = load i64, ptr %61, align 32
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %62)
  %63 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 4
  %64 = load i8, ptr %63, align 16
  %65 = and i8 %64, 1
  %66 = zext i8 %65 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i64 noundef %66)
  %67 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = zext i32 %68 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i64 noundef %69)
  %70 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 6
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i64 noundef %72)
  %73 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 7
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i64 noundef %75)
  %76 = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %7, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = zext i32 %77 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13, i64 noundef %78)
  %79 = tail call ptr @tick_get_tick_sched(i32 noundef %1) #8
  %80 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = zext i32 %81 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, i64 noundef %82)
  %83 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 4
  %84 = load i64, ptr %83, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, i64 noundef %84)
  %85 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 3
  %86 = load i8, ptr %85, align 8
  %87 = lshr i8 %86, 1
  %88 = and i8 %87, 1
  %89 = zext i8 %88 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, i64 noundef %89)
  %90 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 6
  %91 = load i32, ptr %90, align 8
  %92 = zext i32 %91 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17, i64 noundef %92)
  %93 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = zext i32 %94 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i64 noundef %95)
  %96 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 8
  %97 = load i32, ptr %96, align 8
  %98 = zext i32 %97 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, i64 noundef %98)
  %99 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 9
  %100 = load i64, ptr %99, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i64 noundef %100)
  %101 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 10
  %102 = load i64, ptr %101, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i64 noundef %102)
  %103 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 11
  %104 = load i64, ptr %103, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, i64 noundef %104)
  %105 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 12
  %106 = load i64, ptr %105, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, i64 noundef %106)
  %107 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 13
  %108 = load i64, ptr %107, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.24, i64 noundef %108)
  %109 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 14
  %110 = load i32, ptr %109, align 8
  %111 = zext i32 %110 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i64 noundef %111)
  %112 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 17
  %113 = load i64, ptr %112, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, i64 noundef %113)
  %114 = getelementptr inbounds %struct.tick_sched, ptr %79, i32 0, i32 18
  %115 = load i64, ptr %114, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.27, i64 noundef %115)
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = zext i32 %116 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %117)
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_tickdevice(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.tick_device, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %6)
  %7 = icmp slt i32 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.41)
  br label %10

9:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %2)
  br label %10

10:                                               ; preds = %9, %8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.43)
  %11 = icmp eq ptr %4, null
  br i1 %11, label %66, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 21
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef %14)
  %15 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.46, i64 noundef %16)
  %17 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 5
  %18 = load i64, ptr %17, align 32
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %18)
  %19 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %20)
  %21 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %22)
  %23 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 8
  %24 = load i32, ptr %23, align 16
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %24)
  %25 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 3
  %26 = load i64, ptr %25, align 16
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.51, i64 noundef %26)
  %27 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %28)
  %29 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %32, %12
  %34 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull %35)
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 12
  %40 = load ptr, ptr %39, align 64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef nonnull %40)
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull %45)
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %50)
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr %4, align 64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %54)
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3)
  %55 = getelementptr inbounds %struct.clock_event_device, ptr %4, i32 0, i32 10
  %56 = load i32, ptr %55, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %56)
  %57 = icmp sgt i32 %2, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = tail call ptr @tick_get_wakeup_device(i32 noundef %2) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.clock_event_device, ptr %59, i32 0, i32 21
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi ptr [ %63, %61 ], [ @.str.61, %58 ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %65)
  br label %66

66:                                               ; preds = %64, %53, %10
  %67 = phi ptr [ @.str.44, %10 ], [ @.str.3, %64 ], [ @.str.3, %53 ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull %67)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_timer_list_procfs() #4 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.62, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @timer_list_sops, i32 noundef 16, ptr noundef null) #8
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @SEQ_printf(ptr noundef %0, ptr noundef %1, ...) unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  %5 = load i32, ptr %3, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  call void @seq_vprintf(ptr noundef nonnull %0, ptr noundef %1, [1 x i32] %6) #8
  br label %10

8:                                                ; preds = %2
  %9 = call i32 @vprintk(ptr noundef %1, [1 x i32] %6) #8
  br label %10

10:                                               ; preds = %8, %7
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_tick_sched(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_oneshot_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_wakeup_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @timer_list_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load i64, ptr %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i64 @ktime_get() #8
  %9 = getelementptr inbounds %struct.timer_list_iter, ptr %4, i32 0, i32 2
  store i64 %8, ptr %9, align 8
  br label %10

10:                                               ; preds = %7, %2
  store i32 -1, ptr %4, align 8
  %11 = getelementptr inbounds %struct.timer_list_iter, ptr %4, i32 0, i32 1
  store i8 0, ptr %11, align 4
  %12 = load i64, ptr %1, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %24, %10
  %15 = phi i8 [ %25, %24 ], [ 0, %10 ]
  %16 = phi i32 [ %26, %24 ], [ -1, %10 ]
  %17 = phi i64 [ %27, %24 ], [ %12, %10 ]
  %18 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_online_mask) #9
  store i32 %18, ptr %4, align 8
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = icmp eq i8 %15, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  store i32 -1, ptr %4, align 8
  store i8 1, ptr %11, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = phi i8 [ %15, %14 ], [ 1, %23 ]
  %26 = phi i32 [ %18, %14 ], [ -1, %23 ]
  %27 = add i64 %17, -1
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %14

29:                                               ; preds = %24, %21, %10
  %30 = phi ptr [ %4, %10 ], [ null, %21 ], [ %4, %24 ]
  ret ptr %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @timer_list_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #6 {
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @timer_list_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #7 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.timer_list_iter, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %5, align 8
  %10 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_online_mask) #9
  store i32 %10, ptr %5, align 8
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %8, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, ptr %5, align 8
  store i8 1, ptr %8, align 4
  br label %17

17:                                               ; preds = %16, %13, %3
  %18 = phi ptr [ null, %13 ], [ %5, %16 ], [ %5, %3 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @timer_list_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 8
  %4 = icmp eq i32 %3, -1
  %5 = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %4, label %8, label %12

8:                                                ; preds = %2
  br i1 %7, label %9, label %16

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 8) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %11) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %25

12:                                               ; preds = %2
  br i1 %7, label %13, label %22

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  tail call fastcc void @print_cpu(ptr noundef %0, i32 noundef %3, i64 noundef %15)
  br label %25

16:                                               ; preds = %8
  %17 = tail call ptr @tick_get_broadcast_device() #8
  tail call fastcc void @print_tickdevice(ptr noundef %0, ptr noundef %17, i32 noundef -1) #8
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = tail call ptr @tick_get_broadcast_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %18, ptr noundef %19) #8
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = tail call ptr @tick_get_broadcast_oneshot_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %20, ptr noundef %21) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  br label %25

22:                                               ; preds = %12
  %23 = tail call ptr @tick_get_device(i32 noundef %3) #8
  %24 = load i32, ptr %1, align 8
  tail call fastcc void @print_tickdevice(ptr noundef %0, ptr noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %22, %16, %13, %9
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!9 = !{i8 0, i8 2}
