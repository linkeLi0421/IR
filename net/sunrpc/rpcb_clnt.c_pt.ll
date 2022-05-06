; ModuleID = '/llk/IR/net/sunrpc/rpcb_clnt.c_pt.bc'
source_filename = "../net/sunrpc/rpcb_clnt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpcb_getport_async:\09\09\09\09\09"
module asm "\09.asciz \09\22rpcb_getport_async\22\09\09\09\09\09"
module asm "__kstrtabns_rpcb_getport_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.rpcb_info = type { i32, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [40 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [60 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.130, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.130 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.sunrpc_net = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.spinlock, i32, i8, %struct.mutex, ptr, i32, i32, %struct.atomic_t, ptr }
%struct.rpc_create_args = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%union.anon.34 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.rpcbind_args = type { ptr, i32, i32, i32, i16, ptr, ptr, ptr, i32 }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.96 }
%union.anon.96 = type { [4 x i32] }
%struct.__kernel_sockaddr_storage = type { %union.anon.140 }
%union.anon.140 = type { ptr, [124 x i8] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.138, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.138 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.145, ptr, i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.145 = type { %struct.work_struct }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.144, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@rpcb_create_local.rpcb_create_local_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rpcb_create_local.rpcb_create_local_mutex, i64 12), ptr getelementptr (i8, ptr @rpcb_create_local.rpcb_create_local_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_rpcb_getport_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpcb_getport_async = external dso_local constant [0 x i8], align 1
@__ksymtab_rpcb_getport_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpcb_getport_async to i32), ptr @__kstrtab_rpcb_getport_async, ptr @__kstrtabns_rpcb_getport_async }, section "___ksymtab_gpl+rpcb_getport_async", align 4
@rpcb_create_local_unix.rpcb_localaddr_rpcbind = internal constant %struct.sockaddr_un { i16 1, [108 x i8] c"/var/run/rpcbind.sock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 2
@.str.2 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@rpcb_program = internal constant %struct.rpc_program { ptr @.str.3, i32 100000, i32 5, ptr @rpcb_version, ptr @rpcb_stats, ptr null }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rpcbind\00", align 1
@rpcb_version = internal global [5 x ptr] [ptr null, ptr null, ptr @rpcb_version2, ptr @rpcb_version3, ptr @rpcb_version4], align 4
@rpcb_stats = internal global %struct.rpc_stat zeroinitializer, align 4
@rpcb_version2 = internal constant %struct.rpc_version { i32 2, i32 4, ptr @rpcb_procedures2, ptr @rpcb_version2_counts }, align 4
@rpcb_version3 = internal constant %struct.rpc_version { i32 3, i32 4, ptr @rpcb_procedures3, ptr @rpcb_version3_counts }, align 4
@rpcb_version4 = internal constant %struct.rpc_version { i32 4, i32 4, ptr @rpcb_procedures4, ptr @rpcb_version4_counts }, align 4
@rpcb_version2_counts = internal global [4 x i32] zeroinitializer, align 4
@rpcb_procedures3 = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 1, ptr @.str.4 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 2, ptr @.str.5 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_getaddr, i32 23, i32 16, i32 0, i32 3, ptr @.str.6 }], align 4
@rpcb_version3_counts = internal global [4 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"UNSET\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"GETADDR\00", align 1
@encode_rpcb_string.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"net/sunrpc/rpcb_clnt.c\00", align 1
@rpcb_procedures4 = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 1, ptr @.str.4 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_set, i32 23, i32 1, i32 0, i32 2, ptr @.str.5 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_getaddr, ptr @rpcb_dec_getaddr, i32 23, i32 16, i32 0, i32 3, ptr @.str.6 }], align 4
@rpcb_version4_counts = internal global [4 x i32] zeroinitializer, align 4
@rpcb_create_local_net.rpcb_inaddr_loopback = internal constant %struct.sockaddr_in { i16 2, i16 28416, %struct.in_addr { i32 16777343 }, [8 x i8] zeroinitializer }, align 4
@__tracepoint_pmap_register = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_rpcb_unregister = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_register = external dso_local global %struct.tracepoint, align 4
@__tracepoint_rpcb_getport = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rpcb_getport_ops = internal constant %struct.rpc_call_ops { ptr null, ptr @rpcb_getport_done, ptr null, ptr @rpcb_map_release }, align 4
@__tracepoint_rpcb_setport = external dso_local global %struct.tracepoint, align 4
@rpcb_procedures2 = internal constant [4 x %struct.rpc_procinfo] [%struct.rpc_procinfo zeroinitializer, %struct.rpc_procinfo { i32 1, ptr @rpcb_enc_mapping, ptr @rpcb_dec_set, i32 4, i32 1, i32 0, i32 1, ptr @.str.4 }, %struct.rpc_procinfo { i32 2, ptr @rpcb_enc_mapping, ptr @rpcb_dec_set, i32 4, i32 1, i32 0, i32 2, ptr @.str.5 }, %struct.rpc_procinfo { i32 3, ptr @rpcb_enc_mapping, ptr @rpcb_dec_getport, i32 4, i32 1, i32 0, i32 3, ptr @.str.10 }], align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"GETPORT\00", align 1
@rpcb_next_version = internal unnamed_addr constant [2 x %struct.rpcb_info] [%struct.rpcb_info { i32 2, ptr getelementptr (i8, ptr @rpcb_procedures2, i64 96) }, %struct.rpcb_info zeroinitializer], align 4
@rpcb_next_version6 = internal unnamed_addr constant [3 x %struct.rpcb_info] [%struct.rpcb_info { i32 4, ptr getelementptr (i8, ptr @rpcb_procedures4, i64 96) }, %struct.rpcb_info { i32 3, ptr getelementptr (i8, ptr @rpcb_procedures3, i64 96) }, %struct.rpcb_info zeroinitializer], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_rpcb_getport_async], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcb_put_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %7 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %11) #8
  %12 = getelementptr inbounds %struct.sunrpc_net, ptr %6, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = add i32 %13, -1
  store i32 %16, ptr %12, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  store ptr null, ptr %7, align 4
  store ptr null, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %19 = load i16, ptr %11, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %21 = icmp eq ptr %10, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @rpc_shutdown_client(ptr noundef nonnull %10) #8
  br label %23

23:                                               ; preds = %22, %18
  %24 = icmp eq ptr %8, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %23
  tail call void @rpc_shutdown_client(ptr noundef nonnull %8) #8
  br label %32

26:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %27 = load i16, ptr %11, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %32

29:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %30 = load i16, ptr %11, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %32

32:                                               ; preds = %29, %26, %25, %23
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcb_create_local(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rpc_create_args, align 4
  %3 = alloca %struct.rpc_create_args, align 4
  %4 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %5 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %6 = load volatile ptr, ptr %5, align 64
  %7 = getelementptr [0 x ptr], ptr %6, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %9 = getelementptr inbounds %struct.sunrpc_net, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %9) #8
  %10 = getelementptr inbounds %struct.sunrpc_net, ptr %8, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = add i32 %11, 1
  store i32 %14, ptr %10, align 4
  %15 = icmp eq i32 %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %16 = load i16, ptr %9, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br i1 %15, label %21, label %116

18:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %19 = load i16, ptr %9, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %21

21:                                               ; preds = %18, %13
  tail call void @mutex_lock(ptr noundef nonnull @rpcb_create_local.rpcb_create_local_mutex) #8
  %22 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %23 = load volatile ptr, ptr %5, align 64
  %24 = getelementptr [0 x ptr], ptr %23, i32 0, i32 %22
  %25 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %26 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %26) #8
  %27 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = add i32 %28, 1
  store i32 %31, ptr %27, align 4
  %32 = icmp eq i32 %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %33 = load i16, ptr %26, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br i1 %32, label %38, label %114

35:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  %36 = load i16, ptr %26, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  br label %38

38:                                               ; preds = %35, %30
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  store ptr %0, ptr %3, align 4
  %39 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 1
  store i32 257, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 2
  store ptr @rpcb_create_local_unix.rpcb_localaddr_rpcbind, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 3
  store i32 110, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 4
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 5
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 6
  store ptr @.str.2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 7
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 8
  store ptr @rpcb_program, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 9
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 10
  store i32 2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 11
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 12
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 13
  store i32 256, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 14
  store ptr null, ptr %52, align 4
  %53 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 15
  store ptr null, ptr %53, align 4
  %54 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 16
  %55 = tail call ptr @llvm.thread.pointer() #8
  %56 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 83
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.rpc_create_args, ptr %3, i32 0, i32 17
  store i32 0, ptr %58, align 4
  %59 = call ptr @rpc_create(ptr noundef nonnull %3) #8
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %75, label %61

61:                                               ; preds = %38
  %62 = call ptr @rpc_bind_new_program(ptr noundef %59, ptr noundef nonnull @rpcb_program, i32 noundef 4) #8
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %64 = select i1 %63, ptr null, ptr %62
  %65 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %66 = load volatile ptr, ptr %5, align 64
  %67 = getelementptr [0 x ptr], ptr %66, i32 0, i32 %65
  %68 = load ptr, ptr %67, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %69 = getelementptr inbounds %struct.sunrpc_net, ptr %68, i32 0, i32 10
  store ptr %59, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sunrpc_net, ptr %68, i32 0, i32 11
  store ptr %64, ptr %70, align 4
  %71 = getelementptr inbounds %struct.sunrpc_net, ptr %68, i32 0, i32 14
  %72 = load i8, ptr %71, align 4
  %73 = or i8 %72, 1
  store i8 %73, ptr %71, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %74 = getelementptr inbounds %struct.sunrpc_net, ptr %68, i32 0, i32 13
  store i32 1, ptr %74, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  br label %114

75:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  store ptr %0, ptr %2, align 4
  %76 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 1
  store i32 6, ptr %76, align 4
  %77 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 2
  store ptr @rpcb_create_local_net.rpcb_inaddr_loopback, ptr %77, align 4
  %78 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 3
  store i32 16, ptr %78, align 4
  %79 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 4
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 5
  store ptr null, ptr %80, align 4
  %81 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 6
  store ptr @.str.2, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 7
  store ptr null, ptr %82, align 4
  %83 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 8
  store ptr @rpcb_program, ptr %83, align 4
  %84 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 9
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 10
  store i32 2, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 11
  store i32 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 12
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 13
  store i32 16, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 14
  store ptr null, ptr %89, align 4
  %90 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 15
  store ptr null, ptr %90, align 4
  %91 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 16
  %92 = load ptr, ptr %56, align 8
  store ptr %92, ptr %91, align 4
  %93 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 17
  store i32 0, ptr %93, align 4
  %94 = call ptr @rpc_create(ptr noundef nonnull %2) #8
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %75
  %97 = ptrtoint ptr %94 to i32
  br label %112

98:                                               ; preds = %75
  %99 = call ptr @rpc_bind_new_program(ptr noundef %94, ptr noundef nonnull @rpcb_program, i32 noundef 4) #8
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  %101 = select i1 %100, ptr null, ptr %99
  %102 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %103 = load volatile ptr, ptr %5, align 64
  %104 = getelementptr [0 x ptr], ptr %103, i32 0, i32 %102
  %105 = load ptr, ptr %104, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %106 = getelementptr inbounds %struct.sunrpc_net, ptr %105, i32 0, i32 10
  store ptr %94, ptr %106, align 4
  %107 = getelementptr inbounds %struct.sunrpc_net, ptr %105, i32 0, i32 11
  store ptr %101, ptr %107, align 4
  %108 = getelementptr inbounds %struct.sunrpc_net, ptr %105, i32 0, i32 14
  %109 = load i8, ptr %108, align 4
  %110 = and i8 %109, -2
  store i8 %110, ptr %108, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !14
  %111 = getelementptr inbounds %struct.sunrpc_net, ptr %105, i32 0, i32 13
  store i32 1, ptr %111, align 4
  br label %112

112:                                              ; preds = %98, %96
  %113 = phi i32 [ %97, %96 ], [ 0, %98 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  br label %114

114:                                              ; preds = %112, %61, %30
  %115 = phi i32 [ 0, %30 ], [ %113, %112 ], [ 0, %61 ]
  call void @mutex_unlock(ptr noundef nonnull @rpcb_create_local.rpcb_create_local_mutex) #8
  br label %116

116:                                              ; preds = %114, %13
  %117 = phi i32 [ %115, %114 ], [ 0, %13 ]
  ret i32 %117
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcb_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpcbind_args, align 4
  %8 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #8
  %9 = getelementptr inbounds %struct.rpcbind_args, ptr %7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i64 20, i1 false)
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpcbind_args, ptr %7, i32 0, i32 2
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpcbind_args, ptr %7, i32 0, i32 3
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpcbind_args, ptr %7, i32 0, i32 4
  store i16 %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpcbind_args, ptr %7, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  %14 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 1
  %15 = getelementptr inbounds i8, ptr %8, i32 8
  store i32 0, ptr %15, align 4
  store ptr %7, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 3
  store ptr null, ptr %16, align 4
  %17 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %18 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %19 = load volatile ptr, ptr %18, align 64
  %20 = getelementptr [0 x ptr], ptr %19, i32 0, i32 %17
  %21 = load ptr, ptr %20, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pmap_register, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %5
  %25 = tail call ptr @llvm.thread.pointer() #8
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %36 = call i32 @__traceiter_pmap_register(ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !16
  br label %37

37:                                               ; preds = %35, %24, %5
  %38 = icmp eq i16 %4, 0
  %39 = select i1 %38, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures2, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures2, i32 0, i32 1)
  store ptr %39, ptr %8, align 4
  %40 = getelementptr inbounds %struct.sunrpc_net, ptr %21, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  br i1 %38, label %42, label %47

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.sunrpc_net, ptr %21, i32 0, i32 14
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ 1024, %47 ], [ 8192, %42 ]
  %50 = getelementptr inbounds %struct.rpc_message, ptr %8, i32 0, i32 2
  store ptr %6, ptr %50, align 4
  %51 = call i32 @rpc_call_sync(ptr noundef %41, ptr noundef nonnull %8, i32 noundef %49) #8
  %52 = icmp slt i32 %51, 0
  %53 = load i32, ptr %6, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 -13, i32 0
  %56 = select i1 %52, i32 %51, i32 %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #8
  ret i32 %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpcb_v4_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rpcbind_args, align 4
  %10 = alloca %struct.rpc_message, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #8
  %11 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 2
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 4
  store i16 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 5
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 6
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 7
  store ptr @.str, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpcbind_args, ptr %9, i32 0, i32 8
  store i32 0, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  %18 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 1
  store i32 0, ptr %10, align 4
  store ptr %9, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 2
  store ptr null, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpc_message, ptr %10, i32 0, i32 3
  store ptr null, ptr %20, align 4
  %21 = load i32, ptr @sunrpc_net_id, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %22 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %23 = load volatile ptr, ptr %22, align 64
  %24 = getelementptr [0 x ptr], ptr %23, i32 0, i32 %21
  %25 = load ptr, ptr %24, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %26 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %128, label %29

29:                                               ; preds = %5
  %30 = icmp eq ptr %3, null
  %31 = load i32, ptr %11, align 4
  %32 = load i32, ptr %12, align 4
  br i1 %30, label %33, label %64

33:                                               ; preds = %29
  %34 = load ptr, ptr %14, align 4
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_unregister, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #8
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %49 = call i32 @__traceiter_rpcb_unregister(ptr noundef null, i32 noundef %31, i32 noundef %32, ptr noundef %34) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %50 = load ptr, ptr %26, align 4
  br label %51

51:                                               ; preds = %48, %37, %33
  %52 = phi ptr [ %27, %33 ], [ %27, %37 ], [ %50, %48 ]
  store ptr @.str.1, ptr %15, align 4
  store ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4
  %53 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 14
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, i32 1024, i32 8192
  store ptr %8, ptr %19, align 4
  %58 = call i32 @rpc_call_sync(ptr noundef %52, ptr noundef nonnull %10, i32 noundef %57) #8
  %59 = icmp slt i32 %58, 0
  %60 = load i32, ptr %8, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 -13, i32 0
  %63 = select i1 %59, i32 %58, i32 %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %128

64:                                               ; preds = %29
  %65 = load ptr, ptr %15, align 4
  %66 = load ptr, ptr %14, align 4
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_register, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = tail call ptr @llvm.thread.pointer() #8
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  %81 = call i32 @__traceiter_rpcb_register(ptr noundef null, i32 noundef %31, i32 noundef %32, ptr noundef %65, ptr noundef %66) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  br label %82

82:                                               ; preds = %80, %69, %64
  %83 = load i16, ptr %3, align 2
  switch i16 %83, label %128 [
    i16 2, label %84
    i16 10, label %106
  ]

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  %86 = load i16, ptr %85, align 2
  %87 = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %3, i32 noundef 3264) #8
  store ptr %87, ptr %15, align 4
  %88 = icmp eq i16 %86, 0
  %89 = select i1 %88, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 1)
  store ptr %89, ptr %10, align 4
  %90 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4
  br i1 %88, label %91, label %96

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 14
  %93 = load i8, ptr %92, align 4
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %84
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ 1024, %96 ], [ 8192, %91 ]
  store ptr %7, ptr %19, align 4
  %99 = call i32 @rpc_call_sync(ptr noundef %90, ptr noundef nonnull %10, i32 noundef %98) #8
  %100 = icmp slt i32 %99, 0
  %101 = load i32, ptr %7, align 4
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 -13, i32 0
  %104 = select i1 %100, i32 %99, i32 %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  %105 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %105) #8
  br label %128

106:                                              ; preds = %82
  %107 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  %108 = load i16, ptr %107, align 2
  %109 = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %3, i32 noundef 3264) #8
  store ptr %109, ptr %15, align 4
  %110 = icmp eq i16 %108, 0
  %111 = select i1 %110, ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 2), ptr getelementptr inbounds ([4 x %struct.rpc_procinfo], ptr @rpcb_procedures4, i32 0, i32 1)
  store ptr %111, ptr %10, align 4
  %112 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  br i1 %110, label %113, label %118

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.sunrpc_net, ptr %25, i32 0, i32 14
  %115 = load i8, ptr %114, align 4
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %106
  br label %119

119:                                              ; preds = %118, %113
  %120 = phi i32 [ 1024, %118 ], [ 8192, %113 ]
  store ptr %6, ptr %19, align 4
  %121 = call i32 @rpc_call_sync(ptr noundef %112, ptr noundef nonnull %10, i32 noundef %120) #8
  %122 = icmp slt i32 %121, 0
  %123 = load i32, ptr %6, align 4
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 -13, i32 0
  %126 = select i1 %122, i32 %121, i32 %125
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %127 = load ptr, ptr %15, align 4
  call void @kfree(ptr noundef %127) #8
  br label %128

128:                                              ; preds = %119, %97, %82, %51, %5
  %129 = phi i32 [ %63, %51 ], [ %126, %119 ], [ %104, %97 ], [ -93, %5 ], [ -97, %82 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #8
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpcb_getport_async(ptr noundef %0) #0 {
  %2 = alloca %struct.rpc_create_args, align 4
  %3 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !8
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_clnt, ptr %5, i32 0, i32 27
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, %5
  br i1 %10, label %26, label %11

11:                                               ; preds = %22, %1
  %12 = phi ptr [ %13, %22 ], [ %5, %1 ]
  %13 = phi ptr [ %24, %22 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.rpc_clnt, ptr %13, i32 0, i32 27
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %9
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.rpc_clnt, ptr %12, i32 0, i32 14
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.rpc_clnt, ptr %13, i32 0, i32 21
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %13
  br i1 %25, label %26, label %11

26:                                               ; preds = %22, %17, %11, %1
  %27 = phi ptr [ %5, %1 ], [ %13, %22 ], [ %12, %11 ], [ %12, %17 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %28 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @xprt_get(ptr noundef %29) #8
  %31 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 10
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 23
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, %32
  tail call void @rpc_sleep_on_timeout(ptr noundef %31, ptr noundef %0, ptr noundef null, i32 noundef %35) #8
  %36 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 18
  %37 = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %36) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  tail call void @xprt_put(ptr noundef %30) #8
  br label %162

40:                                               ; preds = %26
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %159

44:                                               ; preds = %40
  %45 = call i32 @rpc_peeraddr(ptr noundef %27, ptr noundef nonnull %3, i32 noundef 128) #8
  %46 = load i16, ptr %3, align 4
  switch i16 %46, label %159 [
    i16 2, label %47
    i16 10, label %52
  ]

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 21
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version, i32 0, i32 %49
  %51 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version, i32 0, i32 %49, i32 1
  br label %57

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 21
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version6, i32 0, i32 %54
  %56 = getelementptr [0 x %struct.rpcb_info], ptr @rpcb_next_version6, i32 0, i32 %54, i32 1
  br label %57

57:                                               ; preds = %52, %47
  %58 = phi ptr [ %56, %52 ], [ %51, %47 ]
  %59 = phi ptr [ %55, %52 ], [ %50, %47 ]
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %58, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 21
  store i32 0, ptr %64, align 4
  br label %159

65:                                               ; preds = %57
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_getport, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = tail call ptr @llvm.thread.pointer() #8
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !22
  %80 = call i32 @__traceiter_rpcb_getport(ptr noundef null, ptr noundef %27, ptr noundef %0, i32 noundef %60) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !23
  %81 = load i16, ptr %3, align 4
  br label %82

82:                                               ; preds = %79, %68, %65
  %83 = phi i16 [ %46, %65 ], [ %46, %68 ], [ %81, %79 ]
  %84 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 49
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.rpc_clnt, ptr %27, i32 0, i32 19
  %87 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 50
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.rpc_clnt, ptr %27, i32 0, i32 28
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %4, align 8
  %94 = getelementptr inbounds %struct.rpc_clnt, ptr %93, i32 0, i32 16
  %95 = load ptr, ptr %94, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  store ptr %85, ptr %2, align 4
  %96 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 1
  store i32 %90, ptr %96, align 4
  %97 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 2
  store ptr %3, ptr %97, align 4
  %98 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 3
  store i32 %45, ptr %98, align 4
  %99 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 4
  store ptr null, ptr %99, align 4
  %100 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 5
  store ptr %95, ptr %100, align 4
  %101 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 6
  store ptr %88, ptr %101, align 4
  %102 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 7
  store ptr %86, ptr %102, align 4
  %103 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 8
  store ptr @rpcb_program, ptr %103, align 4
  %104 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 9
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 10
  store i32 %60, ptr %105, align 4
  %106 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 11
  store i32 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 12
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 13
  store i32 24, ptr %108, align 4
  %109 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 14
  store ptr null, ptr %109, align 4
  %110 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 15
  store ptr null, ptr %110, align 4
  %111 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 16
  store ptr %92, ptr %111, align 4
  %112 = getelementptr inbounds %struct.rpc_create_args, ptr %2, i32 0, i32 17
  store i32 0, ptr %112, align 4
  switch i16 %83, label %113 [
    i16 2, label %114
    i16 10, label %116
  ]

113:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  br label %122

114:                                              ; preds = %82
  %115 = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  br label %118

116:                                              ; preds = %82
  %117 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi ptr [ %117, %116 ], [ %115, %114 ]
  store i16 28416, ptr %119, align 2
  %120 = call ptr @rpc_create(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %113
  %123 = phi ptr [ inttoptr (i32 -97 to ptr), %113 ], [ %120, %118 ]
  %124 = ptrtoint ptr %123 to i32
  br label %159

125:                                              ; preds = %118
  %126 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %127 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %126, i32 noundef 3392, i32 noundef 36) #9
  %128 = icmp eq ptr %127, null
  br i1 %128, label %158, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.rpc_clnt, ptr %27, i32 0, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 1
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.rpc_clnt, ptr %27, i32 0, i32 9
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 2
  store i32 %134, ptr %135, align 8
  %136 = load i32, ptr %89, align 4
  %137 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 3
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 4
  store i16 0, ptr %138, align 8
  store ptr %30, ptr %127, align 8
  %139 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 8
  store i32 -5, ptr %139, align 8
  switch i32 %60, label %152 [
    i32 4, label %140
    i32 3, label %140
    i32 2, label %150
  ]

140:                                              ; preds = %129, %129
  %141 = getelementptr %struct.rpc_xprt, ptr %30, i32 0, i32 51, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 5
  store ptr %142, ptr %143, align 4
  %144 = call ptr @rpc_sockaddr2uaddr(ptr noundef nonnull %3, i32 noundef 3136) #8
  %145 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 6
  store ptr %144, ptr %145, align 8
  %146 = icmp eq ptr %144, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  call void @kfree(ptr noundef nonnull %127) #8
  br label %158

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 7
  store ptr @.str.1, ptr %149, align 4
  br label %153

150:                                              ; preds = %129
  %151 = getelementptr inbounds %struct.rpcbind_args, ptr %127, i32 0, i32 6
  store ptr null, ptr %151, align 8
  br label %153

152:                                              ; preds = %129
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/rpcb_clnt.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 744, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

153:                                              ; preds = %150, %148
  %154 = call fastcc ptr @rpcb_call_async(ptr noundef %120, ptr noundef nonnull %127, ptr noundef nonnull %61)
  call void @rpc_release_client(ptr noundef %120) #8
  %155 = getelementptr inbounds %struct.rpc_xprt, ptr %30, i32 0, i32 48
  %156 = load i32, ptr %155, align 8
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8
  call void @rpc_put_task(ptr noundef %154) #8
  br label %162

158:                                              ; preds = %147, %125
  call void @rpc_release_client(ptr noundef %120) #8
  br label %159

159:                                              ; preds = %158, %122, %63, %44, %40
  %160 = phi i32 [ -96, %63 ], [ %124, %122 ], [ -12, %158 ], [ 0, %40 ], [ -97, %44 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  call void @_clear_bit(i32 noundef 5, ptr noundef %36) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  call void @rpc_wake_up_status(ptr noundef %31, i32 noundef %160) #8
  %161 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  store i32 %160, ptr %161, align 4
  call void @xprt_put(ptr noundef %30) #8
  br label %162

162:                                              ; preds = %159, %153, %39
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_sleep_on_timeout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_peeraddr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_sockaddr2uaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rpcb_call_async(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rpc_message, align 4
  %5 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store ptr %2, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rpc_message, ptr %4, i32 0, i32 3
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #8
  %9 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 4
  store ptr %4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 5
  store ptr @rpcb_getport_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 6
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rpc_task_setup, ptr %5, i32 0, i32 8
  store i16 1025, ptr %14, align 4
  %15 = call ptr @rpc_run_task(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_release_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_bind_new_program(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpcb_enc_getaddr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #8
  %5 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr i32, ptr %4, i32 1
  store i32 %7, ptr %4, align 4
  %9 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strlen(ptr noundef %13) #8
  %15 = icmp ugt i32 %14, 5
  %16 = load i1, ptr @encode_rpcb_string.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !27

19:                                               ; preds = %3
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %20

20:                                               ; preds = %19, %3
  %21 = tail call i32 @llvm.umin.i32(i32 %14, i32 5) #8
  %22 = add nuw nsw i32 %21, 4
  %23 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %22) #8
  %24 = tail call ptr @xdr_encode_opaque(ptr noundef %23, ptr noundef %13, i32 noundef %21) #8
  %25 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strlen(ptr noundef %26) #8
  %28 = icmp ugt i32 %27, 57
  %29 = load i1, ptr @encode_rpcb_string.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !27

32:                                               ; preds = %20
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %33

33:                                               ; preds = %32, %20
  %34 = tail call i32 @llvm.umin.i32(i32 %27, i32 57) #8
  %35 = add nuw nsw i32 %34, 4
  %36 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %35) #8
  %37 = tail call ptr @xdr_encode_opaque(ptr noundef %36, ptr noundef %26, i32 noundef %34) #8
  %38 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @strlen(ptr noundef %39) #8
  %41 = icmp ugt i32 %40, 2
  %42 = load i1, ptr @encode_rpcb_string.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !27

45:                                               ; preds = %33
  store i1 true, ptr @encode_rpcb_string.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 862, i32 noundef 9, ptr noundef null) #8
  br label %46

46:                                               ; preds = %45, %33
  %47 = tail call i32 @llvm.umin.i32(i32 %40, i32 2) #8
  %48 = or i32 %47, 4
  %49 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef %48) #8
  %50 = tail call ptr @xdr_encode_opaque(ptr noundef %49, ptr noundef %39, i32 noundef %47) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpcb_dec_set(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !27

6:                                                ; preds = %3
  store i32 0, ptr %2, align 4
  %7 = load i32, ptr %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -5, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpcb_dec_getaddr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !21
  %5 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 4
  store i16 0, ptr %5, align 4
  %6 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8, !prof !27

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = icmp ugt i32 %10, 57
  br i1 %13, label %35, label %14, !prof !27

14:                                               ; preds = %12
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %10) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17, !prof !27

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr inbounds %struct.rpc_xprt, ptr %18, i32 0, i32 49
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 @rpc_uaddr2sockaddr(ptr noundef %20, ptr noundef nonnull %15, i32 noundef %10, ptr noundef nonnull %4, i32 noundef 128) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i16, ptr %4, align 4
  switch i16 %24, label %33 [
    i16 2, label %25
    i16 10, label %27
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sockaddr_in, ptr %4, i32 0, i32 1
  br label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sockaddr_in6, ptr %4, i32 0, i32 1
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %28, %27 ], [ %26, %25 ]
  %31 = load i16, ptr %30, align 2
  %32 = call i16 @llvm.bswap.i16(i16 %31) #8
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i16 [ 0, %23 ], [ %32, %29 ]
  store i16 %34, ptr %5, align 4
  br label %35

35:                                               ; preds = %33, %17, %14, %12, %8, %3
  %36 = phi i32 [ 0, %33 ], [ 0, %8 ], [ -5, %17 ], [ -5, %14 ], [ -5, %12 ], [ -5, %3 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_uaddr2sockaddr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pmap_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_call_sync(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_unregister(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_getport(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpcb_getport_done(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpcbind_args, ptr %1, i32 0, i32 8
  %7 = icmp eq i32 %5, -5
  %8 = select i1 %7, i32 -93, i32 %5
  store i32 %8, ptr %6, align 4
  %9 = icmp eq i32 %8, -93
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 21
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = load i32, ptr %6, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ %8, %2 ]
  %17 = icmp slt i32 %16, 0
  %18 = getelementptr inbounds %struct.rpcbind_args, ptr %1, i32 0, i32 4
  br i1 %17, label %19, label %20

19:                                               ; preds = %15
  store i16 0, ptr %18, align 4
  br label %25

20:                                               ; preds = %15
  %21 = load i16, ptr %18, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 -13, ptr %6, align 4
  br label %25

24:                                               ; preds = %20
  store i32 0, ptr %6, align 4
  br label %25

25:                                               ; preds = %24, %23, %19
  %26 = phi i16 [ 0, %23 ], [ %21, %24 ], [ 0, %19 ]
  %27 = phi i32 [ -13, %23 ], [ 0, %24 ], [ %16, %19 ]
  %28 = getelementptr inbounds %struct.rpcbind_args, ptr %1, i32 0, i32 4
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpcb_setport, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = tail call ptr @llvm.thread.pointer() #8
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !28
  %43 = tail call i32 @__traceiter_rpcb_setport(ptr noundef null, ptr noundef %0, i32 noundef %27, i16 noundef zeroext %26) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %44 = load i16, ptr %28, align 4
  br label %45

45:                                               ; preds = %42, %31, %25
  %46 = phi i16 [ %26, %25 ], [ %26, %31 ], [ %44, %42 ]
  %47 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %3, i16 noundef zeroext %46) #8
  %51 = load i16, ptr %28, align 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.rpc_xprt, ptr %3, i32 0, i32 18
  %55 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %54) #8
  br label %56

56:                                               ; preds = %53, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpcb_map_release(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.rpcbind_args, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %5 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 18
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %5) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %6 = getelementptr inbounds %struct.rpc_xprt, ptr %2, i32 0, i32 10
  tail call void @rpc_wake_up_status(ptr noundef %6, i32 noundef %4) #8
  %7 = load ptr, ptr %0, align 4
  tail call void @xprt_put(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.rpcbind_args, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpcb_setport(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_wake_up_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpcb_enc_mapping(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #8
  %5 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr i32, ptr %4, i32 1
  store i32 %7, ptr %4, align 4
  %9 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = getelementptr i32, ptr %4, i32 2
  store i32 %11, ptr %8, align 4
  %13 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr i32, ptr %4, i32 3
  store i32 %15, ptr %12, align 4
  %17 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 4
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  store i32 %20, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpcb_dec_getport(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.rpcbind_args, ptr %2, i32 0, i32 4
  store i16 0, ptr %4, align 4
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !27

7:                                                ; preds = %3
  %8 = load i32, ptr %5, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = icmp ugt i32 %9, 65535
  br i1 %10, label %13, label %11, !prof !27

11:                                               ; preds = %7
  %12 = trunc i32 %9 to i16
  store i16 %12, ptr %4, align 4
  br label %13

13:                                               ; preds = %11, %7, %3
  %14 = phi i32 [ 0, %11 ], [ -5, %3 ], [ -5, %7 ]
  ret i32 %14
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!8 = !{i64 2149070839}
!9 = !{i64 2149071056}
!10 = !{i64 2148952484}
!11 = !{i64 2148948308}
!12 = !{i64 2148948383, i64 2148948410, i64 2148948457, i64 2148948479, i64 2148948507, i64 2148948527}
!13 = !{i64 2148975487}
!14 = !{i64 2158228119}
!15 = !{i64 2157392840}
!16 = !{i64 2157393042}
!17 = !{i64 2157430271}
!18 = !{i64 2157430459}
!19 = !{i64 2157409664}
!20 = !{i64 2157409860}
!21 = !{!"auto-init"}
!22 = !{i64 2157359614}
!23 = !{i64 2157359798}
!24 = !{i64 2158239742, i64 2158240229, i64 2158239779, i64 2158239835, i64 2158239869, i64 2158239893, i64 2158239934, i64 2158239955, i64 2158239983, i64 2158240017}
!25 = !{i64 2155721302}
!26 = !{i64 2155721555}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2157376185}
!29 = !{i64 2157376357}
