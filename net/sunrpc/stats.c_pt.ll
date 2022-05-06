; ModuleID = '/llk/IR/net/sunrpc/stats.c_pt.bc'
source_filename = "../net/sunrpc/stats.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_seq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_seq_show\22\09\09\09\09\09"
module asm "__kstrtabns_svc_seq_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_alloc_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_alloc_iostats\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_alloc_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_free_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_free_iostats\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_free_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_count_iostats_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_count_iostats_metrics\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_count_iostats_metrics:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_count_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_count_iostats\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_count_iostats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_clnt_show_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_clnt_show_stats\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_clnt_show_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_proc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_proc_register\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_proc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_proc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_proc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_proc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_proc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_proc_register\22\09\09\09\09\09"
module asm "__kstrtabns_svc_proc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_proc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_proc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_svc_proc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.140, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.140 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rpc_iostats = type { %struct.spinlock, i32, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.139, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.139 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.141, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.141 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rpc_procinfo = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.142, ptr, ptr, [6 x ptr], %struct.callback_head, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.__kernel_sockaddr_storage = type { %union.anon.137 }
%union.anon.137 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.anon.142 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, ptr, %struct.address_space, %struct.list_head, %union.anon.132, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%union.anon.127 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.128 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.132 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.rpc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rpc_program = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.rpc_version = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"net %u %u %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"rpc %u %u %u %u %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"proc%d %u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@__kstrtab_svc_seq_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_seq_show = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_seq_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_seq_show to i32), ptr @__kstrtab_svc_seq_show, ptr @__kstrtabns_svc_seq_show }, section "___ksymtab_gpl+svc_seq_show", align 4
@__kstrtab_rpc_alloc_iostats = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_alloc_iostats = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_alloc_iostats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_alloc_iostats to i32), ptr @__kstrtab_rpc_alloc_iostats, ptr @__kstrtabns_rpc_alloc_iostats }, section "___ksymtab_gpl+rpc_alloc_iostats", align 4
@__kstrtab_rpc_free_iostats = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_free_iostats = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_free_iostats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_free_iostats to i32), ptr @__kstrtab_rpc_free_iostats, ptr @__kstrtabns_rpc_free_iostats }, section "___ksymtab_gpl+rpc_free_iostats", align 4
@__kstrtab_rpc_count_iostats_metrics = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_count_iostats_metrics = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_count_iostats_metrics = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_count_iostats_metrics to i32), ptr @__kstrtab_rpc_count_iostats_metrics, ptr @__kstrtabns_rpc_count_iostats_metrics }, section "___ksymtab_gpl+rpc_count_iostats_metrics", align 4
@__kstrtab_rpc_count_iostats = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_count_iostats = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_count_iostats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_count_iostats to i32), ptr @__kstrtab_rpc_count_iostats, ptr @__kstrtabns_rpc_count_iostats }, section "___ksymtab_gpl+rpc_count_iostats", align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"\09RPC iostats version: %s  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"p/v: %u/%u (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09per-op statistics\0A\00", align 1
@__kstrtab_rpc_clnt_show_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_clnt_show_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_clnt_show_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_clnt_show_stats to i32), ptr @__kstrtab_rpc_clnt_show_stats, ptr @__kstrtabns_rpc_clnt_show_stats }, section "___ksymtab_gpl+rpc_clnt_show_stats", align 4
@rpc_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @rpc_proc_open, ptr @seq_read, ptr null, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_rpc_proc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_proc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_proc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_proc_register to i32), ptr @__kstrtab_rpc_proc_register, ptr @__kstrtabns_rpc_proc_register }, section "___ksymtab_gpl+rpc_proc_register", align 4
@sunrpc_net_id = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_rpc_proc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_proc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_proc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_proc_unregister to i32), ptr @__kstrtab_rpc_proc_unregister, ptr @__kstrtabns_rpc_proc_unregister }, section "___ksymtab_gpl+rpc_proc_unregister", align 4
@__kstrtab_svc_proc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_proc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_proc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_proc_register to i32), ptr @__kstrtab_svc_proc_register, ptr @__kstrtabns_svc_proc_register }, section "___ksymtab_gpl+svc_proc_register", align 4
@__kstrtab_svc_proc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_proc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_proc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_proc_unregister to i32), ptr @__kstrtab_svc_proc_unregister, ptr @__kstrtabns_svc_proc_unregister }, section "___ksymtab_gpl+svc_proc_unregister", align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"rpc\00", align 1
@__tracepoint_rpc_stats_latency = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"%lu %lu %lu %llu %llu %llu %llu %llu %lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"\09%12s: \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\09        NULL: \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\09%12u: \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"rpc %u %u %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"proc%u %u\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_rpc_alloc_iostats, ptr @__ksymtab_rpc_clnt_show_stats, ptr @__ksymtab_rpc_count_iostats, ptr @__ksymtab_rpc_count_iostats_metrics, ptr @__ksymtab_rpc_free_iostats, ptr @__ksymtab_rpc_proc_register, ptr @__ksymtab_rpc_proc_unregister, ptr @__ksymtab_svc_proc_register, ptr @__ksymtab_svc_proc_unregister, ptr @__ksymtab_svc_seq_show], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  %12 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = getelementptr inbounds %struct.svc_stat, ptr %1, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %21, i32 noundef %15, i32 noundef %17, i32 noundef %20) #5
  %22 = getelementptr inbounds %struct.svc_program, ptr %3, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.svc_program, ptr %3, i32 0, i32 5
  br label %27

27:                                               ; preds = %51, %25
  %28 = phi i32 [ %23, %25 ], [ %52, %51 ]
  %29 = phi i32 [ 0, %25 ], [ %53, %51 ]
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr ptr, ptr %30, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.svc_version, ptr %32, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %29, i32 noundef %36) #5
  %37 = load i32, ptr %35, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.svc_version, ptr %32, i32 0, i32 3
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %46, %41 ]
  %43 = load ptr, ptr %40, align 4
  %44 = getelementptr i32, ptr %43, i32 %42
  %45 = load i32, ptr %44, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %45) #5
  %46 = add nuw i32 %42, 1
  %47 = load i32, ptr %35, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %41, label %49

49:                                               ; preds = %41, %34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  %50 = load i32, ptr %22, align 4
  br label %51

51:                                               ; preds = %49, %27
  %52 = phi i32 [ %28, %27 ], [ %50, %49 ]
  %53 = add nuw i32 %29, 1
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %27, label %55

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_alloc_iostats(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.rpc_clnt, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 64) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %20, label %6, !prof !8

6:                                                ; preds = %1
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ %18, %15 ], [ 0, %13 ]
  %17 = getelementptr %struct.rpc_iostats, ptr %8, i32 %16
  store i32 0, ptr %17, align 64
  %18 = add nuw i32 %16, 1
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %15, label %20

20:                                               ; preds = %15, %10, %6, %1
  %21 = phi ptr [ null, %6 ], [ null, %1 ], [ %8, %10 ], [ %8, %15 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_free_iostats(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_count_iostats_metrics(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %8, label %88

8:                                                ; preds = %2
  %9 = tail call i64 @ktime_get() #5
  tail call void @_raw_spin_lock(ptr noundef nonnull %1) #5
  %10 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  %13 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 30
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %16 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = add i32 %17, %15
  store i32 %18, ptr %16, align 8
  %19 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 21
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 18
  %26 = load i32, ptr %25, align 8
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 4
  %29 = load i64, ptr %28, align 16
  %30 = add i64 %29, %27
  store i64 %30, ptr %28, align 16
  %31 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 19
  %32 = load i32, ptr %31, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 5
  %35 = load i64, ptr %34, align 8
  %36 = add i64 %35, %33
  store i64 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 29
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %42 = load i64, ptr %41, align 8
  %43 = sub i64 %38, %42
  %44 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 6
  %45 = load i64, ptr %44, align 32
  %46 = add i64 %45, %43
  store i64 %46, ptr %44, align 32
  br label %47

47:                                               ; preds = %40, %8
  %48 = phi i64 [ %43, %40 ], [ 0, %8 ]
  %49 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 7
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 24
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, %50
  store i64 %53, ptr %49, align 8
  %54 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 18
  %55 = load i64, ptr %54, align 8
  %56 = sub i64 %9, %55
  %57 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 8
  %58 = load i64, ptr %57, align 16
  %59 = add i64 %58, %56
  store i64 %59, ptr %57, align 16
  %60 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.rpc_iostats, ptr %1, i32 0, i32 9
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %63, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  %68 = load i16, ptr %1, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !12
  %70 = getelementptr inbounds %struct.rpc_rqst, ptr %4, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load i64, ptr %51, align 8
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpc_stats_latency, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %67
  %76 = tail call ptr @llvm.thread.pointer() #5
  %77 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = lshr i32 %78, 5
  %80 = getelementptr i32, ptr @__cpu_online_mask, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %78, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %83, %81
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  %87 = tail call i32 @__traceiter_rpc_stats_latency(ptr noundef null, ptr noundef %71, i64 noundef %48, i64 noundef %72, i64 noundef %56) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %88

88:                                               ; preds = %86, %75, %67, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_count_iostats(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rpc_procinfo, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.rpc_iostats, ptr %1, i32 %6
  tail call void @rpc_count_iostats_metrics(ptr noundef %0, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_clnt_show_stats(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 10
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %104, label %8

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  %9 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %10, i32 noundef %12, ptr noundef %15) #5
  %16 = tail call i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef %1, ptr noundef nonnull @do_print_stats, ptr noundef %0) #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %104, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 7
  br label %20

20:                                               ; preds = %77, %18
  %21 = phi i32 [ 0, %18 ], [ %102, %77 ]
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %40, %22 ], [ 0, %20 ]
  %24 = phi i32 [ %43, %22 ], [ 0, %20 ]
  %25 = phi i64 [ %46, %22 ], [ 0, %20 ]
  %26 = phi i64 [ %49, %22 ], [ 0, %20 ]
  %27 = phi i64 [ %52, %22 ], [ 0, %20 ]
  %28 = phi i64 [ %55, %22 ], [ 0, %20 ]
  %29 = phi i64 [ %58, %22 ], [ 0, %20 ]
  %30 = phi i32 [ %61, %22 ], [ 0, %20 ]
  %31 = phi i32 [ %37, %22 ], [ 0, %20 ]
  %32 = phi ptr [ %63, %22 ], [ %1, %20 ]
  %33 = getelementptr inbounds %struct.rpc_clnt, ptr %32, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %31
  %38 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = add i32 %39, %23
  %41 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %24
  %44 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 4
  %45 = load i64, ptr %44, align 16
  %46 = add i64 %45, %25
  %47 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 5
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, %26
  %50 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 6
  %51 = load i64, ptr %50, align 32
  %52 = add i64 %51, %27
  %53 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 7
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %28
  %56 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 8
  %57 = load i64, ptr %56, align 16
  %58 = add i64 %57, %29
  %59 = getelementptr %struct.rpc_iostats, ptr %34, i32 %21, i32 9
  %60 = load i32, ptr %59, align 8
  %61 = add i32 %60, %30
  %62 = getelementptr inbounds %struct.rpc_clnt, ptr %32, i32 0, i32 21
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %32, %63
  %65 = icmp eq ptr %63, null
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %22

67:                                               ; preds = %22
  %68 = load ptr, ptr %19, align 4
  %69 = getelementptr %struct.rpc_procinfo, ptr %68, i32 %21, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %70) #5
  br label %77

73:                                               ; preds = %67
  %74 = icmp eq i32 %21, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  br label %77

76:                                               ; preds = %73
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %21) #5
  br label %77

77:                                               ; preds = %76, %75, %72
  %78 = tail call i64 @llvm.abs.i64(i64 %52, i1 false) #5
  %79 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %78) #7, !srcloc !15
  %80 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %78, i64 %79, i32 0) #7, !srcloc !16
  %81 = extractvalue { i64, i32 } %80, 0
  %82 = icmp slt i64 %52, 0
  %83 = lshr i64 %81, 18
  %84 = sub nsw i64 0, %83
  %85 = select i1 %82, i64 %84, i64 %83
  %86 = tail call i64 @llvm.abs.i64(i64 %55, i1 false) #5
  %87 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %86) #7, !srcloc !15
  %88 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %86, i64 %87, i32 0) #7, !srcloc !16
  %89 = extractvalue { i64, i32 } %88, 0
  %90 = icmp slt i64 %55, 0
  %91 = lshr i64 %89, 18
  %92 = sub nsw i64 0, %91
  %93 = select i1 %90, i64 %92, i64 %91
  %94 = tail call i64 @llvm.abs.i64(i64 %58, i1 false) #5
  %95 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %94) #7, !srcloc !15
  %96 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %94, i64 %95, i32 0) #7, !srcloc !16
  %97 = extractvalue { i64, i32 } %96, 0
  %98 = icmp slt i64 %58, 0
  %99 = lshr i64 %97, 18
  %100 = sub nsw i64 0, %99
  %101 = select i1 %98, i64 %100, i64 %99
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %37, i32 noundef %40, i32 noundef %43, i64 noundef %46, i64 noundef %49, i64 noundef %85, i64 noundef %93, i64 noundef %101, i32 noundef %61) #5
  %102 = add nuw i32 %21, 1
  %103 = icmp eq i32 %102, %4
  br i1 %103, label %104, label %20

104:                                              ; preds = %77, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_clnt_iterate_for_each_xprt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_print_stats(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_xprt_ops, ptr %5, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %1, ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rpc_proc_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %7 = load volatile ptr, ptr %6, align 64
  %8 = getelementptr [0 x ptr], ptr %7, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @proc_create_data(ptr noundef %4, i16 noundef zeroext 0, ptr noundef %10, ptr noundef nonnull @rpc_proc_ops, ptr noundef %1) #5
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_proc_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %8 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef %1, ptr noundef %8) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @svc_proc_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.svc_program, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %8 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %9 = load volatile ptr, ptr %8, align 64
  %10 = getelementptr [0 x ptr], ptr %9, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @proc_create_data(ptr noundef %6, i16 noundef zeroext 0, ptr noundef %12, ptr noundef %2, ptr noundef %1) #5
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @svc_proc_unregister(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %5 = load volatile ptr, ptr %4, align 64
  %6 = getelementptr [0 x ptr], ptr %5, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %8 = load ptr, ptr %7, align 4
  tail call void @remove_proc_entry(ptr noundef %1, ptr noundef %8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rpc_proc_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @sunrpc_net_id, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 37
  %4 = load volatile ptr, ptr %3, align 64
  %5 = getelementptr [0 x ptr], ptr %4, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.8, ptr noundef %8) #5
  store ptr %9, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i32 -12, i32 0
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpc_proc_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %3) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpc_stats_latency(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_proc_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @rpc_proc_show, ptr noundef %4) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpc_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #5
  %14 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rpc_stat, ptr %4, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %17, i32 noundef %19) #5
  %20 = getelementptr inbounds %struct.rpc_program, ptr %5, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %54, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.rpc_program, ptr %5, i32 0, i32 3
  br label %25

25:                                               ; preds = %50, %23
  %26 = phi i32 [ %21, %23 ], [ %51, %50 ]
  %27 = phi i32 [ 0, %23 ], [ %52, %50 ]
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr ptr, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %25
  %33 = load i32, ptr %30, align 4
  %34 = getelementptr inbounds %struct.rpc_version, ptr %30, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %33, i32 noundef %35) #5
  %36 = load i32, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.rpc_version, ptr %30, i32 0, i32 3
  br label %40

40:                                               ; preds = %40, %38
  %41 = phi i32 [ 0, %38 ], [ %45, %40 ]
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr i32, ptr %42, i32 %41
  %44 = load i32, ptr %43, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %44) #5
  %45 = add nuw i32 %41, 1
  %46 = load i32, ptr %34, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %40, label %48

48:                                               ; preds = %40, %32
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  %49 = load i32, ptr %20, align 4
  br label %50

50:                                               ; preds = %48, %25
  %51 = phi i32 [ %26, %25 ], [ %49, %48 ]
  %52 = add nuw i32 %27, 1
  %53 = icmp ult i32 %52, %51
  br i1 %53, label %25, label %54

54:                                               ; preds = %50, %2
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind readnone }

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
!9 = !{i64 2148933075}
!10 = !{i64 2148928899}
!11 = !{i64 2148928974, i64 2148929001, i64 2148929048, i64 2148929070, i64 2148929098, i64 2148929118}
!12 = !{i64 2148956078}
!13 = !{i64 2156782999}
!14 = !{i64 2156787260}
!15 = !{i64 411121, i64 411148}
!16 = !{i64 411816, i64 411843, i64 411876, i64 411897, i64 411924, i64 411950}
!17 = !{i64 2149051430}
!18 = !{i64 2149051647}
