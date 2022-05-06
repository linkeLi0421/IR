; ModuleID = '/llk/IR/fs/eventpoll.c_pt.bc'
source_filename = "../fs/eventpoll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.epitem = type { %union.anon.160, %struct.list_head, ptr, %struct.epoll_filefd, ptr, ptr, %struct.hlist_node, ptr, %struct.epoll_event }
%union.anon.160 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.epoll_filefd = type { ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.epoll_event = type { i32, i64 }
%struct.eppoll_entry = type { ptr, ptr, %struct.wait_queue_entry, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.epitems_head = type { %struct.hlist_head, ptr }
%struct.hlist_head = type { ptr }
%struct.eventpoll = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, %struct.list_head, %struct.rwlock_t, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i64, %struct.hlist_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.ep_pqueue = type { %struct.poll_table_struct, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.71, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.72, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.73, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.34, %union.anon.36, %union.anon.37, i16, i8, i8, i32, %union.anon.39, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.63, [0 x i32], %union.anon.64, i16, i16, %union.anon.65, %struct.refcount_struct, [0 x i32], %union.anon.66 }
%union.anon.34 = type { i64 }
%union.anon.36 = type { i32 }
%union.anon.37 = type { i32 }
%union.anon.39 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.62 }
%union.anon.62 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { %struct.hlist_node }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.71 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.135, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.136, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.137, ptr, %struct.address_space, %struct.list_head, %union.anon.140, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.136 = type { %struct.callback_head }
%union.anon.137 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.140 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.128, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.74 }
%struct.llist_node = type { ptr }
%union.anon.74 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.128 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.80 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.80 = type { %struct.callback_head }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }

@epmutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @epmutex, i64 12), ptr getelementptr (i8, ptr @epmutex, i64 12) } }, align 4
@loop_check_gen = internal unnamed_addr global i64 0, align 8
@__initcall__kmod_eventpoll__503_2395_eventpoll_init5 = internal global ptr @eventpoll_init, section ".initcall5.init", align 4
@pwq_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ephead_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@epi_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@eventpoll_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep_eventpoll_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @ep_eventpoll_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ep_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"tfd: %8d events: %8x data: %16llx  pos:%lli ino:%lx sdev:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"[eventpoll]\00", align 1
@ep_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"&ep->mtx\00", align 1
@ep_alloc.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"&ep->wq\00", align 1
@ep_alloc.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"&ep->poll_wait\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@inserting_into = internal unnamed_addr global ptr null, align 4
@tfile_check_list = internal unnamed_addr global ptr inttoptr (i32 -1 to ptr), align 4
@max_user_watches = internal global i32 0, section ".data..read_mostly", align 4
@path_count = internal unnamed_addr global [5 x i32] zeroinitializer, align 4
@path_limits = internal unnamed_addr constant [5 x i32] [i32 1000, i32 500, i32 100, i32 50, i32 10], align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"eventpoll\00", align 1
@sysctl_net_busy_poll = external dso_local global i32, section ".data..read_mostly", align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"include/linux/sched/signal.h\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"eventpoll_epi\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"eventpoll_pwq\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ep_head\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"fs/epoll\00", align 1
@epoll_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.16, ptr @max_user_watches, i32 4, i16 420, ptr null, ptr @proc_doulongvec_minmax, ptr null, ptr @long_zero, ptr @long_max }, %struct.ctl_table zeroinitializer], align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"max_user_watches\00", align 1
@long_zero = internal global i32 0, align 4
@long_max = internal global i32 2147483647, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_eventpoll__503_2395_eventpoll_init5], section "llvm.metadata"

@sys_epoll_create1 = dso_local alias i32 (i32), ptr @__se_sys_epoll_create1
@sys_epoll_create = dso_local alias i32 (i32), ptr @__se_sys_epoll_create
@sys_epoll_ctl = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_epoll_ctl
@sys_epoll_wait = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_epoll_wait
@sys_epoll_pwait = dso_local alias i32 (i32, ptr, i32, i32, ptr, i32), ptr @__se_sys_epoll_pwait
@sys_epoll_pwait2 = dso_local alias i32 (i32, ptr, i32, ptr, ptr, i32), ptr @__se_sys_epoll_pwait2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eventpoll_release_file(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @epmutex) #11
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !8

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -40
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %18, %11 ], [ %8, %5 ]
  %13 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void @mutex_lock(ptr noundef %16) #11
  tail call fastcc void @ep_remove(ptr noundef %16, ptr noundef nonnull %12)
  tail call void @mutex_unlock(ptr noundef %16) #11
  %17 = icmp eq ptr %14, null
  %18 = getelementptr i8, ptr %14, i32 -40
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %16, %2
  %9 = phi ptr [ %18, %16 ], [ %6, %2 ]
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %11 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 2
  tail call void @remove_wait_queue(ptr noundef nonnull %12, ptr noundef %15) #11
  br label %16

16:                                               ; preds = %14, %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %17 = load ptr, ptr @pwq_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %9) #11
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 6
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load ptr, ptr %24, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 6, i32 1
  %32 = load ptr, ptr %31, align 4
  store volatile ptr %28, ptr %32, align 4
  br label %48

33:                                               ; preds = %27
  store ptr null, ptr %22, align 4
  %34 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, @eventpoll_fops
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.epitems_head, ptr %23, i32 0, i32 1
  %39 = load volatile ptr, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr %23, ptr null
  br label %42

42:                                               ; preds = %37, %33, %20
  %43 = phi ptr [ null, %20 ], [ %41, %37 ], [ null, %33 ]
  %44 = load ptr, ptr %25, align 4
  %45 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 6, i32 1
  %46 = load ptr, ptr %45, align 4
  store volatile ptr %44, ptr %46, align 4
  %47 = icmp eq ptr %44, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42, %30
  %49 = phi ptr [ %32, %30 ], [ %46, %42 ]
  %50 = phi ptr [ %31, %30 ], [ %45, %42 ]
  %51 = phi ptr [ null, %30 ], [ %43, %42 ]
  %52 = phi ptr [ %28, %30 ], [ %44, %42 ]
  %53 = getelementptr inbounds %struct.hlist_node, ptr %52, i32 0, i32 1
  store volatile ptr %49, ptr %53, align 4
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi ptr [ %45, %42 ], [ %50, %48 ]
  %56 = phi ptr [ %43, %42 ], [ %51, %48 ]
  store volatile ptr inttoptr (i32 290 to ptr), ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %57 = load i16, ptr %21, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %59 = icmp eq ptr %56, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef nonnull %56) #11
  br label %62

62:                                               ; preds = %60, %54
  %63 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5
  %64 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = tail call ptr @rb_next(ptr noundef %1) #11
  store ptr %68, ptr %64, align 4
  br label %69

69:                                               ; preds = %67, %62
  tail call void @rb_erase(ptr noundef %1, ptr noundef %63) #11
  %70 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %70) #11
  %71 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %72, ptr %76, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %75, align 4
  br label %78

78:                                               ; preds = %74, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %70, i32 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %79 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 7
  %80 = load volatile ptr, ptr %79, align 8
  tail call void @wakeup_source_unregister(ptr noundef %80) #11
  tail call void @call_rcu(ptr noundef %1, ptr noundef nonnull @epi_rcu_free) #11
  %81 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 8
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.user_struct, ptr %82, i32 0, i32 1
  %84 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %83, i64 noundef -1, i32 noundef %84) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_epoll_tfile_raw_ptr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @eventpoll_fops
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 8
  tail call void @mutex_lock(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.eventpoll, ptr %9, i32 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %23, %7
  %14 = phi i32 [ %24, %23 ], [ %2, %7 ]
  %15 = phi ptr [ %26, %23 ], [ %11, %7 ]
  %16 = getelementptr inbounds %struct.epitem, ptr %15, i32 0, i32 3, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = add i32 %14, -1
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i32 [ %22, %21 ], [ %14, %13 ]
  %25 = tail call i32 @__cond_resched() #11
  %26 = tail call ptr @rb_next(ptr noundef nonnull %15) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %13

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.epitem, ptr %15, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  br label %31

31:                                               ; preds = %28, %23, %7
  %32 = phi ptr [ %30, %28 ], [ inttoptr (i32 -2 to ptr), %7 ], [ inttoptr (i32 -2 to ptr), %23 ]
  tail call void @mutex_unlock(ptr noundef %9) #11
  br label %33

33:                                               ; preds = %31, %3
  %34 = phi ptr [ %32, %31 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_create1(i32 noundef %0) #0 {
  %2 = tail call fastcc i32 @do_epoll_create(i32 noundef %0) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_create(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @do_epoll_create(i32 noundef 0) #11
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ -22, %1 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_epoll_ctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call i32 @__fdget(i32 noundef %0) #11, !noalias !21
  %7 = and i32 %6, -4
  %8 = inttoptr i32 %7 to ptr
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %182, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @__fdget(i32 noundef %2) #11, !noalias !24
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %177, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %172, label %21

21:                                               ; preds = %15
  %22 = icmp eq i32 %1, 2
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %3, align 8
  %25 = and i32 %24, 536870912
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i1 @capable(i32 noundef 36) #11
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %3, align 8
  %31 = and i32 %30, -536870913
  store i32 %31, ptr %3, align 8
  br label %32

32:                                               ; preds = %29, %27, %23, %21
  %33 = icmp eq ptr %8, %13
  br i1 %33, label %172, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @eventpoll_fops
  br i1 %37, label %38, label %172

38:                                               ; preds = %34
  br i1 %22, label %50, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr %3, align 8
  %41 = and i32 %40, 268435456
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  switch i32 %1, label %50 [
    i32 3, label %172
    i32 1, label %44
  ]

44:                                               ; preds = %43
  %45 = load ptr, ptr %16, align 4
  %46 = icmp ne ptr %45, @eventpoll_fops
  %47 = and i32 %40, 1342177250
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %172

50:                                               ; preds = %44, %43, %39, %38
  %51 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 15
  %52 = load ptr, ptr %51, align 8
  br i1 %4, label %54, label %53

53:                                               ; preds = %50
  tail call void @mutex_lock(ptr noundef %52) #11
  br label %57

54:                                               ; preds = %50
  %55 = tail call i32 @mutex_trylock(ptr noundef %52) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %172, label %57

57:                                               ; preds = %54, %53
  %58 = icmp eq i32 %1, 1
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 16
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.eventpoll, ptr %52, i32 0, i32 10
  %65 = load i64, ptr %64, align 8
  %66 = load i64, ptr @loop_check_gen, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %16, align 4
  %70 = icmp eq ptr %69, @eventpoll_fops
  br i1 %70, label %71, label %87

71:                                               ; preds = %68, %63, %59
  tail call void @mutex_unlock(ptr noundef %52) #11
  %72 = tail call fastcc i32 @epoll_mutex_lock(ptr noundef nonnull @epmutex, i1 noundef zeroext %4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %172

74:                                               ; preds = %71
  %75 = load i64, ptr @loop_check_gen, align 8
  %76 = add i64 %75, 1
  store i64 %76, ptr @loop_check_gen, align 8
  %77 = load ptr, ptr %16, align 4
  %78 = icmp eq ptr %77, @eventpoll_fops
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 15
  %81 = load ptr, ptr %80, align 8
  store ptr %52, ptr @inserting_into, align 4
  %82 = tail call fastcc i32 @ep_loop_check_proc(ptr noundef %81, i32 noundef 0) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %79, %74
  %85 = tail call fastcc i32 @epoll_mutex_lock(ptr noundef %52, i1 noundef zeroext %4)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %138

87:                                               ; preds = %84, %68, %57
  %88 = phi i1 [ true, %68 ], [ false, %84 ], [ true, %57 ]
  %89 = phi i32 [ 0, %68 ], [ 1, %84 ], [ 0, %57 ]
  %90 = getelementptr inbounds %struct.eventpoll, ptr %52, i32 0, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %115, label %93

93:                                               ; preds = %111, %87
  %94 = phi ptr [ %113, %111 ], [ %91, %87 ]
  %95 = getelementptr inbounds %struct.epitem, ptr %94, i32 0, i32 3
  %96 = load ptr, ptr %95, align 1
  %97 = icmp ult ptr %96, %13
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = icmp ugt ptr %96, %13
  br i1 %99, label %109, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.epitem, ptr %94, i32 0, i32 3, i32 1
  %102 = load i32, ptr %101, align 1
  %103 = sub i32 %2, %102
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %93
  %106 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 1
  br label %111

107:                                              ; preds = %100
  %108 = icmp slt i32 %103, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %107, %98
  %110 = getelementptr inbounds %struct.rb_node, ptr %94, i32 0, i32 2
  br label %111

111:                                              ; preds = %109, %105
  %112 = phi ptr [ %106, %105 ], [ %110, %109 ]
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %93

115:                                              ; preds = %111, %107, %87
  %116 = phi ptr [ null, %87 ], [ null, %111 ], [ %94, %107 ]
  switch i32 %1, label %136 [
    i32 1, label %117
    i32 2, label %123
    i32 3, label %126
  ]

117:                                              ; preds = %115
  %118 = icmp eq ptr %116, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %117
  %120 = load i32, ptr %3, align 8
  %121 = or i32 %120, 24
  store i32 %121, ptr %3, align 8
  %122 = tail call fastcc i32 @ep_insert(ptr noundef %52, ptr noundef %3, ptr noundef nonnull %13, i32 noundef %2, i32 noundef %89)
  br label %136

123:                                              ; preds = %115
  %124 = icmp eq ptr %116, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %123
  tail call fastcc void @ep_remove(ptr noundef %52, ptr noundef nonnull %116)
  br label %136

126:                                              ; preds = %115
  %127 = icmp eq ptr %116, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.epitem, ptr %116, i32 0, i32 8
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 268435456
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, ptr %3, align 8
  %135 = or i32 %134, 24
  store i32 %135, ptr %3, align 8
  tail call fastcc void @ep_modify(ptr noundef %52, ptr noundef nonnull %116, ptr noundef %3)
  br label %136

136:                                              ; preds = %133, %128, %126, %125, %123, %119, %117, %115
  %137 = phi i32 [ -22, %115 ], [ -22, %128 ], [ 0, %133 ], [ 0, %125 ], [ %122, %119 ], [ -17, %117 ], [ -2, %123 ], [ -2, %126 ]
  tail call void @mutex_unlock(ptr noundef %52) #11
  br i1 %88, label %172, label %138

138:                                              ; preds = %136, %84, %79
  %139 = phi i32 [ %137, %136 ], [ %85, %84 ], [ -40, %79 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %140 = load ptr, ptr @tfile_check_list, align 4
  %141 = icmp eq ptr %140, inttoptr (i32 -1 to ptr)
  br i1 %141, label %169, label %142

142:                                              ; preds = %166, %138
  %143 = phi ptr [ %167, %166 ], [ %140, %138 ]
  %144 = getelementptr inbounds %struct.epitems_head, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  store ptr %145, ptr @tfile_check_list, align 4
  %146 = load volatile ptr, ptr %143, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %142
  %149 = getelementptr i8, ptr %146, i32 -16
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.file, ptr %150, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %151) #11
  %152 = load volatile ptr, ptr %143, align 4
  %153 = icmp ne ptr %152, null
  store ptr null, ptr %144, align 4
  %154 = load ptr, ptr %149, align 8
  %155 = getelementptr inbounds %struct.file, ptr %154, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %156 = load i16, ptr %155, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %155, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %158 = icmp eq ptr %143, null
  %159 = or i1 %158, %153
  br i1 %159, label %164, label %162

160:                                              ; preds = %142
  %161 = icmp eq ptr %143, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %160, %148
  %163 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %163, ptr noundef nonnull %143) #11
  br label %164

164:                                              ; preds = %162, %148
  %165 = load ptr, ptr @tfile_check_list, align 4
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi ptr [ %165, %164 ], [ %145, %160 ]
  %168 = icmp eq ptr %167, inttoptr (i32 -1 to ptr)
  br i1 %168, label %169, label %142

169:                                              ; preds = %166, %138
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %170 = load i64, ptr @loop_check_gen, align 8
  %171 = add i64 %170, 1
  store i64 %171, ptr @loop_check_gen, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #11
  br label %172

172:                                              ; preds = %169, %136, %71, %54, %44, %43, %34, %32, %15
  %173 = phi i32 [ %139, %169 ], [ %137, %136 ], [ -11, %54 ], [ -1, %15 ], [ -22, %34 ], [ %72, %71 ], [ -22, %44 ], [ -22, %43 ], [ -22, %32 ]
  %174 = and i32 %11, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  tail call void @fput(ptr noundef nonnull %13) #11
  br label %177

177:                                              ; preds = %176, %172, %10
  %178 = phi i32 [ -9, %10 ], [ %173, %172 ], [ %173, %176 ]
  %179 = and i32 %6, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  tail call void @fput(ptr noundef nonnull %8) #11
  br label %182

182:                                              ; preds = %181, %177, %5
  %183 = phi i32 [ -9, %5 ], [ %178, %177 ], [ %178, %181 ]
  ret i32 %183
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @epoll_mutex_lock(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #5 {
  br i1 %1, label %4, label %3

3:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef %0) #11
  br label %8

4:                                                ; preds = %2
  %5 = tail call i32 @mutex_trylock(ptr noundef %0) #11
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 -11, i32 0
  br label %8

8:                                                ; preds = %4, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep_insert(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.name_snapshot, align 8
  %7 = alloca %struct.ep_pqueue, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !27
  %8 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @eventpoll_fops
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15
  %13 = load ptr, ptr %12, align 8
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi ptr [ %13, %11 ], [ null, %5 ]
  %16 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.user_struct, ptr %17, i32 0, i32 1
  %19 = load i32, ptr @max_user_watches, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, ptr @percpu_counter_batch, align 4
  %22 = tail call i32 @__percpu_counter_compare(ptr noundef %18, i64 noundef %20, i32 noundef %21) #11
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %261, label %24, !prof !8

24:                                               ; preds = %14
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr inbounds %struct.user_struct, ptr %25, i32 0, i32 1
  %27 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %26, i64 noundef 1, i32 noundef %27) #11
  %28 = load ptr, ptr @epi_cache, align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3520) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load ptr, ptr %16, align 8
  %33 = getelementptr inbounds %struct.user_struct, ptr %32, i32 0, i32 1
  %34 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %33, i64 noundef -1, i32 noundef %34) #11
  br label %261

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 1, i32 1
  store ptr %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 5
  store ptr %0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 3
  store ptr %2, ptr %39, align 8
  %40 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 3, i32 1
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  %42 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 2
  store ptr inttoptr (i32 -1 to ptr), ptr %42, align 4
  %43 = icmp ne ptr %15, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @mutex_lock(ptr noundef nonnull %15) #11
  br label %45

45:                                               ; preds = %44, %35
  %46 = load ptr, ptr %8, align 4
  %47 = icmp eq ptr %46, @eventpoll_fops
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.eventpoll, ptr %50, i32 0, i32 11
  br label %62

54:                                               ; preds = %48, %45
  %55 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 16
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %71, %54
  %59 = load ptr, ptr @ephead_cache, align 4
  %60 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %59, i32 noundef 3520) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %90, label %62

62:                                               ; preds = %58, %54, %52
  %63 = phi ptr [ null, %52 ], [ null, %54 ], [ %60, %58 ]
  %64 = phi ptr [ %53, %52 ], [ null, %54 ], [ %60, %58 ]
  %65 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %65) #11
  %66 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 16
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = icmp eq ptr %64, null
  br i1 %70, label %71, label %74, !prof !8

71:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %72 = load i16, ptr %65, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %58

74:                                               ; preds = %69
  store ptr %64, ptr %66, align 4
  br label %75

75:                                               ; preds = %74, %62
  %76 = phi ptr [ %67, %62 ], [ %64, %74 ]
  %77 = phi ptr [ %63, %62 ], [ null, %74 ]
  %78 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 6
  %79 = load ptr, ptr %76, align 4
  store ptr %79, ptr %78, align 8
  %80 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 6, i32 1
  store volatile ptr %76, ptr %80, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  store volatile ptr %78, ptr %76, align 4
  %81 = icmp eq ptr %79, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.hlist_node, ptr %79, i32 0, i32 1
  store volatile ptr %78, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %85 = load i16, ptr %65, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %87 = icmp eq ptr %77, null
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr @ephead_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %89, ptr noundef nonnull %77) #11
  br label %97

90:                                               ; preds = %58
  br i1 %43, label %91, label %92

91:                                               ; preds = %90
  tail call void @mutex_unlock(ptr noundef nonnull %15) #11
  br label %92

92:                                               ; preds = %91, %90
  %93 = load ptr, ptr @epi_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %93, ptr noundef nonnull %29) #11
  %94 = load ptr, ptr %16, align 8
  %95 = getelementptr inbounds %struct.user_struct, ptr %94, i32 0, i32 1
  %96 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %95, i64 noundef -1, i32 noundef %96) #11
  br label %261

97:                                               ; preds = %88, %84
  %98 = icmp eq i32 %4, 0
  %99 = select i1 %98, i1 true, i1 %43
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr %66, align 4
  %102 = getelementptr inbounds %struct.epitems_head, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load ptr, ptr @tfile_check_list, align 4
  store ptr %106, ptr %102, align 4
  store ptr %101, ptr @tfile_check_list, align 4
  br label %107

107:                                              ; preds = %105, %100, %97
  %108 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %140, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %39, align 8
  br label %113

113:                                              ; preds = %126, %111
  %114 = phi ptr [ %109, %111 ], [ %134, %126 ]
  %115 = phi i1 [ true, %111 ], [ %132, %126 ]
  %116 = getelementptr inbounds %struct.epitem, ptr %114, i32 0, i32 3
  %117 = load ptr, ptr %116, align 1
  %118 = icmp ugt ptr %112, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = icmp ult ptr %112, %117
  br i1 %120, label %126, label %121

121:                                              ; preds = %119
  %122 = load i32, ptr %40, align 4
  %123 = getelementptr inbounds %struct.epitem, ptr %114, i32 0, i32 3, i32 1
  %124 = load i32, ptr %123, align 1
  %125 = sub i32 %122, %124
  br label %126

126:                                              ; preds = %121, %119, %113
  %127 = phi i32 [ 1, %113 ], [ %125, %121 ], [ -1, %119 ]
  %128 = icmp sgt i32 %127, 0
  %129 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 1
  %130 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 2
  %131 = xor i1 %128, true
  %132 = select i1 %131, i1 %115, i1 false
  %133 = select i1 %128, ptr %129, ptr %130
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %113

136:                                              ; preds = %126
  %137 = ptrtoint ptr %114 to i32
  store i32 %137, ptr %29, align 8
  %138 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  store ptr null, ptr %139, align 8
  store ptr %29, ptr %133, align 4
  br i1 %132, label %143, label %145

140:                                              ; preds = %107
  store i32 0, ptr %29, align 8
  %141 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  store ptr null, ptr %141, align 4
  %142 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  store ptr null, ptr %142, align 8
  store ptr %29, ptr %108, align 4
  br label %143

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5, i32 1
  store ptr %29, ptr %144, align 4
  br label %145

145:                                              ; preds = %143, %136
  tail call void @rb_insert_color(ptr noundef %29, ptr noundef %108) #11
  br i1 %43, label %146, label %147

146:                                              ; preds = %145
  tail call void @mutex_unlock(ptr noundef nonnull %15) #11
  br label %147

147:                                              ; preds = %146, %145
  %148 = load ptr, ptr @tfile_check_list, align 4
  %149 = icmp eq ptr %148, inttoptr (i32 -1 to ptr)
  %150 = select i1 %98, i1 true, i1 %149
  br i1 %150, label %160, label %155

151:                                              ; preds = %155
  %152 = getelementptr inbounds %struct.epitems_head, ptr %156, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, inttoptr (i32 -1 to ptr)
  br i1 %154, label %160, label %155

155:                                              ; preds = %151, %147
  %156 = phi ptr [ %153, %151 ], [ %148, %147 ]
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) @path_count, i8 0, i32 20, i1 false) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %157 = tail call fastcc i32 @reverse_path_check_proc(ptr noundef %156, i32 noundef 0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %151, label %159

159:                                              ; preds = %155
  tail call fastcc void @ep_remove(ptr noundef %0, ptr noundef nonnull %29)
  br label %261

160:                                              ; preds = %151, %147
  %161 = load i32, ptr %41, align 8
  %162 = and i32 %161, 536870912
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %189, label %164

164:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false) #11, !annotation !27
  %165 = load ptr, ptr %38, align 4
  %166 = getelementptr inbounds %struct.eventpoll, ptr %165, i32 0, i32 7
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %164
  %170 = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull @.str.8) #11
  %171 = load ptr, ptr %38, align 4
  %172 = getelementptr inbounds %struct.eventpoll, ptr %171, i32 0, i32 7
  store ptr %170, ptr %172, align 4
  %173 = load ptr, ptr %38, align 4
  %174 = getelementptr inbounds %struct.eventpoll, ptr %173, i32 0, i32 7
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %169, %164
  %178 = load ptr, ptr %39, align 8
  %179 = getelementptr inbounds %struct.file, ptr %178, i32 0, i32 1, i32 1
  %180 = load ptr, ptr %179, align 4
  call void @take_dentry_name_snapshot(ptr noundef nonnull %6, ptr noundef %180) #11
  %181 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 1
  %182 = load ptr, ptr %181, align 8
  %183 = call ptr @wakeup_source_register(ptr noundef null, ptr noundef %182) #11
  call void @release_dentry_name_snapshot(ptr noundef nonnull %6) #11
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %177
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  %186 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 7
  store volatile ptr %183, ptr %186, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  %187 = load i32, ptr %41, align 8
  br label %189

188:                                              ; preds = %177, %169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #11
  call fastcc void @ep_remove(ptr noundef %0, ptr noundef nonnull %29)
  br label %261

189:                                              ; preds = %185, %160
  %190 = phi i32 [ %187, %185 ], [ %161, %160 ]
  %191 = getelementptr inbounds %struct.ep_pqueue, ptr %7, i32 0, i32 1
  store ptr %29, ptr %191, align 4
  store ptr @ep_ptable_queue_proc, ptr %7, align 4
  %192 = getelementptr inbounds %struct.poll_table_struct, ptr %7, i32 0, i32 1
  %193 = load ptr, ptr %39, align 8
  store i32 %190, ptr %192, align 4
  %194 = getelementptr inbounds %struct.file, ptr %193, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, @eventpoll_fops
  br i1 %196, label %203, label %197

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.file_operations, ptr %195, i32 0, i32 9
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201, !prof !8

201:                                              ; preds = %197
  %202 = call i32 %199(ptr noundef %193, ptr noundef nonnull %7) #11
  br label %205

203:                                              ; preds = %189
  %204 = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %193, ptr noundef nonnull %7, i32 noundef 1) #11
  br label %205

205:                                              ; preds = %203, %201, %197
  %206 = phi i32 [ %204, %203 ], [ %202, %201 ], [ 325, %197 ]
  %207 = load i32, ptr %41, align 8
  %208 = and i32 %207, %206
  %209 = load ptr, ptr %191, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %212, !prof !8

211:                                              ; preds = %205
  call fastcc void @ep_remove(ptr noundef %0, ptr noundef nonnull %29)
  br label %261

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 4
  call void @_raw_write_lock_irq(ptr noundef %213) #11
  %214 = load i32, ptr @sysctl_net_busy_poll, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %212
  %217 = load ptr, ptr %39, align 8
  %218 = call ptr @sock_from_file(ptr noundef %217) #11
  %219 = icmp eq ptr %218, null
  br i1 %219, label %234, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.socket, ptr %218, i32 0, i32 4
  %222 = load ptr, ptr %221, align 16
  %223 = icmp eq ptr %222, null
  br i1 %223, label %234, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.sock, ptr %222, i32 0, i32 14
  %226 = load volatile i32, ptr %225, align 8
  %227 = icmp ult i32 %226, 17
  br i1 %227, label %234, label %228

228:                                              ; preds = %224
  %229 = load ptr, ptr %38, align 4
  %230 = getelementptr inbounds %struct.eventpoll, ptr %229, i32 0, i32 12
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %226, %231
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  store i32 %226, ptr %230, align 4
  br label %234

234:                                              ; preds = %233, %228, %224, %220, %216, %212
  %235 = icmp eq i32 %208, 0
  br i1 %235, label %260, label %236

236:                                              ; preds = %234
  %237 = load volatile ptr, ptr %36, align 4
  %238 = icmp eq ptr %237, %36
  br i1 %238, label %239, label %259

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3
  %241 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3, i32 1
  %242 = load ptr, ptr %241, align 4
  store ptr %36, ptr %241, align 4
  store ptr %240, ptr %36, align 4
  store ptr %242, ptr %37, align 8
  store volatile ptr %36, ptr %242, align 4
  %243 = getelementptr inbounds %struct.epitem, ptr %29, i32 0, i32 7
  %244 = load volatile ptr, ptr %243, align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %239
  call void @__pm_stay_awake(ptr noundef nonnull %244) #11
  br label %247

247:                                              ; preds = %246, %239
  %248 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1, i32 1
  %249 = load volatile ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, %248
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1
  call void @__wake_up(ptr noundef %252, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %253

253:                                              ; preds = %251, %247
  %254 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2, i32 1
  %255 = load volatile ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, %254
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %213, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2
  call void @__wake_up(ptr noundef %258, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %261

259:                                              ; preds = %236
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %213, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %261

260:                                              ; preds = %234
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %213, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %261

261:                                              ; preds = %260, %259, %257, %253, %211, %188, %159, %92, %31, %14
  %262 = phi i32 [ -12, %92 ], [ -22, %159 ], [ -12, %188 ], [ -12, %211 ], [ -12, %31 ], [ -28, %14 ], [ 0, %260 ], [ 0, %259 ], [ 0, %257 ], [ 0, %253 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  ret i32 %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_modify(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.name_snapshot, align 8
  %5 = alloca %struct.poll_table_struct, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %struct.poll_table_struct, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %2, align 8
  %8 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 8
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.epoll_event, ptr %2, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 8, i32 1
  store i64 %10, ptr %11, align 8
  %12 = and i32 %7, 536870912
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 7
  %15 = load volatile ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %13, label %43, label %17

17:                                               ; preds = %3
  br i1 %16, label %18, label %45

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #11, !annotation !27
  %19 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.eventpoll, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @wakeup_source_register(ptr noundef null, ptr noundef nonnull @.str.8) #11
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr inbounds %struct.eventpoll, ptr %26, i32 0, i32 7
  store ptr %25, ptr %27, align 4
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr inbounds %struct.eventpoll, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %24, %18
  %33 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  call void @take_dentry_name_snapshot(ptr noundef nonnull %4, ptr noundef %36) #11
  %37 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = call ptr @wakeup_source_register(ptr noundef null, ptr noundef %38) #11
  call void @release_dentry_name_snapshot(ptr noundef nonnull %4) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !29
  store volatile ptr %39, ptr %14, align 8
  br label %42

42:                                               ; preds = %41, %32, %24
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  br label %45

43:                                               ; preds = %3
  br i1 %16, label %45, label %44

44:                                               ; preds = %43
  tail call fastcc void @ep_destroy_wakeup_source(ptr noundef %1)
  br label %45

45:                                               ; preds = %44, %43, %42, %17
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %46 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = load i32, ptr %8, align 8
  store i32 %48, ptr %6, align 4
  %49 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, @eventpoll_fops
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.file_operations, ptr %50, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56, !prof !8

56:                                               ; preds = %52
  %57 = call i32 %54(ptr noundef %47, ptr noundef nonnull %5) #11
  br label %60

58:                                               ; preds = %45
  %59 = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %47, ptr noundef nonnull %5, i32 noundef 1) #11
  br label %60

60:                                               ; preds = %58, %56, %52
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], [ 325, %52 ]
  %62 = load i32, ptr %8, align 8
  %63 = and i32 %62, %61
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 4
  call void @_raw_write_lock_irq(ptr noundef %66) #11
  %67 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %91

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3
  %72 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3, i32 1
  %73 = load ptr, ptr %72, align 4
  store ptr %67, ptr %72, align 4
  store ptr %71, ptr %67, align 4
  %74 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 1, i32 1
  store ptr %73, ptr %74, align 4
  store volatile ptr %67, ptr %73, align 4
  %75 = getelementptr inbounds %struct.epitem, ptr %1, i32 0, i32 7
  %76 = load volatile ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  call void @__pm_stay_awake(ptr noundef nonnull %76) #11
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1, i32 1
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1
  call void @__wake_up(ptr noundef %84, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %85

85:                                               ; preds = %83, %79
  %86 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2, i32 1
  %87 = load volatile ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %66, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2
  call void @__wake_up(ptr noundef %90, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %92

91:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %66, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %92

92:                                               ; preds = %91, %89, %85, %60
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_ctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.epoll_event, align 8
  %6 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #11, !annotation !27
  %7 = icmp eq i32 %1, 2
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1090519040) #12, !srcloc !31
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !32

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #13, !srcloc !33
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !34
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !34
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !32

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 16, %8 ]
  %22 = sub i32 16, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #11
  br label %26

24:                                               ; preds = %12, %4
  %25 = call i32 @do_epoll_ctl(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, i1 noundef zeroext false) #11
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_wait(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #11, !annotation !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false) #11, !annotation !27
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  store i64 0, ptr %6, align 8
  %11 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  store i32 0, ptr %11, align 8
  br label %27

12:                                               ; preds = %8
  %13 = udiv i32 %3, 1000
  %14 = zext i32 %13 to i64
  store i64 %14, ptr %6, align 8
  %15 = mul i32 %13, 1000
  %16 = sub i32 %3, %15
  %17 = mul nuw nsw i32 %16, 1000000
  %18 = getelementptr inbounds %struct.timespec64, ptr %6, i32 0, i32 1
  store i32 %17, ptr %18, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %5) #11
  %19 = load i64, ptr %5, align 8
  %20 = insertvalue [2 x i64] poison, i64 %19, 0
  %21 = getelementptr inbounds [2 x i64], ptr %5, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = insertvalue [2 x i64] %20, i64 %22, 1
  %24 = insertvalue [2 x i64] undef, i64 %14, 0
  %25 = load i64, ptr %18, align 8
  %26 = insertvalue [2 x i64] %24, i64 %25, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %6, [2 x i64] %23, [2 x i64] %26) #11
  br label %27

27:                                               ; preds = %12, %10, %4
  %28 = phi ptr [ %6, %12 ], [ %6, %10 ], [ null, %4 ]
  %29 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %30 = call fastcc i32 @do_epoll_wait(i32 noundef %0, ptr noundef %29, i32 noundef %2, ptr noundef %28) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_pwait(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #11, !annotation !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #11, !annotation !27
  %9 = icmp slt i32 %3, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  store i64 0, ptr %8, align 8
  %13 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  store i32 0, ptr %13, align 8
  br label %29

14:                                               ; preds = %10
  %15 = udiv i32 %3, 1000
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %8, align 8
  %17 = mul i32 %15, 1000
  %18 = sub i32 %3, %17
  %19 = mul nuw nsw i32 %18, 1000000
  %20 = getelementptr inbounds %struct.timespec64, ptr %8, i32 0, i32 1
  store i32 %19, ptr %20, align 8
  call void @ktime_get_ts64(ptr noundef nonnull %7) #11
  %21 = load i64, ptr %7, align 8
  %22 = insertvalue [2 x i64] poison, i64 %21, 0
  %23 = getelementptr inbounds [2 x i64], ptr %7, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = insertvalue [2 x i64] %22, i64 %24, 1
  %26 = insertvalue [2 x i64] undef, i64 %16, 0
  %27 = load i64, ptr %20, align 8
  %28 = insertvalue [2 x i64] %26, i64 %27, 1
  call void @timespec64_add_safe(ptr nonnull sret(%struct.timespec64) align 8 %8, [2 x i64] %25, [2 x i64] %28) #11
  br label %29

29:                                               ; preds = %14, %12, %6
  %30 = phi ptr [ %8, %14 ], [ %8, %12 ], [ null, %6 ]
  %31 = inttoptr i32 %4 to ptr
  %32 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  %33 = call fastcc i32 @do_epoll_pwait(i32 noundef %0, ptr noundef %32, i32 noundef %2, ptr noundef %30, ptr noundef %31, i32 noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_epoll_pwait2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false) #11, !annotation !27
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = inttoptr i32 %3 to ptr
  %13 = call i32 @get_timespec64(ptr noundef nonnull %7, ptr noundef nonnull %12) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i64, ptr %7, align 8
  %17 = getelementptr inbounds %struct.timespec64, ptr %7, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = call i32 @poll_select_set_timeout(ptr noundef nonnull %7, i64 noundef %16, i32 noundef %18) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %6
  %22 = phi ptr [ %7, %15 ], [ null, %6 ]
  %23 = call fastcc i32 @do_epoll_pwait(i32 noundef %0, ptr noundef %8, i32 noundef %2, ptr noundef %22, ptr noundef %9, i32 noundef %5) #11
  br label %24

24:                                               ; preds = %21, %15, %11
  %25 = phi i32 [ %23, %21 ], [ -14, %11 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @eventpoll_init() #6 section ".init.text" {
  %1 = alloca %struct.sysinfo, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i32 64, i1 false), !annotation !27
  call void @si_meminfo(ptr noundef nonnull %1) #11
  %2 = getelementptr inbounds %struct.sysinfo, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sysinfo, ptr %1, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = udiv i32 %6, 25
  %8 = shl i32 %7, 12
  %9 = udiv i32 %8, 104
  store i32 %9, ptr @max_user_watches, align 4
  %10 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 72, i32 noundef 0, i32 noundef 270336, ptr noundef null) #11
  store ptr %10, ptr @epi_cache, align 4
  %11 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.13, i32 noundef 32, i32 noundef 0, i32 noundef 262144, ptr noundef null) #11
  store ptr %11, ptr @pwq_cache, align 4
  %12 = call ptr @register_sysctl(ptr noundef nonnull @.str.15, ptr noundef nonnull @epoll_table) #11
  %13 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef 0, i32 noundef 262144, ptr noundef null) #11
  store ptr %13, ptr @ephead_cache, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_source_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @epi_rcu_free(ptr noundef %0) #0 {
  %2 = load ptr, ptr @epi_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_eventpoll_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__ep_eventpoll_poll(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_eventpoll_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @ep_free(ptr noundef nonnull %4)
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ep_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.eventpoll, ptr %4, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 1
  br label %11

11:                                               ; preds = %34, %8
  %12 = phi ptr [ %6, %8 ], [ %35, %34 ]
  %13 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 3, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 8
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 8, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 10
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %20, i64 noundef %22, i64 noundef %24, i32 noundef %26, i32 noundef %30) #11
  %31 = load i32, ptr %9, align 4
  %32 = load i32, ptr %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %11
  %35 = tail call ptr @rb_next(ptr noundef nonnull %12) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11

37:                                               ; preds = %34, %11, %2
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ep_eventpoll_poll(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.poll_table_struct, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr null, ptr %5, align 8
  %9 = getelementptr inbounds %struct.poll_table_struct, ptr %5, i32 0, i32 1
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.eventpoll, ptr %7, i32 0, i32 2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 4
  %14 = icmp ne ptr %13, null
  %15 = icmp ne ptr %10, null
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void %13(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %1) #11
  br label %18

18:                                               ; preds = %17, %12, %3
  call void @mutex_lock(ptr noundef %7) #11
  %19 = getelementptr inbounds %struct.eventpoll, ptr %7, i32 0, i32 4
  call void @_raw_write_lock_irq(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.eventpoll, ptr %7, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.eventpoll, ptr %7, i32 0, i32 3, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %4, ptr %27, align 4
  store ptr %21, ptr %4, align 8
  store ptr %24, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %20, ptr %20, align 4
  store ptr %20, ptr %25, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = getelementptr inbounds %struct.eventpoll, ptr %7, i32 0, i32 6
  store volatile ptr null, ptr %30, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %19, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %31 = load ptr, ptr %4, align 8
  %32 = icmp eq ptr %31, %4
  br i1 %32, label %66, label %33

33:                                               ; preds = %29
  %34 = add i32 %2, 1
  br label %35

35:                                               ; preds = %58, %33
  %36 = phi ptr [ %31, %33 ], [ %37, %58 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %36, i32 12
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr i8, ptr %36, i32 44
  %41 = load i32, ptr %40, align 8
  store i32 %41, ptr %9, align 4
  %42 = getelementptr inbounds %struct.file, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, @eventpoll_fops
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.file_operations, ptr %43, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49, !prof !8

49:                                               ; preds = %45
  %50 = call i32 %47(ptr noundef %39, ptr noundef nonnull %5) #11
  br label %53

51:                                               ; preds = %35
  %52 = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %39, ptr noundef nonnull %5, i32 noundef %34) #11
  br label %53

53:                                               ; preds = %51, %49, %45
  %54 = phi i32 [ %52, %51 ], [ %50, %49 ], [ 325, %45 ]
  %55 = load i32, ptr %40, align 8
  %56 = and i32 %55, %54
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %36, i32 36
  %60 = load volatile ptr, ptr %59, align 8
  call void @__pm_relax(ptr noundef %60) #11
  %61 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %36, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %62, ptr %64, align 4
  store volatile ptr %63, ptr %62, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %61, align 4
  %65 = icmp eq ptr %37, %4
  br i1 %65, label %66, label %35

66:                                               ; preds = %58, %53, %29
  %67 = phi i32 [ 0, %29 ], [ 0, %58 ], [ 65, %53 ]
  call fastcc void @ep_done_scan(ptr noundef %7, ptr noundef nonnull %4)
  call void @mutex_unlock(ptr noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_done_scan(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 6
  %5 = load volatile ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3
  br label %9

9:                                                ; preds = %22, %7
  %10 = phi ptr [ %5, %7 ], [ %24, %22 ]
  %11 = getelementptr inbounds %struct.epitem, ptr %10, i32 0, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %11, ptr %16, align 4
  store ptr %15, ptr %11, align 4
  %17 = getelementptr inbounds %struct.epitem, ptr %10, i32 0, i32 1, i32 1
  store ptr %8, ptr %17, align 4
  store volatile ptr %11, ptr %8, align 4
  %18 = getelementptr inbounds %struct.epitem, ptr %10, i32 0, i32 7
  %19 = load volatile ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  tail call void @__pm_stay_awake(ptr noundef nonnull %19) #11
  br label %22

22:                                               ; preds = %21, %14, %9
  %23 = getelementptr inbounds %struct.epitem, ptr %10, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  store ptr inttoptr (i32 -1 to ptr), ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %9

26:                                               ; preds = %22, %2
  store volatile ptr inttoptr (i32 -1 to ptr), ptr %4, align 8
  %27 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3
  %28 = load volatile ptr, ptr %1, align 4
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %34, align 4
  store ptr %28, ptr %27, align 4
  store ptr %31, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  tail call void @__pm_relax(ptr noundef %38) #11
  %39 = load volatile ptr, ptr %27, align 4
  %40 = icmp eq ptr %39, %27
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %47

47:                                               ; preds = %45, %41, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %3, i32 0) #11, !srcloc !18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %7

7:                                                ; preds = %5, %1
  tail call void @mutex_lock(ptr noundef nonnull @epmutex) #11
  %8 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %28, %7
  %12 = phi ptr [ %30, %28 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.epitem, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %24, %11
  %17 = phi ptr [ %26, %24 ], [ %14, %11 ]
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %19 = getelementptr inbounds %struct.eppoll_entry, ptr %17, i32 0, i32 3
  %20 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.eppoll_entry, ptr %17, i32 0, i32 2
  tail call void @remove_wait_queue(ptr noundef nonnull %20, ptr noundef %23) #11
  br label %24

24:                                               ; preds = %22, %16
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  %25 = load ptr, ptr @pwq_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef nonnull %17) #11
  %26 = load ptr, ptr %13, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16

28:                                               ; preds = %24, %11
  %29 = tail call i32 @__cond_resched() #11
  %30 = tail call ptr @rb_next(ptr noundef nonnull %12) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11

32:                                               ; preds = %28, %7
  tail call void @mutex_lock(ptr noundef %0) #11
  %33 = load ptr, ptr %8, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %38, %35 ], [ %33, %32 ]
  tail call fastcc void @ep_remove(ptr noundef %0, ptr noundef nonnull %36)
  %37 = tail call i32 @__cond_resched() #11
  %38 = load ptr, ptr %8, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35

40:                                               ; preds = %35, %32
  tail call void @mutex_unlock(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef nonnull @epmutex) #11
  %41 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 8
  %42 = load ptr, ptr %41, align 8
  tail call void @free_uid(ptr noundef %42) #11
  %43 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  tail call void @wakeup_source_unregister(ptr noundef %44) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_epoll_create(i32 noundef %0) unnamed_addr #0 {
  %2 = and i32 %0, -524289
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %47

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #11, !srcloc !36
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #11, !srcloc !37
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !8

13:                                               ; preds = %4
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !32

17:                                               ; preds = %13, %4
  %18 = phi i32 [ 2, %4 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #11
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 96) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %19
  tail call void @free_uid(ptr noundef %9) #11
  br label %47

24:                                               ; preds = %19
  tail call void @__mutex_init(ptr noundef nonnull %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @ep_alloc.__key) #11
  %25 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 4
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %26, ptr noundef nonnull @.str.5, ptr noundef nonnull @ep_alloc.__key.4) #11
  %27 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef nonnull @ep_alloc.__key.6) #11
  %28 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 3
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 3, i32 1
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 5
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 5, i32 1
  store ptr null, ptr %31, align 4
  %32 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 6
  store ptr inttoptr (i32 -1 to ptr), ptr %32, align 8
  %33 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 8
  store ptr %9, ptr %33, align 8
  %34 = and i32 %0, 524288
  %35 = or i32 %34, 2
  %36 = tail call i32 @get_unused_fd_flags(i32 noundef %35) #11
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %24
  %39 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.2, ptr noundef nonnull @eventpoll_fops, ptr noundef nonnull %21, i32 noundef %35) #11
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  tail call void @put_unused_fd(i32 noundef %36) #11
  br label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 9
  store ptr %39, ptr %44, align 4
  tail call void @fd_install(i32 noundef %36, ptr noundef %39) #11
  br label %47

45:                                               ; preds = %41, %24
  %46 = phi i32 [ %42, %41 ], [ %36, %24 ]
  tail call fastcc void @ep_free(ptr noundef nonnull %21)
  br label %47

47:                                               ; preds = %45, %43, %23, %1
  %48 = phi i32 [ %46, %45 ], [ %36, %43 ], [ -22, %1 ], [ -12, %23 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ep_loop_check_proc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef %0) #11
  %3 = load i64, ptr @loop_check_gen, align 8
  %4 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 10
  store i64 %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = add nsw i32 %1, 1
  %8 = icmp eq ptr %6, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %1, 4
  br label %11

11:                                               ; preds = %43, %9
  %12 = phi i32 [ 0, %9 ], [ %44, %43 ]
  %13 = phi ptr [ %6, %9 ], [ %45, %43 ]
  %14 = getelementptr inbounds %struct.epitem, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @eventpoll_fops
  br i1 %18, label %19, label %35, !prof !8

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 15
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.eventpoll, ptr %21, i32 0, i32 10
  %23 = load i64, ptr %22, align 8
  %24 = load i64, ptr @loop_check_gen, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %43, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @inserting_into, align 4
  %28 = icmp eq ptr %21, %27
  %29 = or i1 %10, %28
  br i1 %29, label %47, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @ep_loop_check_proc(ptr noundef %21, i32 noundef %7)
  %32 = icmp eq i32 %31, 0
  %33 = xor i1 %32, true
  %34 = sext i1 %33 to i32
  br i1 %32, label %43, label %47

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 16
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.epitems_head, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load ptr, ptr @tfile_check_list, align 4
  store ptr %42, ptr %38, align 4
  store ptr %37, ptr @tfile_check_list, align 4
  br label %43

43:                                               ; preds = %41, %35, %30, %19
  %44 = phi i32 [ %34, %30 ], [ %12, %35 ], [ %12, %41 ], [ %12, %19 ]
  %45 = tail call ptr @rb_next(ptr noundef nonnull %13) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %11

47:                                               ; preds = %43, %30, %26, %2
  %48 = phi i32 [ 0, %2 ], [ -1, %26 ], [ %34, %30 ], [ %44, %43 ]
  tail call void @mutex_unlock(ptr noundef %0) #11
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ep_ptable_queue_proc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ep_pqueue, ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7, !prof !8

7:                                                ; preds = %3
  %8 = load ptr, ptr @pwq_cache, align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  store ptr null, ptr %4, align 4
  br label %27

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 2
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 2, i32 1
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 2, i32 2
  store ptr @ep_poll_callback, ptr %15, align 8
  %16 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 3
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.eppoll_entry, ptr %9, i32 0, i32 1
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.epitem, ptr %5, i32 0, i32 8
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  tail call void @add_wait_queue_exclusive(ptr noundef %1, ptr noundef %13) #11
  br label %24

23:                                               ; preds = %12
  tail call void @add_wait_queue(ptr noundef %1, ptr noundef %13) #11
  br label %24

24:                                               ; preds = %23, %22
  %25 = getelementptr inbounds %struct.epitem, ptr %5, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %9, align 8
  store ptr %9, ptr %25, align 8
  br label %27

27:                                               ; preds = %24, %11, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reverse_path_check_proc(ptr noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = icmp sgt i32 %1, 4
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -40
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %41, label %10

10:                                               ; preds = %4
  %11 = add nsw i32 %1, 1
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr [5 x i32], ptr @path_count, i32 0, i32 %1
  %14 = getelementptr [5 x i32], ptr @path_limits, i32 0, i32 %1
  br label %15

15:                                               ; preds = %34, %10
  %16 = phi ptr [ %7, %10 ], [ %38, %34 ]
  %17 = getelementptr inbounds %struct.epitem, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.eventpoll, ptr %18, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  br i1 %12, label %34, label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %13, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %13, align 4
  %26 = load i32, ptr %14, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = sext i1 %27 to i32
  br label %31

29:                                               ; preds = %15
  %30 = tail call fastcc i32 @reverse_path_check_proc(ptr noundef %19, i32 noundef %11)
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %28, %23 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31, %22
  %35 = getelementptr inbounds %struct.epitem, ptr %16, i32 0, i32 6
  %36 = load volatile ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -40
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %15

41:                                               ; preds = %34, %31, %4, %2
  %42 = phi i32 [ -1, %2 ], [ 0, %4 ], [ 0, %34 ], [ %32, %31 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wakeup_source_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ep_poll_callback(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %3 to i32
  %10 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 4
  %11 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %10) #11
  %12 = load i32, ptr @sysctl_net_busy_poll, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call ptr @sock_from_file(ptr noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.socket, ptr %17, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 14
  %25 = load volatile i32, ptr %24, align 8
  %26 = icmp ult i32 %25, 17
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.eventpoll, ptr %28, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 %25, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %27, %23, %19, %14, %4
  %34 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 268435455
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %121, label %38

38:                                               ; preds = %33
  %39 = icmp ne ptr %3, null
  %40 = and i32 %35, %9
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %121, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 6
  %45 = load volatile ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, inttoptr (i32 -1 to ptr)
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %7, align 4
  %49 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, inttoptr (i32 -1 to ptr)
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !36
  br label %53

53:                                               ; preds = %53, %52
  %54 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %49, i32 -1, i32 0) #11, !srcloc !39
  %55 = extractvalue { i32, i32 } %54, 0
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %53

57:                                               ; preds = %53
  %58 = extractvalue { i32, i32 } %54, 1
  %59 = inttoptr i32 %58 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !40
  %60 = icmp eq ptr %59, inttoptr (i32 -1 to ptr)
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.eventpoll, ptr %48, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !41
  %63 = ptrtoint ptr %6 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #11, !srcloc !36
  %64 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %63, ptr %62) #11, !srcloc !42
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = inttoptr i32 %65 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !43
  store ptr %66, ptr %49, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %67 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 7
  %68 = load volatile ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  tail call void @__pm_stay_awake(ptr noundef nonnull %68) #11
  br label %71

71:                                               ; preds = %70, %61
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %99

72:                                               ; preds = %43
  %73 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 1
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  %78 = ptrtoint ptr %73 to i32
  %79 = ptrtoint ptr %77 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %73) #11, !srcloc !36
  br label %80

80:                                               ; preds = %80, %76
  %81 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %73, i32 %78, i32 %79) #11, !srcloc !39
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %80

84:                                               ; preds = %80
  %85 = extractvalue { i32, i32 } %81, 1
  %86 = inttoptr i32 %85 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !45
  %87 = icmp eq ptr %73, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 3, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #11, !srcloc !36
  %90 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %78, ptr %89) #11, !srcloc !42
  %91 = extractvalue { i32, i32 } %90, 0
  %92 = inttoptr i32 %91 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !47
  store ptr %73, ptr %92, align 4
  %93 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 1, i32 1
  store ptr %92, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %94 = getelementptr inbounds %struct.epitem, ptr %6, i32 0, i32 7
  %95 = load volatile ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  tail call void @__pm_stay_awake(ptr noundef nonnull %95) #11
  br label %98

98:                                               ; preds = %97, %88
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %99

99:                                               ; preds = %98, %84, %72, %71, %57, %47
  %100 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 1
  %101 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 1, i32 1
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %122, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %34, align 8
  %106 = and i32 %105, 268435456
  %107 = icmp ne i32 %106, 0
  %108 = and i32 %9, 16384
  %109 = icmp eq i32 %108, 0
  %110 = and i1 %109, %107
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = and i32 %9, 5
  switch i32 %112, label %119 [
    i32 1, label %113
    i32 4, label %115
    i32 0, label %118
  ]

113:                                              ; preds = %111
  %114 = and i32 %105, 1
  br label %119

115:                                              ; preds = %111
  %116 = lshr i32 %105, 2
  %117 = and i32 %116, 1
  br label %119

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %115, %113, %111, %104
  %120 = phi i32 [ 0, %111 ], [ 1, %118 ], [ 0, %104 ], [ %114, %113 ], [ %117, %115 ]
  tail call void @__wake_up(ptr noundef %100, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %122

121:                                              ; preds = %38, %33
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br label %129

122:                                              ; preds = %119, %99
  %123 = phi i32 [ %120, %119 ], [ 0, %99 ]
  %124 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 2, i32 1
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %124
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #11
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.eventpoll, ptr %8, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %128, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr)) #11
  br label %129

129:                                              ; preds = %127, %122, %121
  %130 = phi i32 [ 0, %121 ], [ %123, %127 ], [ %123, %122 ]
  %131 = load i32, ptr %34, align 8
  %132 = and i32 %9, 16384
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %136 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %135, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  store volatile ptr %135, ptr %135, align 4
  store ptr %135, ptr %136, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  %140 = getelementptr i8, ptr %0, i32 20
  store volatile ptr null, ptr %140, align 4
  br label %141

141:                                              ; preds = %134, %129
  %142 = and i32 %131, 268435456
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 1, i32 %130
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_from_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ep_destroy_wakeup_source(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.epitem, ptr %0, i32 0, i32 7
  %3 = load volatile ptr, ptr %2, align 8
  store volatile ptr null, ptr %2, align 8
  tail call void @synchronize_rcu() #11
  tail call void @wakeup_source_unregister(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_epoll_wait(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.poll_table_struct, align 8
  %7 = alloca %struct.wait_queue_entry, align 4
  %8 = alloca i64, align 8
  %9 = add i32 %2, -134217728
  %10 = icmp ult i32 %9, -134217727
  br i1 %10, label %286, label %11

11:                                               ; preds = %4
  %12 = shl nuw nsw i32 %2, 4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %12, i32 -1090519040) #12, !srcloc !49
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %286

16:                                               ; preds = %11
  %17 = tail call i32 @__fdget(i32 noundef %0) #11, !noalias !50
  %18 = and i32 %17, -4
  %19 = inttoptr i32 %18 to ptr
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %286, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @eventpoll_fops
  br i1 %24, label %25, label %281

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 15
  %27 = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #11, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 0, ptr %8, align 8, !annotation !27
  %28 = icmp eq ptr %3, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds %struct.timespec64, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = sext i32 %32 to i64
  %34 = or i64 %30, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %29
  %37 = tail call i64 @select_estimate_accuracy(ptr noundef nonnull %3) #11
  %38 = load i64, ptr %3, align 8
  %39 = icmp sgt i64 %38, 9223372035
  br i1 %39, label %45, label %40, !prof !8

40:                                               ; preds = %36
  %41 = load i64, ptr %31, align 8
  %42 = mul i64 %38, 1000000000
  %43 = and i64 %41, 4294967295
  %44 = add i64 %43, %42
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i64 [ %44, %40 ], [ 9223372036854775807, %36 ]
  store i64 %46, ptr %8, align 8
  br label %50

47:                                               ; preds = %29, %25
  %48 = xor i1 %28, true
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ 0, %45 ], [ %49, %47 ]
  %52 = phi i64 [ %37, %45 ], [ 0, %47 ]
  %53 = phi ptr [ %8, %45 ], [ null, %47 ]
  %54 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 3
  %55 = load volatile ptr, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 3, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %54
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 6
  %63 = load volatile ptr, ptr %62, align 8
  %64 = icmp ne ptr %63, inttoptr (i32 -1 to ptr)
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %61, %57, %50
  %67 = phi i32 [ 1, %57 ], [ %65, %61 ], [ 1, %50 ]
  %68 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %69 = getelementptr inbounds %struct.poll_table_struct, ptr %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 4
  %71 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 3, i32 1
  %72 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 6
  %73 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 7
  %74 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 12
  %75 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 1
  %76 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 2
  %77 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3
  %78 = getelementptr inbounds %struct.wait_queue_entry, ptr %7, i32 0, i32 3, i32 1
  %79 = getelementptr inbounds %struct.eventpoll, ptr %27, i32 0, i32 1, i32 1
  br label %80

80:                                               ; preds = %276, %66
  %81 = phi i32 [ %67, %66 ], [ %277, %276 ]
  %82 = phi i32 [ %51, %66 ], [ %278, %276 ]
  %83 = icmp eq i32 %81, 0
  br i1 %83, label %200, label %84

84:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr %5, ptr %5, align 8
  store ptr %5, ptr %68, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %85 = tail call ptr @llvm.thread.pointer() #11
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 98, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %279

95:                                               ; preds = %89, %84
  store ptr null, ptr %6, align 8
  store i32 -1, ptr %69, align 4
  call void @mutex_lock(ptr noundef %27) #11
  call void @_raw_write_lock_irq(ptr noundef %70) #11
  %96 = load volatile ptr, ptr %54, align 4
  %97 = icmp eq ptr %96, %54
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %5, align 8
  %100 = load ptr, ptr %71, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %5, ptr %101, align 4
  store ptr %96, ptr %5, align 8
  store ptr %99, ptr %100, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %54, ptr %54, align 4
  store ptr %54, ptr %71, align 4
  br label %103

103:                                              ; preds = %98, %95
  store volatile ptr null, ptr %72, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %70, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %104 = load ptr, ptr %5, align 8
  %105 = icmp eq ptr %104, %5
  br i1 %105, label %197, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  br label %108

108:                                              ; preds = %191, %106
  %109 = phi ptr [ %1, %106 ], [ %193, %191 ]
  %110 = phi ptr [ %104, %106 ], [ %112, %191 ]
  %111 = phi i32 [ 0, %106 ], [ %192, %191 ]
  %112 = load ptr, ptr %110, align 4
  %113 = getelementptr i8, ptr %110, i32 36
  %114 = load volatile ptr, ptr %113, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.wakeup_source, ptr %114, i32 0, i32 18
  %118 = load i8, ptr %117, align 8
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %73, align 4
  call void @__pm_stay_awake(ptr noundef %122) #11
  br label %123

123:                                              ; preds = %121, %116
  call void @__pm_relax(ptr noundef nonnull %114) #11
  %124 = load ptr, ptr %110, align 4
  br label %125

125:                                              ; preds = %123, %108
  %126 = phi ptr [ %124, %123 ], [ %112, %108 ]
  %127 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %128, ptr %129, align 4
  store volatile ptr %126, ptr %128, align 4
  store volatile ptr %110, ptr %110, align 4
  store ptr %110, ptr %127, align 4
  %130 = getelementptr i8, ptr %110, i32 12
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr i8, ptr %110, i32 44
  %133 = load i32, ptr %132, align 8
  store i32 %133, ptr %69, align 4
  %134 = getelementptr inbounds %struct.file, ptr %131, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, @eventpoll_fops
  br i1 %136, label %143, label %137

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.file_operations, ptr %135, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141, !prof !8

141:                                              ; preds = %137
  %142 = call i32 %139(ptr noundef %131, ptr noundef nonnull %6) #11
  br label %145

143:                                              ; preds = %125
  %144 = call fastcc i32 @__ep_eventpoll_poll(ptr noundef %131, ptr noundef nonnull %6, i32 noundef 1) #11
  br label %145

145:                                              ; preds = %143, %141, %137
  %146 = phi i32 [ %144, %143 ], [ %142, %141 ], [ 325, %137 ]
  %147 = load i32, ptr %132, align 8
  %148 = and i32 %147, %146
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %191, label %150

150:                                              ; preds = %145
  %151 = getelementptr i8, ptr %110, i32 52
  %152 = load i64, ptr %151, align 8
  %153 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #13, !srcloc !33
  %154 = and i32 %153, -13
  %155 = or i32 %154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %155) #11, !srcloc !34
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %156 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %109, i32 %148, i32 -1090519041) #11, !srcloc !54
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %153) #11, !srcloc !34
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.epoll_event, ptr %109, i32 0, i32 1
  %160 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %107) #13, !srcloc !33
  %161 = and i32 %160, -13
  %162 = or i32 %161, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #11, !srcloc !34
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %163 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %159, i64 %152, i32 -1090519041) #11, !srcloc !55
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #11, !srcloc !34
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !35
  %164 = icmp ne i32 %163, 0
  %165 = getelementptr %struct.epoll_event, ptr %109, i32 1
  %166 = icmp eq ptr %165, null
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %158, %150
  %169 = load ptr, ptr %5, align 8
  %170 = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  store ptr %110, ptr %170, align 4
  store ptr %169, ptr %110, align 4
  store ptr %5, ptr %127, align 4
  store volatile ptr %110, ptr %5, align 8
  %171 = load volatile ptr, ptr %113, align 8
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  call void @__pm_stay_awake(ptr noundef nonnull %171) #11
  br label %174

174:                                              ; preds = %173, %168
  %175 = icmp eq i32 %111, 0
  %176 = select i1 %175, i32 -14, i32 %111
  br label %197

177:                                              ; preds = %158
  %178 = add nsw i32 %111, 1
  %179 = load i32, ptr %132, align 8
  %180 = and i32 %179, 1073741824
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = and i32 %179, -268435456
  store i32 %183, ptr %132, align 8
  br label %191

184:                                              ; preds = %177
  %185 = icmp sgt i32 %179, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  %187 = load ptr, ptr %71, align 4
  store ptr %110, ptr %71, align 4
  store ptr %54, ptr %110, align 4
  store ptr %187, ptr %127, align 4
  store volatile ptr %110, ptr %187, align 4
  %188 = load volatile ptr, ptr %113, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  call void @__pm_stay_awake(ptr noundef nonnull %188) #11
  br label %191

191:                                              ; preds = %190, %186, %184, %182, %145
  %192 = phi i32 [ %111, %145 ], [ %178, %184 ], [ %178, %182 ], [ %178, %186 ], [ %178, %190 ]
  %193 = phi ptr [ %109, %145 ], [ %165, %184 ], [ %165, %182 ], [ %165, %186 ], [ %165, %190 ]
  %194 = icmp ne ptr %112, %5
  %195 = icmp slt i32 %192, %2
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %108, label %197

197:                                              ; preds = %191, %174, %103
  %198 = phi i32 [ 0, %103 ], [ %176, %174 ], [ %192, %191 ]
  call fastcc void @ep_done_scan(ptr noundef %27, ptr noundef nonnull %5) #11
  call void @mutex_unlock(ptr noundef %27) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %279

200:                                              ; preds = %197, %80
  %201 = icmp eq i32 %82, 0
  br i1 %201, label %202, label %279

202:                                              ; preds = %200
  %203 = load volatile i32, ptr %74, align 4
  %204 = icmp ugt i32 %203, 16
  %205 = load i32, ptr @sysctl_net_busy_poll, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %218

208:                                              ; preds = %202
  call void @napi_busy_loop(i32 noundef %203, ptr noundef nonnull @ep_busy_loop_end, ptr noundef %27, i1 noundef zeroext false, i16 noundef zeroext 8) #11
  %209 = load volatile ptr, ptr %54, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %210 = icmp eq ptr %209, %54
  br i1 %210, label %211, label %276

211:                                              ; preds = %208
  %212 = load ptr, ptr %71, align 4
  %213 = icmp eq ptr %212, %54
  br i1 %213, label %214, label %276

214:                                              ; preds = %211
  %215 = load volatile ptr, ptr %72, align 8
  %216 = icmp eq ptr %215, inttoptr (i32 -1 to ptr)
  br i1 %216, label %217, label %276

217:                                              ; preds = %214
  store i32 0, ptr %74, align 4
  br label %218

218:                                              ; preds = %217, %202
  %219 = tail call ptr @llvm.thread.pointer() #11
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %220, 256
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %279, !prof !32

223:                                              ; preds = %218
  %224 = load volatile i32, ptr %219, align 4
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %279

227:                                              ; preds = %223
  store ptr %219, ptr %75, align 4
  store ptr @autoremove_wake_function, ptr %76, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %78, align 4
  store i32 0, ptr %7, align 4
  call void @_raw_write_lock_irq(ptr noundef %70) #11
  %228 = getelementptr inbounds %struct.task_struct, ptr %219, i32 0, i32 1
  store volatile i32 1, ptr %228, align 8
  %229 = load volatile ptr, ptr %54, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %230 = icmp eq ptr %229, %54
  br i1 %230, label %231, label %255

231:                                              ; preds = %227
  %232 = load ptr, ptr %71, align 4
  %233 = icmp eq ptr %232, %54
  br i1 %233, label %234, label %255

234:                                              ; preds = %231
  %235 = load volatile ptr, ptr %72, align 8
  %236 = icmp eq ptr %235, inttoptr (i32 -1 to ptr)
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = load i32, ptr %7, align 4
  %239 = or i32 %238, 1
  store i32 %239, ptr %7, align 4
  br label %240

240:                                              ; preds = %244, %237
  %241 = phi ptr [ %79, %237 ], [ %242, %244 ]
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, %79
  br i1 %243, label %249, label %244

244:                                              ; preds = %240
  %245 = getelementptr i8, ptr %242, i32 -12
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, 32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %240

249:                                              ; preds = %244, %240
  %250 = phi ptr [ %242, %244 ], [ %79, %240 ]
  %251 = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  store ptr %77, ptr %251, align 4
  store ptr %250, ptr %77, align 4
  store ptr %241, ptr %78, align 4
  store volatile ptr %77, ptr %241, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %70, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  %252 = call i32 @schedule_hrtimeout_range(ptr noundef %53, i64 noundef %52, i32 noundef 0) #11
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  br label %256

255:                                              ; preds = %234, %231, %227
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %70, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %256

256:                                              ; preds = %255, %249
  %257 = phi i32 [ %254, %249 ], [ 0, %255 ]
  store volatile i32 0, ptr %228, align 8
  %258 = load volatile ptr, ptr %77, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %259 = icmp eq ptr %258, %77
  %260 = load ptr, ptr %78, align 4
  %261 = icmp eq ptr %260, %77
  %262 = select i1 %259, i1 %261, i1 false
  br i1 %262, label %276, label %263

263:                                              ; preds = %256
  call void @_raw_write_lock_irq(ptr noundef %70) #11
  %264 = icmp eq i32 %257, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %263
  %266 = load ptr, ptr %77, align 4
  br label %271

267:                                              ; preds = %263
  %268 = load volatile ptr, ptr %77, align 4
  %269 = icmp eq ptr %268, %77
  %270 = zext i1 %269 to i32
  br label %271

271:                                              ; preds = %267, %265
  %272 = phi ptr [ %268, %267 ], [ %266, %265 ]
  %273 = phi i32 [ %270, %267 ], [ 1, %265 ]
  %274 = load ptr, ptr %78, align 4
  %275 = getelementptr inbounds %struct.list_head, ptr %272, i32 0, i32 1
  store ptr %274, ptr %275, align 4
  store volatile ptr %272, ptr %274, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %77, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %78, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %70, i32 0) #11, !srcloc !18
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %276

276:                                              ; preds = %271, %256, %214, %211, %208
  %277 = phi i32 [ 1, %208 ], [ 1, %211 ], [ 1, %214 ], [ %273, %271 ], [ 1, %256 ]
  %278 = phi i32 [ 0, %208 ], [ 0, %211 ], [ 0, %214 ], [ %257, %271 ], [ %257, %256 ]
  br label %80

279:                                              ; preds = %223, %218, %200, %197, %94
  %280 = phi i32 [ -4, %94 ], [ %198, %197 ], [ 0, %200 ], [ -4, %223 ], [ -4, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  br label %281

281:                                              ; preds = %279, %21
  %282 = phi i32 [ %280, %279 ], [ -22, %21 ]
  %283 = and i32 %17, 1
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  call void @fput(ptr noundef nonnull %19) #11
  br label %286

286:                                              ; preds = %285, %281, %16, %11, %4
  %287 = phi i32 [ -22, %4 ], [ -14, %11 ], [ -9, %16 ], [ %282, %281 ], [ %282, %285 ]
  ret i32 %287
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @select_estimate_accuracy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_busy_loop(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ep_busy_loop_end(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %3
  br i1 %9, label %10, label %24

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.eventpoll, ptr %0, i32 0, i32 6
  %12 = load volatile ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, inttoptr (i32 -1 to ptr)
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load volatile i32, ptr @sysctl_net_busy_poll, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = add i32 %15, %1
  %19 = tail call i64 @sched_clock() #11
  %20 = lshr i64 %19, 10
  %21 = trunc i64 %20 to i32
  %22 = sub i32 %18, %21
  %23 = icmp slt i32 %22, 0
  br label %24

24:                                               ; preds = %17, %14, %10, %6, %2
  %25 = phi i1 [ true, %10 ], [ %23, %17 ], [ true, %14 ], [ true, %6 ], [ true, %2 ]
  ret i1 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timespec64_add_safe(ptr sret(%struct.timespec64) align 8, [2 x i64], [2 x i64]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_epoll_pwait(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call i32 @set_user_sigmask(ptr noundef %4, i32 noundef %5) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @do_epoll_wait(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  %11 = icmp eq i32 %10, -4
  %12 = tail call ptr @llvm.thread.pointer() #11
  br i1 %11, label %13, label %22

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27, !prof !32

17:                                               ; preds = %13
  %18 = load volatile i32, ptr %12, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27, !prof !8

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 519, i32 noundef 9, ptr noundef null) #11
  br label %27

22:                                               ; preds = %9
  %23 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %12) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 97
  tail call void @__set_current_blocked(ptr noundef %26) #11
  br label %27

27:                                               ; preds = %25, %22, %21, %17, %13, %6
  %28 = phi i32 [ %7, %6 ], [ -4, %13 ], [ -4, %17 ], [ -4, %21 ], [ %10, %22 ], [ %10, %25 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_user_sigmask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_current_blocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @poll_select_set_timeout(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 2148943538}
!10 = !{i64 2156408949}
!11 = !{i64 2148943755}
!12 = !{i64 2156435377}
!13 = !{i64 2149296148}
!14 = !{i64 2149291972}
!15 = !{i64 2149292047, i64 2149292074, i64 2149292121, i64 2149292143, i64 2149292171, i64 2149292191}
!16 = !{i64 2149319151}
!17 = !{i64 2149303225}
!18 = !{i64 1806439}
!19 = !{i64 381943}
!20 = !{i64 2149344842}
!21 = !{!22}
!22 = distinct !{!22, !23, !"fdget: argument 0"}
!23 = distinct !{!23, !"fdget"}
!24 = !{!25}
!25 = distinct !{!25, !26, !"fdget: argument 0"}
!26 = distinct !{!26, !"fdget"}
!27 = !{!"auto-init"}
!28 = !{i64 2149044842}
!29 = !{i64 2156492107}
!30 = !{i64 2156500662}
!31 = !{i64 2150022765, i64 2150022790}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2518877}
!34 = !{i64 2519074}
!35 = !{i64 2150004353}
!36 = !{i64 486459, i64 2147976430, i64 2147976456, i64 2147976503, i64 2147976525, i64 2147976553, i64 2147976573}
!37 = !{i64 2147990100, i64 2147990132, i64 2147990161, i64 2147990195, i64 2147990226, i64 2147990249}
!38 = !{i64 2156455116}
!39 = !{i64 498630, i64 498651, i64 498674, i64 498693, i64 498712}
!40 = !{i64 2156455514}
!41 = !{i64 2156456332}
!42 = !{i64 495906, i64 495923, i64 495947, i64 495973, i64 495991}
!43 = !{i64 2156456651}
!44 = !{i64 2156452415}
!45 = !{i64 2156452795}
!46 = !{i64 2156453596}
!47 = !{i64 2156453915}
!48 = !{i64 2156462999}
!49 = !{i64 2156542014, i64 2156542039}
!50 = !{!51}
!51 = distinct !{!51, !52, !"fdget: argument 0"}
!52 = distinct !{!52, !"fdget"}
!53 = !{i64 2148572176}
!54 = !{i64 2153638893, i64 2153639173, i64 2153639507, i64 2153639841}
!55 = !{i64 2153648910, i64 2153649190, i64 2153649524, i64 2153649858}
