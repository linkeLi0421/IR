; ModuleID = '/llk/IR/block/ioprio.c_pt.bc'
source_filename = "../block/ioprio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.89 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.60 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.60 = type { %struct.callback_head }
%struct.io_context = type { %struct.atomic_t, %struct.atomic_t, i16 }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }

@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 64

@sys_ioprio_set = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_ioprio_set
@sys_ioprio_get = dso_local alias i32 (i32, i32), ptr @__se_sys_ioprio_get

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ioprio_check_cap(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 13
  %3 = and i32 %2, 7
  %4 = and i32 %0, 8191
  switch i32 %3, label %14 [
    i32 1, label %5
    i32 2, label %9
    i32 3, label %13
    i32 0, label %11
  ]

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @capable(i32 noundef 23) #5
  br i1 %8, label %9, label %14

9:                                                ; preds = %7, %5, %1
  %10 = icmp ugt i32 %4, 7
  br i1 %10, label %14, label %13

11:                                               ; preds = %1
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %9, %1
  br label %14

14:                                               ; preds = %13, %11, %9, %7, %1
  %15 = phi i32 [ 0, %13 ], [ -1, %7 ], [ -22, %9 ], [ -22, %11 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ioprio_set(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = lshr i32 %2, 13
  %5 = and i32 %4, 7
  %6 = and i32 %2, 8191
  switch i32 %5, label %145 [
    i32 1, label %7
    i32 2, label %11
    i32 3, label %15
    i32 0, label %13
  ]

7:                                                ; preds = %3
  %8 = tail call zeroext i1 @capable(i32 noundef 21) #5
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = tail call zeroext i1 @capable(i32 noundef 23) #5
  br i1 %10, label %11, label %145

11:                                               ; preds = %9, %7, %3
  %12 = icmp ugt i32 %6, 7
  br i1 %12, label %145, label %15

13:                                               ; preds = %3
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %13, %11, %3
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  switch i32 %0, label %143 [
    i32 1, label %16
    i32 2, label %27
    i32 3, label %86
  ]

16:                                               ; preds = %15
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call ptr @llvm.thread.pointer() #5
  br label %22

20:                                               ; preds = %16
  %21 = tail call ptr @find_task_by_vpid(i32 noundef %1) #5
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %21, %20 ], [ %19, %18 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %143, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @set_task_ioprio(ptr noundef nonnull %23, i32 noundef %2) #5
  br label %143

27:                                               ; preds = %15
  %28 = icmp eq i32 %1, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = tail call ptr @llvm.thread.pointer() #5
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 93
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr %struct.signal_struct, ptr %32, i32 0, i32 22, i32 2
  %34 = load ptr, ptr %33, align 8
  br label %37

35:                                               ; preds = %27
  %36 = tail call ptr @find_vpid(i32 noundef %1) #5
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %34, %29 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %37
  %41 = getelementptr %struct.pid, ptr %38, i32 0, i32 3, i32 2
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -1364
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %79, label %47

47:                                               ; preds = %71, %40
  %48 = phi ptr [ %76, %71 ], [ %44, %40 ]
  %49 = phi i32 [ %72, %71 ], [ -3, %40 ]
  %50 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 93
  %51 = load ptr, ptr %50, align 16
  %52 = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 3
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %71, label %60

55:                                               ; preds = %60
  %56 = load volatile ptr, ptr %61, align 4
  %57 = load ptr, ptr %50, align 16
  %58 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 3
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %71, label %60

60:                                               ; preds = %55, %47
  %61 = phi ptr [ %56, %55 ], [ %53, %47 ]
  %62 = getelementptr i8, ptr %61, i32 -1388
  %63 = tail call i32 @set_task_ioprio(ptr noundef %62, i32 noundef %2) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %55, label %65

65:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !10
  %66 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !11
  %67 = extractvalue { i32, i32 } %66, 0
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  br label %70

70:                                               ; preds = %69, %65
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %143

71:                                               ; preds = %55, %47
  %72 = phi i32 [ %49, %47 ], [ 0, %55 ]
  %73 = getelementptr %struct.task_struct, ptr %48, i32 0, i32 63, i32 2
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = getelementptr i8, ptr %74, i32 -1364
  %77 = icmp eq ptr %76, null
  %78 = or i1 %75, %77
  br i1 %78, label %79, label %47

79:                                               ; preds = %71, %40, %37
  %80 = phi i32 [ -3, %37 ], [ -3, %40 ], [ %72, %71 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !10
  %81 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !11
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  br label %85

85:                                               ; preds = %84, %79
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %143

86:                                               ; preds = %15
  %87 = insertvalue [1 x i32] poison, i32 %1, 0
  %88 = icmp eq i32 %1, -1
  br i1 %88, label %143, label %89

89:                                               ; preds = %86
  %90 = icmp eq i32 %1, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %92 = tail call ptr @llvm.thread.pointer() #5
  %93 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 83
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.cred, ptr %94, i32 0, i32 20
  %96 = load ptr, ptr %95, align 4
  br label %99

97:                                               ; preds = %89
  %98 = tail call ptr @find_user([1 x i32] %87) #5
  br label %99

99:                                               ; preds = %97, %91
  %100 = phi ptr [ %98, %97 ], [ %96, %91 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %143, label %102

102:                                              ; preds = %99
  %103 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %104 = getelementptr i8, ptr %103, i32 -1116
  %105 = icmp eq ptr %104, @init_task
  br i1 %105, label %140, label %111

106:                                              ; preds = %134, %111
  %107 = phi i32 [ %113, %111 ], [ %135, %134 ]
  %108 = load volatile ptr, ptr %112, align 4
  %109 = getelementptr i8, ptr %108, i32 -1116
  %110 = icmp eq ptr %109, @init_task
  br i1 %110, label %140, label %111

111:                                              ; preds = %106, %102
  %112 = phi ptr [ %108, %106 ], [ %103, %102 ]
  %113 = phi i32 [ %107, %106 ], [ -3, %102 ]
  %114 = getelementptr i8, ptr %112, i32 500
  %115 = load ptr, ptr %114, align 16
  %116 = getelementptr inbounds %struct.signal_struct, ptr %115, i32 0, i32 3
  %117 = load volatile ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %106, label %119

119:                                              ; preds = %134, %111
  %120 = phi ptr [ %136, %134 ], [ %117, %111 ]
  %121 = phi i32 [ %135, %134 ], [ %113, %111 ]
  %122 = getelementptr i8, ptr %120, i32 -1388
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %123 = getelementptr i8, ptr %120, i32 168
  %124 = load volatile ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.cred, ptr %124, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %127 = icmp eq i32 %126, %1
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = tail call i32 @__task_pid_nr_ns(ptr noundef %122, i32 noundef 0, ptr noundef null) #5
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = tail call i32 @set_task_ioprio(ptr noundef %122, i32 noundef %2) #5
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %131, %128, %119
  %135 = phi i32 [ 0, %131 ], [ %121, %128 ], [ %121, %119 ]
  %136 = load volatile ptr, ptr %120, align 4
  %137 = load ptr, ptr %114, align 16
  %138 = getelementptr inbounds %struct.signal_struct, ptr %137, i32 0, i32 3
  %139 = icmp eq ptr %136, %138
  br i1 %139, label %106, label %119

140:                                              ; preds = %131, %106, %102
  %141 = phi i32 [ -3, %102 ], [ %132, %131 ], [ %107, %106 ]
  br i1 %90, label %143, label %142

142:                                              ; preds = %140
  tail call void @free_uid(ptr noundef nonnull %100) #5
  br label %143

143:                                              ; preds = %142, %140, %99, %86, %85, %70, %25, %22, %15
  %144 = phi i32 [ %141, %142 ], [ %141, %140 ], [ -3, %99 ], [ -3, %86 ], [ %63, %70 ], [ %80, %85 ], [ %26, %25 ], [ -3, %22 ], [ -22, %15 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  br label %145

145:                                              ; preds = %143, %13, %11, %9, %3
  %146 = phi i32 [ %144, %143 ], [ -22, %3 ], [ -22, %13 ], [ -22, %11 ], [ -1, %9 ]
  ret i32 %146
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ioprio_best(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
  %3 = icmp sgt i16 %0, 8191
  %4 = select i1 %3, i16 %0, i16 16388
  %5 = icmp sgt i16 %1, 8191
  %6 = select i1 %5, i16 %1, i16 16388
  %7 = tail call i16 @llvm.umin.i16(i16 %4, i16 %6)
  %8 = zext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ioprio_get(i32 noundef %0, i32 noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  switch i32 %0, label %177 [
    i32 1, label %3
    i32 2, label %25
    i32 3, label %99
  ]

3:                                                ; preds = %2
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #5
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @find_task_by_vpid(i32 noundef %1) #5
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %177, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %13) #5
  %14 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 118
  %15 = load ptr, ptr %14, align 32
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.io_context, ptr %15, i32 0, i32 2
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %20, %17 ], [ 16388, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %23 = load i16, ptr %13, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  br label %177

25:                                               ; preds = %2
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = tail call ptr @llvm.thread.pointer() #5
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 93
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr %struct.signal_struct, ptr %30, i32 0, i32 22, i32 2
  %32 = load ptr, ptr %31, align 8
  br label %35

33:                                               ; preds = %25
  %34 = tail call ptr @find_vpid(i32 noundef %1) #5
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %34, %33 ], [ %32, %27 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %92, label %38

38:                                               ; preds = %35
  %39 = getelementptr %struct.pid, ptr %36, i32 0, i32 3, i32 2
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -1364
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %92, label %45

45:                                               ; preds = %84, %38
  %46 = phi ptr [ %89, %84 ], [ %42, %38 ]
  %47 = phi i32 [ %85, %84 ], [ -3, %38 ]
  %48 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 93
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr inbounds %struct.signal_struct, ptr %49, i32 0, i32 3
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %84, label %53

53:                                               ; preds = %78, %45
  %54 = phi ptr [ %80, %78 ], [ %51, %45 ]
  %55 = phi i32 [ %79, %78 ], [ %47, %45 ]
  %56 = getelementptr i8, ptr %54, i32 324
  tail call void @_raw_spin_lock(ptr noundef %56) #5
  %57 = getelementptr i8, ptr %54, i32 372
  %58 = load ptr, ptr %57, align 32
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.io_context, ptr %58, i32 0, i32 2
  %62 = load i16, ptr %61, align 4
  %63 = zext i16 %62 to i32
  br label %64

64:                                               ; preds = %60, %53
  %65 = phi i32 [ %63, %60 ], [ 16388, %53 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %66 = load i16, ptr %56, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %56, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %68 = icmp eq i32 %55, -3
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = trunc i32 %55 to i16
  %71 = trunc i32 %65 to i16
  %72 = icmp sgt i16 %70, 8191
  %73 = select i1 %72, i16 %70, i16 16388
  %74 = icmp sgt i16 %71, 8191
  %75 = select i1 %74, i16 %71, i16 16388
  %76 = tail call i16 @llvm.umin.i16(i16 %73, i16 %75) #5
  %77 = zext i16 %76 to i32
  br label %78

78:                                               ; preds = %69, %64
  %79 = phi i32 [ %77, %69 ], [ %65, %64 ]
  %80 = load volatile ptr, ptr %54, align 4
  %81 = load ptr, ptr %48, align 16
  %82 = getelementptr inbounds %struct.signal_struct, ptr %81, i32 0, i32 3
  %83 = icmp eq ptr %80, %82
  br i1 %83, label %84, label %53

84:                                               ; preds = %78, %45
  %85 = phi i32 [ %47, %45 ], [ %79, %78 ]
  %86 = getelementptr %struct.task_struct, ptr %46, i32 0, i32 63, i32 2
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = getelementptr i8, ptr %87, i32 -1364
  %90 = icmp eq ptr %89, null
  %91 = or i1 %88, %90
  br i1 %91, label %92, label %45

92:                                               ; preds = %84, %38, %35
  %93 = phi i32 [ -3, %35 ], [ -3, %38 ], [ %85, %84 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #5, !srcloc !10
  %94 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #5, !srcloc !11
  %95 = extractvalue { i32, i32 } %94, 0
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  br label %98

98:                                               ; preds = %97, %92
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %177

99:                                               ; preds = %2
  %100 = icmp eq i32 %1, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %99
  %102 = tail call ptr @llvm.thread.pointer() #5
  %103 = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 83
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.cred, ptr %104, i32 0, i32 20
  %106 = load ptr, ptr %105, align 4
  br label %110

107:                                              ; preds = %99
  %108 = insertvalue [1 x i32] poison, i32 %1, 0
  %109 = tail call ptr @find_user([1 x i32] %108) #5
  br label %110

110:                                              ; preds = %107, %101
  %111 = phi ptr [ %109, %107 ], [ %106, %101 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %177, label %113

113:                                              ; preds = %110
  %114 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %115 = getelementptr i8, ptr %114, i32 -1116
  %116 = icmp eq ptr %115, @init_task
  br i1 %116, label %174, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.user_struct, ptr %111, i32 0, i32 5
  br label %124

119:                                              ; preds = %168, %124
  %120 = phi i32 [ %126, %124 ], [ %169, %168 ]
  %121 = load volatile ptr, ptr %125, align 4
  %122 = getelementptr i8, ptr %121, i32 -1116
  %123 = icmp eq ptr %122, @init_task
  br i1 %123, label %174, label %124

124:                                              ; preds = %119, %117
  %125 = phi ptr [ %114, %117 ], [ %121, %119 ]
  %126 = phi i32 [ -3, %117 ], [ %120, %119 ]
  %127 = getelementptr i8, ptr %125, i32 500
  %128 = load ptr, ptr %127, align 16
  %129 = getelementptr inbounds %struct.signal_struct, ptr %128, i32 0, i32 3
  %130 = load volatile ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %129
  br i1 %131, label %119, label %132

132:                                              ; preds = %168, %124
  %133 = phi ptr [ %170, %168 ], [ %130, %124 ]
  %134 = phi i32 [ %169, %168 ], [ %126, %124 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %135 = getelementptr i8, ptr %133, i32 168
  %136 = load volatile ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.cred, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  %139 = load i32, ptr %118, align 8
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %168

141:                                              ; preds = %132
  %142 = getelementptr i8, ptr %133, i32 -1388
  %143 = tail call i32 @__task_pid_nr_ns(ptr noundef %142, i32 noundef 0, ptr noundef null) #5
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %141
  %146 = getelementptr i8, ptr %133, i32 324
  tail call void @_raw_spin_lock(ptr noundef %146) #5
  %147 = getelementptr i8, ptr %133, i32 372
  %148 = load ptr, ptr %147, align 32
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.io_context, ptr %148, i32 0, i32 2
  %152 = load i16, ptr %151, align 4
  %153 = zext i16 %152 to i32
  br label %154

154:                                              ; preds = %150, %145
  %155 = phi i32 [ %153, %150 ], [ 16388, %145 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %156 = load i16, ptr %146, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %146, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %158 = icmp eq i32 %134, -3
  br i1 %158, label %168, label %159

159:                                              ; preds = %154
  %160 = trunc i32 %134 to i16
  %161 = trunc i32 %155 to i16
  %162 = icmp sgt i16 %160, 8191
  %163 = select i1 %162, i16 %160, i16 16388
  %164 = icmp sgt i16 %161, 8191
  %165 = select i1 %164, i16 %161, i16 16388
  %166 = tail call i16 @llvm.umin.i16(i16 %163, i16 %165) #5
  %167 = zext i16 %166 to i32
  br label %168

168:                                              ; preds = %159, %154, %141, %132
  %169 = phi i32 [ %167, %159 ], [ %134, %141 ], [ %134, %132 ], [ %155, %154 ]
  %170 = load volatile ptr, ptr %133, align 4
  %171 = load ptr, ptr %127, align 16
  %172 = getelementptr inbounds %struct.signal_struct, ptr %171, i32 0, i32 3
  %173 = icmp eq ptr %170, %172
  br i1 %173, label %119, label %132

174:                                              ; preds = %119, %113
  %175 = phi i32 [ -3, %113 ], [ %120, %119 ]
  br i1 %100, label %177, label %176

176:                                              ; preds = %174
  tail call void @free_uid(ptr noundef nonnull %111) #5
  br label %177

177:                                              ; preds = %176, %174, %110, %98, %21, %9, %2
  %178 = phi i32 [ %175, %176 ], [ %175, %174 ], [ -3, %110 ], [ %93, %98 ], [ %22, %21 ], [ -3, %9 ], [ -22, %2 ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !15
  ret i32 %178
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_task_ioprio(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_user([1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 2149301993}
!9 = !{i64 2148911103}
!10 = !{i64 734617, i64 2148224588, i64 2148224614, i64 2148224661, i64 2148224683, i64 2148224711, i64 2148224731}
!11 = !{i64 1414527, i64 1414550, i64 1414570, i64 1414594, i64 1414610}
!12 = !{i64 2148899045}
!13 = !{i64 2148899120, i64 2148899147, i64 2148899194, i64 2148899216, i64 2148899244, i64 2148899264}
!14 = !{i64 2148948706}
!15 = !{i64 2149302210}
!16 = !{i64 2148903221}
!17 = !{i64 2148926224}
