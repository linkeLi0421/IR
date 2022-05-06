; ModuleID = '/llk/IR/kernel/seccomp.c_pt.bc'
source_filename = "../kernel/seccomp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.85 }
%union.anon.85 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.95, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seccomp_notif_sizes = type { i16, i16, i16 }
%struct.ctl_path = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.seccomp_log_name = type { i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.172, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.172 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.seccomp_filter = type { %struct.refcount_struct, %struct.refcount_struct, i8, %struct.action_cache, ptr, ptr, ptr, %struct.mutex, %struct.wait_queue_head }
%struct.action_cache = type { [15 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.seccomp_knotif = type { ptr, i64, ptr, i32, i32, i32, i32, %struct.completion, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.108 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { %struct.anon.110, [0 x %struct.sock_filter] }
%struct.anon.110 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.pt_regs = type { [18 x i32] }
%struct.notification = type { %struct.semaphore, i64, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.sock_fprog = type { i16, ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sock_fprog_kern = type { i16, ptr }
%struct.seccomp_notif_addfd = type { i64, i32, i32, i32, i32 }
%struct.seccomp_kaddfd = type { ptr, i32, i32, i32, %union.anon.180, %struct.completion, %struct.list_head }
%union.anon.180 = type { i32 }
%struct.seccomp_notif_resp = type { i64, i64, i32, i32 }
%struct.seccomp_notif = type { i64, i32, i32, %struct.seccomp_data }

@.str = private unnamed_addr constant [17 x i8] c"kernel/seccomp.c\00", align 1
@__secure_computing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_seccomp__411_2369_seccomp_sysctl_init6 = internal global ptr @seccomp_sysctl_init, section ".initcall6.init", align 4
@seccomp_actions_logged = internal unnamed_addr global i32 191, align 4
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@seccomp_prepare_filter.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"&sfilter->notify_lock\00", align 1
@seccomp_prepare_filter.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"&sfilter->wqh\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"seccomp notify\00", align 1
@seccomp_notify_ops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @seccomp_notify_poll, ptr @seccomp_notify_ioctl, ptr @seccomp_notify_ioctl, ptr null, i32 0, ptr null, ptr null, ptr @seccomp_notify_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@seccomp_is_const_allow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.seccomp_get_notif_sizes.sizes = private unnamed_addr constant %struct.seccomp_notif_sizes { i16 80, i16 24, i16 64 }, align 2
@seccomp_sysctl_path = internal global [3 x %struct.ctl_path] [%struct.ctl_path { ptr @.str.10 }, %struct.ctl_path { ptr @.str.11 }, %struct.ctl_path zeroinitializer], align 4
@seccomp_sysctl_table = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.12, ptr @seccomp_actions_avail, i32 63, i16 292, ptr null, ptr @proc_dostring, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr null, i32 0, i16 420, ptr null, ptr @seccomp_actions_logged_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"\014seccomp: sysctl registration failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"seccomp\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"actions_avail\00", align 1
@seccomp_actions_avail = internal constant [63 x i8] c"kill_process kill_thread trap errno user_notif trace log allow\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"actions_logged\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@seccomp_log_names = internal unnamed_addr constant [9 x %struct.seccomp_log_name] [%struct.seccomp_log_name { i32 1, ptr @.str.15 }, %struct.seccomp_log_name { i32 2, ptr @.str.16 }, %struct.seccomp_log_name { i32 4, ptr @.str.17 }, %struct.seccomp_log_name { i32 8, ptr @.str.18 }, %struct.seccomp_log_name { i32 128, ptr @.str.19 }, %struct.seccomp_log_name { i32 16, ptr @.str.20 }, %struct.seccomp_log_name { i32 32, ptr @.str.21 }, %struct.seccomp_log_name { i32 64, ptr @.str.22 }, %struct.seccomp_log_name zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"kill_process\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"kill_thread\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"trap\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"user_notif\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_seccomp__411_2369_seccomp_sysctl_init6], section "llvm.metadata"

@sys_seccomp = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_seccomp

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_seccomp_spec_mitigate(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @seccomp_filter_release(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 103, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 565, i32 noundef 9, ptr noundef null) #16
  br label %8

8:                                                ; preds = %7, %1
  store ptr null, ptr %2, align 8
  tail call fastcc void @__seccomp_filter_release(ptr noundef %3)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__seccomp_filter_release(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %19, %1
  %4 = phi ptr [ %21, %19 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #16, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #16, !srcloc !12
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = extractvalue { i32, i32, i32 } %6, 0
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %23, label %12, !prof !9

12:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #16
  br label %23

13:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %14 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 8, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 16 to ptr)) #16
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %3

23:                                               ; preds = %19, %12, %9
  br label %24

24:                                               ; preds = %33, %23
  %25 = phi ptr [ %35, %33 ], [ %0, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #16, !srcloc !11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #16, !srcloc !12
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = extractvalue { i32, i32, i32 } %26, 0
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %39, label %32, !prof !9

32:                                               ; preds = %29
  tail call void @refcount_warn_saturate(ptr noundef nonnull %25, i32 noundef 3) #16
  br label %39

33:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %34 = getelementptr inbounds %struct.seccomp_filter, ptr %25, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.seccomp_filter, ptr %25, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  tail call void @bpf_prog_destroy(ptr noundef %37) #16
  tail call void @kfree(ptr noundef nonnull %25) #16
  %38 = icmp eq ptr %35, null
  br i1 %38, label %39, label %24

39:                                               ; preds = %33, %32, %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_seccomp_filter(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 103, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #16, !srcloc !11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #16, !srcloc !14
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !15

9:                                                ; preds = %5
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !9

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 2, %5 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef %14) #16
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.seccomp_filter, ptr %3, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #16, !srcloc !11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #16, !srcloc !14
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !15

20:                                               ; preds = %15
  %21 = add i32 %18, 1
  %22 = or i32 %21, %18
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %26, label %24, !prof !9

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 2, %15 ], [ 1, %20 ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %25) #16
  br label %26

26:                                               ; preds = %24, %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__secure_computing(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 103
  %4 = load i32, ptr %3, align 16
  %5 = icmp eq ptr %0, null
  %6 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 5
  %7 = select i1 %5, ptr %6, ptr %0
  %8 = load i32, ptr %7, align 8
  switch i32 %4, label %17 [
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
  ]

9:                                                ; preds = %1
  switch i32 %8, label %10 [
    i32 3, label %18
    i32 4, label %18
    i32 1, label %18
    i32 173, label %18
  ]

10:                                               ; preds = %9
  store i32 3, ptr %3, align 16
  tail call void @do_exit(i32 noundef 9) #17
  unreachable

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @__seccomp_filter(i32 noundef %8, ptr noundef %0, i1 noundef zeroext false)
  br label %18

13:                                               ; preds = %1
  %14 = load i1, ptr @__secure_computing.__already_done, align 1
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %13
  store i1 true, ptr @__secure_computing.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1319, i32 noundef 9, ptr noundef null) #16
  br label %16

16:                                               ; preds = %15, %13
  tail call void @do_exit(i32 noundef 9) #17
  unreachable

17:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1323, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

18:                                               ; preds = %11, %9, %9, %9, %9
  %19 = phi i32 [ %12, %11 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ], [ 0, %9 ]
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__seccomp_filter(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.seccomp_knotif, align 8
  %5 = alloca %struct.seccomp_data, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %6 = icmp eq ptr %1, null
  %7 = tail call ptr @llvm.thread.pointer() #16
  br i1 %6, label %8, label %42

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 64
  store i32 %12, ptr %5, align 8
  %13 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 1
  store i32 1073741864, ptr %13, align 4
  %14 = getelementptr i8, ptr %10, i32 8180
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %10, i32 8116
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %10, i32 8120
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %10, i32 8124
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %10, i32 8128
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %10, i32 8132
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %15 to i64
  %27 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3
  store i64 %26, ptr %27, align 8
  %28 = zext i32 %17 to i64
  %29 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3, i32 1
  store i64 %28, ptr %29, align 8
  %30 = zext i32 %19 to i64
  %31 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3, i32 2
  store i64 %30, ptr %31, align 8
  %32 = zext i32 %21 to i64
  %33 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3, i32 3
  store i64 %32, ptr %33, align 8
  %34 = zext i32 %23 to i64
  %35 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3, i32 4
  store i64 %34, ptr %35, align 8
  %36 = zext i32 %25 to i64
  %37 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 3, i32 5
  store i64 %36, ptr %37, align 8
  %38 = getelementptr i8, ptr %10, i32 8172
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.seccomp_data, ptr %5, i32 0, i32 2
  store i64 %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %8, %3
  %43 = phi ptr [ %5, %8 ], [ %1, %3 ]
  %44 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 103, i32 2
  %45 = load volatile ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49, !prof !15

47:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #16
  %48 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 103
  store i32 3, ptr %48, align 16
  br label %288

49:                                               ; preds = %42
  %50 = load i32, ptr %43, align 8
  %51 = icmp ugt i32 %50, 451
  br i1 %51, label %63, label %52, !prof !15

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.seccomp_filter, ptr %45, i32 0, i32 3
  %54 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %50, i32 452) #16, !srcloc !19
  %55 = and i32 %54, %50
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr %53, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %299

63:                                               ; preds = %52, %49
  br label %64

64:                                               ; preds = %105, %63
  %65 = phi ptr [ %110, %105 ], [ null, %63 ]
  %66 = phi i32 [ %111, %105 ], [ 2147418112, %63 ]
  %67 = phi ptr [ %113, %105 ], [ %45, %63 ]
  %68 = getelementptr inbounds %struct.seccomp_filter, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  call void @migrate_disable() #16
  %70 = load volatile i32, ptr @bpf_stats_enabled_key, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %100, !prof !15

72:                                               ; preds = %64
  %73 = call i64 @sched_clock() #16
  %74 = getelementptr inbounds %struct.bpf_prog, ptr %69, i32 1
  %75 = getelementptr inbounds %struct.bpf_prog, ptr %69, i32 0, i32 9
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef nonnull %43, ptr noundef %74) #16
  %78 = getelementptr inbounds %struct.bpf_prog, ptr %69, i32 0, i32 7
  %79 = load ptr, ptr %78, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = call i32 @llvm.read_register.i32(metadata !0) #16
  %82 = inttoptr i32 %81 to ptr
  %83 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #3, !srcloc !20
  %84 = add i32 %83, %80
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.bpf_prog_stats, ptr %85, i32 0, i32 3
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !21
  %88 = load i32, ptr %86, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %86, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !22
  %90 = load i64, ptr %85, align 8
  %91 = add i64 %90, 1
  store i64 %91, ptr %85, align 8
  %92 = getelementptr inbounds %struct.bpf_prog_stats, ptr %85, i32 0, i32 1
  %93 = call i64 @sched_clock() #16
  %94 = sub i64 %93, %73
  %95 = and i64 %94, 4294967295
  %96 = load i64, ptr %92, align 8
  %97 = add i64 %95, %96
  store i64 %97, ptr %92, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !23
  %98 = load i32, ptr %86, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %86, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %87) #16, !srcloc !24
  br label %105

100:                                              ; preds = %64
  %101 = getelementptr inbounds %struct.bpf_prog, ptr %69, i32 1
  %102 = getelementptr inbounds %struct.bpf_prog, ptr %69, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef nonnull %43, ptr noundef %101) #16
  br label %105

105:                                              ; preds = %100, %72
  %106 = phi i32 [ %77, %72 ], [ %104, %100 ]
  call void @migrate_enable() #16
  %107 = and i32 %106, -65536
  %108 = and i32 %66, -65536
  %109 = icmp slt i32 %107, %108
  %110 = select i1 %109, ptr %67, ptr %65
  %111 = select i1 %109, i32 %106, i32 %66
  %112 = getelementptr inbounds %struct.seccomp_filter, ptr %67, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %64

115:                                              ; preds = %105
  %116 = and i32 %111, 65535
  %117 = and i32 %111, -65536
  switch i32 %117, label %279 [
    i32 327680, label %118
    i32 196608, label %126
    i32 2146435072, label %135
    i32 2143289344, label %165
    i32 2147221504, label %299
    i32 2147418112, label %299
  ]

118:                                              ; preds = %115
  %119 = call i32 @llvm.umin.i32(i32 %116, i32 4095)
  %120 = call i32 @llvm.read_register.i32(metadata !0)
  %121 = or i32 %120, 8191
  %122 = add nsw i32 %121, -7
  %123 = inttoptr i32 %122 to ptr
  %124 = getelementptr %struct.pt_regs, ptr %123, i32 -1
  %125 = sub nsw i32 0, %119
  store i32 %125, ptr %124, align 16
  br label %299

126:                                              ; preds = %115
  %127 = call i32 @llvm.read_register.i32(metadata !0)
  %128 = or i32 %127, 8191
  %129 = add nsw i32 %128, -7
  %130 = inttoptr i32 %129 to ptr
  %131 = getelementptr %struct.pt_regs, ptr %130, i32 -1
  %132 = getelementptr %struct.pt_regs, ptr %130, i32 -1, i32 0, i32 17
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %131, align 16
  %134 = call i32 @force_sig_seccomp(i32 noundef %0, i32 noundef %116, i1 noundef zeroext false) #16
  br label %299

135:                                              ; preds = %115
  br i1 %2, label %299, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 5
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 1024
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = call i32 @llvm.read_register.i32(metadata !0)
  %143 = or i32 %142, 8191
  %144 = add nsw i32 %143, -7
  %145 = inttoptr i32 %144 to ptr
  %146 = getelementptr %struct.pt_regs, ptr %145, i32 -1
  store i32 -38, ptr %146, align 16
  br label %299

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 120
  store i32 %116, ptr %148, align 8
  call void @ptrace_notify(i32 noundef 1797) #16
  %149 = load volatile i32, ptr %7, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 98, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = and i32 %154, 256
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %299

157:                                              ; preds = %152, %147
  %158 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 5
  %159 = load i32, ptr %158, align 64
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %299, label %161

161:                                              ; preds = %157
  %162 = call fastcc i32 @__seccomp_filter(i32 noundef %159, ptr noundef null, i1 noundef zeroext true)
  %163 = icmp ne i32 %162, 0
  %164 = sext i1 %163 to i32
  br label %299

165:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false) #16
  %166 = getelementptr inbounds %struct.seccomp_filter, ptr %110, i32 0, i32 7
  call void @mutex_lock(ptr noundef %166) #16
  %167 = getelementptr inbounds %struct.seccomp_filter, ptr %110, i32 0, i32 6
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  call void @mutex_unlock(ptr noundef %166) #16
  %171 = call i32 @llvm.read_register.i32(metadata !0) #16
  br label %272

172:                                              ; preds = %165
  store ptr %7, ptr %4, align 8
  %173 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 3
  store i32 0, ptr %173, align 4
  %174 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 2
  store ptr %43, ptr %174, align 8
  %175 = getelementptr inbounds %struct.notification, ptr %168, i32 0, i32 1
  %176 = load i64, ptr %175, align 8
  %177 = add i64 %176, 1
  store i64 %177, ptr %175, align 8
  %178 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 1
  store i64 %176, ptr %178, align 8
  %179 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 7
  store i32 0, ptr %179, align 4
  %180 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %180, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #16
  %181 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 8
  %182 = load ptr, ptr %167, align 4
  %183 = getelementptr inbounds %struct.notification, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  store ptr %181, ptr %185, align 4
  store ptr %184, ptr %181, align 4
  %186 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 8, i32 1
  store ptr %183, ptr %186, align 8
  store volatile ptr %181, ptr %183, align 4
  %187 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 9
  store volatile ptr %187, ptr %187, align 4
  %188 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 9, i32 1
  store ptr %187, ptr %188, align 8
  %189 = load ptr, ptr %167, align 4
  call void @up(ptr noundef %189) #16
  %190 = getelementptr inbounds %struct.seccomp_filter, ptr %110, i32 0, i32 8
  call void @__wake_up(ptr noundef %190, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #16
  %191 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 6
  %192 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 4
  %193 = getelementptr inbounds %struct.seccomp_knotif, ptr %4, i32 0, i32 5
  br label %194

194:                                              ; preds = %235, %172
  call void @mutex_unlock(ptr noundef %166) #16
  %195 = call i32 @wait_for_completion_interruptible(ptr noundef %179) #16
  call void @mutex_lock(ptr noundef %166) #16
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %243

197:                                              ; preds = %194
  %198 = load volatile ptr, ptr %187, align 4
  %199 = icmp eq ptr %198, %187
  %200 = getelementptr i8, ptr %198, i32 -36
  %201 = icmp eq ptr %200, null
  %202 = or i1 %199, %201
  br i1 %202, label %235, label %203

203:                                              ; preds = %197
  %204 = getelementptr i8, ptr %198, i32 4
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %198, align 4
  %207 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  store ptr %205, ptr %207, align 4
  store volatile ptr %206, ptr %205, align 4
  store volatile ptr %198, ptr %198, align 4
  store ptr %198, ptr %204, align 4
  %208 = getelementptr i8, ptr %198, i32 -20
  %209 = load i8, ptr %208, align 4, !range !25
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %203
  %212 = load ptr, ptr %200, align 4
  %213 = getelementptr i8, ptr %198, i32 -28
  %214 = load i32, ptr %213, align 4
  %215 = call i32 @receive_fd(ptr noundef %212, i32 noundef %214) #16
  br label %223

216:                                              ; preds = %203
  %217 = getelementptr i8, ptr %198, i32 -32
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr %200, align 4
  %220 = getelementptr i8, ptr %198, i32 -28
  %221 = load i32, ptr %220, align 4
  %222 = call i32 @receive_fd_replace(i32 noundef %218, ptr noundef %219, i32 noundef %221) #16
  br label %223

223:                                              ; preds = %216, %211
  %224 = phi i32 [ %222, %216 ], [ %215, %211 ]
  store i32 %224, ptr %208, align 4
  %225 = getelementptr i8, ptr %198, i32 -24
  %226 = load i32, ptr %225, align 4
  %227 = and i32 %226, 2
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %223
  %230 = icmp slt i32 %224, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %229
  store i32 1, ptr %173, align 4
  br label %233

232:                                              ; preds = %229
  store i32 0, ptr %191, align 8
  store i32 0, ptr %192, align 8
  store i32 %224, ptr %193, align 4
  br label %233

233:                                              ; preds = %232, %231, %223
  %234 = getelementptr i8, ptr %198, i32 -16
  call void @complete(ptr noundef %234) #16
  br label %235

235:                                              ; preds = %233, %197
  %236 = load i32, ptr %173, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %194

238:                                              ; preds = %235
  %239 = load i32, ptr %193, align 4
  %240 = load i32, ptr %192, align 8
  %241 = load i32, ptr %191, align 8
  %242 = and i32 %241, 1
  br label %243

243:                                              ; preds = %238, %194
  %244 = phi i32 [ %239, %238 ], [ 0, %194 ]
  %245 = phi i32 [ %242, %238 ], [ 0, %194 ]
  %246 = phi i32 [ %240, %238 ], [ %195, %194 ]
  %247 = load ptr, ptr %187, align 4
  %248 = icmp eq ptr %247, %187
  br i1 %248, label %258, label %249

249:                                              ; preds = %249, %243
  %250 = phi ptr [ %251, %249 ], [ %247, %243 ]
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %250, i32 -20
  store i32 -3, ptr %252, align 4
  %253 = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.list_head, ptr %251, i32 0, i32 1
  store ptr %254, ptr %255, align 4
  store volatile ptr %251, ptr %254, align 4
  store volatile ptr %250, ptr %250, align 4
  store ptr %250, ptr %253, align 4
  %256 = getelementptr i8, ptr %250, i32 -16
  call void @complete(ptr noundef %256) #16
  %257 = icmp eq ptr %251, %187
  br i1 %257, label %258, label %249

258:                                              ; preds = %249, %243
  %259 = load ptr, ptr %167, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = load ptr, ptr %186, align 8
  %263 = load ptr, ptr %181, align 4
  %264 = getelementptr inbounds %struct.list_head, ptr %263, i32 0, i32 1
  store ptr %262, ptr %264, align 4
  store volatile ptr %263, ptr %262, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %181, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %186, align 8
  br label %265

265:                                              ; preds = %261, %258
  call void @mutex_unlock(ptr noundef %166) #16
  %266 = icmp eq i32 %245, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  br label %299

268:                                              ; preds = %265
  %269 = call i32 @llvm.read_register.i32(metadata !0) #16
  %270 = icmp eq i32 %246, 0
  %271 = select i1 %270, i32 %244, i32 %246
  br label %272

272:                                              ; preds = %268, %170
  %273 = phi i32 [ %171, %170 ], [ %269, %268 ]
  %274 = phi i32 [ -38, %170 ], [ %271, %268 ]
  %275 = or i32 %273, 8191
  %276 = add nsw i32 %275, -7
  %277 = inttoptr i32 %276 to ptr
  %278 = getelementptr %struct.pt_regs, ptr %277, i32 -1
  store i32 %274, ptr %278, align 16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  br label %299

279:                                              ; preds = %115
  %280 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 103
  store i32 3, ptr %280, align 16
  %281 = icmp eq i32 %117, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %284 = load ptr, ptr %283, align 16
  %285 = getelementptr inbounds %struct.signal_struct, ptr %284, i32 0, i32 1
  %286 = load volatile i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %298

288:                                              ; preds = %282, %279, %47
  %289 = phi i32 [ 0, %47 ], [ %116, %282 ], [ %116, %279 ]
  %290 = call i32 @llvm.read_register.i32(metadata !0)
  %291 = or i32 %290, 8191
  %292 = add nsw i32 %291, -7
  %293 = inttoptr i32 %292 to ptr
  %294 = getelementptr %struct.pt_regs, ptr %293, i32 -1
  %295 = getelementptr %struct.pt_regs, ptr %293, i32 -1, i32 0, i32 17
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %294, align 16
  %297 = call i32 @force_sig_seccomp(i32 noundef %0, i32 noundef %289, i1 noundef zeroext true) #16
  br label %299

298:                                              ; preds = %282
  call void @do_exit(i32 noundef 31) #17
  unreachable

299:                                              ; preds = %288, %272, %267, %161, %157, %152, %141, %135, %126, %118, %115, %115, %52
  %300 = phi i32 [ -1, %288 ], [ 0, %135 ], [ %164, %161 ], [ 0, %115 ], [ 0, %267 ], [ 0, %115 ], [ 0, %52 ], [ -1, %272 ], [ -1, %157 ], [ -1, %152 ], [ -1, %141 ], [ -1, %126 ], [ -1, %118 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret i32 %300
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @prctl_get_seccomp() local_unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 103
  %3 = load i32, ptr %2, align 16
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_seccomp(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = tail call fastcc i32 @do_seccomp(i32 noundef %0, i32 noundef %1, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prctl_set_seccomp(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %8 [
    i32 1, label %4
    i32 2, label %3
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i32 [ 1, %3 ], [ 0, %2 ]
  %6 = phi ptr [ %1, %3 ], [ null, %2 ]
  %7 = tail call fastcc i32 @do_seccomp(i32 noundef %5, i32 noundef 0, ptr noundef %6)
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_seccomp(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.seccomp_notif_sizes, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock_fprog, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  switch i32 %0, label %269 [
    i32 0, label %10
    i32 1, label %41
    i32 2, label %229
    i32 3, label %252
  ]

10:                                               ; preds = %3
  %11 = icmp ne i32 %1, 0
  %12 = icmp ne ptr %2, null
  %13 = or i1 %11, %12
  br i1 %13, label %269, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 94
  %17 = load ptr, ptr %16, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #16
  %18 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %19 = load volatile i32, ptr %18, align 4
  store volatile i32 %19, ptr %9, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %19, 65535
  %22 = icmp eq i32 %21, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  br i1 %22, label %23, label %24, !prof !15

23:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 432, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 103
  %26 = load i32, ptr %25, align 16
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  %29 = load volatile i32, ptr %18, align 4
  store volatile i32 %29, ptr %8, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %29, 65535
  %32 = icmp eq i32 %31, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br i1 %32, label %33, label %34, !prof !15

33:                                               ; preds = %28
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #16, !srcloc !27
  unreachable

34:                                               ; preds = %28
  store i32 1, ptr %25, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  tail call void @arch_seccomp_spec_mitigate(ptr noundef %15) #16
  tail call void @_set_bit(i32 noundef 7, ptr noundef %15) #16
  %35 = load ptr, ptr %16, align 4
  br label %36

36:                                               ; preds = %34, %24
  %37 = phi ptr [ %35, %34 ], [ %18, %24 ]
  %38 = phi i32 [ 0, %34 ], [ -22, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %39 = load i16, ptr %37, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !31
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %269

41:                                               ; preds = %3
  %42 = icmp ult i32 %1, 32
  br i1 %42, label %43, label %269

43:                                               ; preds = %41
  %44 = and i32 %1, 1
  %45 = icmp eq i32 %44, 0
  %46 = and i32 %1, 8
  %47 = icmp eq i32 %46, 0
  %48 = and i32 %1, 25
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %269, label %50

50:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store i64 0, ptr %7, align 8, !annotation !17
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1090519040) #18, !srcloc !34
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62, !prof !9

54:                                               ; preds = %50
  %55 = tail call ptr @llvm.thread.pointer() #16
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %56) #3, !srcloc !35
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %60 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %2, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !9

62:                                               ; preds = %54, %50
  %63 = phi i32 [ %60, %54 ], [ 8, %50 ]
  %64 = sub i32 8, %63
  %65 = getelementptr i8, ptr %7, i32 %64
  call void @llvm.memset.p0.i32(ptr align 1 %65, i8 0, i32 %63, i1 false) #16
  br label %91

66:                                               ; preds = %54
  %67 = load i16, ptr %7, align 8
  %68 = add i16 %67, -4097
  %69 = icmp ult i16 %68, -4096
  br i1 %69, label %91, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 50
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call zeroext i1 @ns_capable_noaudit(ptr noundef nonnull @init_user_ns, i32 noundef 21) #16
  br i1 %76, label %77, label %91

77:                                               ; preds = %75, %70
  %78 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %79 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 11712, i32 noundef 116) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.seccomp_filter, ptr %79, i32 0, i32 7
  call void @__mutex_init(ptr noundef %82, ptr noundef nonnull @.str.4, ptr noundef nonnull @seccomp_prepare_filter.__key) #16
  %83 = getelementptr inbounds %struct.seccomp_filter, ptr %79, i32 0, i32 5
  %84 = call i32 @bpf_prog_create_from_user(ptr noundef %83, ptr noundef nonnull %7, ptr noundef nonnull @seccomp_check_filter, i1 noundef zeroext true) #16
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  call void @kfree(ptr noundef nonnull %79) #16
  %87 = inttoptr i32 %84 to ptr
  br label %93

88:                                               ; preds = %81
  store volatile i32 1, ptr %79, align 8
  %89 = getelementptr inbounds %struct.seccomp_filter, ptr %79, i32 0, i32 1
  store volatile i32 1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.seccomp_filter, ptr %79, i32 0, i32 8
  call void @__init_waitqueue_head(ptr noundef %90, ptr noundef nonnull @.str.6, ptr noundef nonnull @seccomp_prepare_filter.__key.5) #16
  br label %93

91:                                               ; preds = %77, %75, %66, %62
  %92 = phi ptr [ inttoptr (i32 -14 to ptr), %62 ], [ inttoptr (i32 -12 to ptr), %77 ], [ inttoptr (i32 -13 to ptr), %75 ], [ inttoptr (i32 -22 to ptr), %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %96

93:                                               ; preds = %88, %86
  %94 = phi ptr [ %87, %86 ], [ %79, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %93, %91
  %97 = phi ptr [ %92, %91 ], [ %94, %93 ]
  %98 = ptrtoint ptr %97 to i32
  br label %269

99:                                               ; preds = %93
  br i1 %47, label %135, label %100

100:                                              ; preds = %99
  %101 = call i32 @get_unused_fd_flags(i32 noundef 524288) #16
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %222, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %105 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3520, i32 noundef 32) #19
  %106 = getelementptr inbounds %struct.seccomp_filter, ptr %94, i32 0, i32 6
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %132, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.semaphore, ptr %105, i32 0, i32 2
  store i32 0, ptr %105, align 8
  %110 = getelementptr inbounds i8, ptr %105, i32 4
  store i32 0, ptr %110, align 4
  store ptr %109, ptr %109, align 8
  %111 = getelementptr inbounds i8, ptr %105, i32 12
  store ptr %109, ptr %111, align 4
  %112 = call i64 @get_random_u64() #16
  %113 = load ptr, ptr %106, align 4
  %114 = getelementptr inbounds %struct.notification, ptr %113, i32 0, i32 1
  store i64 %112, ptr %114, align 8
  %115 = load ptr, ptr %106, align 4
  %116 = getelementptr inbounds %struct.notification, ptr %115, i32 0, i32 2
  store volatile ptr %116, ptr %116, align 4
  %117 = getelementptr inbounds %struct.notification, ptr %115, i32 0, i32 2, i32 1
  store ptr %116, ptr %117, align 4
  %118 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.7, ptr noundef nonnull @seccomp_notify_ops, ptr noundef %94, i32 noundef 2) #16
  %119 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %119, label %130, label %120

120:                                              ; preds = %108
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %94) #16, !srcloc !11
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %94, ptr %94, i32 1, ptr elementtype(i32) %94) #16, !srcloc !14
  %122 = extractvalue { i32, i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124, !prof !15

124:                                              ; preds = %120
  %125 = add i32 %122, 1
  %126 = or i32 %125, %122
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %135, label %128, !prof !9

128:                                              ; preds = %124, %120
  %129 = phi i32 [ 2, %120 ], [ 1, %124 ]
  call void @refcount_warn_saturate(ptr noundef %94, i32 noundef %129) #16
  br label %135

130:                                              ; preds = %108
  %131 = load ptr, ptr %106, align 4
  call void @kfree(ptr noundef %131) #16
  store ptr null, ptr %106, align 4
  br label %132

132:                                              ; preds = %130, %103
  %133 = phi ptr [ %118, %130 ], [ inttoptr (i32 -12 to ptr), %103 ]
  call void @put_unused_fd(i32 noundef %101) #16
  %134 = ptrtoint ptr %133 to i32
  br label %222

135:                                              ; preds = %128, %124, %99
  %136 = phi i32 [ -1, %99 ], [ %101, %124 ], [ %101, %128 ]
  %137 = phi ptr [ null, %99 ], [ %118, %124 ], [ %118, %128 ]
  br i1 %45, label %144, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 93
  %140 = load ptr, ptr %139, align 16
  %141 = getelementptr inbounds %struct.signal_struct, ptr %140, i32 0, i32 55
  %142 = call i32 @mutex_lock_killable(ptr noundef %141) #16
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %188

144:                                              ; preds = %138, %135
  %145 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 94
  %146 = load ptr, ptr %145, align 4
  call void @_raw_spin_lock_irq(ptr noundef %146) #16
  %147 = load ptr, ptr %145, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %148 = load volatile i32, ptr %147, align 4
  store volatile i32 %148, ptr %6, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %148, 65535
  %151 = icmp eq i32 %150, %149
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %151, label %152, label %153, !prof !15

152:                                              ; preds = %144
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 432, 0\0A.popsection", ""() #16, !srcloc !26
  unreachable

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 103
  %155 = load i32, ptr %154, align 16
  switch i32 %155, label %177 [
    i32 2, label %156
    i32 0, label %156
  ]

156:                                              ; preds = %153, %153
  %157 = getelementptr inbounds %struct.seccomp_filter, ptr %94, i32 0, i32 6
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %173, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 103, i32 2
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %173, label %168

164:                                              ; preds = %168
  %165 = getelementptr inbounds %struct.seccomp_filter, ptr %169, i32 0, i32 4
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %164, %160
  %169 = phi ptr [ %166, %164 ], [ %162, %160 ]
  %170 = getelementptr inbounds %struct.seccomp_filter, ptr %169, i32 0, i32 6
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %164, label %177

173:                                              ; preds = %164, %160, %156
  %174 = call fastcc i32 @seccomp_attach_filter(i32 noundef %1, ptr noundef %94) #16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  call fastcc void @seccomp_assign_mode(ptr noundef %55, i32 noundef 2, i32 noundef %1) #16
  br label %177

177:                                              ; preds = %176, %173, %168, %153
  %178 = phi ptr [ %94, %173 ], [ null, %176 ], [ %94, %153 ], [ %94, %168 ]
  %179 = phi i32 [ %174, %173 ], [ 0, %176 ], [ -22, %153 ], [ -16, %168 ]
  %180 = load ptr, ptr %145, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %181 = load i16, ptr %180, align 4
  %182 = add i16 %181, 1
  store i16 %182, ptr %180, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !31
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !32
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br i1 %45, label %187, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 93
  %185 = load ptr, ptr %184, align 16
  %186 = getelementptr inbounds %struct.signal_struct, ptr %185, i32 0, i32 55
  call void @mutex_unlock(ptr noundef %186) #16
  br label %187

187:                                              ; preds = %183, %177
  br i1 %47, label %222, label %189

188:                                              ; preds = %138
  br i1 %47, label %222, label %191

189:                                              ; preds = %187
  %190 = icmp eq i32 %179, 0
  br i1 %190, label %221, label %191

191:                                              ; preds = %189, %188
  %192 = phi ptr [ %178, %189 ], [ %94, %188 ]
  %193 = phi i32 [ %179, %189 ], [ -22, %188 ]
  %194 = getelementptr inbounds %struct.file, ptr %137, i32 0, i32 15
  store ptr null, ptr %194, align 8
  call void @fput(ptr noundef %137) #16
  call void @put_unused_fd(i32 noundef %136) #16
  %195 = icmp eq ptr %192, null
  br i1 %195, label %269, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.seccomp_filter, ptr %192, i32 0, i32 7
  call void @mutex_lock(ptr noundef %197) #16
  %198 = getelementptr inbounds %struct.seccomp_filter, ptr %192, i32 0, i32 6
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.notification, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %200
  br i1 %202, label %219, label %203

203:                                              ; preds = %214, %196
  %204 = phi ptr [ %215, %214 ], [ %199, %196 ]
  %205 = phi ptr [ %216, %214 ], [ %201, %196 ]
  %206 = getelementptr i8, ptr %205, i32 -32
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 2
  br i1 %208, label %214, label %209

209:                                              ; preds = %203
  store i32 2, ptr %206, align 4
  %210 = getelementptr i8, ptr %205, i32 -28
  store i32 -38, ptr %210, align 8
  %211 = getelementptr i8, ptr %205, i32 -24
  store i32 0, ptr %211, align 4
  %212 = getelementptr i8, ptr %205, i32 -16
  call void @complete(ptr noundef %212) #16
  %213 = load ptr, ptr %198, align 4
  br label %214

214:                                              ; preds = %209, %203
  %215 = phi ptr [ %204, %203 ], [ %213, %209 ]
  %216 = load ptr, ptr %205, align 4
  %217 = getelementptr inbounds %struct.notification, ptr %215, i32 0, i32 2
  %218 = icmp eq ptr %216, %217
  br i1 %218, label %219, label %203

219:                                              ; preds = %214, %196
  %220 = phi ptr [ %199, %196 ], [ %215, %214 ]
  call void @kfree(ptr noundef %220) #16
  store ptr null, ptr %198, align 4
  call void @mutex_unlock(ptr noundef %197) #16
  br label %222

221:                                              ; preds = %189
  call void @fd_install(i32 noundef %136, ptr noundef %137) #16
  br label %222

222:                                              ; preds = %221, %219, %188, %187, %132, %100
  %223 = phi ptr [ %94, %132 ], [ %178, %221 ], [ %178, %187 ], [ %94, %100 ], [ %94, %188 ], [ %192, %219 ]
  %224 = phi i32 [ %134, %132 ], [ %136, %221 ], [ %179, %187 ], [ %101, %100 ], [ -22, %188 ], [ %193, %219 ]
  %225 = icmp eq ptr %223, null
  br i1 %225, label %269, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.seccomp_filter, ptr %223, i32 0, i32 5
  %228 = load ptr, ptr %227, align 4
  call void @bpf_prog_destroy(ptr noundef %228) #16
  call void @kfree(ptr noundef nonnull %223) #16
  br label %269

229:                                              ; preds = %3
  %230 = icmp eq i32 %1, 0
  br i1 %230, label %231, label %269

231:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !17
  %232 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1090519040) #18, !srcloc !34
  %233 = extractvalue { i32, i32 } %232, 0
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %243, !prof !9

235:                                              ; preds = %231
  %236 = tail call ptr @llvm.thread.pointer() #16
  %237 = getelementptr inbounds %struct.thread_info, ptr %236, i32 0, i32 3
  %238 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %237) #3, !srcloc !35
  %239 = and i32 %238, -13
  %240 = or i32 %239, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %240) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %241 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %238) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %247, label %243, !prof !9

243:                                              ; preds = %235, %231
  %244 = phi i32 [ %241, %235 ], [ 4, %231 ]
  %245 = sub i32 4, %244
  %246 = getelementptr i8, ptr %5, i32 %245
  call void @llvm.memset.p0.i32(ptr align 1 %246, i8 0, i32 %244, i1 false) #16
  br label %250

247:                                              ; preds = %235
  %248 = load i32, ptr %5, align 4
  switch i32 %248, label %250 [
    i32 -2147483648, label %249
    i32 0, label %249
    i32 196608, label %249
    i32 327680, label %249
    i32 2143289344, label %249
    i32 2146435072, label %249
    i32 2147221504, label %249
    i32 2147418112, label %249
  ]

249:                                              ; preds = %247, %247, %247, %247, %247, %247, %247, %247
  br label %250

250:                                              ; preds = %249, %247, %243
  %251 = phi i32 [ 0, %249 ], [ -95, %247 ], [ -14, %243 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %269

252:                                              ; preds = %3
  %253 = icmp eq i32 %1, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) @__const.seccomp_get_notif_sizes.sizes, i32 6, i1 false) #16
  %255 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 6, i32 -1090519040) #18, !srcloc !38
  %256 = extractvalue { i32, i32 } %255, 0
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = tail call ptr @llvm.thread.pointer() #16
  %260 = getelementptr inbounds %struct.thread_info, ptr %259, i32 0, i32 3
  %261 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %260) #3, !srcloc !35
  %262 = and i32 %261, -13
  %263 = or i32 %262, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %263) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %264 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %4, i32 noundef 6) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %261) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %265 = icmp eq i32 %264, 0
  %266 = select i1 %265, i32 0, i32 -14
  br label %267

267:                                              ; preds = %258, %254
  %268 = phi i32 [ -14, %254 ], [ %266, %258 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #16
  br label %269

269:                                              ; preds = %267, %252, %250, %229, %226, %222, %191, %96, %43, %41, %36, %10, %3
  %270 = phi i32 [ %268, %267 ], [ %251, %250 ], [ %38, %36 ], [ -22, %10 ], [ -22, %229 ], [ -22, %252 ], [ -22, %3 ], [ %98, %96 ], [ -22, %41 ], [ -22, %43 ], [ %224, %222 ], [ %224, %226 ], [ %193, %191 ]
  ret i32 %270
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @seccomp_sysctl_init() #6 section ".init.text" {
  %1 = tail call ptr @register_sysctl_paths(ptr noundef nonnull @seccomp_sysctl_path, ptr noundef nonnull @seccomp_sysctl_table) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #20
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_seccomp(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd_replace(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @seccomp_assign_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %7 = load volatile i32, ptr %6, align 4
  store volatile i32 %7, ptr %4, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %10, label %11, label %12, !prof !15

11:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #16, !srcloc !27
  unreachable

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 103
  store i32 %1, ptr %13, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %14 = and i32 %2, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @arch_seccomp_spec_mitigate(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @seccomp_attach_filter(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %10 = load volatile i32, ptr %9, align 4
  store volatile i32 %10, ptr %6, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %10, 65535
  %13 = icmp eq i32 %12, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %13, label %14, label %15, !prof !15

14:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 871, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.seccomp_filter, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bpf_prog, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 103, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %15
  %24 = phi ptr [ %33, %23 ], [ %21, %15 ]
  %25 = phi i32 [ %31, %23 ], [ %19, %15 ]
  %26 = getelementptr inbounds %struct.seccomp_filter, ptr %24, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %25, 4
  %31 = add i32 %30, %29
  %32 = getelementptr inbounds %struct.seccomp_filter, ptr %24, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23

35:                                               ; preds = %23, %15
  %36 = phi i32 [ %19, %15 ], [ %31, %23 ]
  %37 = icmp ugt i32 %36, 32768
  br i1 %37, label %266, label %38

38:                                               ; preds = %35
  %39 = and i32 %0, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %43 = load ptr, ptr %42, align 16
  %44 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 55
  %45 = tail call zeroext i1 @mutex_is_locked(ptr noundef %44) #16
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 487, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

47:                                               ; preds = %41
  %48 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %49 = load volatile i32, ptr %48, align 4
  store volatile i32 %49, ptr %5, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %49, 65535
  %52 = icmp eq i32 %51, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %52, label %53, label %54, !prof !15

53:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

54:                                               ; preds = %47
  %55 = load ptr, ptr %42, align 16
  %56 = getelementptr inbounds %struct.signal_struct, ptr %55, i32 0, i32 3
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %92, label %59

59:                                               ; preds = %84, %54
  %60 = phi ptr [ %85, %84 ], [ %57, %54 ]
  %61 = getelementptr i8, ptr %60, i32 -1388
  %62 = icmp eq ptr %61, %7
  br i1 %62, label %84, label %63

63:                                               ; preds = %59
  %64 = getelementptr i8, ptr %60, i32 292
  %65 = load i32, ptr %64, align 16
  switch i32 %65, label %80 [
    i32 0, label %84
    i32 2, label %66
  ]

66:                                               ; preds = %63
  %67 = getelementptr i8, ptr %60, i32 300
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %20, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %76, %70
  %74 = phi ptr [ %78, %76 ], [ %71, %70 ]
  %75 = icmp eq ptr %74, %68
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.seccomp_filter, ptr %74, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %73

80:                                               ; preds = %76, %70, %63
  %81 = tail call i32 @__task_pid_nr_ns(ptr noundef %61, i32 noundef 0, ptr noundef null) #16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87, !prof !15

83:                                               ; preds = %80
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 9, ptr noundef null) #16
  br label %87

84:                                               ; preds = %73, %66, %63, %59
  %85 = load volatile ptr, ptr %60, align 4
  %86 = icmp eq ptr %85, %56
  br i1 %86, label %92, label %59

87:                                               ; preds = %83, %80
  %88 = phi i32 [ %81, %80 ], [ -3, %83 ]
  %89 = and i32 %0, 16
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 %88, i32 -3
  br label %266

92:                                               ; preds = %84, %54, %38
  %93 = and i32 %0, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.seccomp_filter, ptr %1, i32 0, i32 2
  store i8 1, ptr %96, align 4
  br label %97

97:                                               ; preds = %95, %92
  %98 = load ptr, ptr %20, align 8
  %99 = getelementptr inbounds %struct.seccomp_filter, ptr %1, i32 0, i32 4
  store ptr %98, ptr %99, align 4
  %100 = icmp eq ptr %98, null
  %101 = getelementptr inbounds %struct.seccomp_filter, ptr %1, i32 0, i32 3
  %102 = load ptr, ptr %16, align 4
  %103 = getelementptr inbounds %struct.bpf_prog, ptr %102, i32 0, i32 11
  %104 = load ptr, ptr %103, align 4
  br i1 %100, label %107, label %105

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.seccomp_filter, ptr %98, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(60) %101, ptr noundef nonnull align 4 dereferenceable(60) %106, i32 60, i1 false) #16
  br label %108

107:                                              ; preds = %97
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %101, i8 -1, i32 60, i1 false) #16
  br label %108

108:                                              ; preds = %107, %105
  %109 = icmp eq ptr %104, null
  %110 = getelementptr inbounds %struct.sock_fprog_kern, ptr %104, i32 0, i32 1
  br label %111

111:                                              ; preds = %179, %108
  %112 = phi i32 [ 0, %108 ], [ %180, %179 ]
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr %101, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %179, label %120

120:                                              ; preds = %111
  %121 = load i1, ptr @seccomp_is_const_allow.__already_done, align 1
  %122 = xor i1 %121, true
  %123 = select i1 %109, i1 %122, i1 false
  br i1 %123, label %124, label %125, !prof !15

124:                                              ; preds = %120
  store i1 true, ptr @seccomp_is_const_allow.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 725, i32 noundef 9, ptr noundef null) #16
  br label %125

125:                                              ; preds = %124, %120
  br i1 %109, label %175, label %126

126:                                              ; preds = %125
  %127 = load i16, ptr %104, align 4
  %128 = zext i16 %127 to i32
  %129 = icmp eq i16 %127, 0
  br i1 %129, label %172, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %110, align 4
  br label %132

132:                                              ; preds = %167, %130
  %133 = phi i32 [ 0, %130 ], [ %169, %167 ]
  %134 = phi i32 [ 0, %130 ], [ %170, %167 ]
  %135 = getelementptr %struct.sock_filter, ptr %131, i32 %134
  %136 = load i16, ptr %135, align 4
  %137 = getelementptr %struct.sock_filter, ptr %131, i32 %134, i32 3
  %138 = load i32, ptr %137, align 4
  switch i16 %136, label %175 [
    i16 32, label %139
    i16 6, label %173
    i16 5, label %141
    i16 21, label %143
    i16 53, label %143
    i16 37, label %143
    i16 69, label %143
    i16 84, label %165
  ]

139:                                              ; preds = %132
  switch i32 %138, label %175 [
    i32 0, label %167
    i32 4, label %140
  ]

140:                                              ; preds = %139
  br label %167

141:                                              ; preds = %132
  %142 = add i32 %138, %134
  br label %167

143:                                              ; preds = %132, %132, %132, %132
  %144 = and i16 %136, 240
  %145 = zext i16 %144 to i32
  %146 = add nsw i32 %145, -16
  %147 = lshr exact i32 %146, 4
  switch i32 %147, label %175 [
    i32 0, label %148
    i32 2, label %150
    i32 1, label %152
    i32 3, label %154
  ]

148:                                              ; preds = %143
  %149 = icmp eq i32 %133, %138
  br label %157

150:                                              ; preds = %143
  %151 = icmp uge i32 %133, %138
  br label %157

152:                                              ; preds = %143
  %153 = icmp ugt i32 %133, %138
  br label %157

154:                                              ; preds = %143
  %155 = and i32 %138, %133
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %154, %152, %150, %148
  %158 = phi i1 [ %156, %154 ], [ %153, %152 ], [ %151, %150 ], [ %149, %148 ]
  %159 = getelementptr %struct.sock_filter, ptr %131, i32 %134, i32 1
  %160 = getelementptr %struct.sock_filter, ptr %131, i32 %134, i32 2
  %161 = select i1 %158, ptr %159, ptr %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add i32 %134, %163
  br label %167

165:                                              ; preds = %132
  %166 = and i32 %138, %133
  br label %167

167:                                              ; preds = %165, %157, %141, %140, %139
  %168 = phi i32 [ %134, %140 ], [ %142, %141 ], [ %164, %157 ], [ %134, %165 ], [ %134, %139 ]
  %169 = phi i32 [ 1073741864, %140 ], [ %133, %141 ], [ %133, %157 ], [ %166, %165 ], [ %112, %139 ]
  %170 = add i32 %168, 1
  %171 = icmp ult i32 %170, %128
  br i1 %171, label %132, label %172

172:                                              ; preds = %167, %126
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 787, i32 noundef 9, ptr noundef null) #16
  br label %175

173:                                              ; preds = %132
  %174 = icmp eq i32 %138, 2147418112
  br i1 %174, label %179, label %175

175:                                              ; preds = %173, %172, %143, %139, %132, %125
  %176 = xor i32 %117, -1
  %177 = load i32, ptr %114, align 4
  %178 = and i32 %177, %176
  store i32 %178, ptr %114, align 4
  br label %179

179:                                              ; preds = %175, %173, %111
  %180 = add nuw nsw i32 %112, 1
  %181 = icmp eq i32 %180, 452
  br i1 %181, label %182, label %111

182:                                              ; preds = %179
  store ptr %1, ptr %20, align 8
  %183 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 103, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %183) #16, !srcloc !11
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %183, ptr %183, i32 1, ptr elementtype(i32) %183) #16, !srcloc !42
  br i1 %40, label %266, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %187 = load ptr, ptr %186, align 16
  %188 = getelementptr inbounds %struct.signal_struct, ptr %187, i32 0, i32 55
  %189 = tail call zeroext i1 @mutex_is_locked(ptr noundef %188) #16
  br i1 %189, label %191, label %190, !prof !9

190:                                              ; preds = %185
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #16, !srcloc !43
  unreachable

191:                                              ; preds = %185
  %192 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %193 = load volatile i32, ptr %192, align 4
  store volatile i32 %193, ptr %4, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %193, 65535
  %196 = icmp eq i32 %195, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %196, label %197, label %198, !prof !15

197:                                              ; preds = %191
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 585, 0\0A.popsection", ""() #16, !srcloc !44
  unreachable

198:                                              ; preds = %191
  %199 = load ptr, ptr %186, align 16
  %200 = getelementptr inbounds %struct.signal_struct, ptr %199, i32 0, i32 3
  %201 = load volatile ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, %200
  br i1 %202, label %266, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 50
  %205 = and i32 %0, 4
  %206 = icmp eq i32 %205, 0
  br label %207

207:                                              ; preds = %261, %203
  %208 = phi ptr [ %201, %203 ], [ %262, %261 ]
  %209 = getelementptr i8, ptr %208, i32 -1388
  %210 = icmp eq ptr %209, %7
  br i1 %210, label %261, label %211

211:                                              ; preds = %207
  %212 = load ptr, ptr %20, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %235, label %214

214:                                              ; preds = %211
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %212) #16, !srcloc !11
  %215 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %212, ptr nonnull %212, i32 1, ptr nonnull elementtype(i32) %212) #16, !srcloc !14
  %216 = extractvalue { i32, i32, i32 } %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218, !prof !15

218:                                              ; preds = %214
  %219 = add i32 %216, 1
  %220 = or i32 %219, %216
  %221 = icmp sgt i32 %220, -1
  br i1 %221, label %224, label %222, !prof !9

222:                                              ; preds = %218, %214
  %223 = phi i32 [ 2, %214 ], [ 1, %218 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %212, i32 noundef %223) #16
  br label %224

224:                                              ; preds = %222, %218
  %225 = getelementptr inbounds %struct.seccomp_filter, ptr %212, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %225) #16, !srcloc !11
  %226 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %225, ptr %225, i32 1, ptr elementtype(i32) %225) #16, !srcloc !14
  %227 = extractvalue { i32, i32, i32 } %226, 0
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %233, label %229, !prof !15

229:                                              ; preds = %224
  %230 = add i32 %227, 1
  %231 = or i32 %230, %227
  %232 = icmp sgt i32 %231, -1
  br i1 %232, label %235, label %233, !prof !9

233:                                              ; preds = %229, %224
  %234 = phi i32 [ 2, %224 ], [ 1, %229 ]
  tail call void @refcount_warn_saturate(ptr noundef %225, i32 noundef %234) #16
  br label %235

235:                                              ; preds = %233, %229, %211
  %236 = getelementptr i8, ptr %208, i32 292
  %237 = getelementptr i8, ptr %208, i32 300
  %238 = load ptr, ptr %237, align 8
  tail call fastcc void @__seccomp_filter_release(ptr noundef %238) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !45
  %239 = load ptr, ptr %20, align 8
  store volatile ptr %239, ptr %237, align 8
  %240 = getelementptr i8, ptr %208, i32 296
  %241 = load volatile i32, ptr %183, align 4
  store volatile i32 %241, ptr %240, align 4
  %242 = load volatile i32, ptr %204, align 4
  %243 = and i32 %242, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %235
  %246 = getelementptr i8, ptr %208, i32 -144
  tail call void @_set_bit(i32 noundef 0, ptr noundef %246) #16
  br label %247

247:                                              ; preds = %245, %235
  %248 = load i32, ptr %236, align 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %247
  %251 = getelementptr i8, ptr %208, i32 232
  %252 = load ptr, ptr %251, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %253 = load volatile i32, ptr %252, align 4
  store volatile i32 %253, ptr %3, align 4
  %254 = lshr i32 %253, 16
  %255 = and i32 %253, 65535
  %256 = icmp eq i32 %255, %254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %256, label %257, label %258, !prof !15

257:                                              ; preds = %250
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/seccomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 446, 0\0A.popsection", ""() #16, !srcloc !27
  unreachable

258:                                              ; preds = %250
  store i32 2, ptr %236, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  br i1 %206, label %259, label %260

259:                                              ; preds = %258
  tail call void @arch_seccomp_spec_mitigate(ptr noundef %209) #16
  br label %260

260:                                              ; preds = %259, %258
  tail call void @_set_bit(i32 noundef 7, ptr noundef %209) #16
  br label %261

261:                                              ; preds = %260, %247, %207
  %262 = load volatile ptr, ptr %208, align 4
  %263 = load ptr, ptr %186, align 16
  %264 = getelementptr inbounds %struct.signal_struct, ptr %263, i32 0, i32 3
  %265 = icmp eq ptr %262, %264
  br i1 %265, label %266, label %207

266:                                              ; preds = %261, %198, %182, %87, %35
  %267 = phi i32 [ %91, %87 ], [ -12, %35 ], [ 0, %182 ], [ 0, %198 ], [ 0, %261 ]
  ret i32 %267
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create_from_user(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seccomp_check_filter(ptr nocapture noundef %0, i32 noundef %1) #11 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %6 = getelementptr %struct.sock_filter, ptr %0, i32 %5
  %7 = load i16, ptr %6, align 4
  %8 = getelementptr %struct.sock_filter, ptr %0, i32 %5, i32 3
  switch i16 %7, label %19 [
    i16 32, label %9
    i16 128, label %14
    i16 129, label %13
    i16 6, label %16
    i16 22, label %16
    i16 4, label %16
    i16 12, label %16
    i16 20, label %16
    i16 28, label %16
    i16 36, label %16
    i16 44, label %16
    i16 52, label %16
    i16 60, label %16
    i16 84, label %16
    i16 92, label %16
    i16 68, label %16
    i16 76, label %16
    i16 164, label %16
    i16 172, label %16
    i16 100, label %16
    i16 108, label %16
    i16 116, label %16
    i16 124, label %16
    i16 132, label %16
    i16 0, label %16
    i16 1, label %16
    i16 7, label %16
    i16 135, label %16
    i16 96, label %16
    i16 97, label %16
    i16 2, label %16
    i16 3, label %16
    i16 5, label %16
    i16 21, label %16
    i16 29, label %16
    i16 53, label %16
    i16 61, label %16
    i16 37, label %16
    i16 45, label %16
    i16 69, label %16
    i16 77, label %16
  ]

9:                                                ; preds = %4
  %10 = load i32, ptr %8, align 4
  store i16 33, ptr %6, align 4
  %11 = and i32 %10, -61
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %19

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %4
  %15 = phi i16 [ 1, %13 ], [ 0, %4 ]
  store i16 %15, ptr %6, align 4
  store i32 64, ptr %8, align 4
  br label %16

16:                                               ; preds = %14, %9, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %17 = add nuw i32 %5, 1
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %4

19:                                               ; preds = %16, %9, %4, %2
  %20 = phi i32 [ 0, %2 ], [ -22, %4 ], [ -22, %9 ], [ 0, %16 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_random_u64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seccomp_notify_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #16
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 7
  %15 = tail call i32 @mutex_lock_interruptible(ptr noundef %14) #16
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.notification, ptr %19, i32 0, i32 2
  br label %21

21:                                               ; preds = %26, %17
  %22 = phi ptr [ %20, %17 ], [ %24, %26 ]
  %23 = phi i32 [ 0, %17 ], [ %34, %26 ]
  %24 = load ptr, ptr %22, align 4
  %25 = icmp eq ptr %24, %20
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %24, i32 -32
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = or i32 %23, 65
  %31 = select i1 %29, i32 %30, i32 %23
  %32 = icmp eq i32 %28, 1
  %33 = or i32 %31, 260
  %34 = select i1 %32, i32 %33, i32 %31
  %35 = and i32 %34, 5
  %36 = icmp eq i32 %35, 5
  br i1 %36, label %37, label %21

37:                                               ; preds = %26, %21
  %38 = phi i32 [ %23, %21 ], [ %34, %26 ]
  tail call void @mutex_unlock(ptr noundef %14) #16
  %39 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = or i32 %38, 16
  %43 = select i1 %41, i32 %42, i32 %38
  br label %44

44:                                               ; preds = %37, %13
  %45 = phi i32 [ %43, %37 ], [ 8, %13 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seccomp_notify_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.seccomp_notif_addfd, align 8
  %5 = alloca %struct.seccomp_kaddfd, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.seccomp_notif_resp, align 8
  %8 = alloca %struct.seccomp_notif, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = inttoptr i32 %2 to ptr
  switch i32 %1, label %195 [
    i32 -1068490496, label %12
    i32 -1072160511, label %81
    i32 -2146950910, label %150
    i32 1074274562, label %150
  ]

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #16
  %13 = tail call i32 @check_zeroed_user(ptr noundef %11, i32 noundef 80) #16
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %79, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, ptr %8, i32 8
  store i64 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @down_interruptible(ptr noundef %20) #16
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %24) #16
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr inbounds %struct.notification, ptr %25, i32 0, i32 2
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ %26, %23 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %26
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 -32
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %27

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %29, i32 -52
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %27
  tail call void @mutex_unlock(ptr noundef %24) #16
  br label %79

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %29, i32 -32
  %41 = getelementptr i8, ptr %29, i32 -44
  %42 = load i64, ptr %41, align 8
  store i64 %42, ptr %8, align 8
  %43 = load ptr, ptr %36, align 8
  %44 = tail call i32 @__task_pid_nr_ns(ptr noundef %43, i32 noundef 0, ptr noundef null) #16
  store i32 %44, ptr %18, align 8
  %45 = getelementptr inbounds %struct.seccomp_notif, ptr %8, i32 0, i32 3
  %46 = getelementptr i8, ptr %29, i32 -36
  %47 = load ptr, ptr %46, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %45, ptr noundef align 8 dereferenceable(64) %47, i32 64, i1 false) #16
  store i32 1, ptr %40, align 4
  %48 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %48, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 260 to ptr)) #16
  tail call void @mutex_unlock(ptr noundef %24) #16
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 80, i32 -1090519040) #18, !srcloc !38
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = tail call ptr @llvm.thread.pointer() #16
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #3, !srcloc !35
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %58 = call i32 @arm_copy_to_user(ptr noundef %11, ptr noundef nonnull %8, i32 noundef 80) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %52, %39
  call void @mutex_lock(ptr noundef %24) #16
  %61 = load i64, ptr %8, align 8
  %62 = load ptr, ptr %19, align 4
  %63 = getelementptr inbounds %struct.notification, ptr %62, i32 0, i32 2
  br label %64

64:                                               ; preds = %68, %60
  %65 = phi ptr [ %63, %60 ], [ %66, %68 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %63
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %66, i32 -44
  %70 = load i64, ptr %69, align 8
  %71 = icmp eq i64 %70, %61
  br i1 %71, label %72, label %64

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %66, i32 -52
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %66, i32 -32
  store i32 0, ptr %76, align 4
  %77 = load ptr, ptr %19, align 4
  call void @up(ptr noundef %77) #16
  br label %78

78:                                               ; preds = %75, %72, %64
  call void @mutex_unlock(ptr noundef %24) #16
  br label %79

79:                                               ; preds = %78, %52, %38, %17, %15, %12
  %80 = phi i32 [ %13, %12 ], [ -22, %15 ], [ %21, %17 ], [ -14, %78 ], [ 0, %52 ], [ -2, %38 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #16
  br label %321

81:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #16
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 24, i32 -1090519040) #18, !srcloc !34
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93, !prof !9

85:                                               ; preds = %81
  %86 = tail call ptr @llvm.thread.pointer() #16
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #3, !srcloc !35
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %91 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %11, i32 noundef 24) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !9

93:                                               ; preds = %85, %81
  %94 = phi i32 [ %91, %85 ], [ 24, %81 ]
  %95 = sub i32 24, %94
  %96 = getelementptr i8, ptr %7, i32 %95
  call void @llvm.memset.p0.i32(ptr align 1 %96, i8 0, i32 %94, i1 false) #16
  br label %148

97:                                               ; preds = %85
  %98 = getelementptr inbounds %struct.seccomp_notif_resp, ptr %7, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %148

101:                                              ; preds = %97
  %102 = icmp eq i32 %99, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.seccomp_notif_resp, ptr %7, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.seccomp_notif_resp, ptr %7, i32 0, i32 1
  %109 = load i64, ptr %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %148

111:                                              ; preds = %107, %101
  %112 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 7
  %113 = call i32 @mutex_lock_interruptible(ptr noundef %112) #16
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %148, label %115

115:                                              ; preds = %111
  %116 = load i64, ptr %7, align 8
  %117 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.notification, ptr %118, i32 0, i32 2
  br label %120

120:                                              ; preds = %124, %115
  %121 = phi ptr [ %119, %115 ], [ %122, %124 ]
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %119
  br i1 %123, label %146, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %122, i32 -44
  %126 = load i64, ptr %125, align 8
  %127 = icmp eq i64 %126, %116
  br i1 %127, label %128, label %120

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %122, i32 -52
  %130 = icmp eq ptr %129, null
  br i1 %130, label %146, label %131

131:                                              ; preds = %128
  %132 = getelementptr i8, ptr %122, i32 -32
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  store i32 2, ptr %132, align 4
  %136 = getelementptr inbounds %struct.seccomp_notif_resp, ptr %7, i32 0, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = getelementptr i8, ptr %122, i32 -28
  store i32 %137, ptr %138, align 8
  %139 = getelementptr inbounds %struct.seccomp_notif_resp, ptr %7, i32 0, i32 1
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = getelementptr i8, ptr %122, i32 -24
  store i32 %141, ptr %142, align 4
  %143 = load i32, ptr %98, align 4
  %144 = getelementptr i8, ptr %122, i32 -20
  store i32 %143, ptr %144, align 8
  %145 = getelementptr i8, ptr %122, i32 -16
  call void @complete(ptr noundef %145) #16
  br label %146

146:                                              ; preds = %135, %131, %128, %120
  %147 = phi i32 [ 0, %135 ], [ -2, %128 ], [ -115, %131 ], [ -2, %120 ]
  call void @mutex_unlock(ptr noundef %112) #16
  br label %148

148:                                              ; preds = %146, %111, %107, %103, %97, %93
  %149 = phi i32 [ %147, %146 ], [ -22, %97 ], [ -22, %107 ], [ -22, %103 ], [ %113, %111 ], [ -14, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %321

150:                                              ; preds = %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store i64 0, ptr %6, align 8, !annotation !17
  %151 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 8, i32 -1090519040) #18, !srcloc !34
  %152 = extractvalue { i32, i32 } %151, 0
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162, !prof !9

154:                                              ; preds = %150
  %155 = tail call ptr @llvm.thread.pointer() #16
  %156 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %157 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %156) #3, !srcloc !35
  %158 = and i32 %157, -13
  %159 = or i32 %158, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %160 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %11, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %157) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162, !prof !9

162:                                              ; preds = %154, %150
  %163 = phi i32 [ %160, %154 ], [ 8, %150 ]
  %164 = sub i32 8, %163
  %165 = getelementptr i8, ptr %6, i32 %164
  call void @llvm.memset.p0.i32(ptr align 1 %165, i8 0, i32 %163, i1 false) #16
  br label %193

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 7
  %168 = call i32 @mutex_lock_interruptible(ptr noundef %167) #16
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %193, label %170

170:                                              ; preds = %166
  %171 = load i64, ptr %6, align 8
  %172 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 6
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.notification, ptr %173, i32 0, i32 2
  br label %175

175:                                              ; preds = %179, %170
  %176 = phi ptr [ %174, %170 ], [ %177, %179 ]
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, %174
  br i1 %178, label %190, label %179

179:                                              ; preds = %175
  %180 = getelementptr i8, ptr %177, i32 -44
  %181 = load i64, ptr %180, align 8
  %182 = icmp eq i64 %181, %171
  br i1 %182, label %183, label %175

183:                                              ; preds = %179
  %184 = getelementptr i8, ptr %177, i32 -52
  %185 = icmp eq ptr %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %183
  %187 = getelementptr i8, ptr %177, i32 -32
  %188 = load i32, ptr %187, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %191, label %190

190:                                              ; preds = %186, %183, %175
  br label %191

191:                                              ; preds = %190, %186
  %192 = phi i32 [ -2, %190 ], [ 0, %186 ]
  call void @mutex_unlock(ptr noundef %167) #16
  br label %193

193:                                              ; preds = %191, %166, %162
  %194 = phi i32 [ %192, %191 ], [ %168, %166 ], [ -14, %162 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %321

195:                                              ; preds = %3
  %196 = and i32 %1, 65535
  %197 = icmp eq i32 %196, 8451
  br i1 %197, label %198, label %321

198:                                              ; preds = %195
  %199 = lshr i32 %1, 16
  %200 = and i32 %199, 16383
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i32 24, i1 false) #16, !annotation !17
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #16
  %201 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %201, i8 0, i32 28, i1 false) #16, !annotation !17
  %202 = add nsw i32 %200, -4096
  %203 = icmp ult i32 %202, -4072
  br i1 %203, label %319, label %204

204:                                              ; preds = %198
  %205 = tail call i32 @llvm.umin.i32(i32 %200, i32 24) #16
  %206 = icmp ugt i32 %200, 24
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = sub nuw nsw i32 %200, %205
  %209 = getelementptr i8, ptr %11, i32 %205
  %210 = tail call i32 @check_zeroed_user(ptr noundef %209, i32 noundef %208) #16
  %211 = icmp slt i32 %210, 1
  %212 = icmp eq i32 %210, 0
  %213 = select i1 %212, i32 -7, i32 %210
  br i1 %211, label %319, label %214

214:                                              ; preds = %207, %204
  %215 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 %205, i32 -1090519040) #18, !srcloc !34
  %216 = extractvalue { i32, i32 } %215, 0
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %226, !prof !9

218:                                              ; preds = %214
  %219 = tail call ptr @llvm.thread.pointer() #16
  %220 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 3
  %221 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %220) #3, !srcloc !35
  %222 = and i32 %221, -13
  %223 = or i32 %222, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #16, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %224 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %11, i32 noundef %205) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %221) #16, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !37
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226, !prof !9

226:                                              ; preds = %218, %214
  %227 = phi i32 [ %224, %218 ], [ 24, %214 ]
  %228 = sub i32 %205, %227
  %229 = getelementptr i8, ptr %4, i32 %228
  call void @llvm.memset.p0.i32(ptr align 1 %229, i8 0, i32 %227, i1 false) #16
  br label %319

230:                                              ; preds = %218
  %231 = getelementptr inbounds %struct.seccomp_notif_addfd, ptr %4, i32 0, i32 4
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, -524289
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %319

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.seccomp_notif_addfd, ptr %4, i32 0, i32 1
  %237 = load i32, ptr %236, align 8
  %238 = icmp ult i32 %237, 4
  br i1 %238, label %239, label %319

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.seccomp_notif_addfd, ptr %4, i32 0, i32 3
  %241 = load i32, ptr %240, align 8
  %242 = icmp ne i32 %241, 0
  %243 = and i32 %237, 1
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %319, label %246

246:                                              ; preds = %239
  %247 = getelementptr inbounds %struct.seccomp_notif_addfd, ptr %4, i32 0, i32 2
  %248 = load i32, ptr %247, align 4
  %249 = call ptr @fget(i32 noundef %248) #16
  store ptr %249, ptr %5, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %319, label %251

251:                                              ; preds = %246
  %252 = load i32, ptr %236, align 8
  %253 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 3
  store i32 %252, ptr %253, align 4
  %254 = load i32, ptr %231, align 4
  %255 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 2
  store i32 %254, ptr %255, align 4
  %256 = trunc i32 %252 to i8
  %257 = and i8 %256, 1
  store i8 %257, ptr %201, align 4
  %258 = load i32, ptr %240, align 8
  %259 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 1
  store i32 %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 5
  store i32 0, ptr %260, align 4
  %261 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %261, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #16
  %262 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 7
  %263 = call i32 @mutex_lock_interruptible(ptr noundef %262) #16
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %316, label %265

265:                                              ; preds = %251
  %266 = load i64, ptr %4, align 8
  %267 = getelementptr inbounds %struct.seccomp_filter, ptr %10, i32 0, i32 6
  %268 = load ptr, ptr %267, align 4
  %269 = getelementptr inbounds %struct.notification, ptr %268, i32 0, i32 2
  br label %270

270:                                              ; preds = %274, %265
  %271 = phi ptr [ %269, %265 ], [ %272, %274 ]
  %272 = load ptr, ptr %271, align 4
  %273 = icmp eq ptr %272, %269
  br i1 %273, label %314, label %274

274:                                              ; preds = %270
  %275 = getelementptr i8, ptr %272, i32 -44
  %276 = load i64, ptr %275, align 8
  %277 = icmp eq i64 %276, %266
  br i1 %277, label %278, label %270

278:                                              ; preds = %274
  %279 = getelementptr i8, ptr %272, i32 -52
  %280 = icmp eq ptr %279, null
  br i1 %280, label %314, label %281

281:                                              ; preds = %278
  %282 = getelementptr i8, ptr %272, i32 -32
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %314

285:                                              ; preds = %281
  %286 = load i32, ptr %236, align 8
  %287 = and i32 %286, 2
  %288 = icmp eq i32 %287, 0
  %289 = getelementptr i8, ptr %272, i32 8
  br i1 %288, label %290, label %292

290:                                              ; preds = %285
  %291 = load ptr, ptr %289, align 4
  br label %296

292:                                              ; preds = %285
  %293 = load volatile ptr, ptr %289, align 4
  %294 = icmp eq ptr %293, %289
  br i1 %294, label %295, label %314

295:                                              ; preds = %292
  store i32 2, ptr %282, align 4
  br label %296

296:                                              ; preds = %295, %290
  %297 = phi ptr [ %291, %290 ], [ %289, %295 ]
  %298 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 6
  %299 = getelementptr inbounds %struct.list_head, ptr %297, i32 0, i32 1
  store ptr %298, ptr %299, align 4
  store ptr %297, ptr %298, align 4
  %300 = getelementptr inbounds %struct.seccomp_kaddfd, ptr %5, i32 0, i32 6, i32 1
  store ptr %289, ptr %300, align 4
  store volatile ptr %298, ptr %289, align 4
  %301 = getelementptr i8, ptr %272, i32 -16
  call void @complete(ptr noundef %301) #16
  call void @mutex_unlock(ptr noundef %262) #16
  %302 = call i32 @wait_for_completion_interruptible(ptr noundef %260) #16
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %296
  %305 = load i32, ptr %201, align 4
  br label %316

306:                                              ; preds = %296
  call void @mutex_lock(ptr noundef %262) #16
  %307 = load volatile ptr, ptr %298, align 4
  %308 = icmp eq ptr %307, %298
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = load i32, ptr %201, align 4
  br label %314

311:                                              ; preds = %306
  %312 = load ptr, ptr %300, align 4
  %313 = getelementptr inbounds %struct.list_head, ptr %307, i32 0, i32 1
  store ptr %312, ptr %313, align 4
  store volatile ptr %307, ptr %312, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %298, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %300, align 4
  br label %314

314:                                              ; preds = %311, %309, %292, %281, %278, %270
  %315 = phi i32 [ %310, %309 ], [ %302, %311 ], [ -2, %278 ], [ -115, %281 ], [ -16, %292 ], [ -2, %270 ]
  call void @mutex_unlock(ptr noundef %262) #16
  br label %316

316:                                              ; preds = %314, %304, %251
  %317 = phi i32 [ %263, %251 ], [ %315, %314 ], [ %305, %304 ]
  %318 = load ptr, ptr %5, align 4
  call void @fput(ptr noundef %318) #16
  br label %319

319:                                              ; preds = %316, %246, %239, %235, %230, %226, %207, %198
  %320 = phi i32 [ %317, %316 ], [ -22, %198 ], [ -22, %230 ], [ -22, %235 ], [ -22, %239 ], [ -9, %246 ], [ -14, %226 ], [ %213, %207 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %321

321:                                              ; preds = %319, %195, %193, %148, %79
  %322 = phi i32 [ %320, %319 ], [ %194, %193 ], [ %149, %148 ], [ %80, %79 ], [ -22, %195 ]
  ret i32 %322
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seccomp_notify_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %46, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.seccomp_filter, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.notification, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %29, label %13

13:                                               ; preds = %24, %6
  %14 = phi ptr [ %25, %24 ], [ %9, %6 ]
  %15 = phi ptr [ %26, %24 ], [ %11, %6 ]
  %16 = getelementptr i8, ptr %15, i32 -32
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  store i32 2, ptr %16, align 4
  %20 = getelementptr i8, ptr %15, i32 -28
  store i32 -38, ptr %20, align 8
  %21 = getelementptr i8, ptr %15, i32 -24
  store i32 0, ptr %21, align 4
  %22 = getelementptr i8, ptr %15, i32 -16
  tail call void @complete(ptr noundef %22) #16
  %23 = load ptr, ptr %8, align 4
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi ptr [ %14, %13 ], [ %23, %19 ]
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.notification, ptr %25, i32 0, i32 2
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %13

29:                                               ; preds = %24, %6
  %30 = phi ptr [ %9, %6 ], [ %25, %24 ]
  tail call void @kfree(ptr noundef %30) #16
  store ptr null, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %7) #16
  br label %31

31:                                               ; preds = %40, %29
  %32 = phi ptr [ %42, %40 ], [ %4, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #16, !srcloc !11
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #16, !srcloc !12
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = extractvalue { i32, i32, i32 } %33, 0
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %46, label %39, !prof !9

39:                                               ; preds = %36
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef 3) #16
  br label %46

40:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %41 = getelementptr inbounds %struct.seccomp_filter, ptr %32, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.seccomp_filter, ptr %32, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  tail call void @bpf_prog_destroy(ptr noundef %44) #16
  tail call void @kfree(ptr noundef nonnull %32) #16
  %45 = icmp eq ptr %42, null
  br i1 %45, label %46, label %31

46:                                               ; preds = %40, %39, %36, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_paths(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @seccomp_actions_logged_handler(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [63 x i8], align 1
  %7 = alloca %struct.ctl_table, align 4
  %8 = alloca ptr, align 4
  %9 = alloca [63 x i8], align 1
  %10 = alloca %struct.ctl_table, align 4
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %68, label %12

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #16
  %13 = tail call zeroext i1 @capable(i32 noundef 21) #16
  br i1 %13, label %14, label %66

14:                                               ; preds = %12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(63) %9, i8 0, i32 63, i1 false) #16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %10, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false) #16
  %15 = getelementptr inbounds %struct.ctl_table, ptr %10, i32 0, i32 1
  store ptr %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ctl_table, ptr %10, i32 0, i32 2
  store i32 63, ptr %16, align 4
  %17 = call i32 @proc_dostring(ptr noundef nonnull %10, i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr %20, ptr %8, align 4
  %21 = call ptr @strsep(ptr noundef nonnull %8, ptr noundef nonnull @.str.14) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %64

24:                                               ; preds = %53, %19
  %25 = phi i32 [ %56, %53 ], [ 0, %19 ]
  %26 = phi ptr [ %57, %53 ], [ %21, %19 ]
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.15, ptr noundef nonnull %26) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %29
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.16, ptr noundef nonnull %26) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %32
  %36 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.17, ptr noundef nonnull %26) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.18, ptr noundef nonnull %26) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.19, ptr noundef nonnull %26) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.20, ptr noundef nonnull %26) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.21, ptr noundef nonnull %26) #16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.22, ptr noundef nonnull %26) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %47, %44, %41, %38, %35, %32, %29
  %54 = phi ptr [ @seccomp_log_names, %29 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 1), %32 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 2), %35 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 3), %38 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 4), %41 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 5), %44 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 6), %47 ], [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 7), %50 ]
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, %25
  %57 = call ptr @strsep(ptr noundef nonnull %8, ptr noundef nonnull @.str.14) #16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %24

59:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %66

60:                                               ; preds = %53, %24
  %61 = phi i32 [ %25, %24 ], [ %56, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %23
  %65 = phi i32 [ 0, %23 ], [ %61, %60 ]
  store i32 %65, ptr @seccomp_actions_logged, align 4
  br label %66

66:                                               ; preds = %64, %60, %59, %14, %12
  %67 = phi i32 [ 0, %64 ], [ -1, %12 ], [ %17, %14 ], [ -22, %59 ], [ -22, %60 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %9) #16
  br label %111

68:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(63) %6, i8 0, i32 63, i1 false) #16
  %69 = load i32, ptr @seccomp_actions_logged, align 4
  br label %70

70:                                               ; preds = %95, %68
  %71 = phi ptr [ getelementptr inbounds ([9 x %struct.seccomp_log_name], ptr @seccomp_log_names, i32 0, i32 0, i32 1), %68 ], [ %100, %95 ]
  %72 = phi i1 [ false, %68 ], [ %98, %95 ]
  %73 = phi ptr [ @seccomp_log_names, %68 ], [ %99, %95 ]
  %74 = phi ptr [ %6, %68 ], [ %97, %95 ]
  %75 = phi i32 [ 63, %68 ], [ %96, %95 ]
  %76 = load i32, ptr %73, align 4
  %77 = and i32 %76, %69
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %70
  br i1 %72, label %80, label %86

80:                                               ; preds = %79
  %81 = call i32 @strscpy(ptr noundef %74, ptr noundef nonnull @.str.14, i32 noundef %75) #16
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %74, i32 %81
  %85 = sub i32 %75, %81
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i32 [ %85, %83 ], [ %75, %79 ]
  %88 = phi ptr [ %84, %83 ], [ %74, %79 ]
  %89 = load ptr, ptr %71, align 4
  %90 = call i32 @strscpy(ptr noundef %88, ptr noundef %89, i32 noundef %87) #16
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %86
  %93 = getelementptr i8, ptr %88, i32 %90
  %94 = sub i32 %87, %90
  br label %95

95:                                               ; preds = %92, %70
  %96 = phi i32 [ %94, %92 ], [ %75, %70 ]
  %97 = phi ptr [ %93, %92 ], [ %74, %70 ]
  %98 = phi i1 [ true, %92 ], [ %72, %70 ]
  %99 = getelementptr %struct.seccomp_log_name, ptr %73, i32 1
  %100 = getelementptr %struct.seccomp_log_name, ptr %73, i32 1, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp ne ptr %101, null
  %103 = icmp ne i32 %96, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %70, label %105

105:                                              ; preds = %95
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false) #16
  %106 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 1
  store ptr %6, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ctl_table, ptr %7, i32 0, i32 2
  store i32 63, ptr %107, align 4
  %108 = call i32 @proc_dostring(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  br label %109

109:                                              ; preds = %105, %86, %80
  %110 = phi i32 [ %108, %105 ], [ -22, %86 ], [ -22, %80 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %6) #16
  br label %111

111:                                              ; preds = %109, %66
  %112 = phi i32 [ %67, %66 ], [ %110, %109 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2147997734}
!11 = !{i64 320811, i64 2147822377, i64 2147822403, i64 2147822450, i64 2147822472, i64 2147822500, i64 2147822520}
!12 = !{i64 2147899893, i64 2147899925, i64 2147899954, i64 2147899988, i64 2147900019, i64 2147900042}
!13 = !{i64 2148349611}
!14 = !{i64 2147897536, i64 2147897568, i64 2147897597, i64 2147897631, i64 2147897662, i64 2147897685}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156693309, i64 2156693791, i64 2156693346, i64 2156693402, i64 2156693436, i64 2156693460, i64 2156693501, i64 2156693522, i64 2156693550, i64 2156693584}
!17 = !{!"auto-init"}
!18 = !{i64 2156689557}
!19 = !{i64 393813, i64 393830, i64 2147877900}
!20 = !{i64 356663}
!21 = !{i64 349558, i64 349619}
!22 = !{i64 2149666662}
!23 = !{i64 2149666963}
!24 = !{i64 352575}
!25 = !{i8 0, i8 2}
!26 = !{i64 2156576669, i64 2156577150, i64 2156576706, i64 2156576762, i64 2156576796, i64 2156576820, i64 2156576861, i64 2156576882, i64 2156576910, i64 2156576944}
!27 = !{i64 2156578226, i64 2156578707, i64 2156578263, i64 2156578319, i64 2156578353, i64 2156578377, i64 2156578418, i64 2156578439, i64 2156578467, i64 2156578501}
!28 = !{i64 2156579081}
!29 = !{i64 2149263281}
!30 = !{i64 2149259105}
!31 = !{i64 2149259180, i64 2149259207, i64 2149259254, i64 2149259276, i64 2149259304, i64 2149259324}
!32 = !{i64 349803}
!33 = !{i64 2149287425}
!34 = !{i64 2150056425, i64 2150056450}
!35 = !{i64 2552537}
!36 = !{i64 2552734}
!37 = !{i64 2150038013}
!38 = !{i64 2150057003, i64 2150057028}
!39 = !{i64 2156678295, i64 2156678776, i64 2156678332, i64 2156678388, i64 2156678422, i64 2156678446, i64 2156678487, i64 2156678508, i64 2156678536, i64 2156678570}
!40 = !{i64 2156579792, i64 2156580273, i64 2156579829, i64 2156579885, i64 2156579919, i64 2156579943, i64 2156579984, i64 2156580005, i64 2156580033, i64 2156580067}
!41 = !{i64 2156581195, i64 2156581676, i64 2156581232, i64 2156581288, i64 2156581322, i64 2156581346, i64 2156581387, i64 2156581408, i64 2156581436, i64 2156581470}
!42 = !{i64 2147896078, i64 2147896104, i64 2147896133, i64 2147896167, i64 2147896198, i64 2147896221}
!43 = !{i64 2156623455, i64 2156623936, i64 2156623492, i64 2156623548, i64 2156623582, i64 2156623606, i64 2156623647, i64 2156623668, i64 2156623696, i64 2156623730}
!44 = !{i64 2156624858, i64 2156625339, i64 2156624895, i64 2156624951, i64 2156624985, i64 2156625009, i64 2156625050, i64 2156625071, i64 2156625099, i64 2156625133}
!45 = !{i64 2156671444}
