; ModuleID = '/llk/IR/kernel/sched/cputime.c_pt.bc'
source_filename = "../kernel/sched/cputime.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_cputime_adjusted:\09\09\09\09\09"
module asm "\09.asciz \09\22task_cputime_adjusted\22\09\09\09\09\09"
module asm "__kstrtabns_task_cputime_adjusted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_cpustat = type { [10 x i64] }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.css_set = type { [0 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [0 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type {}
%struct.task_cputime = type { i64, i64, i64 }

@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@__kstrtab_task_cputime_adjusted = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_cputime_adjusted = external dso_local constant [0 x i8], align 1
@__ksymtab_task_cputime_adjusted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_cputime_adjusted to i32), ptr @__kstrtab_task_cputime_adjusted, ptr @__kstrtabns_task_cputime_adjusted }, section "___ksymtab_gpl+task_cputime_adjusted", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_task_cputime_adjusted], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_user_time(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 70
  %4 = load i64, ptr %3, align 8
  %5 = add i64 %4, %1
  store i64 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 21, i32 1
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #7, !srcloc !9
  %17 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) %16, ptr nonnull %16, i64 %1, ptr nonnull elementtype(i64) %16) #7, !srcloc !10
  br label %18

18:                                               ; preds = %15, %11, %2
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -120
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = getelementptr [10 x i64], ptr @kernel_cpustat, i32 0, i32 %23
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #4, !srcloc !11
  %29 = add i32 %28, %25
  %30 = inttoptr i32 %29 to ptr
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %1
  store i64 %32, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %34 = load volatile ptr, ptr %33, align 16
  %35 = getelementptr inbounds %struct.css_set, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %36, i32 0, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %18
  tail call void @__cgroup_account_cputime_field(ptr noundef %36, i32 noundef %23, i64 noundef %1) #7
  br label %41

41:                                               ; preds = %40, %18
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_guest_time(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #4, !srcloc !11
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 70
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, %1
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 21, i32 1
  %12 = load volatile i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #7, !srcloc !9
  %20 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) %19, ptr nonnull %19, i64 %1, ptr nonnull elementtype(i64) %19) #7, !srcloc !10
  br label %21

21:                                               ; preds = %18, %14, %2
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 72
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, %1
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -120
  %28 = icmp sgt i32 %27, 0
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #4
  br i1 %28, label %32, label %46

32:                                               ; preds = %21
  %33 = add i32 %31, ptrtoint (ptr getelementptr inbounds (%struct.kernel_cpustat, ptr @kernel_cpustat, i32 0, i32 0, i32 1) to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %1
  store i64 %36, ptr %34, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %38 = load volatile ptr, ptr %37, align 16
  %39 = getelementptr inbounds %struct.css_set, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %40, i32 0, i32 12
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  tail call void @__cgroup_account_cputime_field(ptr noundef %40, i32 noundef 1, i64 noundef %1) #7
  br label %45

45:                                               ; preds = %44, %32
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %60

46:                                               ; preds = %21
  %47 = add i32 %31, ptrtoint (ptr @kernel_cpustat to i32)
  %48 = inttoptr i32 %47 to ptr
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %49, %1
  store i64 %50, ptr %48, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %51 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %52 = load volatile ptr, ptr %51, align 16
  %53 = getelementptr inbounds %struct.css_set, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %54, i32 0, i32 12
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  tail call void @__cgroup_account_cputime_field(ptr noundef %54, i32 noundef 0, i64 noundef %1) #7
  br label %59

59:                                               ; preds = %58, %46
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %60

60:                                               ; preds = %59, %45
  %61 = phi i32 [ 8, %59 ], [ 9, %45 ]
  %62 = add i32 %5, ptrtoint (ptr @kernel_cpustat to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr i64, ptr %63, i32 %61
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %1
  store i64 %66, ptr %64, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_system_index_time(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 71
  %5 = load i64, ptr %4, align 16
  %6 = add i64 %5, %1
  store i64 %6, ptr %4, align 16
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 21, i32 1
  %10 = load volatile i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 20, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #7, !srcloc !9
  %18 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %17, ptr %17, i64 %1, ptr elementtype(i64) %17) #7, !srcloc !10
  br label %19

19:                                               ; preds = %16, %12, %3
  %20 = getelementptr [10 x i64], ptr @kernel_cpustat, i32 0, i32 %2
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #4, !srcloc !11
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = load i64, ptr %26, align 8
  %28 = add i64 %27, %1
  store i64 %28, ptr %26, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %29 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %30 = load volatile ptr, ptr %29, align 16
  %31 = getelementptr inbounds %struct.css_set, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %32, i32 0, i32 12
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  tail call void @__cgroup_account_cputime_field(ptr noundef %32, i32 noundef %2, i64 noundef %1) #7
  br label %37

37:                                               ; preds = %36, %19
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_system_time(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = tail call ptr @llvm.thread.pointer() #7
  br i1 %7, label %21, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 15728640
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 983040
  %15 = or i32 %14, %12
  %16 = load volatile i32, ptr %10, align 4
  %17 = and i32 %16, 65280
  %18 = or i32 %15, %17
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @account_guest_time(ptr noundef %0, i64 noundef %2)
  br label %67

21:                                               ; preds = %9, %3
  %22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 983040
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 256
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 2, i32 3
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ 4, %21 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 71
  %34 = load i64, ptr %33, align 16
  %35 = add i64 %34, %2
  store i64 %35, ptr %33, align 16
  %36 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr inbounds %struct.signal_struct, ptr %37, i32 0, i32 21, i32 1
  %39 = load volatile i32, ptr %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.signal_struct, ptr %37, i32 0, i32 20, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #7, !srcloc !9
  %47 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %46, ptr %46, i64 %2, ptr elementtype(i64) %46) #7, !srcloc !10
  br label %48

48:                                               ; preds = %45, %41, %31
  %49 = getelementptr [10 x i64], ptr @kernel_cpustat, i32 0, i32 %32
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #4, !srcloc !11
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = load i64, ptr %55, align 8
  %57 = add i64 %56, %2
  store i64 %57, ptr %55, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %58 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %59 = load volatile ptr, ptr %58, align 16
  %60 = getelementptr inbounds %struct.css_set, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %61, i32 0, i32 12
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %48
  tail call void @__cgroup_account_cputime_field(ptr noundef %61, i32 noundef %32, i64 noundef %2) #7
  br label %66

66:                                               ; preds = %65, %48
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %67

67:                                               ; preds = %66, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_steal_time(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #4, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @kernel_cpustat to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr i64, ptr %6, i32 7
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %0
  store i64 %9, ptr %7, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_idle_time(i64 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #4, !srcloc !11
  %5 = add i32 %4, ptrtoint (ptr @kernel_cpustat to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.rq, ptr %8, i32 0, i32 25
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = select i1 %11, i32 6, i32 5
  %13 = getelementptr i64, ptr %6, i32 %12
  %14 = load i64, ptr %13, align 8
  %15 = add i64 %14, %0
  store i64 %15, ptr %13, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thread_group_cputime(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rq_flags, align 8
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %5 = load ptr, ptr %4, align 16
  %6 = tail call ptr @llvm.thread.pointer() #7
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %8 = load ptr, ptr %7, align 16
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i64 @task_sched_runtime(ptr noundef %6) #7
  br label %12

12:                                               ; preds = %10, %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %13 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 26
  %14 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 26, i32 1
  %15 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 27
  %16 = getelementptr inbounds %struct.task_cputime, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 28
  %18 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 49
  %19 = getelementptr inbounds %struct.task_cputime, ptr %1, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rq_flags, ptr %3, i32 0, i32 2
  %21 = load volatile i32, ptr %13, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %12
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !15
  %25 = load volatile i32, ptr %13, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %12
  %29 = phi i32 [ %21, %12 ], [ %25, %24 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  br label %32

30:                                               ; preds = %75
  %31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #7
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ 1, %30 ]
  %34 = phi i32 [ 0, %28 ], [ %31, %30 ]
  %35 = load i64, ptr %15, align 8
  store i64 %35, ptr %16, align 8
  %36 = load i64, ptr %17, align 8
  store i64 %36, ptr %1, align 8
  %37 = load i64, ptr %18, align 8
  store i64 %37, ptr %19, align 8
  %38 = load ptr, ptr %4, align 16
  %39 = getelementptr inbounds %struct.signal_struct, ptr %38, i32 0, i32 3
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %72, label %42

42:                                               ; preds = %69, %32
  %43 = phi i64 [ %71, %69 ], [ %36, %32 ]
  %44 = phi i64 [ %70, %69 ], [ %35, %32 ]
  %45 = phi ptr [ %65, %69 ], [ %40, %32 ]
  %46 = getelementptr i8, ptr %45, i32 -1388
  %47 = getelementptr i8, ptr %45, i32 28
  %48 = load i64, ptr %47, align 8
  %49 = getelementptr i8, ptr %45, i32 36
  %50 = load i64, ptr %49, align 16
  %51 = add i64 %44, %48
  store i64 %51, ptr %16, align 8
  %52 = add i64 %43, %50
  store i64 %52, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !17
  %53 = call ptr @task_rq_lock(ptr noundef %46, ptr noundef nonnull %3) #7
  %54 = getelementptr i8, ptr %45, i32 -708
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.rq, ptr %53, i32 0, i32 19
  %57 = load i32, ptr %56, align 32
  %58 = icmp ugt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  store i32 4, ptr %20, align 4
  br label %60

60:                                               ; preds = %59, %42
  call void @raw_spin_rq_unlock(ptr noundef %53) #7
  %61 = getelementptr i8, ptr %45, i32 328
  %62 = load i32, ptr %3, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %62) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  %63 = load i64, ptr %19, align 8
  %64 = add i64 %63, %55
  store i64 %64, ptr %19, align 8
  %65 = load volatile ptr, ptr %45, align 4
  %66 = load ptr, ptr %4, align 16
  %67 = getelementptr inbounds %struct.signal_struct, ptr %66, i32 0, i32 3
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i64, ptr %16, align 8
  %71 = load i64, ptr %1, align 8
  br label %42

72:                                               ; preds = %60, %32
  %73 = and i32 %33, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !18
  %76 = load volatile i32, ptr %13, align 4
  %77 = icmp eq i32 %76, %33
  br i1 %77, label %79, label %30

78:                                               ; preds = %72
  call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %34) #7
  br label %79

79:                                               ; preds = %78, %75
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @task_sched_runtime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_process_tick(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %44, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 70
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, 10000000
  store i64 %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 21, i32 1
  %11 = load volatile i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #7, !srcloc !9
  %19 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) %18, ptr nonnull %18, i64 10000000, ptr nonnull elementtype(i64) %18) #7, !srcloc !10
  br label %20

20:                                               ; preds = %17, %13, %4
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -120
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr [10 x i64], ptr @kernel_cpustat, i32 0, i32 %25
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #4, !srcloc !11
  %31 = add i32 %30, %27
  %32 = inttoptr i32 %31 to ptr
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %33, 10000000
  store i64 %34, ptr %32, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %35 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 123
  %36 = load volatile ptr, ptr %35, align 16
  %37 = getelementptr inbounds %struct.css_set, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %38, i32 0, i32 12
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %20
  tail call void @__cgroup_account_cputime_field(ptr noundef %38, i32 noundef %25, i64 noundef 10000000) #7
  br label %43

43:                                               ; preds = %42, %20
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %81

44:                                               ; preds = %2
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #4, !srcloc !11
  %48 = add i32 %47, ptrtoint (ptr @runqueues to i32)
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.rq, ptr %49, i32 0, i32 15
  %51 = load ptr, ptr %50, align 16
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = tail call ptr @llvm.thread.pointer() #7
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 15728640
  %58 = load volatile i32, ptr %55, align 4
  %59 = and i32 %58, 983040
  %60 = or i32 %59, %57
  %61 = load volatile i32, ptr %55, align 4
  %62 = and i32 %61, 65280
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %63, 65536
  br i1 %64, label %66, label %65

65:                                               ; preds = %53, %44
  tail call void @account_system_time(ptr noundef %0, i32 noundef 65536, i64 noundef 10000000)
  br label %81

66:                                               ; preds = %53
  %67 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %68 = inttoptr i32 %67 to ptr
  %69 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %68) #4, !srcloc !11
  %70 = add i32 %69, ptrtoint (ptr @kernel_cpustat to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = add i32 %69, ptrtoint (ptr @runqueues to i32)
  %73 = inttoptr i32 %72 to ptr
  %74 = getelementptr inbounds %struct.rq, ptr %73, i32 0, i32 25
  %75 = load volatile i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = select i1 %76, i32 6, i32 5
  %78 = getelementptr i64, ptr %71, i32 %77
  %79 = load i64, ptr %78, align 8
  %80 = add i64 %79, 10000000
  store i64 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %66, %65, %43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @account_idle_ticks(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, 10000000
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #4, !srcloc !11
  %9 = add i32 %8, ptrtoint (ptr @kernel_cpustat to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 25
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = select i1 %15, i32 6, i32 5
  %17 = getelementptr i64, ptr %10, i32 %16
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, %5
  store i64 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cputime_adjust(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.prev_cputime, ptr %1, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %7 = getelementptr inbounds %struct.task_cputime, ptr %0, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %struct.prev_cputime, ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr %1, align 8
  %12 = add i64 %11, %10
  %13 = icmp ult i64 %12, %8
  br i1 %13, label %14, label %36

14:                                               ; preds = %4
  %15 = load i64, ptr %0, align 8
  %16 = getelementptr inbounds %struct.task_cputime, ptr %0, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = add i64 %17, %15
  %23 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %15, i64 noundef %8, i64 noundef %22) #7
  %24 = load i64, ptr %9, align 8
  %25 = load i64, ptr %1, align 8
  br label %26

26:                                               ; preds = %21, %19, %14
  %27 = phi i64 [ %25, %21 ], [ %11, %14 ], [ %11, %19 ]
  %28 = phi i64 [ %24, %21 ], [ %10, %14 ], [ %10, %19 ]
  %29 = phi i64 [ %23, %21 ], [ 0, %14 ], [ %8, %19 ]
  %30 = tail call i64 @llvm.umax.i64(i64 %29, i64 %28)
  %31 = sub i64 %8, %30
  %32 = icmp ult i64 %31, %27
  %33 = sub i64 %8, %27
  %34 = tail call i64 @llvm.umax.i64(i64 %31, i64 %27)
  %35 = select i1 %32, i64 %33, i64 %30
  store i64 %35, ptr %9, align 8
  store i64 %34, ptr %1, align 8
  br label %36

36:                                               ; preds = %26, %4
  %37 = phi i64 [ %11, %4 ], [ %34, %26 ]
  store i64 %37, ptr %2, align 8
  %38 = load i64, ptr %9, align 8
  store i64 %38, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mul_u64_u64_div_u64(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_cputime_adjusted(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 70
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 71
  %9 = load i64, ptr %8, align 16
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 73
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 73, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 73, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %10, align 8
  %16 = add i64 %15, %14
  %17 = icmp ult i64 %16, %5
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = icmp eq i64 %7, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = add i64 %9, %7
  %24 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %9, i64 noundef %5, i64 noundef %23) #7
  %25 = load i64, ptr %13, align 8
  %26 = load i64, ptr %10, align 8
  br label %27

27:                                               ; preds = %22, %20, %18
  %28 = phi i64 [ %26, %22 ], [ %15, %18 ], [ %15, %20 ]
  %29 = phi i64 [ %25, %22 ], [ %14, %18 ], [ %14, %20 ]
  %30 = phi i64 [ %24, %22 ], [ 0, %18 ], [ %5, %20 ]
  %31 = tail call i64 @llvm.umax.i64(i64 %30, i64 %29) #7
  %32 = sub i64 %5, %31
  %33 = icmp ult i64 %32, %28
  %34 = sub i64 %5, %28
  %35 = tail call i64 @llvm.umax.i64(i64 %32, i64 %28) #7
  %36 = select i1 %33, i64 %34, i64 %31
  store i64 %36, ptr %13, align 8
  store i64 %35, ptr %10, align 8
  br label %37

37:                                               ; preds = %27, %3
  %38 = phi i64 [ %15, %3 ], [ %35, %27 ]
  store i64 %38, ptr %1, align 8
  %39 = load i64, ptr %13, align 8
  store i64 %39, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #7
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @thread_group_cputime_adjusted(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.task_cputime, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !17
  call void @thread_group_cputime(ptr noundef %0, ptr noundef nonnull %4)
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 33
  %8 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 33, i32 2
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #7
  %10 = getelementptr inbounds %struct.task_cputime, ptr %4, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 33, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = load i64, ptr %7, align 8
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %11
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i64, ptr %4, align 8
  %19 = getelementptr inbounds %struct.task_cputime, ptr %4, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %18, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = icmp eq i64 %20, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = add i64 %20, %18
  %26 = tail call i64 @mul_u64_u64_div_u64(i64 noundef %18, i64 noundef %11, i64 noundef %25) #7
  %27 = load i64, ptr %12, align 8
  %28 = load i64, ptr %7, align 8
  br label %29

29:                                               ; preds = %24, %22, %17
  %30 = phi i64 [ %28, %24 ], [ %14, %17 ], [ %14, %22 ]
  %31 = phi i64 [ %27, %24 ], [ %13, %17 ], [ %13, %22 ]
  %32 = phi i64 [ %26, %24 ], [ 0, %17 ], [ %11, %22 ]
  %33 = tail call i64 @llvm.umax.i64(i64 %32, i64 %31) #7
  %34 = sub i64 %11, %33
  %35 = icmp ult i64 %34, %30
  %36 = sub i64 %11, %30
  %37 = tail call i64 @llvm.umax.i64(i64 %34, i64 %30) #7
  %38 = select i1 %35, i64 %36, i64 %33
  store i64 %38, ptr %12, align 8
  store i64 %37, ptr %7, align 8
  br label %39

39:                                               ; preds = %29, %3
  %40 = phi i64 [ %14, %3 ], [ %37, %29 ]
  store i64 %40, ptr %1, align 8
  %41 = load i64, ptr %12, align 8
  store i64 %41, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cgroup_account_cputime_field(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
!9 = !{i64 624432, i64 2148125998, i64 2148126024, i64 2148126071, i64 2148126093, i64 2148126121, i64 2148126141}
!10 = !{i64 2148200492, i64 2148200520, i64 2148200554, i64 2148200588, i64 2148200622, i64 2148200658, i64 2148200681}
!11 = !{i64 660284}
!12 = !{i64 2149046446}
!13 = !{i64 2149046663}
!14 = !{i64 2149701076}
!15 = !{i64 2149700918}
!16 = !{i64 2149701220}
!17 = !{!"auto-init"}
!18 = !{i64 2149691708}
