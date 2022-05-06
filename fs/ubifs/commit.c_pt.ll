; ModuleID = '/llk/IR/fs/ubifs/commit.c_pt.bc'
source_filename = "../fs/ubifs/commit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ubifs_global_debug_info = type { i8, [3 x i8] }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.ubifs_key = type { [1 x i64] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.47 }
%struct.llist_node = type { ptr }
%union.anon.47 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.48 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ubifs_znode = type { ptr, ptr, ptr, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.ubifs_zbranch] }
%struct.ubifs_nnode = type { ptr, ptr, i32, i32, i32, i32, [4 x %struct.ubifs_nbranch] }
%struct.ubifs_nbranch = type { i32, i32, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.ubifs_jhead = type { %struct.ubifs_wbuf, %struct.list_head, i8, ptr }
%struct.ubifs_wbuf = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.spinlock, %struct.hrtimer, i8, i32, ptr }
%struct.ubifs_mst_node = type { %struct.ubifs_ch, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], [64 x i8], [152 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.ubifs_idx_node = type <{ %struct.ubifs_ch, i16, i16, [0 x i8] }>
%struct.ubifs_debug_info = type { %struct.ubifs_zbranch, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i8, [10 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idx_node = type { %struct.list_head, i32, %union.ubifs_key, %struct.ubifs_idx_node }
%struct.ubifs_branch = type { i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"fs/ubifs/commit.c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"background thread \22%s\22 stops\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"dumping index node (iip=%d)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"dumping parent index node\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"failed, error %d\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"!c->ro_media && !c->ro_mount\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"commit failed, error %d\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"atomic_long_read(&c->dirty_zn_cnt) == 0\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"c->dirty_pn_cnt == 0\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"c->dirty_nn_cnt == 0\00", align 1
@ubifs_dbg = external dso_local local_unnamed_addr global %struct.ubifs_global_debug_info, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_bg_thread(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 118
  %3 = tail call ptr @llvm.thread.pointer() #7
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %5) #7
  %6 = tail call zeroext i1 @set_freezable() #7
  %7 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %7, label %53, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 119
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  br label %14

14:                                               ; preds = %27, %8
  %15 = load volatile i32, ptr @system_freezing_cnt, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !8

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @freezing_slow_path(ptr noundef %3) #7
  br i1 %18, label %19, label %21, !prof !9

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br i1 %20, label %27, label %21

21:                                               ; preds = %19, %17, %14
  store volatile i32 1, ptr %9, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %22 = load i32, ptr %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %25, label %53, label %26

26:                                               ; preds = %24
  tail call void @schedule() #7
  br label %27

27:                                               ; preds = %51, %26, %19
  %28 = tail call zeroext i1 @kthread_should_stop() #7
  br i1 %28, label %53, label %14

29:                                               ; preds = %21
  store volatile i32 0, ptr %9, align 8
  store i32 0, ptr %10, align 4
  %30 = tail call i32 @ubifs_bg_wbufs_sync(ptr noundef %0) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %30) #7
  br label %33

33:                                               ; preds = %32, %29
  tail call void @_raw_spin_lock(ptr noundef %11) #7
  %34 = load i32, ptr %12, align 4
  %35 = add i32 %34, -1
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %38 = load i16, ptr %11, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  tail call void @down_write(ptr noundef %13) #7
  tail call void @_raw_spin_lock(ptr noundef %11) #7
  %40 = load i32, ptr %12, align 4
  switch i32 %40, label %47 [
    i32 2, label %42
    i32 1, label %41
  ]

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ 3, %41 ], [ 4, %37 ]
  store i32 %43, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %44 = load i16, ptr %11, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %46 = tail call fastcc i32 @do_commit(ptr noundef %0) #7
  br label %51

47:                                               ; preds = %37
  tail call void @up_write(ptr noundef %13) #7
  br label %48

48:                                               ; preds = %47, %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %49 = load i16, ptr %11, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %51

51:                                               ; preds = %48, %42
  %52 = tail call i32 @__cond_resched() #7
  br label %27

53:                                               ; preds = %27, %24, %1
  tail call void (ptr, ptr, ...) @ubifs_msg(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %2) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_bg_wbufs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_commit_required(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %8 [
    i32 0, label %6
    i32 1, label %6
    i32 3, label %5
  ]

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1, %1
  %7 = phi i32 [ 4, %5 ], [ 2, %1 ], [ 2, %1 ]
  store i32 %7, ptr %3, align 4
  br label %8

8:                                                ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %9 = load i16, ptr %2, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_request_bg_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  store i32 1, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %7 = load i16, ptr %2, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %9 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 117
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 119
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  store i32 1, ptr %13, align 4
  %17 = tail call i32 @wake_up_process(ptr noundef nonnull %10) #7
  br label %21

18:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %19 = load i16, ptr %2, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %21

21:                                               ; preds = %18, %16, %12, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_run_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %9 [
    i32 5, label %23
    i32 3, label %5
    i32 4, label %6
  ]

5:                                                ; preds = %1
  store i32 4, ptr %3, align 4
  br label %6

6:                                                ; preds = %5, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %7 = load i16, ptr %2, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  tail call fastcc void @wait_for_commit(ptr noundef %0)
  br label %26

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %12 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  tail call void @down_write(ptr noundef %12) #7
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %13 = load i32, ptr %3, align 4
  switch i32 %13, label %19 [
    i32 5, label %14
    i32 3, label %15
    i32 4, label %16
  ]

14:                                               ; preds = %9
  tail call void @up_write(ptr noundef %12) #7
  br label %23

15:                                               ; preds = %9
  store i32 4, ptr %3, align 4
  br label %16

16:                                               ; preds = %15, %9
  tail call void @up_write(ptr noundef %12) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %17 = load i16, ptr %2, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  tail call fastcc void @wait_for_commit(ptr noundef %0)
  br label %26

19:                                               ; preds = %9
  store i32 4, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %20 = load i16, ptr %2, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %22 = tail call fastcc i32 @do_commit(ptr noundef %0)
  br label %26

23:                                               ; preds = %14, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %24 = load i16, ptr %2, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %26

26:                                               ; preds = %23, %19, %16, %6
  %27 = phi i32 [ -30, %23 ], [ 0, %6 ], [ 0, %16 ], [ %22, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wait_for_commit(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -3
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !15
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #7
  %8 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 27
  %9 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 2) #7
  %10 = load i32, ptr %3, align 4
  %11 = add i32 %10, -3
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %13, %7
  call void @schedule() #7
  %14 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 2) #7
  %15 = load i32, ptr %3, align 4
  %16 = add i32 %15, -3
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %13, label %18

18:                                               ; preds = %13, %7
  call void @finish_wait(ptr noundef %8, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #7
  br label %19

19:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_commit(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_zbranch, align 8
  %4 = alloca %struct.ubifs_lp_stats, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !15
  %5 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 81
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 104) #7
  %10 = load i8, ptr %5, align 8
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i8 [ %10, %9 ], [ %6, %1 ]
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %229

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 186
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 24
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 32, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ubifs_znode, ptr %22, i32 0, i32 4
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 156
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_nnode, ptr %31, i32 0, i32 2
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33, %29
  %39 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 83
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !8

42:                                               ; preds = %38
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 82) #7
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 151
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !8

47:                                               ; preds = %43
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 83) #7
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 150
  %50 = load i32, ptr %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52, !prof !8

52:                                               ; preds = %48
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 84) #7
  br label %59

53:                                               ; preds = %33, %24, %15
  %54 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 18
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 19
  br label %65

59:                                               ; preds = %52, %48
  %60 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  tail call void @up_write(ptr noundef %60) #7
  br label %223

61:                                               ; preds = %65
  %62 = add nuw nsw i32 %66, 1
  %63 = load i32, ptr %54, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61, %57
  %66 = phi i32 [ 0, %57 ], [ %62, %61 ]
  %67 = load ptr, ptr %58, align 8
  %68 = getelementptr %struct.ubifs_jhead, ptr %67, i32 %66
  %69 = getelementptr inbounds %struct.ubifs_wbuf, ptr %68, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %69) #7
  %70 = tail call i32 @ubifs_wbuf_sync_nolock(ptr noundef %68) #7
  tail call void @mutex_unlock(ptr noundef %69) #7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %61, label %229

72:                                               ; preds = %61, %53
  %73 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 4
  %74 = load i64, ptr %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, ptr %73, align 8
  %76 = tail call i32 @ubifs_gc_start_commit(ptr noundef %0) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %229

78:                                               ; preds = %72
  %79 = tail call i32 @dbg_check_lprops(ptr noundef %0) #7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %229

81:                                               ; preds = %78
  %82 = call i32 @ubifs_log_start_commit(ptr noundef %0, ptr noundef nonnull %2) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %229

84:                                               ; preds = %81
  %85 = call i32 @ubifs_tnc_start_commit(ptr noundef %0, ptr noundef nonnull %3) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %229

87:                                               ; preds = %84
  %88 = call i32 @ubifs_lpt_start_commit(ptr noundef %0) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %229

90:                                               ; preds = %87
  %91 = call i32 @ubifs_orphan_start_commit(ptr noundef %0) #7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %229

93:                                               ; preds = %90
  call void @ubifs_get_lp_stats(ptr noundef %0, ptr noundef nonnull %4) #7
  %94 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_write(ptr noundef %94) #7
  %95 = call i32 @ubifs_tnc_end_commit(ptr noundef %0) #7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %232

97:                                               ; preds = %93
  %98 = call i32 @ubifs_lpt_end_commit(ptr noundef %0) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %232

100:                                              ; preds = %97
  %101 = call i32 @ubifs_orphan_end_commit(ptr noundef %0) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %232

103:                                              ; preds = %100
  %104 = call i32 @dbg_check_old_index(ptr noundef %0, ptr noundef nonnull %3)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %232

106:                                              ; preds = %103
  %107 = load i64, ptr %73, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 46
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ubifs_mst_node, ptr %109, i32 0, i32 2
  store i64 %107, ptr %110, align 1
  %111 = load i32, ptr %2, align 4
  %112 = load ptr, ptr %108, align 4
  %113 = getelementptr inbounds %struct.ubifs_mst_node, ptr %112, i32 0, i32 4
  store i32 %111, ptr %113, align 1
  %114 = getelementptr inbounds %struct.ubifs_zbranch, ptr %3, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %108, align 4
  %117 = getelementptr inbounds %struct.ubifs_mst_node, ptr %116, i32 0, i32 5
  store i32 %115, ptr %117, align 1
  %118 = getelementptr inbounds %struct.ubifs_zbranch, ptr %3, i32 0, i32 3
  %119 = load i32, ptr %118, align 8
  %120 = load ptr, ptr %108, align 4
  %121 = getelementptr inbounds %struct.ubifs_mst_node, ptr %120, i32 0, i32 6
  store i32 %119, ptr %121, align 1
  %122 = getelementptr inbounds %struct.ubifs_zbranch, ptr %3, i32 0, i32 4
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %108, align 4
  %125 = getelementptr inbounds %struct.ubifs_mst_node, ptr %124, i32 0, i32 7
  store i32 %123, ptr %125, align 1
  %126 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 39
  %127 = load i32, ptr %126, align 8
  %128 = load ptr, ptr %108, align 4
  %129 = getelementptr inbounds %struct.ubifs_mst_node, ptr %128, i32 0, i32 9
  store i32 %127, ptr %129, align 1
  %130 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 40
  %131 = load i32, ptr %130, align 4
  %132 = load ptr, ptr %108, align 4
  %133 = getelementptr inbounds %struct.ubifs_mst_node, ptr %132, i32 0, i32 10
  store i32 %131, ptr %133, align 1
  %134 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 87, i32 4
  %135 = load i64, ptr %134, align 8
  %136 = load ptr, ptr %108, align 4
  %137 = getelementptr inbounds %struct.ubifs_mst_node, ptr %136, i32 0, i32 11
  store i64 %135, ptr %137, align 1
  %138 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 145
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %108, align 4
  %141 = getelementptr inbounds %struct.ubifs_mst_node, ptr %140, i32 0, i32 17
  store i32 %139, ptr %141, align 1
  %142 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 146
  %143 = load i32, ptr %142, align 8
  %144 = load ptr, ptr %108, align 4
  %145 = getelementptr inbounds %struct.ubifs_mst_node, ptr %144, i32 0, i32 18
  store i32 %143, ptr %145, align 1
  %146 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 147
  %147 = load i32, ptr %146, align 4
  %148 = load ptr, ptr %108, align 4
  %149 = getelementptr inbounds %struct.ubifs_mst_node, ptr %148, i32 0, i32 19
  store i32 %147, ptr %149, align 1
  %150 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 148
  %151 = load i32, ptr %150, align 8
  %152 = load ptr, ptr %108, align 4
  %153 = getelementptr inbounds %struct.ubifs_mst_node, ptr %152, i32 0, i32 20
  store i32 %151, ptr %153, align 1
  %154 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 166
  %155 = load i32, ptr %154, align 8
  %156 = load ptr, ptr %108, align 4
  %157 = getelementptr inbounds %struct.ubifs_mst_node, ptr %156, i32 0, i32 21
  store i32 %155, ptr %157, align 1
  %158 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 167
  %159 = load i32, ptr %158, align 4
  %160 = load ptr, ptr %108, align 4
  %161 = getelementptr inbounds %struct.ubifs_mst_node, ptr %160, i32 0, i32 22
  store i32 %159, ptr %161, align 1
  %162 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 171
  %163 = load i32, ptr %162, align 4
  %164 = load ptr, ptr %108, align 4
  %165 = getelementptr inbounds %struct.ubifs_mst_node, ptr %164, i32 0, i32 23
  store i32 %163, ptr %165, align 1
  %166 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 172
  %167 = load i32, ptr %166, align 8
  %168 = load ptr, ptr %108, align 4
  %169 = getelementptr inbounds %struct.ubifs_mst_node, ptr %168, i32 0, i32 24
  store i32 %167, ptr %169, align 1
  %170 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 174
  %171 = load i32, ptr %170, align 8
  %172 = load ptr, ptr %108, align 4
  %173 = getelementptr inbounds %struct.ubifs_mst_node, ptr %172, i32 0, i32 25
  store i32 %171, ptr %173, align 1
  %174 = load i32, ptr %4, align 8
  %175 = load ptr, ptr %108, align 4
  %176 = getelementptr inbounds %struct.ubifs_mst_node, ptr %175, i32 0, i32 26
  store i32 %174, ptr %176, align 1
  %177 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 2
  %178 = load i32, ptr %177, align 8
  %179 = load ptr, ptr %108, align 4
  %180 = getelementptr inbounds %struct.ubifs_mst_node, ptr %179, i32 0, i32 27
  store i32 %178, ptr %180, align 1
  %181 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 3
  %182 = load i64, ptr %181, align 8
  %183 = load ptr, ptr %108, align 4
  %184 = getelementptr inbounds %struct.ubifs_mst_node, ptr %183, i32 0, i32 12
  store i64 %182, ptr %184, align 1
  %185 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 4
  %186 = load i64, ptr %185, align 8
  %187 = load ptr, ptr %108, align 4
  %188 = getelementptr inbounds %struct.ubifs_mst_node, ptr %187, i32 0, i32 13
  store i64 %186, ptr %188, align 1
  %189 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 5
  %190 = load i64, ptr %189, align 8
  %191 = load ptr, ptr %108, align 4
  %192 = getelementptr inbounds %struct.ubifs_mst_node, ptr %191, i32 0, i32 14
  store i64 %190, ptr %192, align 1
  %193 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 6
  %194 = load i64, ptr %193, align 8
  %195 = load ptr, ptr %108, align 4
  %196 = getelementptr inbounds %struct.ubifs_mst_node, ptr %195, i32 0, i32 15
  store i64 %194, ptr %196, align 1
  %197 = getelementptr inbounds %struct.ubifs_lp_stats, ptr %4, i32 0, i32 7
  %198 = load i64, ptr %197, align 8
  %199 = load ptr, ptr %108, align 4
  %200 = getelementptr inbounds %struct.ubifs_mst_node, ptr %199, i32 0, i32 16
  store i64 %198, ptr %200, align 1
  %201 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 116
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, 0
  %204 = load ptr, ptr %108, align 4
  %205 = getelementptr inbounds %struct.ubifs_mst_node, ptr %204, i32 0, i32 3
  %206 = load i32, ptr %205, align 1
  %207 = and i32 %206, -3
  %208 = select i1 %203, i32 0, i32 2
  %209 = or i32 %207, %208
  store i32 %209, ptr %205, align 1
  %210 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 11
  %211 = load i32, ptr %210, align 4
  %212 = call i32 @ubifs_log_end_commit(ptr noundef %0, i32 noundef %111) #7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %232

214:                                              ; preds = %106
  %215 = call i32 @ubifs_log_post_commit(ptr noundef %0, i32 noundef %211) #7
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = call i32 @ubifs_gc_end_commit(ptr noundef %0) #7
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %217
  %221 = call i32 @ubifs_lpt_post_commit(ptr noundef %0) #7
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %220, %59
  %224 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %224) #7
  %225 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  store i32 0, ptr %225, align 4
  %226 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 27
  call void @__wake_up(ptr noundef %226, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %227 = load i16, ptr %224, align 4
  %228 = add i16 %227, 1
  store i16 %228, ptr %224, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  br label %239

229:                                              ; preds = %90, %87, %84, %81, %78, %72, %65, %11
  %230 = phi i32 [ %76, %72 ], [ %79, %78 ], [ %82, %81 ], [ %85, %84 ], [ %88, %87 ], [ %91, %90 ], [ -30, %11 ], [ %70, %65 ]
  %231 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 24
  call void @up_write(ptr noundef %231) #7
  br label %232

232:                                              ; preds = %229, %220, %217, %214, %106, %103, %100, %97, %93
  %233 = phi i32 [ %230, %229 ], [ %95, %93 ], [ %98, %97 ], [ %101, %100 ], [ %104, %103 ], [ %212, %106 ], [ %215, %214 ], [ %218, %217 ], [ %221, %220 ]
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %233) #7
  %234 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %234) #7
  %235 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  store i32 5, ptr %235, align 4
  %236 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 27
  call void @__wake_up(ptr noundef %236, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %237 = load i16, ptr %234, align 4
  %238 = add i16 %237, 1
  store i16 %238, ptr %234, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  call void @ubifs_ro_mode(ptr noundef %0, i32 noundef %233) #7
  br label %239

239:                                              ; preds = %232, %223
  %240 = phi i32 [ %233, %232 ], [ 0, %223 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %240
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_gc_should_commit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ %4, %1 ], [ 2, %6 ]
  %9 = icmp eq i32 %8, 2
  %10 = zext i1 %9 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  %11 = load i16, ptr %2, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_old_index_check_init(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.ubifs_zbranch, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubifs_zbranch, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.ubifs_zbranch, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %12 = load i32, ptr %11, align 4
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3136) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = tail call i32 @ubifs_read_node(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 9, i32 noundef %10, i32 noundef %6, i32 noundef %8) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ubifs_idx_node, ptr %13, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ubifs_ch, ptr %13, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.ubifs_debug_info, ptr %4, i32 0, i32 2
  store i64 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %18, %15
  tail call void @kfree(ptr noundef nonnull %13) #7
  br label %27

27:                                               ; preds = %26, %2
  %28 = phi i32 [ %16, %26 ], [ -12, %2 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_read_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_check_old_index(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 194
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = load i8, ptr @ubifs_dbg, align 4
  %7 = and i8 %6, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 19
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %276, label %14

14:                                               ; preds = %9, %2
  store volatile ptr %3, ptr %3, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 70
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 68
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 12
  %21 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 69
  %22 = load i32, ptr %21, align 8
  %23 = add i32 %20, %22
  %24 = mul i32 %23, %17
  %25 = add i32 %24, 56
  %26 = getelementptr inbounds %struct.ubifs_zbranch, ptr %5, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ubifs_zbranch, ptr %5, i32 0, i32 3
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ubifs_zbranch, ptr %5, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.ubifs_debug_info, ptr %5, i32 0, i32 2
  br label %34

34:                                               ; preds = %202, %14
  %35 = phi i32 [ 0, %14 ], [ %189, %202 ]
  %36 = phi i32 [ 0, %14 ], [ %187, %202 ]
  %37 = phi i32 [ 0, %14 ], [ %203, %202 ]
  %38 = phi i32 [ 0, %14 ], [ %204, %202 ]
  %39 = phi i1 [ false, %14 ], [ true, %202 ]
  %40 = phi i32 [ 0, %14 ], [ %171, %202 ]
  %41 = phi i64 [ 0, %14 ], [ %177, %202 ]
  %42 = phi i16 [ 0, %14 ], [ %175, %202 ]
  %43 = phi i32 [ %31, %14 ], [ %185, %202 ]
  %44 = phi i32 [ %29, %14 ], [ %183, %202 ]
  %45 = phi i32 [ %27, %14 ], [ %181, %202 ]
  %46 = zext i16 %42 to i32
  %47 = call noalias align 64 ptr @__kmalloc(i32 noundef %25, i32 noundef 3136) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %261, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 1
  store i32 %40, ptr %50, align 8
  %51 = load ptr, ptr %15, align 4
  store ptr %47, ptr %15, align 4
  store ptr %3, ptr %47, align 64
  %52 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %47, ptr %51, align 4
  %53 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 3
  %54 = call i32 @ubifs_read_node(ptr noundef %0, ptr noundef %53, i32 noundef 9, i32 noundef %43, i32 noundef %45, i32 noundef %44) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %261

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 3, i32 1
  %58 = load i16, ptr %57, align 16
  %59 = zext i16 %58 to i32
  %60 = icmp eq i16 %58, 0
  br i1 %60, label %235, label %61

61:                                               ; preds = %56
  %62 = load i32, ptr %16, align 4
  %63 = icmp slt i32 %62, %59
  br i1 %63, label %235, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 3, i32 2
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  br i1 %39, label %84, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %32, align 8
  %70 = icmp eq i32 %69, %67
  br i1 %70, label %71, label %235

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 3, i32 0, i32 2
  %73 = load i64, ptr %72, align 32
  %74 = load i64, ptr %33, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %235

76:                                               ; preds = %71
  %77 = add nuw nsw i32 %67, 1
  %78 = add i64 %73, 1
  %79 = getelementptr inbounds %struct.ubifs_idx_node, ptr %53, i32 0, i32 3
  %80 = getelementptr inbounds %struct.ubifs_branch, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 64
  %82 = getelementptr %struct.ubifs_idx_node, ptr %53, i32 1, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  br label %84

84:                                               ; preds = %76, %64
  %85 = phi i32 [ %83, %76 ], [ %35, %64 ]
  %86 = phi i32 [ %81, %76 ], [ %36, %64 ]
  %87 = phi i32 [ -1, %76 ], [ %37, %64 ]
  %88 = phi i32 [ -256, %76 ], [ %38, %64 ]
  %89 = phi i64 [ %78, %76 ], [ %41, %64 ]
  %90 = phi i32 [ %77, %76 ], [ %46, %64 ]
  %91 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 2
  %92 = zext i32 %87 to i64
  %93 = shl nuw i64 %92, 32
  %94 = zext i32 %88 to i64
  %95 = or i64 %93, %94
  store i64 %95, ptr %91, align 16
  %96 = add nsw i32 %90, -1
  %97 = icmp eq i32 %96, %67
  br i1 %97, label %98, label %235

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 3, i32 0, i32 2
  %100 = load i64, ptr %99, align 32
  %101 = icmp ult i64 %100, %89
  br i1 %101, label %102, label %235

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ubifs_idx_node, ptr %53, i32 0, i32 3
  %104 = getelementptr inbounds %struct.ubifs_branch, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 64
  %106 = add nsw i32 %59, -1
  %107 = load i32, ptr %18, align 4
  %108 = add i32 %107, 12
  %109 = load i32, ptr %21, align 8
  %110 = add i32 %108, %109
  %111 = mul i32 %110, %106
  %112 = getelementptr i8, ptr %103, i32 %111
  %113 = getelementptr inbounds %struct.ubifs_branch, ptr %112, i32 0, i32 3
  %114 = load i32, ptr %113, align 8
  %115 = getelementptr [2 x i32], ptr %113, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = icmp ult i32 %86, %105
  br i1 %117, label %124, label %118

118:                                              ; preds = %102
  %119 = getelementptr %struct.ubifs_idx_node, ptr %53, i32 1, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = icmp ugt i32 %86, %105
  %122 = icmp ugt i32 %85, %120
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %235, label %124

124:                                              ; preds = %118, %102
  %125 = icmp ult i32 %88, %114
  br i1 %125, label %235, label %126

126:                                              ; preds = %124
  %127 = icmp ule i32 %88, %114
  %128 = icmp ult i32 %87, %116
  %129 = select i1 %127, i1 %128, i1 false
  br i1 %129, label %235, label %130

130:                                              ; preds = %126
  %131 = icmp ugt i32 %88, %114
  %132 = select i1 %131, i1 true, i1 %128
  %133 = icmp ugt i32 %87, %116
  %134 = select i1 %132, i1 true, i1 %133
  %135 = and i32 %116, -1073741824
  %136 = icmp eq i32 %135, 1073741824
  %137 = select i1 %134, i1 true, i1 %136
  br i1 %137, label %138, label %235

138:                                              ; preds = %130
  %139 = icmp eq i16 %66, 0
  br i1 %139, label %140, label %169

140:                                              ; preds = %138
  %141 = load ptr, ptr %52, align 4
  %142 = load ptr, ptr %47, align 64
  %143 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  store ptr %141, ptr %143, align 4
  store volatile ptr %142, ptr %141, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 64
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  call void @kfree(ptr noundef nonnull %47) #7
  %144 = load volatile ptr, ptr %3, align 8
  %145 = icmp eq ptr %144, %3
  br i1 %145, label %211, label %146

146:                                              ; preds = %154, %140
  %147 = phi i32 [ %156, %154 ], [ %40, %140 ]
  %148 = load ptr, ptr %15, align 4
  %149 = add i32 %147, 1
  %150 = getelementptr inbounds %struct.idx_node, ptr %148, i32 0, i32 3, i32 1
  %151 = load i16, ptr %150, align 1
  %152 = zext i16 %151 to i32
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %163, label %154

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.idx_node, ptr %148, i32 0, i32 1
  %156 = load i32, ptr %155, align 8
  %157 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %148, align 4
  %160 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %160, align 4
  store volatile ptr %159, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %148, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  call void @kfree(ptr noundef %148) #7
  %161 = load volatile ptr, ptr %3, align 8
  %162 = icmp eq ptr %161, %3
  br i1 %162, label %211, label %146

163:                                              ; preds = %146
  %164 = getelementptr inbounds %struct.idx_node, ptr %148, i32 0, i32 3
  %165 = load i32, ptr %18, align 4
  %166 = load i32, ptr %21, align 8
  %167 = add i32 %165, 12
  %168 = add i32 %167, %166
  br label %169

169:                                              ; preds = %163, %138
  %170 = phi i32 [ %168, %163 ], [ %110, %138 ]
  %171 = phi i32 [ %149, %163 ], [ 0, %138 ]
  %172 = phi ptr [ %164, %163 ], [ %53, %138 ]
  %173 = phi ptr [ %148, %163 ], [ %47, %138 ]
  %174 = getelementptr inbounds %struct.ubifs_idx_node, ptr %172, i32 0, i32 2
  %175 = load i16, ptr %174, align 1
  %176 = getelementptr inbounds %struct.ubifs_ch, ptr %172, i32 0, i32 2
  %177 = load i64, ptr %176, align 1
  %178 = getelementptr inbounds %struct.ubifs_idx_node, ptr %172, i32 0, i32 3
  %179 = mul i32 %170, %171
  %180 = getelementptr i8, ptr %178, i32 %179
  %181 = load i32, ptr %180, align 1
  %182 = getelementptr inbounds %struct.ubifs_branch, ptr %180, i32 0, i32 1
  %183 = load i32, ptr %182, align 1
  %184 = getelementptr inbounds %struct.ubifs_branch, ptr %180, i32 0, i32 2
  %185 = load i32, ptr %184, align 1
  %186 = getelementptr inbounds %struct.ubifs_branch, ptr %180, i32 0, i32 3
  %187 = load i32, ptr %186, align 8
  %188 = getelementptr [2 x i32], ptr %186, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = add nsw i32 %171, 1
  %191 = getelementptr inbounds %struct.ubifs_idx_node, ptr %172, i32 0, i32 1
  %192 = load i16, ptr %191, align 1
  %193 = zext i16 %192 to i32
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %169
  %196 = mul i32 %170, %190
  %197 = getelementptr i8, ptr %178, i32 %196
  %198 = getelementptr inbounds %struct.ubifs_branch, ptr %197, i32 0, i32 3
  %199 = load i32, ptr %198, align 8
  %200 = getelementptr [2 x i32], ptr %198, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  br label %202

202:                                              ; preds = %205, %195
  %203 = phi i32 [ %201, %195 ], [ %210, %205 ]
  %204 = phi i32 [ %199, %195 ], [ %208, %205 ]
  br label %34

205:                                              ; preds = %169
  %206 = getelementptr inbounds %struct.idx_node, ptr %173, i32 0, i32 2
  %207 = load i64, ptr %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = lshr i64 %207, 32
  %210 = trunc i64 %209 to i32
  br label %202

211:                                              ; preds = %154, %140
  %212 = load ptr, ptr %4, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %212, ptr noundef align 8 dereferenceable(24) %1, i32 24, i1 false) #7
  %213 = getelementptr inbounds %struct.ubifs_zbranch, ptr %212, i32 0, i32 2
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr inbounds %struct.ubifs_zbranch, ptr %212, i32 0, i32 3
  %216 = load i32, ptr %215, align 8
  %217 = getelementptr inbounds %struct.ubifs_zbranch, ptr %212, i32 0, i32 4
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.ubifs_info, ptr %0, i32 0, i32 92
  %220 = load i32, ptr %219, align 4
  %221 = call noalias align 64 ptr @__kmalloc(i32 noundef %220, i32 noundef 3136) #8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %261, label %223

223:                                              ; preds = %211
  %224 = call i32 @ubifs_read_node(ptr noundef %0, ptr noundef nonnull %221, i32 noundef 9, i32 noundef %218, i32 noundef %214, i32 noundef %216) #7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.ubifs_idx_node, ptr %221, i32 0, i32 2
  %228 = load i16, ptr %227, align 2
  %229 = zext i16 %228 to i32
  %230 = getelementptr inbounds %struct.ubifs_debug_info, ptr %212, i32 0, i32 1
  store i32 %229, ptr %230, align 8
  %231 = getelementptr inbounds %struct.ubifs_ch, ptr %221, i32 0, i32 2
  %232 = load i64, ptr %231, align 8
  %233 = getelementptr inbounds %struct.ubifs_debug_info, ptr %212, i32 0, i32 2
  store i64 %232, ptr %233, align 8
  call void @kfree(ptr noundef nonnull %221) #7
  br label %276

234:                                              ; preds = %223
  call void @kfree(ptr noundef nonnull %221) #7
  br label %261

235:                                              ; preds = %130, %126, %124, %118, %98, %84, %71, %68, %61, %56
  %236 = phi i32 [ 4, %98 ], [ 3, %84 ], [ 3, %71 ], [ 2, %68 ], [ 1, %56 ], [ 1, %61 ], [ 5, %118 ], [ 6, %124 ], [ 7, %130 ], [ 6, %126 ]
  %237 = getelementptr inbounds %struct.idx_node, ptr %47, i32 0, i32 1
  %238 = load i32, ptr %237, align 8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %238) #7
  %239 = load i32, ptr %16, align 4
  %240 = load i32, ptr %18, align 4
  %241 = add i32 %240, 12
  %242 = load i32, ptr %21, align 8
  %243 = add i32 %241, %242
  %244 = mul i32 %243, %239
  %245 = add i32 %244, 28
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %53, i32 noundef %245) #7
  %246 = load ptr, ptr %52, align 4
  %247 = load ptr, ptr %47, align 64
  %248 = getelementptr inbounds %struct.list_head, ptr %247, i32 0, i32 1
  store ptr %246, ptr %248, align 4
  store volatile ptr %247, ptr %246, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 64
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  call void @kfree(ptr noundef nonnull %47) #7
  %249 = load volatile ptr, ptr %3, align 8
  %250 = icmp eq ptr %249, %3
  br i1 %250, label %261, label %251

251:                                              ; preds = %235
  %252 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  %253 = getelementptr inbounds %struct.idx_node, ptr %252, i32 0, i32 3
  %254 = load i32, ptr %16, align 4
  %255 = load i32, ptr %18, align 4
  %256 = add i32 %255, 12
  %257 = load i32, ptr %21, align 8
  %258 = add i32 %256, %257
  %259 = mul i32 %258, %254
  %260 = add i32 %259, 28
  call void @ubifs_dump_node(ptr noundef %0, ptr noundef %253, i32 noundef %260) #7
  br label %261

261:                                              ; preds = %251, %235, %234, %211, %49, %34
  %262 = phi i32 [ %236, %235 ], [ %236, %251 ], [ %224, %234 ], [ -12, %211 ], [ -12, %34 ], [ %54, %49 ]
  %263 = load volatile ptr, ptr %3, align 8
  %264 = icmp eq ptr %263, %3
  br i1 %264, label %273, label %265

265:                                              ; preds = %265, %261
  %266 = phi ptr [ %271, %265 ], [ %263, %261 ]
  %267 = getelementptr inbounds %struct.list_head, ptr %266, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  %269 = load ptr, ptr %266, align 4
  %270 = getelementptr inbounds %struct.list_head, ptr %269, i32 0, i32 1
  store ptr %268, ptr %270, align 4
  store volatile ptr %269, ptr %268, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %266, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %267, align 4
  call void @kfree(ptr noundef %266) #7
  %271 = load volatile ptr, ptr %3, align 8
  %272 = icmp eq ptr %271, %3
  br i1 %272, label %273, label %265

273:                                              ; preds = %265, %261
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %262) #7
  %274 = icmp sgt i32 %262, 0
  %275 = select i1 %274, i32 -22, i32 %262
  br label %276

276:                                              ; preds = %273, %226, %9
  %277 = phi i32 [ %275, %273 ], [ 0, %9 ], [ 0, %226 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %277
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_dump_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_check_lprops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_start_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_start_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_orphan_start_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_get_lp_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_orphan_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_end_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_log_post_commit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_gc_end_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_lpt_post_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_wbuf_sync_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153468089}
!11 = !{i64 2149196341}
!12 = !{i64 2149192165}
!13 = !{i64 2149192240, i64 2149192267, i64 2149192314, i64 2149192336, i64 2149192364, i64 2149192384}
!14 = !{i64 2149219344}
!15 = !{!"auto-init"}
