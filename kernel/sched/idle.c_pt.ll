; ModuleID = '/llk/IR/kernel/sched/idle.c_pt.bc'
source_filename = "../kernel/sched/idle.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_play_idle_precise:\09\09\09\09\09"
module asm "\09.asciz \09\22play_idle_precise\22\09\09\09\09\09"
module asm "__kstrtabns_play_idle_precise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.122 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.122 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.123, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.123 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.124, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.124 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sched_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.idle_timer = type { %struct.hrtimer, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.77, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@cpu_idle_force_poll = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@cpu_idle_poll_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/sched/idle.c\00", align 1
@__setup_str_cpu_idle_poll_setup = internal constant [6 x i8] c"nohlt\00", section ".init.rodata", align 1
@__setup_cpu_idle_poll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cpu_idle_poll_setup, ptr @cpu_idle_poll_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_cpu_idle_nopoll_setup = internal constant [4 x i8] c"hlt\00", section ".init.rodata", align 1
@__setup_cpu_idle_nopoll_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_cpu_idle_nopoll_setup, ptr @cpu_idle_nopoll_setup, i32 0 }, section ".init.setup", align 4
@__cpuidle_text_start = external dso_local global [0 x i8], align 1
@__cpuidle_text_end = external dso_local global [0 x i8], align 1
@play_idle_precise.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@play_idle_precise.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_play_idle_precise = external dso_local constant [0 x i8], align 1
@__kstrtabns_play_idle_precise = external dso_local constant [0 x i8], align 1
@__ksymtab_play_idle_precise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @play_idle_precise to i32), ptr @__kstrtab_play_idle_precise, ptr @__kstrtabns_play_idle_precise }, section "___ksymtab_gpl+play_idle_precise", align 4
@idle_sched_class = dso_local local_unnamed_addr constant %struct.sched_class { ptr null, ptr @dequeue_task_idle, ptr null, ptr null, ptr @check_preempt_curr_idle, ptr @pick_next_task_idle, ptr @put_prev_task_idle, ptr @set_next_task_idle, ptr @balance_idle, ptr @select_task_rq_idle, ptr @pick_task_idle, ptr null, ptr null, ptr @set_cpus_allowed_common, ptr null, ptr null, ptr null, ptr @task_tick_idle, ptr null, ptr null, ptr null, ptr @switched_to_idle, ptr @prio_changed_idle, ptr null, ptr @update_curr_idle }, section "__idle_sched_class", align 4
@__tracepoint_cpu_idle = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpuidle_idle_call.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@s2idle_state = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"\013bad: scheduling from the idle thread!\0A\00", align 1
@balance_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_play_idle_precise, ptr @__setup_cpu_idle_nopoll_setup, ptr @__setup_cpu_idle_poll_setup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_idle_set_state(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #9, !srcloc !9
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 59
  store ptr %0, ptr %7, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_idle_poll_ctrl(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @cpu_idle_force_poll, align 4
  br i1 %0, label %3, label %5

3:                                                ; preds = %1
  %4 = add i32 %2, 1
  store i32 %4, ptr @cpu_idle_force_poll, align 4
  br label %12

5:                                                ; preds = %1
  %6 = add i32 %2, -1
  store i32 %6, ptr @cpu_idle_force_poll, align 4
  %7 = icmp slt i32 %6, 0
  %8 = load i1, ptr @cpu_idle_poll_ctrl.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @cpu_idle_poll_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpu_idle_poll_setup(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 1, ptr @cpu_idle_force_poll, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpu_idle_nopoll_setup(ptr nocapture noundef readnone %0) #3 section ".init.text" {
  store i32 0, ptr @cpu_idle_force_poll, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_prepare() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_enter() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_exit() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle_dead() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_cpu_idle() local_unnamed_addr #0 {
  store i32 1, ptr @cpu_idle_force_poll, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @default_idle_call() local_unnamed_addr #0 section ".cpuidle.text" {
  %1 = tail call ptr @llvm.thread.pointer() #13
  %2 = load volatile i32, ptr %1, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  br label %35

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = lshr i32 %8, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %8, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %20 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef 1, i32 noundef %8) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %21

21:                                               ; preds = %19, %11, %6
  tail call void @rcu_idle_enter() #13
  tail call void @arch_cpu_idle()
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !14
  tail call void @rcu_idle_exit() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  %22 = load i32, ptr %7, align 8
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = lshr i32 %22, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %34 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef -1, i32 noundef %22) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %35

35:                                               ; preds = %33, %25, %21, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_idle_exit() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_in_idle(i32 noundef %0) local_unnamed_addr #4 {
  %2 = icmp uge i32 %0, ptrtoint (ptr @__cpuidle_text_start to i32)
  %3 = icmp ult i32 %0, ptrtoint (ptr @__cpuidle_text_end to i32)
  %4 = and i1 %2, %3
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @play_idle_precise(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.idle_timer, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !15
  %4 = tail call ptr @llvm.thread.pointer() #13
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 25
  %6 = load i32, ptr %5, align 64
  %7 = icmp ne i32 %6, 1
  %8 = load i1, ptr @play_idle_precise.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %2
  store i1 true, ptr @play_idle_precise.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 26
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 1
  %16 = load i1, ptr @play_idle_precise.__already_done.1, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %12
  store i1 true, ptr @play_idle_precise.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 9, ptr noundef null) #13
  br label %20

20:                                               ; preds = %19, %12
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @play_idle_precise.__already_done.2, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30, !prof !10

28:                                               ; preds = %20
  store i1 true, ptr @play_idle_precise.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #13
  %29 = load i32, ptr %21, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi i32 [ %29, %28 ], [ %22, %20 ]
  %32 = and i32 %31, 67108864
  %33 = icmp eq i32 %32, 0
  %34 = load i1, ptr @play_idle_precise.__already_done.3, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !10

37:                                               ; preds = %30
  store i1 true, ptr @play_idle_precise.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #13
  br label %38

38:                                               ; preds = %37, %30
  %39 = icmp eq i64 %0, 0
  %40 = load i1, ptr @play_idle_precise.__already_done.4, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %44, !prof !10

43:                                               ; preds = %38
  store i1 true, ptr @play_idle_precise.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 373, i32 noundef 9, ptr noundef null) #13
  br label %44

44:                                               ; preds = %43, %38
  %45 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %46 = load ptr, ptr %45, align 4
  %47 = icmp ne ptr %46, null
  %48 = load i1, ptr @play_idle_precise.__already_done.5, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !10

51:                                               ; preds = %44
  store i1 true, ptr @play_idle_precise.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef null) #13
  br label %52

52:                                               ; preds = %51, %44
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %53 = load i32, ptr %21, align 4
  %54 = or i32 %53, 2
  store i32 %54, ptr %21, align 4
  tail call void @cpuidle_use_deepest_state(i64 noundef %1) #13
  %55 = getelementptr inbounds %struct.idle_timer, ptr %3, i32 0, i32 1
  store i32 0, ptr %55, align 8
  call void @hrtimer_init(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 9) #13
  %56 = getelementptr inbounds %struct.hrtimer, ptr %3, i32 0, i32 2
  store ptr @idle_inject_timer_fn, ptr %56, align 8
  call void @hrtimer_start_range_ns(ptr noundef nonnull %3, i64 noundef %0, i64 noundef 0, i32 noundef 11) #13
  %57 = load volatile i32, ptr %55, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %59, %52
  call fastcc void @do_idle()
  %60 = load volatile i32, ptr %55, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %59, label %62

62:                                               ; preds = %59, %52
  call void @cpuidle_use_deepest_state(i64 noundef 0) #13
  %63 = load i32, ptr %21, align 4
  %64 = and i32 %63, -3
  store i32 %64, ptr %21, align 4
  %65 = load volatile i32, ptr %4, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_use_deepest_state(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @idle_inject_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.idle_timer, ptr %0, i32 0, i32 1
  store volatile i32 1, ptr %2, align 8
  %3 = tail call ptr @llvm.thread.pointer() #13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_idle() unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  tail call void @nohz_run_idle_balance(i32 noundef %4) #13
  tail call void @tick_nohz_idle_enter() #13
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %96

8:                                                ; preds = %0
  %9 = lshr i32 %4, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = and i32 %4, 31
  %12 = shl nuw i32 1, %11
  br label %13

13:                                               ; preds = %92, %8
  call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !18
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !14
  %14 = load volatile i32, ptr %10, align 4
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %13
  call void @tick_nohz_idle_stop_tick() #13
  call void @cpuhp_report_idle_dead() #13
  call void @arch_cpu_idle_dead()
  br label %18

18:                                               ; preds = %17, %13
  call void @arch_cpu_idle_enter()
  %19 = load i32, ptr @cpu_idle_force_poll, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @tick_check_broadcast_expired() #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18
  call void @tick_nohz_idle_restart_tick() #13
  call fastcc void @cpu_idle_poll()
  br label %92

25:                                               ; preds = %21
  %26 = call i32 @llvm.read_register.i32(metadata !0) #13
  %27 = inttoptr i32 %26 to ptr
  %28 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #9, !srcloc !9
  %29 = add i32 %28, ptrtoint (ptr @cpuidle_devices to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr %30, align 4
  %32 = call ptr @cpuidle_get_cpu_driver(ptr noundef %31) #13
  %33 = load volatile i32, ptr %2, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  br label %92

37:                                               ; preds = %25
  %38 = call zeroext i1 @cpuidle_not_available(ptr noundef %32, ptr noundef %31) #13
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  call void @tick_nohz_idle_stop_tick() #13
  call void @default_idle_call() #13
  br label %82

40:                                               ; preds = %37
  %41 = load i32, ptr @s2idle_state, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.cpuidle_device, ptr %31, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %64, label %54

47:                                               ; preds = %40
  %48 = load volatile i32, ptr %2, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @cpuidle_enter_s2idle(ptr noundef %32, ptr noundef %31) #13
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %82, label %54

54:                                               ; preds = %51, %47, %43
  %55 = phi i64 [ -1, %51 ], [ -1, %47 ], [ %45, %43 ]
  call void @tick_nohz_idle_stop_tick() #13
  %56 = call i32 @cpuidle_find_deepest_state(ptr noundef %32, ptr noundef %31, i64 noundef %55) #13
  %57 = load volatile i32, ptr %2, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.cpuidle_device, ptr %31, i32 0, i32 4
  store i64 0, ptr %61, align 8
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  br label %82

62:                                               ; preds = %54
  %63 = call i32 @cpuidle_enter(ptr noundef %32, ptr noundef %31, i32 noundef %56) #13
  br label %82

64:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #13
  store i8 1, ptr %1, align 1
  %65 = call i32 @cpuidle_select(ptr noundef %32, ptr noundef %31, ptr noundef nonnull %1) #13
  %66 = load i8, ptr %1, align 1, !range !19
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call zeroext i1 @tick_nohz_tick_stopped() #13
  br i1 %69, label %70, label %71

70:                                               ; preds = %68, %64
  call void @tick_nohz_idle_stop_tick() #13
  br label %72

71:                                               ; preds = %68
  call void @tick_nohz_idle_retain_tick() #13
  br label %72

72:                                               ; preds = %71, %70
  %73 = load volatile i32, ptr %2, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.cpuidle_device, ptr %31, i32 0, i32 4
  store i64 0, ptr %77, align 8
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  br label %80

78:                                               ; preds = %72
  %79 = call i32 @cpuidle_enter(ptr noundef %32, ptr noundef %31, i32 noundef %65) #13
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ -16, %76 ], [ %79, %78 ]
  call void @cpuidle_reflect(ptr noundef %31, i32 noundef %81) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #13
  br label %82

82:                                               ; preds = %80, %62, %60, %51, %39
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !20
  %84 = and i32 %83, 128
  %85 = icmp ne i32 %84, 0
  %86 = load i1, ptr @cpuidle_idle_call.__already_done, align 1
  %87 = xor i1 %86, true
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %90, !prof !10

89:                                               ; preds = %82
  store i1 true, ptr @cpuidle_idle_call.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #13
  br label %90

90:                                               ; preds = %89, %82
  br i1 %85, label %91, label %92

91:                                               ; preds = %90
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  br label %92

92:                                               ; preds = %91, %90, %36, %24
  call void @arch_cpu_idle_exit()
  %93 = load volatile i32, ptr %2, align 4
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %13, label %96

96:                                               ; preds = %92, %0
  call void @tick_nohz_idle_exit() #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !21
  call void @flush_smp_call_function_from_idle() #13
  call void @schedule_idle() #13
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_startup_entry(i32 noundef %0) local_unnamed_addr #6 {
  tail call void @arch_cpu_idle_prepare()
  tail call void @cpuhp_online_idle(i32 noundef %0) #13
  br label %2

2:                                                ; preds = %2, %1
  tail call fastcc void @do_idle()
  br label %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuhp_online_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @pick_next_task_idle(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 16
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @set_next_task_idle(ptr nocapture noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dequeue_task_idle(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  tail call void @raw_spin_rq_unlock(ptr noundef %0) #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  tail call void @dump_stack() #14
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !14
  tail call void @raw_spin_rq_lock_nested(ptr noundef %0, i32 noundef 0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @check_preempt_curr_idle(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  tail call void @resched_curr(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @put_prev_task_idle(ptr nocapture noundef %0, ptr nocapture noundef %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @balance_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i1, ptr @balance_idle.__already_done, align 1
  br i1 %4, label %6, label %5, !prof !22

5:                                                ; preds = %3
  store i1 true, ptr @balance_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #13
  br label %6

6:                                                ; preds = %5, %3
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @select_task_rq_idle(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @pick_task_idle(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 16
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cpus_allowed_common(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @task_tick_idle(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #4 {
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @switched_to_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #6 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/idle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 486, 0\0A.popsection", ""() #13, !srcloc !23
  unreachable
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @prio_changed_idle(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #6 {
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/idle.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 492, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @update_curr_idle(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cpu_idle(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nohz_run_idle_balance(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_stop_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuhp_report_idle_dead() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_check_broadcast_expired() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_restart_tick() local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpu_idle_poll() unnamed_addr #11 section ".cpuidle.text" {
  %1 = tail call ptr @llvm.thread.pointer() #13
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = lshr i32 %3, 5
  %8 = getelementptr i32, ptr @__cpu_online_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %3, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %15 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef 0, i32 noundef %3) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %16

16:                                               ; preds = %14, %6, %0
  tail call void @rcu_idle_enter() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  %17 = load volatile i32, ptr %1, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %26, %16
  %21 = load i32, ptr @cpu_idle_force_poll, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call i32 @tick_check_broadcast_expired() #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !26
  %27 = load volatile i32, ptr %1, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %20, label %30

30:                                               ; preds = %26, %23, %16
  tail call void @rcu_idle_exit() #13
  %31 = load i32, ptr %2, align 8
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cpu_idle, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = lshr i32 %31, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %31, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %43 = tail call i32 @__traceiter_cpu_idle(ptr noundef null, i32 noundef -1, i32 noundef %31) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %44

44:                                               ; preds = %42, %34, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_idle() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpuidle_not_available(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_find_deepest_state(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_select(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_idle_retain_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_reflect(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter_s2idle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_enter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }

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
!9 = !{i64 646114}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 639254}
!12 = !{i64 2156365528}
!13 = !{i64 2156365682}
!14 = !{i64 639444}
!15 = !{!"auto-init"}
!16 = !{i64 2156775830}
!17 = !{i64 2156778831}
!18 = !{i64 2156765866}
!19 = !{i8 0, i8 2}
!20 = !{i64 641741}
!21 = !{i64 2156766233}
!22 = !{!"branch_weights", i32 2000, i32 1}
!23 = !{i64 2156781623, i64 2156782107, i64 2156781660, i64 2156781716, i64 2156781750, i64 2156781774, i64 2156781815, i64 2156781836, i64 2156781864, i64 2156781898}
!24 = !{i64 2156782537, i64 2156783021, i64 2156782574, i64 2156782630, i64 2156782664, i64 2156782688, i64 2156782729, i64 2156782750, i64 2156782778, i64 2156782812}
!25 = !{i64 2156757972}
!26 = !{i64 2156757814}
