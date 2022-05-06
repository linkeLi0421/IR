; ModuleID = '/llk/IR/kernel/sched/cpudeadline.c_pt.bc'
source_filename = "../kernel/sched/cpudeadline.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.1, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.1 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.2, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.2 = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpudl_item = type { i64, i32, i32 }

@sched_asym_cpucapacity = external dso_local global %struct.static_key_false, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [27 x i8] c"kernel/sched/cpudeadline.c\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpudl_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29
  %8 = load i32, ptr %6, align 4
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %8, 65535
  %11 = and i32 %10, %9
  store i32 %11, ptr %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %66, label %13

13:                                               ; preds = %5
  %14 = load volatile i32, ptr @sched_asym_cpucapacity, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %100, !prof !8

16:                                               ; preds = %13
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %2) #6
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 2
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 1
  %23 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  br label %24

24:                                               ; preds = %52, %20
  %25 = phi i32 [ %17, %20 ], [ %55, %52 ]
  %26 = phi i32 [ -1, %20 ], [ %54, %52 ]
  %27 = phi i32 [ 0, %20 ], [ %53, %52 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @cpu_scale to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = load i64, ptr %21, align 8
  %34 = zext i32 %32 to i64
  %35 = mul i64 %33, %34
  %36 = lshr i64 %35, 10
  %37 = load i64, ptr %22, align 16
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %24
  tail call void @_clear_bit(i32 noundef %25, ptr noundef nonnull %2) #7
  %40 = load i32, ptr %28, align 4
  %41 = add i32 %40, ptrtoint (ptr @runqueues to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.rq, ptr %42, i32 0, i32 32
  %44 = load i32, ptr %43, align 4
  %45 = icmp ugt i32 %44, %27
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load volatile i32, ptr %23, align 8
  %48 = icmp eq i32 %25, %47
  %49 = icmp eq i32 %44, %27
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51, %46, %24
  %53 = phi i32 [ %27, %24 ], [ %44, %51 ], [ %27, %46 ]
  %54 = phi i32 [ %26, %24 ], [ %25, %51 ], [ %26, %46 ]
  %55 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull %2) #6
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %24, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %2, align 4
  br label %60

60:                                               ; preds = %58, %16
  %61 = phi i32 [ %11, %16 ], [ %59, %58 ]
  %62 = phi i32 [ -1, %16 ], [ %54, %58 ]
  %63 = and i32 %61, 65535
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %60
  tail call void @_set_bit(i32 noundef %62, ptr noundef nonnull %2) #7
  br label %100

66:                                               ; preds = %5, %3
  %67 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.cpudl_item, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = lshr i32 %70, 5
  %74 = getelementptr i32, ptr @__cpu_present_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %70, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81, !prof !8

80:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 9, ptr noundef null) #7
  br label %81

81:                                               ; preds = %80, %72, %66
  %82 = phi i32 [ %77, %80 ], [ %77, %72 ], [ -2147483648, %66 ]
  %83 = phi i32 [ %73, %80 ], [ %73, %72 ], [ 134217727, %66 ]
  %84 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29
  %85 = getelementptr i32, ptr %84, i32 %83
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, %82
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %67, align 4
  %93 = load i64, ptr %92, align 8
  %94 = sub i64 %91, %93
  %95 = icmp sgt i64 %94, -1
  %96 = or i1 %4, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  tail call void @_set_bit(i32 noundef %70, ptr noundef nonnull %2) #7
  br label %100

98:                                               ; preds = %89
  br i1 %95, label %99, label %100

99:                                               ; preds = %98, %81
  br label %100

100:                                              ; preds = %99, %98, %97, %65, %60, %13
  %101 = phi i32 [ 1, %60 ], [ 1, %65 ], [ 1, %13 ], [ 0, %99 ], [ 1, %98 ], [ 1, %97 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpudl_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = lshr i32 %1, 5
  %4 = getelementptr i32, ptr @__cpu_present_mask, i32 %3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %1, 31
  %7 = shl nuw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #7
  br label %11

11:                                               ; preds = %10, %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %13 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.cpudl_item, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %36, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  %22 = getelementptr %struct.cpudl_item, ptr %14, i32 %21
  %23 = getelementptr %struct.cpudl_item, ptr %14, i32 %21, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = load i64, ptr %22, align 8
  %26 = getelementptr %struct.cpudl_item, ptr %14, i32 %16
  store i64 %25, ptr %26, align 8
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr %struct.cpudl_item, ptr %27, i32 %16, i32 1
  store i32 %24, ptr %28, align 8
  %29 = load i32, ptr %19, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %19, align 4
  %31 = load ptr, ptr %13, align 4
  %32 = getelementptr %struct.cpudl_item, ptr %31, i32 %24, i32 2
  store i32 %16, ptr %32, align 4
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr %struct.cpudl_item, ptr %33, i32 %1, i32 2
  store i32 -1, ptr %34, align 4
  tail call fastcc void @cpudl_heapify(ptr noundef %0, i32 noundef %16)
  %35 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %1, ptr noundef %35) #7
  br label %36

36:                                               ; preds = %18, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %12) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpudl_heapify(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  %4 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  br i1 %3, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.cpudl_item, ptr %5, i32 %1
  %8 = load i64, ptr %7, align 8
  br label %52

9:                                                ; preds = %2
  %10 = add nsw i32 %1, -1
  %11 = lshr i32 %10, 1
  %12 = getelementptr %struct.cpudl_item, ptr %5, i32 %11
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr %struct.cpudl_item, ptr %5, i32 %1
  %15 = load i64, ptr %14, align 8
  %16 = sub i64 %13, %15
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %9
  %19 = getelementptr %struct.cpudl_item, ptr %5, i32 %1, i32 1
  %20 = load i32, ptr %19, align 8
  br label %21

21:                                               ; preds = %30, %18
  %22 = phi ptr [ %5, %18 ], [ %43, %30 ]
  %23 = phi i32 [ %1, %18 ], [ %25, %30 ]
  %24 = add nsw i32 %23, -1
  %25 = ashr i32 %24, 1
  %26 = getelementptr %struct.cpudl_item, ptr %22, i32 %25
  %27 = load i64, ptr %26, align 8
  %28 = sub i64 %15, %27
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %21
  %31 = getelementptr %struct.cpudl_item, ptr %22, i32 %25, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.cpudl_item, ptr %22, i32 %23, i32 1
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr %struct.cpudl_item, ptr %34, i32 %25
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr %struct.cpudl_item, ptr %34, i32 %23
  store i64 %36, ptr %37, align 8
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr %struct.cpudl_item, ptr %38, i32 %23, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr %struct.cpudl_item, ptr %38, i32 %40, i32 2
  store i32 %23, ptr %41, align 4
  %42 = icmp ult i32 %24, 2
  %43 = load ptr, ptr %4, align 4
  br i1 %42, label %44, label %21

44:                                               ; preds = %30, %21
  %45 = phi ptr [ %43, %30 ], [ %22, %21 ]
  %46 = phi i32 [ 0, %30 ], [ %23, %21 ]
  %47 = getelementptr %struct.cpudl_item, ptr %45, i32 %46, i32 1
  store i32 %20, ptr %47, align 8
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr %struct.cpudl_item, ptr %48, i32 %46
  store i64 %15, ptr %49, align 8
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr %struct.cpudl_item, ptr %50, i32 %46, i32 1
  br label %111

52:                                               ; preds = %9, %6
  %53 = phi i64 [ %8, %6 ], [ %15, %9 ]
  %54 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %55 = getelementptr %struct.cpudl_item, ptr %5, i32 %1, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = shl i32 %1, 1
  %58 = or i32 %57, 1
  %59 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %117

62:                                               ; preds = %92, %52
  %63 = phi i32 [ %104, %92 ], [ %60, %52 ]
  %64 = phi i32 [ %89, %92 ], [ %1, %52 ]
  %65 = shl i32 %64, 1
  %66 = or i32 %65, 1
  %67 = add i32 %65, 2
  %68 = icmp slt i32 %66, %63
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load ptr, ptr %54, align 4
  %71 = getelementptr %struct.cpudl_item, ptr %70, i32 %66
  %72 = load i64, ptr %71, align 8
  %73 = sub i64 %53, %72
  %74 = icmp slt i64 %73, 0
  %75 = select i1 %74, i32 %66, i32 %64
  %76 = select i1 %74, i64 %72, i64 %53
  br label %77

77:                                               ; preds = %69, %62
  %78 = phi i32 [ %64, %62 ], [ %75, %69 ]
  %79 = phi i64 [ %53, %62 ], [ %76, %69 ]
  %80 = icmp slt i32 %67, %63
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load ptr, ptr %54, align 4
  %83 = getelementptr %struct.cpudl_item, ptr %82, i32 %67
  %84 = load i64, ptr %83, align 8
  %85 = sub i64 %79, %84
  %86 = icmp slt i64 %85, 0
  %87 = select i1 %86, i32 %67, i32 %78
  br label %88

88:                                               ; preds = %81, %77
  %89 = phi i32 [ %78, %77 ], [ %87, %81 ]
  %90 = icmp eq i32 %89, %64
  %91 = load ptr, ptr %54, align 4
  br i1 %90, label %105, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.cpudl_item, ptr %91, i32 %89, i32 1
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr %struct.cpudl_item, ptr %91, i32 %64, i32 1
  store i32 %94, ptr %95, align 8
  %96 = load ptr, ptr %54, align 4
  %97 = getelementptr %struct.cpudl_item, ptr %96, i32 %89
  %98 = load i64, ptr %97, align 8
  %99 = getelementptr %struct.cpudl_item, ptr %96, i32 %64
  store i64 %98, ptr %99, align 8
  %100 = load ptr, ptr %54, align 4
  %101 = getelementptr %struct.cpudl_item, ptr %100, i32 %64, i32 1
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr %struct.cpudl_item, ptr %100, i32 %102, i32 2
  store i32 %64, ptr %103, align 4
  %104 = load i32, ptr %59, align 4
  br label %62

105:                                              ; preds = %88
  %106 = getelementptr %struct.cpudl_item, ptr %91, i32 %64, i32 1
  store i32 %56, ptr %106, align 8
  %107 = load ptr, ptr %54, align 4
  %108 = getelementptr %struct.cpudl_item, ptr %107, i32 %64
  store i64 %53, ptr %108, align 8
  %109 = load ptr, ptr %54, align 4
  %110 = getelementptr %struct.cpudl_item, ptr %109, i32 %64, i32 1
  br label %111

111:                                              ; preds = %105, %44
  %112 = phi ptr [ %110, %105 ], [ %51, %44 ]
  %113 = phi ptr [ %109, %105 ], [ %50, %44 ]
  %114 = phi i32 [ %64, %105 ], [ %46, %44 ]
  %115 = load i32, ptr %112, align 8
  %116 = getelementptr %struct.cpudl_item, ptr %113, i32 %115, i32 2
  store i32 %114, ptr %116, align 4
  br label %117

117:                                              ; preds = %111, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpudl_set(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr @__cpu_present_mask, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 219, i32 noundef 9, ptr noundef null) #7
  br label %12

12:                                               ; preds = %11, %3
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #7
  %14 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.cpudl_item, ptr %15, i32 %1, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %69

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  %23 = getelementptr %struct.cpudl_item, ptr %15, i32 %21
  store i64 %2, ptr %23, align 8
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr %struct.cpudl_item, ptr %24, i32 %21, i32 1
  store i32 %1, ptr %25, align 8
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr %struct.cpudl_item, ptr %26, i32 %1, i32 2
  store i32 %21, ptr %27, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr %struct.cpudl_item, ptr %28, i32 %21
  %30 = getelementptr %struct.cpudl_item, ptr %28, i32 %21, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = load i64, ptr %29, align 8
  %33 = icmp eq i32 %21, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %43, %19
  %35 = phi ptr [ %56, %43 ], [ %28, %19 ]
  %36 = phi i32 [ %38, %43 ], [ %21, %19 ]
  %37 = add i32 %36, -1
  %38 = ashr i32 %37, 1
  %39 = getelementptr %struct.cpudl_item, ptr %35, i32 %38
  %40 = load i64, ptr %39, align 8
  %41 = sub i64 %32, %40
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %34
  %44 = getelementptr %struct.cpudl_item, ptr %35, i32 %38, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr %struct.cpudl_item, ptr %35, i32 %36, i32 1
  store i32 %45, ptr %46, align 8
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr %struct.cpudl_item, ptr %47, i32 %38
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr %struct.cpudl_item, ptr %47, i32 %36
  store i64 %49, ptr %50, align 8
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr %struct.cpudl_item, ptr %51, i32 %36, i32 1
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr %struct.cpudl_item, ptr %51, i32 %53, i32 2
  store i32 %36, ptr %54, align 4
  %55 = icmp ult i32 %37, 2
  %56 = load ptr, ptr %14, align 4
  br i1 %55, label %57, label %34

57:                                               ; preds = %43, %34
  %58 = phi ptr [ %56, %43 ], [ %35, %34 ]
  %59 = phi i32 [ 0, %43 ], [ %36, %34 ]
  %60 = getelementptr %struct.cpudl_item, ptr %58, i32 %59, i32 1
  store i32 %31, ptr %60, align 8
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr %struct.cpudl_item, ptr %61, i32 %59
  store i64 %32, ptr %62, align 8
  %63 = load ptr, ptr %14, align 4
  %64 = getelementptr %struct.cpudl_item, ptr %63, i32 %59, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr %struct.cpudl_item, ptr %63, i32 %65, i32 2
  store i32 %59, ptr %66, align 4
  br label %67

67:                                               ; preds = %57, %19
  %68 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %68) #7
  br label %71

69:                                               ; preds = %12
  %70 = getelementptr %struct.cpudl_item, ptr %15, i32 %17
  store i64 %2, ptr %70, align 8
  tail call fastcc void @cpudl_heapify(ptr noundef %0, i32 noundef %17)
  br label %71

71:                                               ; preds = %69, %67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %13) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpudl_set_freecpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %1, ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpudl_clear_freecpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpudl_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %6, label %8, !prof !8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  store ptr null, ptr %7, align 4
  br label %30

8:                                                ; preds = %1
  %9 = extractvalue { i32, i1 } %4, 0
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #8
  %11 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %17 = icmp ult i32 %16, %14
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = getelementptr %struct.cpudl_item, ptr %10, i32 %16, i32 2
  store i32 -1, ptr %19, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #6
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %23, %18
  %24 = phi i32 [ %27, %23 ], [ %20, %18 ]
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr %struct.cpudl_item, ptr %25, i32 %24, i32 2
  store i32 -1, ptr %26, align 4
  %27 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @__cpu_possible_mask) #6
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %23, label %30

30:                                               ; preds = %23, %18, %13, %8, %6
  %31 = phi i32 [ -12, %8 ], [ -12, %6 ], [ 0, %13 ], [ 0, %18 ], [ 0, %23 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpudl_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpudl, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
