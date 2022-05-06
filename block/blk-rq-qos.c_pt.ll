; ModuleID = '/llk/IR/block/blk-rq-qos.c_pt.bc'
source_filename = "../block/blk-rq-qos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rq_wait = type { %struct.wait_queue_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rq_qos_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rq_qos = type { ptr, ptr, i32, ptr, ptr }
%struct.rq_depth = type { i32, i32, i8, i32, i32 }
%struct.rq_qos_wait_data = type { %struct.wait_queue_entry, ptr, ptr, ptr, ptr, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rq_wait_inc_below(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rq_wait, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  br label %5

5:                                                ; preds = %14, %2
  %6 = phi i32 [ %4, %2 ], [ %15, %14 ]
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = add nuw i32 %6, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #7, !srcloc !9
  br label %10

10:                                               ; preds = %10, %8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %6, i32 %9, ptr elementtype(i32) %3) #7, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %5
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_cleanup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rq_qos_ops, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %4, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_done(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rq_qos_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %4, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_issue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rq_qos_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %4, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_requeue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rq_qos_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %4, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_throttle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6(ptr noundef %4, ptr noundef %1) #7
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_track(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %0, %3 ], [ %13, %11 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rq_qos_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef %5, ptr noundef %1, ptr noundef %2) #7
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.rq_qos, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4

15:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi ptr [ %0, %3 ], [ %13, %11 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rq_qos_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef %5, ptr noundef %1, ptr noundef %2) #7
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.rq_qos, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4

15:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_done_bio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rq_qos_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef %4, ptr noundef %1) #7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.rq_qos, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %3

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__rq_qos_queue_depth_changed(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %9 ]
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rq_qos_ops, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.rq_qos, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %2

13:                                               ; preds = %9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_calc_max_depth(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = select i1 %8, i32 1, i32 2
  %10 = xor i1 %8, true
  br label %34

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %3)
  %15 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = add i32 %14, -1
  %20 = tail call i32 @llvm.smin.i32(i32 %16, i32 31)
  %21 = lshr i32 %19, %20
  %22 = add nuw i32 %21, 1
  br label %34

23:                                               ; preds = %11
  %24 = icmp slt i32 %16, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = mul i32 %3, 3
  %27 = lshr i32 %26, 2
  %28 = add i32 %14, -1
  %29 = sub i32 0, %16
  %30 = shl i32 %28, %29
  %31 = add i32 %30, 1
  %32 = icmp ugt i32 %31, %27
  %33 = tail call i32 @llvm.umin.i32(i32 %31, i32 %27)
  br label %34

34:                                               ; preds = %25, %23, %18, %5
  %35 = phi i32 [ %9, %5 ], [ %22, %18 ], [ %33, %25 ], [ %14, %23 ]
  %36 = phi i1 [ %10, %5 ], [ false, %18 ], [ %32, %25 ], [ false, %23 ]
  store i32 %35, ptr %0, align 4
  ret i1 %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_scale_up(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = icmp sgt i32 %8, 0
  %14 = select i1 %13, i32 1, i32 2
  %15 = xor i1 %13, true
  br label %37

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %10) #7
  %20 = icmp sgt i32 %8, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = add i32 %19, -1
  %23 = tail call i32 @llvm.smin.i32(i32 %8, i32 31) #7
  %24 = lshr i32 %22, %23
  %25 = add nuw i32 %24, 1
  br label %37

26:                                               ; preds = %16
  %27 = icmp slt i32 %8, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = mul i32 %10, 3
  %30 = lshr i32 %29, 2
  %31 = add i32 %19, -1
  %32 = sub i32 1, %7
  %33 = shl i32 %31, %32
  %34 = add i32 %33, 1
  %35 = icmp ugt i32 %34, %30
  %36 = tail call i32 @llvm.umin.i32(i32 %34, i32 %30) #7
  br label %37

37:                                               ; preds = %28, %26, %21, %12
  %38 = phi i32 [ %14, %12 ], [ %25, %21 ], [ %36, %28 ], [ %19, %26 ]
  %39 = phi i1 [ %15, %12 ], [ false, %21 ], [ %35, %28 ], [ false, %26 ]
  store i32 %38, ptr %0, align 4
  %40 = zext i1 %39 to i8
  store i8 %40, ptr %2, align 4
  br label %41

41:                                               ; preds = %37, %1
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rq_depth_scale_down(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  %9 = and i1 %8, %1
  %10 = add i32 %7, 1
  %11 = select i1 %9, i32 0, i32 %10
  store i32 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 2
  store i8 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = icmp slt i32 %11, 1
  %18 = select i1 %17, i32 2, i32 1
  br label %39

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.rq_depth, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %14) #7
  %23 = icmp sgt i32 %11, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = add i32 %22, -1
  %26 = tail call i32 @llvm.smin.i32(i32 %11, i32 31) #7
  %27 = lshr i32 %25, %26
  %28 = add nuw i32 %27, 1
  br label %39

29:                                               ; preds = %19
  %30 = icmp slt i32 %11, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %29
  %32 = mul i32 %14, 3
  %33 = lshr i32 %32, 2
  %34 = add i32 %22, -1
  %35 = sub i32 0, %11
  %36 = shl i32 %34, %35
  %37 = add i32 %36, 1
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %33) #7
  br label %39

39:                                               ; preds = %31, %29, %24, %16
  %40 = phi i32 [ %18, %16 ], [ %28, %24 ], [ %38, %31 ], [ %22, %29 ]
  store i32 %40, ptr %0, align 4
  br label %41

41:                                               ; preds = %39, %2
  %42 = xor i1 %4, true
  ret i1 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rq_qos_wait(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.rq_qos_wait_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store ptr @rq_qos_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 1
  %10 = tail call ptr @llvm.thread.pointer() #7
  store ptr %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 2
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 4
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %5, i32 0, i32 5
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %15 = getelementptr inbounds %struct.wait_queue_head, ptr %0, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call zeroext i1 %2(ptr noundef %0, ptr noundef %1) #7
  br i1 %19, label %37, label %20

20:                                               ; preds = %18, %4
  %21 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2) #7
  %22 = load i8, ptr %14, align 4, !range !12
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  br i1 %21, label %26, label %28

26:                                               ; preds = %24
  %27 = call zeroext i1 %2(ptr noundef %0, ptr noundef %1) #7
  br i1 %27, label %29, label %28

28:                                               ; preds = %26, %24
  br label %33

29:                                               ; preds = %26
  call void @finish_wait(ptr noundef %0, ptr noundef nonnull %5) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %30 = load i8, ptr %14, align 4, !range !12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  call void %3(ptr noundef %0, ptr noundef %1) #7
  br label %36

33:                                               ; preds = %33, %28
  call void @io_schedule() #7
  store volatile i32 2, ptr %25, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %34 = load i8, ptr %14, align 4, !range !12
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %33, label %36

36:                                               ; preds = %33, %32, %29, %20
  call void @finish_wait(ptr noundef %0, ptr noundef nonnull %5) #7
  br label %37

37:                                               ; preds = %36, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rq_qos_wake_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 %6(ptr noundef %8, ptr noundef %10) #7
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %0, i32 0, i32 5
  store i8 1, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #7, !srcloc !16
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %15, align 4
  %19 = getelementptr inbounds %struct.rq_qos_wait_data, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @wake_up_process(ptr noundef %20) #7
  br label %22

22:                                               ; preds = %12, %4
  %23 = phi i32 [ 1, %12 ], [ -1, %4 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rq_qos_exit(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @blk_mq_debugfs_unregister_queue_rqos(ptr noundef %0) #7
  %2 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %12, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.rq_qos, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %2, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.rq_qos_ops, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef nonnull %6) #7
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_debugfs_unregister_queue_rqos(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!8 = !{i64 2148036654}
!9 = !{i64 421069, i64 2147911040, i64 2147911066, i64 2147911113, i64 2147911135, i64 2147911163, i64 2147911183}
!10 = !{i64 407132, i64 407156, i64 407177, i64 407194, i64 407211}
!11 = !{i64 2148036854}
!12 = !{i8 0, i8 2}
!13 = !{i64 2149270453}
!14 = !{i64 2153128994}
!15 = !{i64 2153131818}
!16 = !{i64 2153128783}
