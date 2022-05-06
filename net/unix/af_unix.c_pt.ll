; ModuleID = '/llk/IR/net/unix/af_unix.c_pt.bc'
source_filename = "../net/unix/af_unix.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_table_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_table_locks\22\09\09\09\09\09"
module asm "__kstrtabns_unix_table_locks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_socket_table:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_socket_table\22\09\09\09\09\09"
module asm "__kstrtabns_unix_socket_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_peer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_peer_get\22\09\09\09\09\09"
module asm "__kstrtabns_unix_peer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_inq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_inq_len\22\09\09\09\09\09"
module asm "__kstrtabns_unix_inq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unix_outq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22unix_outq_len\22\09\09\09\09\09"
module asm "__kstrtabns_unix_outq_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.163, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.163 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.25, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.127, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.127 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.unix_sock = type { %struct.sock, ptr, %struct.path, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.atomic_t, %struct.spinlock, i32, [44 x i8], %struct.socket_wq, %struct.wait_queue_entry, %struct.scm_stat, ptr, [36 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.168, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.169, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.170, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.1, %union.anon.2, %union.anon.3, i16, i8, i8, i32, %union.anon.5, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.164, [0 x i32], %union.anon.165, i16, i16, %union.anon.166, %struct.refcount_struct, [0 x i32], %union.anon.167 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.5 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.121 }
%union.anon.121 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.164 = type { i32 }
%union.anon.165 = type { %struct.hlist_node }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.168 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.169 = type { ptr }
%union.anon.170 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.path = type { ptr, ptr }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.scm_stat = type { %struct.atomic_t }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }
%struct.unix_address = type { %struct.refcount_struct, i32, [0 x %struct.sockaddr_un] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.162, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.6, %union.anon.160 }
%union.anon.6 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.162 = type { ptr }
%struct.ucred = type { i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.unix_stream_read_state = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.143, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%union.anon.143 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.172, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.173, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.174, ptr, %struct.address_space, %struct.list_head, %union.anon.175, i32, i32, ptr, ptr }
%union.anon.172 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.173 = type { %struct.callback_head }
%union.anon.174 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.175 = type { ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.147, %struct.list_head, %struct.list_head, %union.anon.148 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.10, ptr }
%union.anon.10 = type { i64 }
%struct.lockref = type { %union.anon.12 }
%union.anon.12 = type { i64 }
%union.anon.147 = type { %struct.list_head }
%union.anon.148 = type { %struct.hlist_node }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.read_descriptor_t = type { i32, i32, %union.anon.171, i32 }
%union.anon.171 = type { ptr }
%struct.poll_table_struct = type { ptr, i32 }

@unix_table_locks = dso_local global [512 x %struct.spinlock] zeroinitializer, align 4
@__kstrtab_unix_table_locks = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_table_locks = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_table_locks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_table_locks to i32), ptr @__kstrtab_unix_table_locks, ptr @__kstrtabns_unix_table_locks }, section "___ksymtab_gpl+unix_table_locks", align 4
@unix_socket_table = dso_local global [512 x %struct.hlist_head] zeroinitializer, align 4
@__kstrtab_unix_socket_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_socket_table = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_socket_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_socket_table to i32), ptr @__kstrtab_unix_socket_table, ptr @__kstrtabns_unix_socket_table }, section "___ksymtab_gpl+unix_socket_table", align 4
@__kstrtab_unix_peer_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_peer_get = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_peer_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_peer_get to i32), ptr @__kstrtab_unix_peer_get, ptr @__kstrtabns_unix_peer_get }, section "___ksymtab_gpl+unix_peer_get", align 4
@unix_dgram_proto = dso_local global %struct.proto { ptr @unix_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 768, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.163 zeroinitializer, ptr null, [32 x i8] c"UNIX\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@unix_stream_proto = dso_local global %struct.proto { ptr @unix_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unix_unhash, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 768, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.163 zeroinitializer, ptr null, [32 x i8] c"UNIX-STREAM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@__kstrtab_unix_inq_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_inq_len = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_inq_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_inq_len to i32), ptr @__kstrtab_unix_inq_len, ptr @__kstrtabns_unix_inq_len }, section "___ksymtab_gpl+unix_inq_len", align 4
@__kstrtab_unix_outq_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_unix_outq_len = external dso_local constant [0 x i8], align 1
@__ksymtab_unix_outq_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unix_outq_len to i32), ptr @__kstrtab_unix_outq_len, ptr @__kstrtabns_unix_outq_len }, section "___ksymtab_gpl+unix_outq_len", align 4
@unix_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @unix_net_init, ptr null, ptr @unix_net_exit, ptr null, ptr null, i32 0 }, align 4
@__initcall__kmod_unix__500_3520_af_unix_init5 = internal global ptr @af_unix_init, section ".initcall5.init", align 4
@__exitcall_af_unix_exit = internal global ptr @af_unix_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file501 = internal constant [24 x i8] c"unix.file=net/unix/unix\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [17 x i8] c"unix.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias503 = internal constant [20 x i8] c"unix.alias=net-pf-1\00", section ".modinfo", align 1
@unix_gc_lock = external dso_local global %struct.spinlock, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@unix_seq_ops = internal constant %struct.seq_operations { ptr @unix_seq_start, ptr @unix_seq_stop, ptr @unix_seq_next, ptr @unix_seq_show }, align 4
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [57 x i8] c"Num       RefCount Protocol Flags    Type St Inode Path\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%pK: %08X %08X %08X %04X %02X %5lu\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\012unix: %s: Cannot create unix_sock SLAB cache!\0A\00", align 1
@__func__.af_unix_init = private unnamed_addr constant [13 x i8] c"af_unix_init\00", align 1
@unix_family_ops = internal constant %struct.net_proto_family { i32 1, ptr @unix_create, ptr null }, align 4
@unix_stream_ops = internal constant %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_stream_connect, ptr @unix_socketpair, ptr @unix_accept, ptr @unix_getname, ptr @unix_poll, ptr @unix_ioctl, ptr null, ptr @unix_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_stream_sendmsg, ptr @unix_stream_recvmsg, ptr @sock_no_mmap, ptr @unix_stream_sendpage, ptr @unix_stream_splice_read, ptr @unix_set_peek_off, ptr null, ptr @unix_stream_read_sock, ptr null, ptr null, ptr null }, align 4
@unix_dgram_ops = internal constant %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_dgram_connect, ptr @unix_socketpair, ptr @sock_no_accept, ptr @unix_getname, ptr @unix_dgram_poll, ptr @unix_ioctl, ptr null, ptr @sock_no_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_dgram_sendmsg, ptr @unix_dgram_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr @unix_set_peek_off, ptr null, ptr @unix_read_sock, ptr null, ptr null, ptr null }, align 4
@unix_seqpacket_ops = internal constant %struct.proto_ops { i32 1, ptr null, ptr @unix_release, ptr @unix_bind, ptr @unix_stream_connect, ptr @unix_socketpair, ptr @unix_accept, ptr @unix_getname, ptr @unix_dgram_poll, ptr @unix_ioctl, ptr null, ptr @unix_listen, ptr @unix_shutdown, ptr null, ptr null, ptr @unix_show_fdinfo, ptr @unix_seqpacket_sendmsg, ptr @unix_seqpacket_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr @unix_set_peek_off, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@unix_tot_inflight = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%05x\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"net/unix/af_unix.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"scm_fds: %u\0A\00", align 1
@unix_nr_socks = internal global %struct.atomic_t zeroinitializer, align 4
@unix_create1.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"&u->iolock\00", align 1
@unix_create1.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"&u->bindlock\00", align 1
@unix_create1.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"&u->peer_wait\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\016unix: Attempt to release alive unix socket: %p\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_af_unix_exit, ptr @__initcall__kmod_unix__500_3520_af_unix_init5, ptr @__ksymtab_unix_inq_len, ptr @__ksymtab_unix_outq_len, ptr @__ksymtab_unix_peer_get, ptr @__ksymtab_unix_socket_table, ptr @__ksymtab_unix_table_locks, ptr @af_unix_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @unix_peer_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #19, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #19, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #19
  br label %17

17:                                               ; preds = %15, %11, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %18 = load i16, ptr %2, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @unix_close(ptr nocapture noundef %0, i32 noundef %1) #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @unix_unhash(ptr nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__unix_dgram_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.scm_cookie, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !17
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store ptr null, ptr %6, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #19
  store i32 0, ptr %8, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #19
  store i32 -95, ptr %9, align 4
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %180

14:                                               ; preds = %4
  %15 = and i32 %3, 64
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 62
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %19, %17 ], [ 0, %14 ]
  store i32 %21, ptr %7, align 4
  %22 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 3
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  br label %27

27:                                               ; preds = %52, %20
  call void @mutex_lock(ptr noundef %22) #19
  br i1 %24, label %28, label %31, !prof !12

28:                                               ; preds = %27
  store i32 0, ptr %8, align 4
  %29 = call ptr @__skb_try_recv_datagram(ptr noundef %0, ptr noundef %26, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #19
  %30 = icmp eq ptr %29, null
  br i1 %30, label %46, label %35

31:                                               ; preds = %27
  %32 = load volatile i32, ptr %25, align 4
  store i32 %32, ptr %8, align 4
  %33 = call ptr @__skb_try_recv_datagram(ptr noundef %0, ptr noundef %26, i32 noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %6) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %73

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 3, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %35
  %40 = load i16, ptr %37, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %73, label %42, !prof !12

42:                                               ; preds = %39
  %43 = sext i16 %40 to i32
  %44 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #19, !srcloc !9
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 %43, ptr elementtype(i32) %44) #19, !srcloc !18
  br label %73

46:                                               ; preds = %31, %28
  call void @mutex_unlock(ptr noundef %22) #19
  %47 = load i32, ptr %9, align 4
  %48 = icmp eq i32 %47, -11
  %49 = load i32, ptr %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load ptr, ptr %6, align 4
  %54 = call i32 @__skb_wait_for_more_packets(ptr noundef %0, ptr noundef %26, ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef %53) #19
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %27, label %56

56:                                               ; preds = %52, %46
  %57 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %57) #19
  %58 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, 5
  %61 = load i32, ptr %9, align 4
  %62 = icmp eq i32 %61, -11
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %66 = load i8, ptr %65, align 2
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, ptr %9, align 4
  br label %70

70:                                               ; preds = %69, %64, %56
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %71 = load i16, ptr %57, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %57, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %180

73:                                               ; preds = %42, %39, %35, %31
  %74 = phi ptr [ %29, %42 ], [ %29, %39 ], [ %29, %35 ], [ %33, %31 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %75 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 11, i32 0, i32 1
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 11
  call void @__wake_up_sync_key(ptr noundef %79, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #19
  br label %80

80:                                               ; preds = %78, %73
  %81 = load ptr, ptr %1, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.unix_sock, ptr %85, i32 0, i32 1
  %87 = load volatile ptr, ptr %86, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.unix_address, ptr %87, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  %93 = load ptr, ptr %1, align 8
  %94 = getelementptr inbounds %struct.unix_address, ptr %87, i32 0, i32 2
  %95 = load i32, ptr %90, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %93, ptr align 4 %94, i32 %95, i1 false) #19
  br label %96

96:                                               ; preds = %89, %83, %80
  %97 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 5
  %98 = load i32, ptr %97, align 8
  %99 = load i32, ptr %8, align 4
  %100 = sub i32 %98, %99
  %101 = icmp ult i32 %100, %2
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = icmp ugt i32 %100, %2
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 32
  store i32 %107, ptr %105, align 4
  br label %108

108:                                              ; preds = %104, %102, %96
  %109 = phi i32 [ %2, %104 ], [ %2, %102 ], [ %100, %96 ]
  %110 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %111 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %74, i32 noundef %99, ptr noundef %110, i32 noundef %109) #19
  store i32 %111, ptr %9, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %179

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 2048
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %74) #19
  br label %119

119:                                              ; preds = %118, %113
  %120 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 4
  %124 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 8
  %125 = load i32, ptr %123, align 4
  %126 = load i32, ptr %124, align 8
  %127 = icmp eq ptr %122, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %119
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %122) #19, !srcloc !9
  %129 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %122, ptr nonnull %122, i32 1, ptr nonnull elementtype(i32) %122) #19, !srcloc !10
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132, !prof !11

132:                                              ; preds = %128
  %133 = add i32 %130, 1
  %134 = or i32 %133, %130
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %138, label %136, !prof !12

136:                                              ; preds = %132, %128
  %137 = phi i32 [ 2, %128 ], [ 1, %132 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %122, i32 noundef %137) #19
  br label %138

138:                                              ; preds = %136, %132, %119
  store ptr %122, ptr %5, align 4
  %139 = call i32 @pid_vnr(ptr noundef %122) #19
  %140 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 1
  store i32 %125, ptr %141, align 4
  %142 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 2
  store i32 %126, ptr %142, align 4
  br i1 %24, label %143, label %155

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 12
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  call void @unix_detach_fds(ptr noundef nonnull %5, ptr noundef nonnull %74) #19
  br label %148

148:                                              ; preds = %147, %143
  %149 = load i32, ptr %97, align 8
  %150 = load volatile i32, ptr %25, align 4
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %152, label %170, !prof !11

152:                                              ; preds = %148
  %153 = sub i32 %150, %149
  %154 = call i32 @llvm.smax.i32(i32 %153, i32 0) #19
  store volatile i32 %154, ptr %25, align 4
  br label %170

155:                                              ; preds = %138
  %156 = load volatile i32, ptr %25, align 4
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %158, label %161, !prof !11

158:                                              ; preds = %155
  %159 = add i32 %156, %109
  %160 = call i32 @llvm.smax.i32(i32 %159, i32 0) #19
  store volatile i32 %160, ptr %25, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 3, i32 12
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = call ptr @scm_fp_dup(ptr noundef nonnull %163) #19
  %167 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 1
  store ptr %166, ptr %167, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %168 = load i16, ptr @unix_gc_lock, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr @unix_gc_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %170

170:                                              ; preds = %165, %161, %152, %148
  %171 = and i32 %3, 32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %97, align 8
  %175 = load i32, ptr %8, align 4
  %176 = sub i32 %174, %175
  br label %177

177:                                              ; preds = %173, %170
  %178 = phi i32 [ %176, %173 ], [ %109, %170 ]
  store i32 %178, ptr %9, align 4
  call fastcc void @scm_recv(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %5)
  br label %179

179:                                              ; preds = %177, %108
  call void @skb_free_datagram(ptr noundef %0, ptr noundef nonnull %74) #19
  call void @mutex_unlock(ptr noundef %22) #19
  br label %180

180:                                              ; preds = %179, %70, %4
  %181 = load i32, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  ret i32 %181
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_try_recv_datagram(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_wait_for_more_packets(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_detach_fds(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scm_recv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca %struct.ucred, align 4
  %5 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %7, label %12, label %27

12:                                               ; preds = %3
  br i1 %11, label %13, label %17

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %12
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load ptr, ptr %2, align 4
  tail call void @put_pid(ptr noundef %22) #19
  store ptr null, ptr %2, align 4
  %23 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  tail call void @__scm_destroy(ptr noundef %2) #19
  br label %50

27:                                               ; preds = %3
  br i1 %11, label %44, label %28

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #19
  %29 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.ucred, ptr %4, i32 0, i32 1
  %32 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  %35 = load i32, ptr @overflowuid, align 4
  %36 = select i1 %34, i32 %35, i32 %33
  store i32 %36, ptr %31, align 4
  %37 = getelementptr inbounds %struct.ucred, ptr %4, i32 0, i32 2
  %38 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, -1
  %41 = load i32, ptr @overflowgid, align 4
  %42 = select i1 %40, i32 %41, i32 %39
  store i32 %42, ptr %37, align 4
  %43 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #19
  br label %44

44:                                               ; preds = %28, %27
  %45 = load ptr, ptr %2, align 4
  call void @put_pid(ptr noundef %45) #19
  store ptr null, ptr %2, align 4
  %46 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @scm_detach_fds(ptr noundef %1, ptr noundef %2) #19
  br label %50

50:                                               ; preds = %49, %44, %26, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__unix_stream_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.unix_stream_read_state, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  store ptr @unix_stream_read_actor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 3
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 4
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 5
  store i32 %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %13, align 4
  %14 = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_read_actor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, %1
  %8 = getelementptr inbounds %struct.unix_stream_read_state, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msghdr, ptr %9, i32 0, i32 2
  %11 = tail call i32 @skb_copy_datagram_iter(ptr noundef %0, i32 noundef %7, ptr noundef %10, i32 noundef %2) #19
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 %2, i32 %11
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_stream_read_generic(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = alloca %struct.scm_cookie, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 64
  %12 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 1
  br i1 %16, label %17, label %433, !prof !12

17:                                               ; preds = %2
  %18 = and i32 %10, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @unix_stream_recv_urg(ptr noundef %0)
  br label %433

22:                                               ; preds = %17
  %23 = and i32 %10, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 6
  %27 = load volatile i32, ptr %26, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %13) #19
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i32 [ %28, %25 ], [ %13, %22 ]
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 1, i32 %30
  %33 = icmp eq i32 %11, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 62
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %36, %34 ], [ 0, %29 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false)
  %39 = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %39) #19
  %40 = and i32 %10, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !12

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 27
  %44 = load volatile i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi i32 [ %44, %42 ], [ 0, %37 ]
  %47 = tail call i32 @llvm.smax.i32(i32 %46, i32 0)
  %48 = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 8
  %49 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %50 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  %51 = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 14
  %52 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 2
  %53 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2
  %54 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2, i32 1
  %55 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 2, i32 2
  %56 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 2
  %57 = getelementptr inbounds %struct.scm_cookie, ptr %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 27
  %59 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %60 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 66
  %61 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %62 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  %63 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  %64 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  %65 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 17
  %66 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8, i32 0, i32 0, i32 1
  %67 = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 13
  br label %68

68:                                               ; preds = %247, %45
  %69 = phi i32 [ %38, %45 ], [ %229, %247 ]
  %70 = phi i32 [ %47, %45 ], [ %134, %247 ]
  %71 = phi i32 [ %13, %45 ], [ %131, %247 ]
  %72 = phi i1 [ false, %45 ], [ %132, %247 ]
  %73 = phi i32 [ 0, %45 ], [ %133, %247 ]
  br label %74

74:                                               ; preds = %388, %68
  %75 = phi i32 [ %257, %388 ], [ %70, %68 ]
  %76 = phi i32 [ %363, %388 ], [ %71, %68 ]
  %77 = phi i1 [ %316, %388 ], [ %72, %68 ]
  %78 = phi i32 [ %362, %388 ], [ %73, %68 ]
  br label %79

79:                                               ; preds = %114, %74
  %80 = phi i32 [ 0, %114 ], [ %78, %74 ]
  call void @_raw_spin_lock(ptr noundef %48) #19
  %81 = load volatile i32, ptr %49, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %251

84:                                               ; preds = %79
  %85 = load ptr, ptr %50, align 4
  %86 = icmp eq ptr %85, %50
  %87 = icmp eq ptr %85, null
  %88 = or i1 %86, %87
  br i1 %88, label %130, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %85, i32 0, i32 3, i32 16
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %91, %93
  %95 = and i1 %41, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  call void @skb_unlink(ptr noundef nonnull %85, ptr noundef %50) #19
  call void @consume_skb(ptr noundef nonnull %85) #19
  br label %114

97:                                               ; preds = %89
  %98 = load ptr, ptr %51, align 8
  %99 = icmp eq ptr %98, %85
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = icmp eq i32 %80, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %100
  %103 = load volatile i32, ptr %49, align 4
  %104 = and i32 %103, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  br i1 %41, label %107, label %118

107:                                              ; preds = %106
  store ptr null, ptr %51, align 8
  call void @consume_skb(ptr noundef nonnull %85) #19
  br label %118

108:                                              ; preds = %102
  br i1 %41, label %109, label %118

109:                                              ; preds = %108
  call void @skb_unlink(ptr noundef nonnull %85, ptr noundef %50) #19
  call void @consume_skb(ptr noundef nonnull %85) #19
  %110 = load ptr, ptr %50, align 4
  %111 = icmp eq ptr %110, %50
  %112 = icmp eq ptr %110, null
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109, %100, %96
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %115 = load i16, ptr %48, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %117 = icmp eq i32 %80, 0
  br i1 %117, label %79, label %418

118:                                              ; preds = %108, %107, %106, %97
  %119 = phi i32 [ 0, %106 ], [ 0, %107 ], [ %80, %97 ], [ 0, %108 ]
  %120 = icmp eq ptr %85, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %118, %109
  %122 = phi i32 [ %119, %118 ], [ 0, %109 ]
  %123 = phi ptr [ %85, %118 ], [ %110, %109 ]
  br label %124

124:                                              ; preds = %410, %121
  %125 = phi i32 [ %362, %410 ], [ %122, %121 ]
  %126 = phi ptr [ %411, %410 ], [ %123, %121 ]
  %127 = phi i1 [ %316, %410 ], [ %77, %121 ]
  %128 = phi i32 [ %363, %410 ], [ %76, %121 ]
  %129 = phi i32 [ 0, %410 ], [ %75, %121 ]
  br label %256

130:                                              ; preds = %265, %118, %84
  %131 = phi i32 [ %128, %265 ], [ %76, %84 ], [ %76, %118 ]
  %132 = phi i1 [ %127, %265 ], [ %77, %84 ], [ %77, %118 ]
  %133 = phi i32 [ %125, %265 ], [ %80, %84 ], [ %119, %118 ]
  %134 = phi i32 [ %266, %265 ], [ %75, %84 ], [ %75, %118 ]
  %135 = phi i32 [ %260, %265 ], [ 0, %84 ], [ %91, %118 ]
  %136 = phi ptr [ %258, %265 ], [ null, %84 ], [ %85, %118 ]
  %137 = icmp slt i32 %133, %32
  br i1 %137, label %138, label %251

138:                                              ; preds = %130
  %139 = load i32, ptr %59, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %141, !prof !12

141:                                              ; preds = %138
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #19, !srcloc !9
  %142 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %59) #19, !srcloc !22
  %143 = extractvalue { i32, i32 } %142, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !23
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %248

145:                                              ; preds = %141, %138
  %146 = load i8, ptr %60, align 2
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %251

149:                                              ; preds = %145
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %150 = load i16, ptr %48, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %152 = icmp eq i32 %69, 0
  br i1 %152, label %418, label %153

153:                                              ; preds = %149
  call void @mutex_unlock(ptr noundef %39) #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #19
  %154 = tail call ptr @llvm.thread.pointer() #19
  store i32 0, ptr %3, align 4
  store ptr %154, ptr %61, align 4
  store ptr @autoremove_wake_function, ptr %62, align 4
  store ptr %63, ptr %63, align 4
  store ptr %63, ptr %64, align 4
  call void @_raw_spin_lock(ptr noundef %48) #19
  %155 = load volatile ptr, ptr %65, align 4
  call void @prepare_to_wait(ptr noundef %155, ptr noundef nonnull %3, i32 noundef 1) #19
  %156 = load volatile ptr, ptr %66, align 4
  %157 = icmp eq ptr %156, %50
  %158 = select i1 %157, ptr null, ptr %156
  %159 = icmp eq ptr %158, %136
  br i1 %159, label %160, label %228

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 4
  %162 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 5
  %163 = icmp eq ptr %136, null
  br label %164

164:                                              ; preds = %222, %160
  %165 = phi i32 [ %69, %160 ], [ %211, %222 ]
  br i1 %163, label %169, label %166

166:                                              ; preds = %164
  %167 = load i32, ptr %162, align 8
  %168 = icmp eq i32 %167, %135
  br i1 %168, label %169, label %228

169:                                              ; preds = %166, %164
  %170 = load i32, ptr %59, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %228

172:                                              ; preds = %169
  %173 = load i8, ptr %60, align 2
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %228

176:                                              ; preds = %172
  %177 = load volatile i32, ptr %154, align 4
  %178 = and i32 %177, 256
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %228, !prof !12

180:                                              ; preds = %176
  %181 = load volatile i32, ptr %154, align 4
  %182 = and i32 %181, 1
  %183 = icmp eq i32 %182, 0
  %184 = icmp ne i32 %165, 0
  %185 = select i1 %183, i1 %184, i1 false
  br i1 %185, label %186, label %228

186:                                              ; preds = %180
  %187 = load volatile i32, ptr %49, align 4
  %188 = and i32 %187, 65536
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %65, align 4
  %192 = getelementptr inbounds %struct.socket_wq, ptr %191, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %192) #19
  br label %193

193:                                              ; preds = %190, %186
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %194 = load i16, ptr %48, align 4
  %195 = add i16 %194, 1
  store i16 %195, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br i1 %1, label %196, label %208

196:                                              ; preds = %193
  %197 = load i32, ptr %161, align 4
  %198 = or i32 %197, 1073741824
  store i32 %198, ptr %161, align 4
  %199 = call i32 @schedule_timeout(i32 noundef %165) #19
  %200 = load i32, ptr %161, align 4
  %201 = and i32 %200, -1073741825
  store i32 %201, ptr %161, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !24
  %202 = load volatile i32, ptr @system_freezing_cnt, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %210, label %204, !prof !12

204:                                              ; preds = %196
  %205 = call zeroext i1 @freezing_slow_path(ptr noundef %154) #19
  br i1 %205, label %206, label %210, !prof !11

206:                                              ; preds = %204
  %207 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #19
  br label %210

208:                                              ; preds = %193
  %209 = call i32 @schedule_timeout(i32 noundef %165) #19
  br label %210

210:                                              ; preds = %208, %206, %204, %196
  %211 = phi i32 [ %209, %208 ], [ %199, %196 ], [ %199, %204 ], [ %199, %206 ]
  call void @_raw_spin_lock(ptr noundef %48) #19
  %212 = load volatile i32, ptr %49, align 4
  %213 = and i32 %212, 1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %228

215:                                              ; preds = %210
  %216 = load volatile i32, ptr %49, align 4
  %217 = and i32 %216, 65536
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %65, align 4
  %221 = getelementptr inbounds %struct.socket_wq, ptr %220, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %221) #19
  br label %222

222:                                              ; preds = %219, %215
  %223 = load volatile ptr, ptr %65, align 4
  call void @prepare_to_wait(ptr noundef %223, ptr noundef nonnull %3, i32 noundef 1) #19
  %224 = load volatile ptr, ptr %66, align 4
  %225 = icmp eq ptr %224, %50
  %226 = select i1 %225, ptr null, ptr %224
  %227 = icmp eq ptr %226, %136
  br i1 %227, label %164, label %228

228:                                              ; preds = %222, %210, %180, %176, %172, %169, %166, %153
  %229 = phi i32 [ %69, %153 ], [ %165, %180 ], [ %165, %172 ], [ %165, %169 ], [ %165, %166 ], [ %211, %222 ], [ %211, %210 ], [ %165, %176 ]
  %230 = load volatile ptr, ptr %65, align 4
  call void @finish_wait(ptr noundef %230, ptr noundef nonnull %3) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %231 = load i16, ptr %48, align 4
  %232 = add i16 %231, 1
  store i16 %232, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #19
  %233 = load volatile i32, ptr %154, align 4
  %234 = and i32 %233, 256
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240, !prof !12

236:                                              ; preds = %228
  %237 = load volatile i32, ptr %154, align 4
  %238 = and i32 %237, 1
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %236, %228
  %241 = icmp eq i32 %229, 2147483647
  %242 = select i1 %241, i32 -512, i32 -4
  %243 = load ptr, ptr %4, align 4
  call void @put_pid(ptr noundef %243) #19
  store ptr null, ptr %4, align 4
  %244 = load ptr, ptr %57, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %429, label %246

246:                                              ; preds = %240
  call void @__scm_destroy(ptr noundef nonnull %4) #19
  br label %429

247:                                              ; preds = %236
  call void @mutex_lock(ptr noundef %39) #19
  br label %68

248:                                              ; preds = %141
  %249 = extractvalue { i32, i32 } %142, 0
  %250 = sub i32 0, %249
  br label %251

251:                                              ; preds = %248, %145, %130, %79
  %252 = phi i32 [ %250, %248 ], [ -104, %79 ], [ 0, %145 ], [ 0, %130 ]
  %253 = phi i32 [ %133, %248 ], [ %80, %79 ], [ %133, %145 ], [ %133, %130 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %254 = load i16, ptr %48, align 4
  %255 = add i16 %254, 1
  store i16 %255, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %418

256:                                              ; preds = %265, %124
  %257 = phi i32 [ %266, %265 ], [ %129, %124 ]
  %258 = phi ptr [ %267, %265 ], [ %126, %124 ]
  %259 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 5
  %260 = load i32, ptr %259, align 8
  %261 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 16
  %262 = load i32, ptr %261, align 8
  %263 = sub i32 %260, %262
  %264 = icmp ult i32 %257, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %256
  %266 = sub i32 %257, %263
  %267 = load ptr, ptr %258, align 8
  %268 = icmp eq ptr %267, %50
  %269 = icmp eq ptr %267, null
  %270 = or i1 %268, %269
  br i1 %270, label %130, label %256

271:                                              ; preds = %256
  %272 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 5
  %273 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 16
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %274 = load i16, ptr %48, align 4
  %275 = add i16 %274, 1
  store i16 %275, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br i1 %127, label %276, label %291

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3
  %278 = load ptr, ptr %277, align 4
  %279 = load ptr, ptr %4, align 4
  %280 = icmp eq ptr %278, %279
  br i1 %280, label %281, label %418

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 4
  %283 = load i32, ptr %282, align 4
  %284 = load i32, ptr %54, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %418

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 8
  %288 = load i32, ptr %287, align 4
  %289 = load i32, ptr %55, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %315, label %418

291:                                              ; preds = %271
  %292 = load volatile i32, ptr %52, align 4
  %293 = and i32 %292, 8
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %315, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 4
  %299 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 8
  %300 = load i32, ptr %298, align 4
  %301 = load i32, ptr %299, align 8
  %302 = icmp eq ptr %297, null
  br i1 %302, label %313, label %303

303:                                              ; preds = %295
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %297) #19, !srcloc !9
  %304 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %297, ptr nonnull %297, i32 1, ptr nonnull elementtype(i32) %297) #19, !srcloc !10
  %305 = extractvalue { i32, i32, i32 } %304, 0
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %311, label %307, !prof !11

307:                                              ; preds = %303
  %308 = add i32 %305, 1
  %309 = or i32 %308, %305
  %310 = icmp sgt i32 %309, -1
  br i1 %310, label %313, label %311, !prof !12

311:                                              ; preds = %307, %303
  %312 = phi i32 [ 2, %303 ], [ 1, %307 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %297, i32 noundef %312) #19
  br label %313

313:                                              ; preds = %311, %307, %295
  store ptr %297, ptr %4, align 4
  %314 = call i32 @pid_vnr(ptr noundef %297) #19
  store i32 %314, ptr %53, align 4
  store i32 %300, ptr %54, align 4
  store i32 %301, ptr %55, align 4
  br label %315

315:                                              ; preds = %313, %291, %286
  %316 = phi i1 [ true, %286 ], [ true, %313 ], [ false, %291 ]
  %317 = load ptr, ptr %56, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %335, label %319

319:                                              ; preds = %315
  %320 = load ptr, ptr %317, align 8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %335, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.unix_sock, ptr %324, i32 0, i32 1
  %326 = load volatile ptr, ptr %325, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !20
  %327 = icmp eq ptr %326, null
  br i1 %327, label %335, label %328

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.unix_address, ptr %326, i32 0, i32 1
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.msghdr, ptr %317, i32 0, i32 1
  store i32 %330, ptr %331, align 4
  %332 = load ptr, ptr %317, align 8
  %333 = getelementptr inbounds %struct.unix_address, ptr %326, i32 0, i32 2
  %334 = load i32, ptr %329, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %332, ptr align 4 %333, i32 %334, i1 false) #19
  br label %335

335:                                              ; preds = %328, %322, %319, %315
  %336 = load i32, ptr %272, align 8
  %337 = load i32, ptr %273, align 8
  %338 = add i32 %257, %337
  %339 = sub i32 %336, %338
  %340 = call i32 @llvm.umin.i32(i32 %339, i32 %128)
  %341 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %341) #19, !srcloc !9
  %342 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %341, ptr %341, i32 1, ptr elementtype(i32) %341) #19, !srcloc !10
  %343 = extractvalue { i32, i32, i32 } %342, 0
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %349, label %345, !prof !11

345:                                              ; preds = %335
  %346 = add i32 %343, 1
  %347 = or i32 %346, %343
  %348 = icmp sgt i32 %347, -1
  br i1 %348, label %351, label %349, !prof !12

349:                                              ; preds = %345, %335
  %350 = phi i32 [ 2, %335 ], [ 1, %345 ]
  call void @refcount_warn_saturate(ptr noundef %341, i32 noundef %350) #19
  br label %351

351:                                              ; preds = %349, %345
  %352 = load ptr, ptr %0, align 4
  %353 = call i32 %352(ptr noundef nonnull %258, i32 noundef %257, i32 noundef %340, ptr noundef %0) #19
  %354 = load i32, ptr %272, align 8
  %355 = load i32, ptr %273, align 8
  call void @consume_skb(ptr noundef nonnull %258) #19
  %356 = icmp slt i32 %353, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = icmp eq i32 %125, 0
  %359 = select i1 %358, i32 -14, i32 %125
  br label %418

360:                                              ; preds = %351
  %361 = icmp eq i32 %354, %355
  %362 = add i32 %353, %125
  %363 = sub i32 %128, %353
  br i1 %361, label %418, label %364

364:                                              ; preds = %360
  br i1 %41, label %365, label %393

365:                                              ; preds = %364
  %366 = load i32, ptr %273, align 8
  %367 = add i32 %366, %353
  store i32 %367, ptr %273, align 8
  %368 = load volatile i32, ptr %58, align 4
  %369 = icmp sgt i32 %368, -1
  br i1 %369, label %370, label %373, !prof !11

370:                                              ; preds = %365
  %371 = sub nsw i32 %368, %353
  %372 = call i32 @llvm.smax.i32(i32 %371, i32 0) #19
  store volatile i32 %372, ptr %58, align 4
  br label %373

373:                                              ; preds = %370, %365
  %374 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 12
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %384, label %377

377:                                              ; preds = %373
  %378 = load i16, ptr %375, align 4
  %379 = icmp eq i16 %378, 0
  br i1 %379, label %383, label %380, !prof !12

380:                                              ; preds = %377
  %381 = sext i16 %378 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #19, !srcloc !9
  %382 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 %381, ptr elementtype(i32) %67) #19, !srcloc !18
  br label %383

383:                                              ; preds = %380, %377
  call void @unix_detach_fds(ptr noundef nonnull %4, ptr noundef nonnull %258) #19
  br label %384

384:                                              ; preds = %383, %373
  %385 = load i32, ptr %272, align 8
  %386 = load i32, ptr %273, align 8
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %418

388:                                              ; preds = %384
  call void @skb_unlink(ptr noundef nonnull %258, ptr noundef %50) #19
  call void @consume_skb(ptr noundef nonnull %258) #19
  %389 = load ptr, ptr %57, align 4
  %390 = icmp ne ptr %389, null
  %391 = icmp eq i32 %363, 0
  %392 = select i1 %390, i1 true, i1 %391
  br i1 %392, label %418, label %74

393:                                              ; preds = %364
  %394 = getelementptr inbounds %struct.sk_buff, ptr %258, i32 0, i32 3, i32 12
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %401, label %397

397:                                              ; preds = %393
  %398 = call ptr @scm_fp_dup(ptr noundef nonnull %395) #19
  store ptr %398, ptr %57, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @unix_gc_lock) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %399 = load i16, ptr @unix_gc_lock, align 4
  %400 = add i16 %399, 1
  store i16 %400, ptr @unix_gc_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %401

401:                                              ; preds = %397, %393
  %402 = load volatile i32, ptr %58, align 4
  %403 = icmp sgt i32 %402, -1
  br i1 %403, label %404, label %407, !prof !11

404:                                              ; preds = %401
  %405 = add nuw i32 %402, %353
  %406 = call i32 @llvm.smax.i32(i32 %405, i32 0) #19
  store volatile i32 %406, ptr %58, align 4
  br label %407

407:                                              ; preds = %404, %401
  %408 = load ptr, ptr %394, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %418

410:                                              ; preds = %407
  call void @_raw_spin_lock(ptr noundef %48) #19
  %411 = load ptr, ptr %258, align 8
  %412 = icmp eq ptr %411, %50
  %413 = icmp eq ptr %411, null
  %414 = or i1 %412, %413
  br i1 %414, label %415, label %124

415:                                              ; preds = %410
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %416 = load i16, ptr %48, align 4
  %417 = add i16 %416, 1
  store i16 %417, ptr %48, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %418

418:                                              ; preds = %415, %407, %388, %384, %360, %357, %286, %281, %276, %251, %149, %114
  %419 = phi i32 [ %362, %415 ], [ %359, %357 ], [ %253, %251 ], [ %125, %276 ], [ %125, %281 ], [ %125, %286 ], [ %362, %360 ], [ %362, %407 ], [ %80, %114 ], [ %362, %388 ], [ %362, %384 ], [ %133, %149 ]
  %420 = phi i32 [ 0, %415 ], [ 0, %357 ], [ %252, %251 ], [ 0, %286 ], [ 0, %360 ], [ 0, %407 ], [ 0, %281 ], [ 0, %276 ], [ 0, %114 ], [ 0, %388 ], [ 0, %384 ], [ -11, %149 ]
  call void @mutex_unlock(ptr noundef %39) #19
  %421 = load ptr, ptr %56, align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %418
  call fastcc void @scm_recv(ptr noundef %6, ptr noundef nonnull %421, ptr noundef nonnull %4)
  br label %429

424:                                              ; preds = %418
  %425 = load ptr, ptr %4, align 4
  call void @put_pid(ptr noundef %425) #19
  store ptr null, ptr %4, align 4
  %426 = load ptr, ptr %57, align 4
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428

428:                                              ; preds = %424
  call void @__scm_destroy(ptr noundef nonnull %4) #19
  br label %429

429:                                              ; preds = %428, %424, %423, %246, %240
  %430 = phi i32 [ %420, %423 ], [ %420, %424 ], [ %420, %428 ], [ %242, %240 ], [ %242, %246 ]
  %431 = phi i32 [ %419, %423 ], [ %419, %424 ], [ %419, %428 ], [ %133, %240 ], [ %133, %246 ]
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %429, %20, %2
  %434 = phi i32 [ %430, %429 ], [ -22, %2 ], [ %21, %20 ]
  br label %435

435:                                              ; preds = %433, %429
  %436 = phi i32 [ %434, %433 ], [ %431, %429 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #19
  ret i32 %436
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unix_inq_len(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 10
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %9 = load i16, ptr %8, align 2
  switch i16 %9, label %24 [
    i16 1, label %10
    i16 5, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = load ptr, ptr %6, align 8
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %32, label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %22, %13 ], [ %11, %10 ]
  %15 = phi i32 [ %21, %13 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 16
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %17, %15
  %21 = sub i32 %20, %19
  %22 = load ptr, ptr %14, align 8
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %32, label %13

24:                                               ; preds = %5
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, %6
  %27 = icmp eq ptr %25, null
  %28 = or i1 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  br label %32

32:                                               ; preds = %29, %24, %13, %10
  %33 = phi i32 [ %31, %29 ], [ 0, %24 ], [ 0, %10 ], [ %21, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %34 = load i16, ptr %7, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %36

36:                                               ; preds = %32, %1
  %37 = phi i32 [ %33, %32 ], [ -22, %1 ]
  ret i32 %37
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @unix_outq_len(ptr noundef %0) #6 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, -1
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @af_unix_exit() #7 section ".exit.text" {
  tail call void @sock_unregister(i32 noundef 1) #19
  tail call void @proto_unregister(ptr noundef nonnull @unix_dgram_proto) #19
  tail call void @proto_unregister(ptr noundef nonnull @unix_stream_proto) #19
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @unix_net_ops) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @af_unix_init() #7 section ".init.text" {
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(2048) @unix_table_locks, i8 0, i32 2048, i1 false)
  %1 = tail call i32 @proto_register(ptr noundef nonnull @unix_dgram_proto, i32 noundef 1) #19
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.af_unix_init) #20
  br label %13

5:                                                ; preds = %0
  %6 = tail call i32 @proto_register(ptr noundef nonnull @unix_stream_proto, i32 noundef 1) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.af_unix_init) #20
  br label %13

10:                                               ; preds = %5
  %11 = tail call i32 @sock_register(ptr noundef nonnull @unix_family_ops) #19
  %12 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @unix_net_ops) #19
  br label %13

13:                                               ; preds = %10, %8, %3
  %14 = phi i32 [ %1, %3 ], [ %6, %8 ], [ 0, %10 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #19, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #19, !srcloc !10
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !11

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !12

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #19
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scm_fp_dup(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @scm_destroy(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 4
  tail call void @put_pid(ptr noundef %2) #19
  store ptr null, ptr %0, align 4
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__scm_destroy(ptr noundef %0) #19
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scm_detach_fds(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_stream_recv_urg(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %17 = load i16, ptr %7, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @mutex_unlock(ptr noundef %6) #19
  br label %45

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store ptr null, ptr %13, align 8
  br label %25

25:                                               ; preds = %24, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %26 = load i16, ptr %7, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %28 = load ptr, ptr %0, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %14, i32 noundef 0, i32 noundef 1, ptr noundef %0) #19
  %30 = load i32, ptr %20, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #19
  br label %37

37:                                               ; preds = %33, %25
  tail call void @mutex_unlock(ptr noundef %6) #19
  %38 = icmp slt i32 %29, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.unix_stream_read_state, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msghdr, ptr %41, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %39, %37, %16
  %46 = phi i32 [ -22, %16 ], [ 1, %39 ], [ -14, %37 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @unix_net_init(ptr noundef %0) #7 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 32
  store i32 10, ptr %2, align 4
  %3 = tail call i32 @unix_sysctl_register(ptr noundef %0) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %7, ptr noundef nonnull @unix_seq_ops, i32 noundef 0, ptr noundef null) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @unix_sysctl_unregister(ptr noundef %0) #19
  br label %11

11:                                               ; preds = %10, %5, %1
  %12 = phi i32 [ -12, %1 ], [ -12, %10 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_net_exit(ptr noundef %0) #10 section ".ref.text" {
  tail call void @unix_sysctl_unregister(ptr noundef %0) #19
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_sysctl_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_sysctl_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @unix_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i64 %3, 2147483647
  br i1 %6, label %44, label %7

7:                                                ; preds = %5
  %8 = lshr i64 %3, 22
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %36, %7
  %11 = phi i32 [ %37, %36 ], [ %9, %7 ]
  %12 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %11
  tail call void @_raw_spin_lock(ptr noundef %12) #19
  %13 = load i64, ptr %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 4194303
  %16 = lshr i64 %13, 22
  %17 = trunc i64 %16 to i32
  %18 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %17
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -84
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %29, %10
  %25 = phi i32 [ %27, %29 ], [ 0, %10 ]
  %26 = phi ptr [ %33, %29 ], [ %21, %10 ]
  %27 = add i32 %25, 1
  %28 = icmp eq i32 %27, %15
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sock_common, ptr %26, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = getelementptr i8, ptr %31, i32 -84
  %34 = icmp eq ptr %33, null
  %35 = or i1 %32, %34
  br i1 %35, label %36, label %24

36:                                               ; preds = %29, %10
  %37 = add i32 %11, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %38 = load i16, ptr %12, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %40 = shl i32 %37, 22
  %41 = or i32 %40, 1
  %42 = zext i32 %41 to i64
  store i64 %42, ptr %1, align 8
  %43 = icmp ult i32 %37, 512
  br i1 %43, label %10, label %44

44:                                               ; preds = %36, %24, %5, %2
  %45 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ null, %5 ], [ %26, %24 ], [ null, %36 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_seq_stop(ptr nocapture noundef readnone %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %8 = load i16, ptr %7, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @unix_seq_next(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = lshr i64 %5, 22
  %7 = trunc i64 %6 to i32
  %8 = icmp ugt ptr %1, inttoptr (i32 1 to ptr)
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -84
  %14 = icmp eq ptr %13, null
  %15 = or i1 %12, %14
  br i1 %15, label %42, label %52

16:                                               ; preds = %42, %3
  %17 = phi i32 [ %44, %42 ], [ %7, %3 ]
  %18 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %17
  tail call void @_raw_spin_lock(ptr noundef %18) #19
  %19 = load i64, ptr %2, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 4194303
  %22 = lshr i64 %19, 22
  %23 = trunc i64 %22 to i32
  %24 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %23
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -84
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %35, %16
  %31 = phi i32 [ %33, %35 ], [ 0, %16 ]
  %32 = phi ptr [ %39, %35 ], [ %27, %16 ]
  %33 = add i32 %31, 1
  %34 = icmp eq i32 %33, %21
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.sock_common, ptr %32, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 -84
  %40 = icmp eq ptr %39, null
  %41 = or i1 %38, %40
  br i1 %41, label %42, label %30

42:                                               ; preds = %35, %16, %9
  %43 = phi i32 [ %7, %9 ], [ %17, %16 ], [ %17, %35 ]
  %44 = add i32 %43, 1
  %45 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %48 = shl i32 %44, 22
  %49 = or i32 %48, 1
  %50 = zext i32 %49 to i64
  store i64 %50, ptr %2, align 8
  %51 = icmp ult i32 %44, 512
  br i1 %51, label %16, label %52

52:                                               ; preds = %42, %30, %9
  %53 = phi ptr [ null, %42 ], [ %13, %9 ], [ %32, %30 ]
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.1) #19
  br label %57

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 10
  %12 = select i1 %11, i32 65536, i32 0
  %13 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = load volatile i8, ptr %9, align 2
  %20 = icmp eq i8 %19, 1
  %21 = select i1 %20, i32 3, i32 1
  %22 = select i1 %20, i32 2, i32 4
  %23 = select i1 %18, i32 %22, i32 %21
  %24 = tail call i32 @sock_i_ino(ptr noundef %1) #19
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %8, i32 noundef 0, i32 noundef %12, i32 noundef %15, i32 noundef %23, i32 noundef %24) #19
  %25 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %5
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #19
  %29 = load ptr, ptr %25, align 8
  %30 = getelementptr inbounds %struct.unix_address, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.unix_address, ptr %29, i32 0, i32 2
  %33 = getelementptr inbounds %struct.sockaddr_un, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = add i32 %31, -3
  br label %40

38:                                               ; preds = %28
  %39 = add i32 %31, -2
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 64) #19
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 0, %36 ], [ 1, %38 ]
  %42 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %44, %40
  %45 = phi i32 [ %52, %44 ], [ %41, %40 ]
  %46 = load ptr, ptr %25, align 8
  %47 = getelementptr inbounds %struct.unix_address, ptr %46, i32 0, i32 2
  %48 = getelementptr %struct.sockaddr_un, ptr %47, i32 0, i32 1, i32 %45
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i8 64, i8 %49
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %51) #19
  %52 = add nuw i32 %45, 1
  %53 = icmp eq i32 %52, %42
  br i1 %53, label %54, label %44

54:                                               ; preds = %44, %40, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %55 = load i16, ptr %6, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #19
  br label %57

57:                                               ; preds = %54, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp ugt i32 %2, 1
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  store i32 1, ptr %1, align 64
  %7 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = sext i16 %8 to i32
  switch i32 %9, label %25 [
    i32 1, label %10
    i32 3, label %12
    i32 2, label %13
    i32 5, label %17
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @unix_stream_ops, ptr %11, align 4
  br label %19

12:                                               ; preds = %6
  store i16 2, ptr %7, align 4
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i16 [ %8, %6 ], [ 2, %12 ]
  %15 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @unix_dgram_ops, ptr %15, align 4
  %16 = sext i16 %14 to i32
  br label %19

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @unix_seqpacket_ops, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %13, %10
  %20 = phi i32 [ 5, %17 ], [ %16, %13 ], [ 1, %10 ]
  %21 = tail call fastcc ptr @unix_create1(ptr noundef %0, ptr noundef %1, i32 noundef %3, i32 noundef %20)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %23 = ptrtoint ptr %21 to i32
  %24 = select i1 %22, i32 %23, i32 0
  br label %25

25:                                               ; preds = %19, %6, %4
  %26 = phi i32 [ -93, %4 ], [ -94, %6 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @unix_create1(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @unix_nr_socks) #19, !srcloc !9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #19, !srcloc !25
  %6 = load volatile i32, ptr @unix_nr_socks, align 4
  %7 = tail call i32 @get_max_files() #19
  %8 = shl i32 %7, 1
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %92, label %10

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 1
  %12 = select i1 %11, ptr @unix_stream_proto, ptr @unix_dgram_proto
  %13 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 1, i32 noundef 3264, ptr noundef nonnull %12, i32 noundef %2) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %92, label %15

15:                                               ; preds = %10
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %13) #19
  %16 = ptrtoint ptr %13 to i32
  %17 = lshr i32 %16, 16
  %18 = xor i32 %17, %16
  %19 = lshr i32 %18, 8
  %20 = xor i32 %19, %18
  %21 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 45
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = xor i32 %20, %23
  %25 = and i32 %24, 255
  %26 = or i32 %25, 256
  %27 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 1
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 41
  store i32 4197568, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 77
  store ptr @unix_write_space, ptr %29, align 4
  %30 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 32
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 54
  store i32 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 80
  store ptr @unix_sock_destructor, ptr %33, align 8
  %34 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 2
  %35 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 2, i32 1
  store ptr null, ptr %35, align 4
  store ptr null, ptr %34, align 4
  %36 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 8
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 7
  store volatile i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 6
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 6, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef nonnull @unix_create1.__key) #19
  %41 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef nonnull @unix_create1.__key.9) #19
  %42 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %42, ptr noundef nonnull @.str.12, ptr noundef nonnull @unix_create1.__key.11) #19
  %43 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 12
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 12, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 12, i32 2
  store ptr @unix_dgram_peer_wake_relay, ptr %45, align 4
  %46 = getelementptr inbounds %struct.unix_sock, ptr %13, i32 0, i32 13
  store i32 0, ptr %46, align 4
  %47 = load i32, ptr %27, align 8
  %48 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %47
  tail call void @_raw_spin_lock(ptr noundef %48) #19
  %49 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52, !prof !12

52:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 305, i32 noundef 9, ptr noundef null) #19
  br label %53

53:                                               ; preds = %52, %15
  %54 = load i32, ptr %27, align 8
  %55 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %54
  %56 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #19, !srcloc !9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #19, !srcloc !10
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !11

60:                                               ; preds = %53
  %61 = add i32 %58, 1
  %62 = or i32 %61, %58
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %66, label %64, !prof !12

64:                                               ; preds = %60, %53
  %65 = phi i32 [ 2, %53 ], [ 1, %60 ]
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef %65) #19
  br label %66

66:                                               ; preds = %64, %60
  %67 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15
  %68 = load ptr, ptr %55, align 4
  store volatile ptr %68, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.hlist_node, ptr %68, i32 0, i32 1
  store volatile ptr %67, ptr %71, align 4
  br label %72

72:                                               ; preds = %70, %66
  store volatile ptr %67, ptr %55, align 4
  store volatile ptr %55, ptr %49, align 4
  %73 = load i32, ptr %27, align 8
  %74 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %75 = load i16, ptr %74, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %77 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 8
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !26
  %80 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %81 = getelementptr inbounds %struct.proto, ptr %78, i32 0, i32 25
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr %struct.prot_inuse, ptr %80, i32 0, i32 1, i32 %82
  %84 = ptrtoint ptr %83 to i32
  %85 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #16, !srcloc !27
  %88 = add i32 %87, %84
  %89 = inttoptr i32 %88 to ptr
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #19, !srcloc !28
  br label %95

92:                                               ; preds = %10, %4
  %93 = phi ptr [ inttoptr (i32 -23 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %10 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @unix_nr_socks) #19, !srcloc !9
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #19, !srcloc !18
  br label %95

95:                                               ; preds = %92, %72
  %96 = phi ptr [ %93, %92 ], [ %13, %72 ]
  ret ptr %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef nonnull %3, i32 noundef 0) #19
  tail call fastcc void @unix_release_sock(ptr noundef nonnull %3, i32 noundef 0)
  store ptr null, ptr %2, align 16
  br label %9

9:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq i32 %2, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 2
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %193

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @unix_autobind(ptr noundef %6)
  br label %193

13:                                               ; preds = %3
  %14 = add i32 %2, -111
  %15 = icmp ult i32 %14, -108
  br i1 %15, label %193, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr %1, align 2
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %193

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sockaddr_un, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %110, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 71
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.socket_alloc, ptr %25, i32 0, i32 1
  %27 = load i16, ptr %26, align 8
  %28 = tail call i32 @current_umask() #19
  %29 = trunc i32 %28 to i16
  %30 = xor i16 %29, -1
  %31 = and i16 %27, %30
  %32 = or i16 %31, -16384
  %33 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !annotation !17
  %35 = getelementptr i8, ptr %1, i32 %2
  store i8 0, ptr %35, align 1
  %36 = tail call i32 @strlen(ptr noundef %20) #19
  %37 = add i32 %36, 11
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %108, label %40

40:                                               ; preds = %23
  %41 = add i32 %36, 3
  store volatile i32 1, ptr %38, align 64
  %42 = getelementptr inbounds %struct.unix_address, ptr %38, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.unix_address, ptr %38, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %43, ptr align 2 %1, i32 %41, i1 false) #19
  %44 = getelementptr inbounds %struct.sockaddr_un, ptr %43, i32 0, i32 1
  %45 = call ptr @kern_path_create(i32 noundef -100, ptr noundef %44, ptr noundef nonnull %4, i32 noundef 0) #19
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = ptrtoint ptr %45 to i32
  br label %96

49:                                               ; preds = %40
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.vfsmount, ptr %50, i32 0, i32 3
  %52 = load volatile ptr, ptr %51, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %53 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dentry, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 8
  %57 = call i32 @vfs_mknod(ptr noundef %52, ptr noundef %56, ptr noundef %45, i16 noundef zeroext %32, i32 noundef 0) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 4
  %61 = call i32 @mutex_lock_interruptible(ptr noundef %60) #19
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 5
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 255
  call fastcc void @unix_table_double_lock(i32 noundef %34, i32 noundef %72) #19
  %73 = load ptr, ptr %4, align 8
  %74 = call ptr @mntget(ptr noundef %73) #19
  %75 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 2
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %45, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 7
  call void @lockref_get(ptr noundef %78) #19
  br label %79

79:                                               ; preds = %77, %67
  %80 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 2, i32 1
  store ptr %45, ptr %80, align 4
  call fastcc void @__unix_set_addr_hash(ptr noundef %6, ptr noundef nonnull %38, i32 noundef %72) #19
  %81 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %34
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %82 = load i16, ptr %81, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %81, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %84 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %72
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %85 = load i16, ptr %84, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %84, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @mutex_unlock(ptr noundef %60) #19
  call void @done_path_create(ptr noundef nonnull %4, ptr noundef %45) #19
  br label %108

87:                                               ; preds = %63
  call void @mutex_unlock(ptr noundef %60) #19
  br label %88

88:                                               ; preds = %87, %59
  %89 = phi i32 [ %61, %59 ], [ -22, %87 ]
  %90 = load ptr, ptr %53, align 4
  %91 = getelementptr inbounds %struct.dentry, ptr %90, i32 0, i32 5
  %92 = load ptr, ptr %91, align 8
  %93 = call i32 @vfs_unlink(ptr noundef %52, ptr noundef %92, ptr noundef %45, ptr noundef null) #19
  br label %94

94:                                               ; preds = %88, %49
  %95 = phi i32 [ %57, %49 ], [ %89, %88 ]
  call void @done_path_create(ptr noundef nonnull %4, ptr noundef %45) #19
  br label %96

96:                                               ; preds = %94, %47
  %97 = phi i32 [ %48, %47 ], [ %95, %94 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #19, !srcloc !9
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #19, !srcloc !31
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = icmp sgt i32 %99, 0
  br i1 %102, label %105, label %103, !prof !12

103:                                              ; preds = %101
  call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 3) #19
  br label %105

104:                                              ; preds = %96
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  call void @kfree(ptr noundef nonnull %38) #19
  br label %105

105:                                              ; preds = %104, %103, %101
  %106 = icmp eq i32 %97, -17
  %107 = select i1 %106, i32 -98, i32 %97
  br label %108

108:                                              ; preds = %105, %79, %23
  %109 = phi i32 [ %107, %105 ], [ 0, %79 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %193

110:                                              ; preds = %19
  %111 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 1
  %112 = load i32, ptr %111, align 8
  %113 = add nuw nsw i32 %2, 8
  %114 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %113, i32 noundef 3264) #21
  %115 = icmp eq ptr %114, null
  br i1 %115, label %193, label %116

116:                                              ; preds = %110
  store volatile i32 1, ptr %114, align 64
  %117 = getelementptr inbounds %struct.unix_address, ptr %114, i32 0, i32 1
  store i32 %2, ptr %117, align 4
  %118 = getelementptr inbounds %struct.unix_address, ptr %114, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %118, ptr align 2 %1, i32 %2, i1 false) #19
  %119 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 4
  %120 = tail call i32 @mutex_lock_interruptible(ptr noundef %119) #19
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %184

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 1
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %182

126:                                              ; preds = %122
  %127 = load i32, ptr %117, align 4
  %128 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 45
  %129 = load i16, ptr %128, align 2
  %130 = zext i16 %129 to i32
  %131 = tail call i32 @csum_partial(ptr noundef %118, i32 noundef %127, i32 noundef 0) #19
  %132 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %131) #22, !srcloc !33
  %133 = xor i32 %132, -1
  %134 = lshr i32 %133, 16
  %135 = lshr i32 %133, 24
  %136 = xor i32 %134, %130
  %137 = and i32 %136, 255
  %138 = xor i32 %137, %135
  %139 = tail call i32 @llvm.umax.i32(i32 %112, i32 %138) #19
  %140 = tail call i32 @llvm.umin.i32(i32 %112, i32 %138) #19
  %141 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %140
  tail call void @_raw_spin_lock(ptr noundef %141) #19
  %142 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %139
  tail call void @_raw_spin_lock(ptr noundef %142) #19
  %143 = load i32, ptr %117, align 4
  %144 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %138
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  %147 = getelementptr i8, ptr %145, i32 -84
  %148 = icmp eq ptr %147, null
  %149 = or i1 %146, %148
  br i1 %149, label %168, label %150

150:                                              ; preds = %161, %126
  %151 = phi ptr [ %165, %161 ], [ %147, %126 ]
  %152 = getelementptr inbounds %struct.unix_sock, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 8
  %154 = getelementptr inbounds %struct.unix_address, ptr %153, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, %143
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.unix_address, ptr %153, i32 0, i32 2
  %159 = tail call i32 @bcmp(ptr %158, ptr %118, i32 %143) #19
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %175, label %161

161:                                              ; preds = %157, %150
  %162 = getelementptr inbounds %struct.sock_common, ptr %151, i32 0, i32 15
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  %165 = getelementptr i8, ptr %163, i32 -84
  %166 = icmp eq ptr %165, null
  %167 = or i1 %164, %166
  br i1 %167, label %168, label %150

168:                                              ; preds = %161, %126
  tail call fastcc void @__unix_set_addr_hash(ptr noundef %6, ptr noundef nonnull %114, i32 noundef %138) #19
  %169 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %170 = load i16, ptr %169, align 4
  %171 = add i16 %170, 1
  store i16 %171, ptr %169, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %172 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %138
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %173 = load i16, ptr %172, align 4
  %174 = add i16 %173, 1
  store i16 %174, ptr %172, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @mutex_unlock(ptr noundef %119) #19
  br label %193

175:                                              ; preds = %157
  %176 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %177 = load i16, ptr %176, align 4
  %178 = add i16 %177, 1
  store i16 %178, ptr %176, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %179 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %138
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %180 = load i16, ptr %179, align 4
  %181 = add i16 %180, 1
  store i16 %181, ptr %179, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %182

182:                                              ; preds = %175, %122
  %183 = phi i32 [ -98, %175 ], [ -22, %122 ]
  tail call void @mutex_unlock(ptr noundef %119) #19
  br label %184

184:                                              ; preds = %182, %116
  %185 = phi i32 [ %120, %116 ], [ %183, %182 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %114) #19, !srcloc !9
  %186 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %114, ptr nonnull %114, i32 1, ptr nonnull elementtype(i32) %114) #19, !srcloc !31
  %187 = extractvalue { i32, i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = icmp sgt i32 %187, 0
  br i1 %190, label %193, label %191, !prof !12

191:                                              ; preds = %189
  tail call void @refcount_warn_saturate(ptr noundef nonnull %114, i32 noundef 3) #19
  br label %193

192:                                              ; preds = %184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @kfree(ptr noundef nonnull %114) #19
  br label %193

193:                                              ; preds = %192, %191, %189, %168, %110, %108, %16, %13, %11, %8
  %194 = phi i32 [ %12, %11 ], [ %109, %108 ], [ 0, %168 ], [ %185, %189 ], [ %185, %191 ], [ %185, %192 ], [ -12, %110 ], [ -22, %13 ], [ -22, %16 ], [ -22, %8 ]
  ret i32 %194
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = add i32 %2, -111
  %8 = icmp ult i32 %7, -108
  br i1 %8, label %205, label %9

9:                                                ; preds = %4
  %10 = load i16, ptr %1, align 2
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %205

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @unix_autobind(ptr noundef %6)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %205

24:                                               ; preds = %21, %17, %12
  %25 = and i32 %3, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 31
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %29, %27 ], [ 0, %24 ]
  %32 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = sext i16 %33 to i32
  %35 = tail call fastcc ptr @unix_create1(ptr noundef nonnull @init_net, ptr noundef null, i32 noundef 0, i32 noundef %34)
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = ptrtoint ptr %35 to i32
  br label %205

39:                                               ; preds = %30
  %40 = tail call ptr @sock_wmalloc(ptr noundef %35, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %210, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 45
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  %46 = tail call fastcc ptr @unix_find_other(ptr noundef %1, i32 noundef %2, i32 noundef %45)
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %50 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 8
  br label %51

51:                                               ; preds = %116, %48
  %52 = phi ptr [ %46, %48 ], [ %119, %116 ]
  %53 = phi i32 [ %31, %48 ], [ %98, %116 ]
  br label %57

54:                                               ; preds = %116, %75, %42
  %55 = phi ptr [ %46, %42 ], [ %78, %75 ], [ %119, %116 ]
  %56 = ptrtoint ptr %55 to i32
  br label %210

57:                                               ; preds = %75, %51
  %58 = phi ptr [ %52, %51 ], [ %78, %75 ]
  %59 = getelementptr inbounds %struct.unix_sock, ptr %58, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %59) #19
  %60 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 13
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %65 = load i16, ptr %59, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %67 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #19, !srcloc !9
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #19, !srcloc !31
  %69 = extractvalue { i32, i32, i32 } %68, 0
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = icmp sgt i32 %69, 0
  br i1 %72, label %75, label %73, !prof !12

73:                                               ; preds = %71
  tail call void @refcount_warn_saturate(ptr noundef %67, i32 noundef 3) #19
  br label %75

74:                                               ; preds = %64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %58) #19
  br label %75

75:                                               ; preds = %138, %137, %135, %74, %73, %71
  %76 = load i16, ptr %43, align 2
  %77 = zext i16 %76 to i32
  %78 = tail call fastcc ptr @unix_find_other(ptr noundef %1, i32 noundef %2, i32 noundef %77)
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %54, label %57

80:                                               ; preds = %57
  %81 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 4
  %82 = load volatile i8, ptr %81, align 2
  %83 = icmp eq i8 %82, 10
  br i1 %83, label %84, label %197

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 66
  %86 = load i8, ptr %85, align 2
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %197

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 8, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 54
  %93 = load i32, ptr %92, align 8
  %94 = icmp ugt i32 %91, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %89
  %96 = icmp eq i32 %53, 0
  br i1 %96, label %199, label %97

97:                                               ; preds = %95
  %98 = tail call fastcc i32 @unix_wait_for_peer(ptr noundef %58, i32 noundef %53)
  %99 = tail call ptr @llvm.thread.pointer() #19
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 256
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %207, !prof !12

103:                                              ; preds = %97
  %104 = load volatile i32, ptr %99, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %207

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #19, !srcloc !9
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #19, !srcloc !31
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %116, label %114, !prof !12

114:                                              ; preds = %112
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef 3) #19
  br label %116

115:                                              ; preds = %107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %58) #19
  br label %116

116:                                              ; preds = %115, %114, %112
  %117 = load i16, ptr %43, align 2
  %118 = zext i16 %117 to i32
  %119 = tail call fastcc ptr @unix_find_other(ptr noundef %1, i32 noundef %2, i32 noundef %118)
  %120 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %54, label %51

121:                                              ; preds = %89
  %122 = load volatile i8, ptr %49, align 2
  switch i8 %122, label %199 [
    i8 7, label %123
    i8 1, label %197
  ]

123:                                              ; preds = %121
  tail call void @_raw_spin_lock(ptr noundef %50) #19
  %124 = load volatile i8, ptr %49, align 2
  %125 = icmp eq i8 %124, 7
  br i1 %125, label %139, label %126

126:                                              ; preds = %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %127 = load i16, ptr %50, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %129 = load i16, ptr %59, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %131 = getelementptr inbounds %struct.sock_common, ptr %58, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #19, !srcloc !9
  %132 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #19, !srcloc !31
  %133 = extractvalue { i32, i32, i32 } %132, 0
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %126
  %136 = icmp sgt i32 %133, 0
  br i1 %136, label %75, label %137, !prof !12

137:                                              ; preds = %135
  tail call void @refcount_warn_saturate(ptr noundef %131, i32 noundef 3) #19
  br label %75

138:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %58) #19
  br label %75

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 8, i32 1
  %141 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %141) #19, !srcloc !9
  %142 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %141, ptr %141, i32 1, ptr elementtype(i32) %141) #19, !srcloc !10
  %143 = extractvalue { i32, i32, i32 } %142, 0
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145, !prof !11

145:                                              ; preds = %139
  %146 = add i32 %143, 1
  %147 = or i32 %146, %143
  %148 = icmp sgt i32 %147, -1
  br i1 %148, label %151, label %149, !prof !12

149:                                              ; preds = %145, %139
  %150 = phi i32 [ 2, %139 ], [ 1, %145 ]
  tail call void @refcount_warn_saturate(ptr noundef %141, i32 noundef %150) #19
  br label %151

151:                                              ; preds = %149, %145
  %152 = getelementptr inbounds %struct.unix_sock, ptr %35, i32 0, i32 5
  store ptr %6, ptr %152, align 4
  %153 = getelementptr inbounds %struct.sock_common, ptr %35, i32 0, i32 4
  store volatile i8 1, ptr %153, align 2
  %154 = load i16, ptr %43, align 2
  %155 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 45
  store i16 %154, ptr %155, align 2
  tail call fastcc void @init_peercred(ptr noundef %35)
  %156 = getelementptr inbounds %struct.unix_sock, ptr %35, i32 0, i32 11
  %157 = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 17
  store volatile ptr %156, ptr %157, align 4
  %158 = getelementptr inbounds %struct.unix_sock, ptr %58, i32 0, i32 2, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.unix_sock, ptr %58, i32 0, i32 2
  tail call void @path_get(ptr noundef %162) #19
  %163 = getelementptr inbounds %struct.unix_sock, ptr %35, i32 0, i32 2
  %164 = load i64, ptr %162, align 4
  store i64 %164, ptr %163, align 4
  br label %165

165:                                              ; preds = %161, %151
  %166 = getelementptr inbounds %struct.unix_sock, ptr %58, i32 0, i32 1
  %167 = load ptr, ptr %166, align 8
  tail call fastcc void @refcount_inc(ptr noundef %167)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !34
  %168 = load ptr, ptr %166, align 8
  %169 = getelementptr inbounds %struct.unix_sock, ptr %35, i32 0, i32 1
  store volatile ptr %168, ptr %169, align 8
  tail call fastcc void @copy_peercred(ptr noundef %6, ptr noundef %58)
  store i32 3, ptr %0, align 64
  store volatile i8 1, ptr %49, align 2
  %170 = getelementptr inbounds %struct.sock_common, ptr %35, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #19, !srcloc !9
  %171 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #19, !srcloc !10
  %172 = extractvalue { i32, i32, i32 } %171, 0
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %178, label %174, !prof !11

174:                                              ; preds = %165
  %175 = add i32 %172, 1
  %176 = or i32 %175, %172
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %180, label %178, !prof !12

178:                                              ; preds = %174, %165
  %179 = phi i32 [ 2, %165 ], [ 1, %174 ]
  tail call void @refcount_warn_saturate(ptr noundef %170, i32 noundef %179) #19
  br label %180

180:                                              ; preds = %178, %174
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !35
  %181 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 5
  store ptr %35, ptr %181, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %182 = load i16, ptr %50, align 4
  %183 = add i16 %182, 1
  store i16 %183, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %184 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 8
  %185 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %185) #19
  %186 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 8, i32 0, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  store volatile ptr %184, ptr %40, align 8
  %188 = getelementptr inbounds %struct.anon.43, ptr %40, i32 0, i32 1
  store volatile ptr %187, ptr %188, align 4
  store volatile ptr %40, ptr %186, align 4
  store volatile ptr %40, ptr %187, align 4
  %189 = load i32, ptr %140, align 4
  %190 = add i32 %189, 1
  store volatile i32 %190, ptr %140, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %191 = load i16, ptr %185, align 4
  %192 = add i16 %191, 1
  store i16 %192, ptr %185, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %193 = load i16, ptr %59, align 4
  %194 = add i16 %193, 1
  store i16 %194, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %195 = getelementptr inbounds %struct.sock, ptr %58, i32 0, i32 76
  %196 = load ptr, ptr %195, align 8
  tail call void %196(ptr noundef %58) #19
  tail call fastcc void @sock_put(ptr noundef %58)
  br label %226

197:                                              ; preds = %121, %84, %80
  %198 = phi i32 [ -111, %80 ], [ -111, %84 ], [ -106, %121 ]
  br label %199

199:                                              ; preds = %197, %121, %95
  %200 = phi i32 [ %198, %197 ], [ -22, %121 ], [ -11, %95 ]
  %201 = icmp eq ptr %58, null
  br i1 %201, label %210, label %202

202:                                              ; preds = %199
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %203 = load i16, ptr %59, align 4
  %204 = add i16 %203, 1
  store i16 %204, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %210

205:                                              ; preds = %37, %21, %9, %4
  %206 = phi i32 [ %22, %21 ], [ %38, %37 ], [ -22, %4 ], [ -22, %9 ]
  tail call void @kfree_skb_reason(ptr noundef null, i32 noundef 0) #19
  br label %226

207:                                              ; preds = %103, %97
  %208 = icmp eq i32 %98, 2147483647
  %209 = select i1 %208, i32 -512, i32 -4
  br label %210

210:                                              ; preds = %207, %202, %199, %54, %39
  %211 = phi ptr [ null, %39 ], [ null, %54 ], [ %58, %202 ], [ null, %199 ], [ %58, %207 ]
  %212 = phi i32 [ -12, %39 ], [ %56, %54 ], [ %200, %202 ], [ %200, %199 ], [ %209, %207 ]
  tail call void @kfree_skb_reason(ptr noundef %40, i32 noundef 0) #19
  %213 = icmp eq ptr %35, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  tail call fastcc void @unix_release_sock(ptr noundef nonnull %35, i32 noundef 0)
  br label %215

215:                                              ; preds = %214, %210
  %216 = icmp eq ptr %211, null
  br i1 %216, label %226, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.sock_common, ptr %211, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %218) #19, !srcloc !9
  %219 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %218, ptr %218, i32 1, ptr elementtype(i32) %218) #19, !srcloc !31
  %220 = extractvalue { i32, i32, i32 } %219, 0
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = icmp sgt i32 %220, 0
  br i1 %223, label %226, label %224, !prof !12

224:                                              ; preds = %222
  tail call void @refcount_warn_saturate(ptr noundef %218, i32 noundef 3) #19
  br label %226

225:                                              ; preds = %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef nonnull %211) #19
  br label %226

226:                                              ; preds = %225, %224, %222, %215, %205, %180
  %227 = phi i32 [ 0, %180 ], [ %212, %215 ], [ %206, %205 ], [ %212, %222 ], [ %212, %224 ], [ %212, %225 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_socketpair(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #19, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #19, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !11

11:                                               ; preds = %2
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %11, %2
  %16 = phi i32 [ 2, %2 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #19
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #19, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #19, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !11

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %28, label %26, !prof !12

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #19
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 5
  store ptr %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 5
  store ptr %4, ptr %30, align 4
  tail call fastcc void @init_peercred(ptr noundef %4)
  tail call fastcc void @init_peercred(ptr noundef %6)
  %31 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  store volatile i8 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 1, ptr %32, align 2
  store i32 3, ptr %0, align 64
  store i32 3, ptr %1, align 64
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_accept(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  switch i16 %9, label %54 [
    i16 1, label %10
    i16 5, label %10
  ]

10:                                               ; preds = %4, %4
  store i32 -22, ptr %5, align 4
  %11 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %12 = load volatile i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  %15 = and i32 %2, 2048
  %16 = call ptr @skb_recv_datagram(ptr noundef %7, i32 noundef 0, i32 noundef %15, ptr noundef nonnull %5) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 -22, i32 %19
  br label %54

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %16) #19
  %25 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 11
  call void @__wake_up(ptr noundef %25, i32 noundef 1, i32 noundef 1, ptr noundef null) #19
  %26 = getelementptr inbounds %struct.unix_sock, ptr %24, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %26) #19
  store i32 3, ptr %1, align 64
  %27 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  call void @_set_bit(i32 noundef 3, ptr noundef %32) #19
  br label %33

33:                                               ; preds = %31, %22
  %34 = load volatile i32, ptr %27, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  call void @_set_bit(i32 noundef 4, ptr noundef %38) #19
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %41 = load ptr, ptr %40, align 16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43, !prof !12

43:                                               ; preds = %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2024, i32 noundef 9, ptr noundef null) #19
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %45) #19
  %46 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !36
  %47 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 17
  store volatile ptr %46, ptr %47, align 4
  store ptr %24, ptr %40, align 16
  %48 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 71
  store ptr %1, ptr %48, align 8
  %49 = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 55
  %50 = getelementptr inbounds %struct.socket_alloc, ptr %1, i32 0, i32 1, i32 2
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %49, align 4
  call void @_raw_write_unlock_bh(ptr noundef %45) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %52 = load i16, ptr %26, align 4
  %53 = add i16 %52, 1
  store i16 %53, ptr %26, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %54

54:                                               ; preds = %44, %18, %10, %4
  %55 = phi i32 [ 0, %44 ], [ -95, %4 ], [ -22, %10 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #19, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #19, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %36, label %21, !prof !12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %23 = load i16, ptr %8, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %39

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #19, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #19, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %25
  %31 = add i32 %28, 1
  %32 = or i32 %31, %28
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %39, label %34, !prof !12

34:                                               ; preds = %30, %25
  %35 = phi i32 [ 2, %25 ], [ 1, %30 ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %35) #19
  br label %39

36:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %37 = load i16, ptr %8, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %39

39:                                               ; preds = %36, %34, %30, %21
  %40 = phi ptr [ %5, %30 ], [ %5, %34 ], [ %10, %36 ], [ %10, %21 ]
  %41 = getelementptr inbounds %struct.unix_sock, ptr %40, i32 0, i32 1
  %42 = load volatile ptr, ptr %41, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  store i16 1, ptr %1, align 2
  %45 = getelementptr inbounds %struct.sockaddr_un, ptr %1, i32 0, i32 1
  store i8 0, ptr %45, align 2
  br label %50

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.unix_address, ptr %42, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.unix_address, ptr %42, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %1, ptr align 4 %49, i32 %48, i1 false)
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %48, %46 ], [ 2, %44 ]
  %52 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #19, !srcloc !9
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #19, !srcloc !31
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %63, label %58, !prof !12

58:                                               ; preds = %56
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #19
  br label %63

59:                                               ; preds = %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %40) #19
  br label %63

60:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %61 = load i16, ptr %8, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %63

63:                                               ; preds = %60, %59, %58, %56
  %64 = phi i32 [ %51, %56 ], [ %51, %58 ], [ %51, %59 ], [ -107, %60 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !38
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 3
  %20 = or i32 %16, 16
  %21 = select i1 %19, i32 %20, i32 %16
  %22 = and i8 %18, 1
  %23 = icmp eq i8 %22, 0
  %24 = or i32 %21, 8257
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  %29 = or i32 %25, 65
  %30 = select i1 %28, i32 %25, i32 %29
  %31 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.proto, ptr %32, i32 0, i32 27
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %12
  %37 = tail call zeroext i1 %34(ptr noundef %5) #19
  %38 = select i1 %37, i32 %29, i32 %30
  br label %39

39:                                               ; preds = %36, %12
  %40 = phi i32 [ %30, %12 ], [ %38, %36 ]
  %41 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %42 = load i16, ptr %41, align 2
  switch i16 %42, label %49 [
    i16 1, label %43
    i16 5, label %43
  ]

43:                                               ; preds = %39, %39
  %44 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %45 = load volatile i8, ptr %44, align 2
  %46 = icmp eq i8 %45, 7
  %47 = or i32 %40, 16
  %48 = select i1 %46, i32 %47, i32 %40
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i32 [ %40, %39 ], [ %48, %43 ]
  %51 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %52 = load volatile i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 10
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %56 = load volatile i32, ptr %55, align 4
  %57 = shl i32 %56, 2
  %58 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %59 = load i32, ptr %58, align 8
  %60 = icmp ugt i32 %57, %59
  %61 = or i32 %50, 772
  br i1 %60, label %62, label %63

62:                                               ; preds = %54, %49
  br label %63

63:                                               ; preds = %62, %54
  %64 = phi i32 [ %50, %62 ], [ %61, %54 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  switch i32 %1, label %109 [
    i32 21521, label %7
    i32 21531, label %18
    i32 35296, label %62
    i32 35077, label %89
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 23
  %9 = load volatile i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = inttoptr i32 %2 to ptr
  %12 = tail call ptr @llvm.thread.pointer() #19
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #16, !srcloc !39
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  %17 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %10, i32 -1090519041) #19, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  br label %109

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %20 = load volatile i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 10
  br i1 %21, label %109, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 8
  %24 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %24) #19
  %25 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 45
  %26 = load i16, ptr %25, align 2
  switch i16 %26, label %41 [
    i16 1, label %27
    i16 5, label %27
  ]

27:                                               ; preds = %22, %22
  %28 = load ptr, ptr %23, align 8
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %49, label %30

30:                                               ; preds = %30, %27
  %31 = phi ptr [ %39, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %38, %30 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 3, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %34, %32
  %38 = sub i32 %37, %36
  %39 = load ptr, ptr %31, align 8
  %40 = icmp eq ptr %39, %23
  br i1 %40, label %49, label %30

41:                                               ; preds = %22
  %42 = load ptr, ptr %23, align 4
  %43 = icmp eq ptr %42, %23
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 5
  %48 = load i32, ptr %47, align 8
  br label %49

49:                                               ; preds = %46, %41, %30, %27
  %50 = phi i32 [ %48, %46 ], [ 0, %41 ], [ 0, %27 ], [ %38, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %51 = load i16, ptr %24, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %53 = icmp slt i32 %50, 0
  br i1 %53, label %109, label %54

54:                                               ; preds = %49
  %55 = inttoptr i32 %2 to ptr
  %56 = tail call ptr @llvm.thread.pointer() #19
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 3
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %57) #16, !srcloc !39
  %59 = and i32 %58, -13
  %60 = or i32 %59, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  %61 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %55, i32 %50, i32 -1090519041) #19, !srcloc !43
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  br label %109

62:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %63 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %64 = tail call zeroext i1 @ns_capable(ptr noundef %63, i32 noundef 12) #19
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 1
  %67 = load volatile ptr, ptr %66, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !44
  %68 = icmp eq ptr %67, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 2
  %71 = load i64, ptr %70, align 4
  store i64 %71, ptr %4, align 8
  %72 = icmp ult i64 %71, 4294967296
  br i1 %72, label %87, label %73

73:                                               ; preds = %69
  call void @path_get(ptr noundef nonnull %4) #19
  %74 = call i32 @get_unused_fd_flags(i32 noundef 524288) #19
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = tail call ptr @llvm.thread.pointer() #19
  %78 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 83
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @dentry_open(ptr noundef nonnull %4, i32 noundef 2097152, ptr noundef %79) #19
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  call void @put_unused_fd(i32 noundef %74) #19
  %83 = ptrtoint ptr %80 to i32
  br label %85

84:                                               ; preds = %76
  call void @fd_install(i32 noundef %74, ptr noundef %80) #19
  br label %85

85:                                               ; preds = %84, %82, %73
  %86 = phi i32 [ %74, %73 ], [ %83, %82 ], [ %74, %84 ]
  call void @path_put(ptr noundef nonnull %4) #19
  br label %87

87:                                               ; preds = %85, %69, %65, %62
  %88 = phi i32 [ %86, %85 ], [ -1, %62 ], [ -2, %65 ], [ -2, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %109

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 14
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %91, %97
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %95, %89
  %101 = phi i32 [ 0, %89 ], [ %99, %95 ]
  %102 = inttoptr i32 %2 to ptr
  %103 = tail call ptr @llvm.thread.pointer() #19
  %104 = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 3
  %105 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %104) #16, !srcloc !39
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  %108 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %102, i32 %101, i32 -1090519041) #19, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #19, !srcloc !40
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !41
  br label %109

109:                                              ; preds = %100, %87, %54, %49, %18, %7, %3
  %110 = phi i32 [ %108, %100 ], [ %88, %87 ], [ %61, %54 ], [ %17, %7 ], [ %50, %49 ], [ -515, %3 ], [ -22, %18 ]
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_listen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %30 [
    i16 1, label %7
    i16 5, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %12) #19
  %13 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 7
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load volatile i8, ptr %13, align 2
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %11
  %20 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 54
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %24, i32 noundef 1, i32 noundef 0, ptr noundef null) #19
  br label %25

25:                                               ; preds = %23, %19
  store i32 %1, ptr %20, align 8
  store volatile i8 10, ptr %13, align 2
  tail call fastcc void @init_peercred(ptr noundef %4)
  br label %26

26:                                               ; preds = %25, %16
  %27 = phi i32 [ -22, %16 ], [ 0, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %28 = load i16, ptr %12, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %30

30:                                               ; preds = %26, %7, %2
  %31 = phi i32 [ %27, %26 ], [ -22, %7 ], [ -95, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_shutdown(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = icmp ugt i32 %1, 2
  br i1 %5, label %88, label %6

6:                                                ; preds = %2
  %7 = add nuw nsw i32 %1, 1
  %8 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 66
  %10 = load i8, ptr %9, align 2
  %11 = trunc i32 %7 to i8
  %12 = or i8 %10, %11
  store i8 %12, ptr %9, align 2
  %13 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #19, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #19, !srcloc !10
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !11

21:                                               ; preds = %16
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !12

25:                                               ; preds = %21, %16
  %26 = phi i32 [ 2, %16 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef %26) #19
  br label %27

27:                                               ; preds = %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %28 = load i16, ptr %8, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %30 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 75
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %4) #19
  %32 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 45
  %33 = load i16, ptr %32, align 2
  switch i16 %33, label %80 [
    i16 1, label %34
    i16 5, label %34
  ]

34:                                               ; preds = %27, %27
  %35 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 8
  %36 = load volatile ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.proto, ptr %36, i32 0, i32 21
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef nonnull %14) #19
  br label %41

41:                                               ; preds = %40, %34
  %42 = trunc i32 %7 to i2
  %43 = tail call i2 @llvm.bitreverse.i2(i2 %42)
  %44 = getelementptr inbounds %struct.unix_sock, ptr %14, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %44) #19
  %45 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 66
  %46 = load i8, ptr %45, align 2
  %47 = zext i2 %43 to i8
  %48 = or i8 %46, %47
  store i8 %48, ptr %45, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %49 = load i16, ptr %44, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %51 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 75
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef nonnull %14) #19
  %53 = icmp eq i2 %43, -1
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 65536
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  %60 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %61 = load volatile ptr, ptr %60, align 4
  %62 = tail call i32 @sock_wake_async(ptr noundef %61, i32 noundef 1, i32 noundef 6) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  br label %80

63:                                               ; preds = %41
  %64 = and i2 %43, 1
  %65 = icmp eq i2 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 65536
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  %72 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %73 = load volatile ptr, ptr %72, align 4
  %74 = tail call i32 @sock_wake_async(ptr noundef %73, i32 noundef 1, i32 noundef 1) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  br label %80

75:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %76 = load i16, ptr %8, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %78 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 75
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %4) #19
  br label %88

80:                                               ; preds = %71, %66, %63, %59, %54, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #19, !srcloc !9
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #19, !srcloc !31
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = icmp sgt i32 %82, 0
  br i1 %85, label %88, label %86, !prof !12

86:                                               ; preds = %84
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 3) #19
  br label %88

87:                                               ; preds = %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef nonnull %14) #19
  br label %88

88:                                               ; preds = %87, %86, %84, %75, %2
  %89 = phi i32 [ -22, %2 ], [ 0, %75 ], [ 0, %84 ], [ 0, %86 ], [ 0, %87 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.unix_sock, ptr %4, i32 0, i32 13
  %8 = load volatile i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %8) #19
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scm_cookie, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #19
  tail call void @wait_for_unix_gc() #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 12, i1 false) #19
  %8 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 1
  store i32 -1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 2
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = call i32 @__scm_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #19
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %216, label %16

16:                                               ; preds = %13, %3
  store i32 -95, ptr %4, align 4
  %17 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %205, label %23

23:                                               ; preds = %21
  %24 = add i32 %2, -1
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %2, %16 ]
  %27 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %32 = load volatile i8, ptr %31, align 2
  %33 = icmp eq i8 %32, 1
  %34 = select i1 %33, i32 -106, i32 -95
  store i32 %34, ptr %4, align 4
  br label %205

35:                                               ; preds = %25
  store i32 -107, ptr %4, align 4
  %36 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %205, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %41 = load i8, ptr %40, align 2
  %42 = and i8 %41, 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %196

44:                                               ; preds = %39
  %45 = icmp eq i32 %26, 0
  br i1 %45, label %179, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 21
  %48 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 1
  %49 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %50 = getelementptr inbounds %struct.unix_sock, ptr %37, i32 0, i32 8
  %51 = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 13
  %52 = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 66
  %53 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %54 = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 71
  %55 = getelementptr inbounds %struct.unix_sock, ptr %37, i32 0, i32 13
  %56 = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 8
  %57 = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 76
  br label %58

58:                                               ; preds = %170, %46
  %59 = phi i32 [ %18, %46 ], [ %176, %170 ]
  %60 = phi i32 [ 0, %46 ], [ %174, %170 ]
  %61 = phi i1 [ true, %46 ], [ false, %170 ]
  %62 = sub i32 %26, %60
  %63 = load i32, ptr %47, align 8
  %64 = ashr i32 %63, 1
  %65 = add nsw i32 %64, -64
  %66 = call i32 @llvm.smin.i32(i32 %62, i32 %65)
  %67 = call i32 @llvm.smin.i32(i32 %66, i32 36608)
  %68 = add i32 %67, -3840
  %69 = call i32 @llvm.smax.i32(i32 %68, i32 0)
  %70 = add nuw i32 %69, 4095
  %71 = and i32 %70, -4096
  %72 = call i32 @llvm.umin.i32(i32 %67, i32 %71)
  %73 = sub i32 %67, %72
  %74 = and i32 %59, 64
  %75 = call ptr @sock_alloc_send_pskb(ptr noundef %7, i32 noundef %73, i32 noundef %72, i32 noundef %74, ptr noundef nonnull %4, i32 noundef 3) #19
  %76 = icmp eq ptr %75, null
  br i1 %76, label %205, label %77

77:                                               ; preds = %58
  %78 = load ptr, ptr %5, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %78) #19, !srcloc !9
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %78, ptr nonnull %78, i32 1, ptr nonnull elementtype(i32) %78) #19, !srcloc !10
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84, !prof !11

84:                                               ; preds = %80
  %85 = add i32 %82, 1
  %86 = or i32 %85, %82
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %90, label %88, !prof !12

88:                                               ; preds = %84, %80
  %89 = phi i32 [ 2, %80 ], [ 1, %84 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %78, i32 noundef %89) #19
  br label %90

90:                                               ; preds = %88, %84, %77
  %91 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3
  store ptr %78, ptr %91, align 8
  %92 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 4
  %93 = load i32, ptr %8, align 4
  store i32 %93, ptr %92, align 4
  %94 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 8
  %95 = load i32, ptr %9, align 4
  store i32 %95, ptr %94, align 8
  %96 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 3, i32 12
  store ptr null, ptr %96, align 4
  %97 = load ptr, ptr %48, align 4
  %98 = icmp ne ptr %97, null
  %99 = and i1 %61, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4, i32 0, i32 1
  store ptr @unix_destruct_scm, ptr %101, align 4
  store i32 0, ptr %4, align 4
  br label %107

102:                                              ; preds = %90
  %103 = call i32 @unix_attach_fds(ptr noundef nonnull %5, ptr noundef nonnull %75) #19
  %104 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 4, i32 0, i32 1
  store ptr @unix_destruct_scm, ptr %104, align 4
  store i32 %103, ptr %4, align 4
  %105 = icmp slt i32 %103, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  call void @kfree_skb_reason(ptr noundef nonnull %75, i32 noundef 0) #19
  br label %205

107:                                              ; preds = %102, %100
  %108 = call ptr @skb_put(ptr noundef nonnull %75, i32 noundef %73) #19
  %109 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 6
  store i32 %72, ptr %109, align 4
  %110 = getelementptr inbounds %struct.sk_buff, ptr %75, i32 0, i32 5
  store i32 %67, ptr %110, align 8
  %111 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %75, i32 noundef 0, ptr noundef %49, i32 noundef %67) #19
  store i32 %111, ptr %4, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  call void @kfree_skb_reason(ptr noundef nonnull %75, i32 noundef 0) #19
  br label %205

114:                                              ; preds = %107
  call void @_raw_spin_lock(ptr noundef %50) #19
  %115 = load volatile i32, ptr %51, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %190

118:                                              ; preds = %114
  %119 = load i8, ptr %52, align 2
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %190

122:                                              ; preds = %118
  %123 = load ptr, ptr %91, align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load volatile i32, ptr %53, align 4
  %127 = and i32 %126, 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load ptr, ptr %54, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.socket, ptr %130, i32 0, i32 2
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %134, 8
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

137:                                              ; preds = %132, %129, %125
  %138 = tail call ptr @llvm.thread.pointer() #19
  %139 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 93
  %140 = load ptr, ptr %139, align 16
  %141 = getelementptr %struct.signal_struct, ptr %140, i32 0, i32 22, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %137
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %142) #19, !srcloc !9
  %145 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %142, ptr nonnull %142, i32 1, ptr nonnull elementtype(i32) %142) #19, !srcloc !10
  %146 = extractvalue { i32, i32, i32 } %145, 0
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %152, label %148, !prof !11

148:                                              ; preds = %144
  %149 = add i32 %146, 1
  %150 = or i32 %149, %146
  %151 = icmp sgt i32 %150, -1
  br i1 %151, label %154, label %152, !prof !12

152:                                              ; preds = %148, %144
  %153 = phi i32 [ 2, %144 ], [ 1, %148 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %142, i32 noundef %153) #19
  br label %154

154:                                              ; preds = %152, %148, %137
  store ptr %142, ptr %91, align 8
  %155 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 83
  %156 = load ptr, ptr %155, align 8
  %157 = getelementptr inbounds %struct.cred, ptr %156, i32 0, i32 1
  %158 = load i32, ptr %157, align 4
  store i32 %158, ptr %92, align 4
  %159 = getelementptr inbounds %struct.cred, ptr %156, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  store i32 %160, ptr %94, align 8
  br label %161

161:                                              ; preds = %154, %132, %122
  %162 = load ptr, ptr %96, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i16, ptr %162, align 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %170, label %167, !prof !12

167:                                              ; preds = %164
  %168 = sext i16 %165 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #19, !srcloc !9
  %169 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 %168, ptr elementtype(i32) %55) #19, !srcloc !25
  br label %170

170:                                              ; preds = %167, %164, %161
  call void @skb_queue_tail(ptr noundef %56, ptr noundef nonnull %75) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %171 = load i16, ptr %50, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %50, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %173 = load ptr, ptr %57, align 8
  call void %173(ptr noundef nonnull %37) #19
  %174 = add i32 %67, %60
  %175 = icmp ugt i32 %26, %174
  %176 = load i32, ptr %17, align 4
  br i1 %175, label %58, label %177

177:                                              ; preds = %170
  %178 = and i32 %176, 1
  br label %179

179:                                              ; preds = %177, %44
  %180 = phi i32 [ %178, %177 ], [ %19, %44 ]
  %181 = phi i32 [ %174, %177 ], [ 0, %44 ]
  %182 = icmp eq i32 %180, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = call fastcc i32 @queue_oob(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %37)
  store i32 %184, ptr %4, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  %187 = add i32 %181, 1
  br label %188

188:                                              ; preds = %186, %179
  %189 = phi i32 [ %187, %186 ], [ %181, %179 ]
  call fastcc void @scm_destroy(ptr noundef nonnull %5)
  br label %216

190:                                              ; preds = %118, %114
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %191 = load i16, ptr %50, align 4
  %192 = add i16 %191, 1
  store i16 %192, ptr %50, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @kfree_skb_reason(ptr noundef nonnull %75, i32 noundef 0) #19
  %193 = icmp eq i32 %60, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load i32, ptr %17, align 4
  br label %196

196:                                              ; preds = %194, %39
  %197 = phi i32 [ %195, %194 ], [ %18, %39 ]
  %198 = and i32 %197, 16384
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = tail call ptr @llvm.thread.pointer() #19
  %202 = call i32 @send_sig(i32 noundef 13, ptr noundef %201, i32 noundef 0) #19
  br label %203

203:                                              ; preds = %200, %196, %190
  %204 = phi i32 [ 0, %200 ], [ 0, %196 ], [ %60, %190 ]
  store i32 -32, ptr %4, align 4
  br label %205

205:                                              ; preds = %203, %183, %113, %106, %58, %35, %30, %21
  %206 = phi i32 [ 0, %30 ], [ %204, %203 ], [ %60, %106 ], [ %60, %113 ], [ %181, %183 ], [ 0, %35 ], [ 0, %21 ], [ %60, %58 ]
  %207 = load ptr, ptr %5, align 4
  call void @put_pid(ptr noundef %207) #19
  store ptr null, ptr %5, align 4
  %208 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  call void @__scm_destroy(ptr noundef nonnull %5) #19
  br label %212

212:                                              ; preds = %211, %205
  %213 = icmp eq i32 %206, 0
  %214 = load i32, ptr %4, align 4
  %215 = select i1 %213, i32 %214, i32 %206
  br label %216

216:                                              ; preds = %212, %188, %13
  %217 = phi i32 [ %215, %212 ], [ %189, %188 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i32 %217
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.unix_stream_read_state, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #19
  store ptr @unix_stream_read_actor, ptr %5, align 4
  %6 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 3
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 4
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 5
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.unix_stream_read_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %11, align 4
  %12 = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %5, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #19
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_sendpage(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scm_cookie, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false), !annotation !17
  %8 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 16
  %10 = and i32 %4, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %208

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.unix_sock, ptr %9, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %208, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 4
  %18 = load volatile i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %208

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.unix_sock, ptr %14, i32 0, i32 3
  %22 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 66
  %23 = getelementptr inbounds %struct.unix_sock, ptr %14, i32 0, i32 8
  %24 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %25 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 66
  %26 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 2, i32 2
  %28 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %29 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 71
  %30 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8
  %31 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8, i32 0, i32 0, i32 1
  %32 = and i32 %4, 64
  br label %39

33:                                               ; preds = %135, %130
  %34 = phi ptr [ %112, %130 ], [ %136, %135 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %35 = load i16, ptr %23, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @mutex_unlock(ptr noundef %21) #19
  %37 = call ptr @sock_alloc_send_pskb(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef %32, ptr noundef nonnull %6, i32 noundef 0) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %189, label %39

39:                                               ; preds = %33, %20
  %40 = phi i32 [ %107, %33 ], [ 0, %20 ]
  %41 = phi i32 [ %108, %33 ], [ 0, %20 ]
  %42 = phi ptr [ %109, %33 ], [ null, %20 ]
  %43 = phi i1 [ false, %33 ], [ true, %20 ]
  %44 = phi ptr [ %37, %33 ], [ null, %20 ]
  %45 = phi ptr [ %34, %33 ], [ null, %20 ]
  %46 = call i32 @mutex_lock_interruptible(ptr noundef %21) #19
  store i32 %46, ptr %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = icmp eq i32 %32, 0
  %50 = select i1 %49, i32 -512, i32 -11
  store i32 %50, ptr %6, align 4
  br label %189

51:                                               ; preds = %39
  %52 = load i8, ptr %22, align 2
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 -32, ptr %6, align 4
  br label %185

56:                                               ; preds = %51
  call void @_raw_spin_lock(ptr noundef %23) #19
  %57 = load volatile i32, ptr %24, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8, ptr %25, align 2
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60, %56
  store i32 -32, ptr %6, align 4
  br label %179

65:                                               ; preds = %60
  br i1 %43, label %66, label %106

66:                                               ; preds = %65
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 12, i1 false) #19
  store i32 -1, ptr %26, align 4
  store i32 -1, ptr %27, align 4
  %67 = load volatile i32, ptr %28, align 4
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load ptr, ptr %29, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.socket, ptr %71, i32 0, i32 2
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %73, %70, %66
  %79 = tail call ptr @llvm.thread.pointer() #19
  %80 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 93
  %81 = load ptr, ptr %80, align 16
  %82 = getelementptr %struct.signal_struct, ptr %81, i32 0, i32 22, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %78
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %83) #19, !srcloc !9
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %83, ptr nonnull %83, i32 1, ptr nonnull elementtype(i32) %83) #19, !srcloc !10
  %87 = extractvalue { i32, i32, i32 } %86, 0
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89, !prof !11

89:                                               ; preds = %85
  %90 = add i32 %87, 1
  %91 = or i32 %90, %87
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %95, label %93, !prof !12

93:                                               ; preds = %89, %85
  %94 = phi i32 [ 2, %85 ], [ 1, %89 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %83, i32 noundef %94) #19
  br label %95

95:                                               ; preds = %93, %89, %78
  store ptr %83, ptr %7, align 4
  %96 = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 83
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.cred, ptr %97, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %26, align 4
  %100 = getelementptr inbounds %struct.cred, ptr %97, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr %27, align 4
  br label %102

102:                                              ; preds = %95, %73
  %103 = phi i32 [ -1, %73 ], [ %101, %95 ]
  %104 = phi i32 [ -1, %73 ], [ %99, %95 ]
  %105 = phi ptr [ null, %73 ], [ %83, %95 ]
  store i32 0, ptr %6, align 4
  br label %106

106:                                              ; preds = %102, %65
  %107 = phi i32 [ %103, %102 ], [ %40, %65 ]
  %108 = phi i32 [ %104, %102 ], [ %41, %65 ]
  %109 = phi ptr [ %105, %102 ], [ %42, %65 ]
  %110 = load volatile ptr, ptr %31, align 4
  %111 = icmp eq ptr %110, %30
  %112 = select i1 %111, ptr null, ptr %110
  %113 = icmp ne ptr %45, null
  %114 = icmp eq ptr %45, %112
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %135, label %116

116:                                              ; preds = %106
  %117 = icmp eq ptr %112, null
  br i1 %117, label %130, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %109
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 3, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, %108
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 3, i32 8
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, %107
  br i1 %129, label %132, label %130

130:                                              ; preds = %126, %122, %118, %116
  %131 = icmp eq ptr %44, null
  br i1 %131, label %33, label %135

132:                                              ; preds = %126
  %133 = icmp eq ptr %44, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  call void @consume_skb(ptr noundef nonnull %44) #19
  br label %135

135:                                              ; preds = %134, %132, %130, %106
  %136 = phi ptr [ %110, %134 ], [ %110, %132 ], [ %44, %106 ], [ %44, %130 ]
  %137 = phi ptr [ null, %134 ], [ null, %132 ], [ %44, %106 ], [ %44, %130 ]
  %138 = call i32 @skb_append_pagefrags(ptr noundef %136, ptr noundef %1, i32 noundef %2, i32 noundef %3) #19
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %33

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 5
  %142 = load i32, ptr %141, align 8
  %143 = add i32 %142, %3
  store i32 %143, ptr %141, align 8
  %144 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, %3
  store i32 %146, ptr %144, align 4
  %147 = getelementptr inbounds %struct.sk_buff, ptr %136, i32 0, i32 18
  %148 = load i32, ptr %147, align 8
  %149 = add i32 %148, %3
  store i32 %149, ptr %147, align 8
  %150 = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %150) #19, !srcloc !9
  %151 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %150, ptr %150, i32 %3, ptr elementtype(i32) %150) #19, !srcloc !10
  %152 = extractvalue { i32, i32, i32 } %151, 0
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %158, label %154, !prof !11

154:                                              ; preds = %140
  %155 = add i32 %152, %3
  %156 = or i32 %155, %152
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %160, label %158, !prof !12

158:                                              ; preds = %154, %140
  %159 = phi i32 [ 2, %140 ], [ 1, %154 ]
  call void @refcount_warn_saturate(ptr noundef %150, i32 noundef %159) #19
  br label %160

160:                                              ; preds = %158, %154
  %161 = icmp eq ptr %137, null
  br i1 %161, label %174, label %162

162:                                              ; preds = %160
  %163 = call fastcc i32 @unix_scm_to_skb(ptr noundef nonnull %7, ptr noundef %136, i1 noundef zeroext false)
  store i32 %163, ptr %6, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8, i32 2
  call void @_raw_spin_lock(ptr noundef %166) #19
  %167 = load ptr, ptr %31, align 4
  store volatile ptr %30, ptr %137, align 8
  %168 = getelementptr inbounds %struct.anon.43, ptr %137, i32 0, i32 1
  store volatile ptr %167, ptr %168, align 4
  store volatile ptr %137, ptr %31, align 4
  store volatile ptr %137, ptr %167, align 4
  %169 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 8, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = add i32 %170, 1
  store volatile i32 %171, ptr %169, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %172 = load i16, ptr %166, align 4
  %173 = add i16 %172, 1
  store i16 %173, ptr %166, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %174

174:                                              ; preds = %165, %160
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %175 = load i16, ptr %23, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @mutex_unlock(ptr noundef %21) #19
  %177 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 76
  %178 = load ptr, ptr %177, align 8
  call void %178(ptr noundef nonnull %14) #19
  call fastcc void @scm_destroy(ptr noundef nonnull %7)
  br label %208

179:                                              ; preds = %162, %64
  %180 = phi i1 [ true, %64 ], [ false, %162 ]
  %181 = phi i1 [ %43, %64 ], [ false, %162 ]
  %182 = phi ptr [ %44, %64 ], [ %137, %162 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %183 = load i16, ptr %23, align 4
  %184 = add i16 %183, 1
  store i16 %184, ptr %23, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %185

185:                                              ; preds = %179, %55
  %186 = phi i1 [ true, %55 ], [ %180, %179 ]
  %187 = phi i1 [ %43, %55 ], [ %181, %179 ]
  %188 = phi ptr [ %44, %55 ], [ %182, %179 ]
  call void @mutex_unlock(ptr noundef %21) #19
  br label %189

189:                                              ; preds = %185, %48, %33
  %190 = phi i1 [ false, %48 ], [ %186, %185 ], [ false, %33 ]
  %191 = phi i1 [ %43, %48 ], [ %187, %185 ], [ false, %33 ]
  %192 = phi ptr [ %44, %48 ], [ %188, %185 ], [ null, %33 ]
  call void @kfree_skb_reason(ptr noundef %192, i32 noundef 0) #19
  %193 = and i32 %4, 16384
  %194 = icmp eq i32 %193, 0
  %195 = and i1 %194, %190
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = tail call ptr @llvm.thread.pointer() #19
  %198 = call i32 @send_sig(i32 noundef 13, ptr noundef %197, i32 noundef 0) #19
  br label %199

199:                                              ; preds = %196, %189
  br i1 %191, label %206, label %200

200:                                              ; preds = %199
  %201 = load ptr, ptr %7, align 4
  call void @put_pid(ptr noundef %201) #19
  store ptr null, ptr %7, align 4
  %202 = getelementptr inbounds %struct.scm_cookie, ptr %7, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  call void @__scm_destroy(ptr noundef nonnull %7) #19
  br label %206

206:                                              ; preds = %205, %200, %199
  %207 = load i32, ptr %6, align 4
  br label %208

208:                                              ; preds = %206, %174, %16, %12, %5
  %209 = phi i32 [ %207, %206 ], [ %3, %174 ], [ -95, %5 ], [ -107, %16 ], [ -107, %12 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_splice_read(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.unix_stream_read_state, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #19
  store ptr @unix_stream_splice_actor, ptr %6, align 4
  %7 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 2
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 4
  store i32 %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 5
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.unix_stream_read_state, ptr %6, i32 0, i32 6
  store i32 %4, ptr %12, align 4
  %13 = load i64, ptr %1, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %27, !prof !12

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2048
  %21 = and i32 %4, 2
  %22 = or i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 64, ptr %11, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = call fastcc i32 @unix_stream_read_generic(ptr noundef nonnull %6, i1 noundef zeroext false)
  br label %27

27:                                               ; preds = %25, %5
  %28 = phi i32 [ %26, %25 ], [ -29, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #19
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_set_peek_off(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 3
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 27
  store i32 %1, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %3) #19
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -4, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_read_sock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %9, !prof !12

7:                                                ; preds = %3
  %8 = tail call i32 @unix_read_sock(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ -107, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unix_release_sock(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %5
  tail call void @_raw_spin_lock(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 4
  store volatile ptr %12, ptr %8, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  store volatile ptr %8, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %10
  store ptr null, ptr %7, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 729, i32 noundef 9, ptr noundef null) #19
  br label %21

21:                                               ; preds = %20, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #19, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #19, !srcloc !31
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef %17, i32 noundef 4) #19
  br label %26

26:                                               ; preds = %25, %21, %2
  %27 = load i32, ptr %4, align 8
  %28 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %31 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %31) #19
  %32 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %32) #19
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  store ptr null, ptr %37, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %32) #19
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  store i8 3, ptr %38, align 2
  %39 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 2
  %40 = load i64, ptr %39, align 4
  store i64 %40, ptr %3, align 8
  %41 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 2, i32 1
  store ptr null, ptr %41, align 4
  store ptr null, ptr %39, align 4
  %42 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %43 = load volatile i8, ptr %42, align 2
  store volatile i8 7, ptr %42, align 2
  %44 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  store ptr null, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %46 = load i16, ptr %31, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %48 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %48, i32 noundef 1, i32 noundef 0, ptr noundef null) #19
  %49 = icmp eq ptr %45, null
  br i1 %49, label %98, label %50

50:                                               ; preds = %26
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %52 = load i16, ptr %51, align 2
  switch i16 %52, label %76 [
    i16 1, label %53
    i16 5, label %53
  ]

53:                                               ; preds = %50, %50
  %54 = getelementptr inbounds %struct.unix_sock, ptr %45, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %54) #19
  %55 = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 66
  store i8 3, ptr %55, align 2
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ne ptr %57, %56
  %59 = icmp ne i32 %1, 0
  %60 = or i1 %59, %58
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 51
  store i32 104, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %64 = load i16, ptr %54, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %66 = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 75
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef nonnull %45) #19
  %68 = getelementptr inbounds %struct.sock_common, ptr %45, i32 0, i32 13
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 65536
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  %73 = getelementptr inbounds %struct.sock, ptr %45, i32 0, i32 17
  %74 = load volatile ptr, ptr %73, align 4
  %75 = tail call i32 @sock_wake_async(ptr noundef %74, i32 noundef 1, i32 noundef 6) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  br label %76

76:                                               ; preds = %72, %63, %50
  %77 = getelementptr inbounds %struct.unix_sock, ptr %45, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %77) #19
  %78 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %45
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3
  %83 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %82, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %84, ptr %86, align 4
  store volatile ptr %85, ptr %84, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %82, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %83, align 4
  store ptr null, ptr %78, align 4
  br label %87

87:                                               ; preds = %81, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %88 = load i16, ptr %77, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %90 = getelementptr inbounds %struct.sock_common, ptr %45, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %90) #19, !srcloc !9
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %90, ptr %90, i32 1, ptr elementtype(i32) %90) #19, !srcloc !31
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = icmp sgt i32 %92, 0
  br i1 %95, label %98, label %96, !prof !12

96:                                               ; preds = %94
  tail call void @refcount_warn_saturate(ptr noundef %90, i32 noundef 3) #19
  br label %98

97:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef nonnull %45) #19
  br label %98

98:                                               ; preds = %97, %96, %94, %26
  %99 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %100 = tail call ptr @skb_dequeue(ptr noundef %99) #19
  %101 = icmp eq ptr %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %98
  %103 = icmp eq i8 %43, 10
  br label %104

104:                                              ; preds = %109, %102
  %105 = phi ptr [ %100, %102 ], [ %113, %109 ]
  br i1 %103, label %106, label %109

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  tail call fastcc void @unix_release_sock(ptr noundef %108, i32 noundef 1)
  br label %109

109:                                              ; preds = %106, %104
  %110 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 5
  %111 = load i32, ptr %110, align 8
  %112 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 3, i32 16
  store i32 %111, ptr %112, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %105, i32 noundef 0) #19
  %113 = tail call ptr @skb_dequeue(ptr noundef %99) #19
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %104

115:                                              ; preds = %109, %98
  %116 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void @path_put(ptr noundef nonnull %3) #19
  br label %120

120:                                              ; preds = %119, %115
  %121 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %121) #19, !srcloc !9
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %121, ptr %121, i32 1, ptr elementtype(i32) %121) #19, !srcloc !31
  %123 = extractvalue { i32, i32, i32 } %122, 0
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = icmp sgt i32 %123, 0
  br i1 %126, label %129, label %127, !prof !12

127:                                              ; preds = %125
  call void @refcount_warn_saturate(ptr noundef %121, i32 noundef 3) #19
  br label %129

128:                                              ; preds = %120
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  call void @sk_free(ptr noundef %0) #19
  br label %129

129:                                              ; preds = %128, %127, %125
  %130 = load i32, ptr @unix_tot_inflight, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void @unix_gc() #19
  br label %133

133:                                              ; preds = %132, %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_put(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #19, !srcloc !31
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !12

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #19
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %0) #19
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_gc() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_autobind(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 4
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %92

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %90

11:                                               ; preds = %7
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 26) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %90, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.unix_address, ptr %13, i32 0, i32 1
  store i32 8, ptr %16, align 4
  %17 = getelementptr inbounds %struct.unix_address, ptr %13, i32 0, i32 2
  store i16 1, ptr %17, align 8
  store volatile i32 1, ptr %13, align 8
  %18 = tail call i32 @prandom_u32() #19
  %19 = and i32 %18, 1048575
  %20 = getelementptr %struct.sockaddr_un, ptr %17, i32 0, i32 1, i32 1
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %22 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %3
  br label %23

23:                                               ; preds = %68, %15
  %24 = phi i32 [ %18, %15 ], [ %26, %68 ]
  %25 = add i32 %24, 1
  %26 = and i32 %25, 1048575
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %26)
  %28 = load i32, ptr %16, align 4
  %29 = load i16, ptr %21, align 2
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @csum_partial(ptr noundef %17, i32 noundef %28, i32 noundef 0) #19
  %32 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %31) #22, !srcloc !33
  %33 = xor i32 %32, -1
  %34 = lshr i32 %33, 16
  %35 = lshr i32 %33, 24
  %36 = xor i32 %34, %30
  %37 = and i32 %36, 255
  %38 = xor i32 %37, %35
  %39 = tail call i32 @llvm.umax.i32(i32 %3, i32 %38) #19
  %40 = tail call i32 @llvm.umin.i32(i32 %3, i32 %38) #19
  %41 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %40
  tail call void @_raw_spin_lock(ptr noundef %41) #19
  %42 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %39
  tail call void @_raw_spin_lock(ptr noundef %42) #19
  %43 = load i32, ptr %16, align 4
  %44 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %38
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  %47 = getelementptr i8, ptr %45, i32 -84
  %48 = icmp eq ptr %47, null
  %49 = or i1 %46, %48
  br i1 %49, label %84, label %50

50:                                               ; preds = %61, %23
  %51 = phi ptr [ %65, %61 ], [ %47, %23 ]
  %52 = getelementptr inbounds %struct.unix_sock, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.unix_address, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %43
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.unix_address, ptr %53, i32 0, i32 2
  %59 = tail call i32 @bcmp(ptr %58, ptr %17, i32 %43) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57, %50
  %62 = getelementptr inbounds %struct.sock_common, ptr %51, i32 0, i32 15
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = getelementptr i8, ptr %63, i32 -84
  %66 = icmp eq ptr %65, null
  %67 = or i1 %64, %66
  br i1 %67, label %84, label %50

68:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %69 = load i16, ptr %22, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %71 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %72 = load i16, ptr %71, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %71, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %74 = tail call i32 @__cond_resched() #19
  %75 = icmp eq i32 %26, %19
  br i1 %75, label %76, label %23

76:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #19, !srcloc !9
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #19, !srcloc !31
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = icmp sgt i32 %78, 0
  br i1 %81, label %90, label %82, !prof !12

82:                                               ; preds = %80
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #19
  br label %90

83:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @kfree(ptr noundef nonnull %13) #19
  br label %90

84:                                               ; preds = %61, %23
  tail call fastcc void @__unix_set_addr_hash(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %38)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %85 = load i16, ptr %22, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %87 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %88 = load i16, ptr %87, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %87, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %90

90:                                               ; preds = %84, %83, %82, %80, %11, %7
  %91 = phi i32 [ 0, %7 ], [ 0, %84 ], [ -12, %11 ], [ -28, %80 ], [ -28, %82 ], [ -28, %83 ]
  tail call void @mutex_unlock(ptr noundef %4) #19
  br label %92

92:                                               ; preds = %90, %1
  %93 = phi i32 [ %91, %90 ], [ %5, %1 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unix_table_double_lock(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @llvm.umax.i32(i32 %0, i32 %1)
  %4 = tail call i32 @llvm.umin.i32(i32 %0, i32 %1)
  %5 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %4
  tail call void @_raw_spin_lock(ptr noundef %5) #19
  %6 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %3
  tail call void @_raw_spin_lock(ptr noundef %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__unix_set_addr_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  store volatile ptr %9, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  store volatile ptr %5, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %7
  store ptr null, ptr %4, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18, !prof !11

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 729, i32 noundef 9, ptr noundef null) #19
  br label %18

18:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #19, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #19, !srcloc !31
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %23, !prof !11

22:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 4) #19
  br label %23

23:                                               ; preds = %22, %18, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !48
  %24 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 1
  store volatile ptr %1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 1
  store i32 %2, ptr %25, align 8
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !12

28:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 305, i32 noundef 9, ptr noundef null) #19
  %29 = load i32, ptr %25, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ %2, %23 ]
  %32 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %31
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #19, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #19, !srcloc !10
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !11

37:                                               ; preds = %30
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !12

41:                                               ; preds = %37, %30
  %42 = phi i32 [ 2, %30 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #19
  br label %43

43:                                               ; preds = %41, %37
  %44 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %45 = load ptr, ptr %32, align 4
  store volatile ptr %45, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  store volatile ptr %44, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %43
  store volatile ptr %44, ptr %32, align 4
  store volatile ptr %32, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_path_create(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_mknod(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @done_path_create(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @unix_find_other(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  %5 = getelementptr inbounds %struct.sockaddr_un, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %93, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store i64 0, ptr %4, align 8, !annotation !17
  %9 = getelementptr i8, ptr %0, i32 %1
  store i8 0, ptr %9, align 1
  %10 = call i32 @kern_path(ptr noundef %5, i32 noundef 1, ptr noundef nonnull %4) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %88

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %16 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = call i32 @inode_permission(ptr noundef %15, ptr noundef %19, i32 noundef 2) #19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %12
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, -4096
  %28 = icmp eq i16 %27, -16384
  br i1 %28, label %29, label %86

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 255
  %33 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %32
  call void @_raw_spin_lock(ptr noundef %33) #19
  %34 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  %37 = getelementptr i8, ptr %35, i32 -84
  %38 = icmp eq ptr %37, null
  %39 = or i1 %36, %38
  br i1 %39, label %67, label %40

40:                                               ; preds = %60, %29
  %41 = phi ptr [ %64, %60 ], [ %37, %29 ]
  %42 = getelementptr inbounds %struct.unix_sock, ptr %41, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 5
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, %25
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #19, !srcloc !9
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #19, !srcloc !10
  %52 = extractvalue { i32, i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !11

54:                                               ; preds = %49
  %55 = add i32 %52, 1
  %56 = or i32 %55, %52
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %70, label %58, !prof !12

58:                                               ; preds = %54, %49
  %59 = phi i32 [ 2, %49 ], [ 1, %54 ]
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef %59) #19
  br label %70

60:                                               ; preds = %45, %40
  %61 = getelementptr inbounds %struct.sock_common, ptr %41, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -84
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %67, label %40

67:                                               ; preds = %60, %29
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %68 = load i16, ptr %33, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %86

70:                                               ; preds = %58, %54
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %71 = load i16, ptr %33, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %73 = getelementptr inbounds %struct.sock, ptr %41, i32 0, i32 45
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = icmp eq i32 %75, %2
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  call void @touch_atime(ptr noundef nonnull %4) #19
  call void @path_put(ptr noundef nonnull %4) #19
  br label %91

78:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #19, !srcloc !9
  %79 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #19, !srcloc !31
  %80 = extractvalue { i32, i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = icmp sgt i32 %80, 0
  br i1 %83, label %86, label %84, !prof !12

84:                                               ; preds = %82
  call void @refcount_warn_saturate(ptr noundef %50, i32 noundef 3) #19
  br label %86

85:                                               ; preds = %78
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  call void @sk_free(ptr noundef nonnull %41) #19
  br label %86

86:                                               ; preds = %85, %84, %82, %67, %22, %12
  %87 = phi i32 [ %20, %12 ], [ -111, %22 ], [ -111, %67 ], [ -91, %82 ], [ -91, %84 ], [ -91, %85 ]
  call void @path_put(ptr noundef nonnull %4) #19
  br label %88

88:                                               ; preds = %86, %8
  %89 = phi i32 [ %10, %8 ], [ %87, %86 ]
  %90 = inttoptr i32 %89 to ptr
  br label %91

91:                                               ; preds = %88, %77
  %92 = phi ptr [ %90, %88 ], [ %41, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %149

93:                                               ; preds = %3
  %94 = tail call i32 @csum_partial(ptr noundef %0, i32 noundef %1, i32 noundef 0) #19
  %95 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %94) #22, !srcloc !33
  %96 = xor i32 %95, -1
  %97 = lshr i32 %96, 16
  %98 = lshr i32 %96, 24
  %99 = xor i32 %97, %2
  %100 = and i32 %99, 255
  %101 = xor i32 %100, %98
  %102 = getelementptr [512 x %struct.spinlock], ptr @unix_table_locks, i32 0, i32 %101
  tail call void @_raw_spin_lock(ptr noundef %102) #19
  %103 = getelementptr [512 x %struct.hlist_head], ptr @unix_socket_table, i32 0, i32 %101
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  %106 = getelementptr i8, ptr %104, i32 -84
  %107 = icmp eq ptr %106, null
  %108 = or i1 %105, %107
  br i1 %108, label %138, label %109

109:                                              ; preds = %120, %93
  %110 = phi ptr [ %124, %120 ], [ %106, %93 ]
  %111 = getelementptr inbounds %struct.unix_sock, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.unix_address, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %1
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.unix_address, ptr %112, i32 0, i32 2
  %118 = tail call i32 @bcmp(ptr %117, ptr %0, i32 %1) #19
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %116, %109
  %121 = getelementptr inbounds %struct.sock_common, ptr %110, i32 0, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  %124 = getelementptr i8, ptr %122, i32 -84
  %125 = icmp eq ptr %124, null
  %126 = or i1 %123, %125
  br i1 %126, label %138, label %109

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.sock_common, ptr %110, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %128) #19, !srcloc !9
  %129 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #19, !srcloc !10
  %130 = extractvalue { i32, i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132, !prof !11

132:                                              ; preds = %127
  %133 = add i32 %130, 1
  %134 = or i32 %133, %130
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %138, label %136, !prof !12

136:                                              ; preds = %132, %127
  %137 = phi i32 [ 2, %127 ], [ 1, %132 ]
  tail call void @refcount_warn_saturate(ptr noundef %128, i32 noundef %137) #19
  br label %138

138:                                              ; preds = %136, %132, %120, %93
  %139 = phi ptr [ %110, %132 ], [ %110, %136 ], [ null, %93 ], [ null, %120 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %140 = load i16, ptr %102, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %142 = icmp eq ptr %139, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.unix_sock, ptr %139, i32 0, i32 2, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.unix_sock, ptr %139, i32 0, i32 2
  tail call void @touch_atime(ptr noundef %148) #19
  br label %149

149:                                              ; preds = %147, %143, %138, %91
  %150 = phi ptr [ %92, %91 ], [ %139, %147 ], [ %139, %143 ], [ inttoptr (i32 -111 to ptr), %138 ]
  ret ptr %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_wait_for_peer(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #19
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 11
  %10 = call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1) #19
  %11 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 66
  %17 = load i8, ptr %16, align 2
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 54
  %24 = load i32, ptr %23, align 8
  %25 = icmp ugt i32 %22, %24
  %26 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br i1 %25, label %29, label %39

29:                                               ; preds = %20
  %30 = call i32 @schedule_timeout(i32 noundef %1) #19
  br label %39

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %39

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 8
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %39

39:                                               ; preds = %35, %31, %29, %20
  %40 = phi i32 [ %30, %29 ], [ %1, %20 ], [ %1, %31 ], [ %1, %35 ]
  call void @finish_wait(ptr noundef %9, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #19
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_peercred(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 60
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 61
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @llvm.thread.pointer() #19
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #19, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #19, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %13
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %13
  %22 = phi i32 [ 2, %13 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %22) #19
  br label %23

23:                                               ; preds = %21, %17, %1
  store ptr %11, ptr %3, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 24
  store i32 0, ptr %28, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %25) #19, !srcloc !9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %25, ptr nonnull %25, i32 1, ptr nonnull elementtype(i32) %25) #19, !srcloc !25
  br label %30

30:                                               ; preds = %27, %23
  store ptr %25, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @put_pid(ptr noundef %4) #19
  %33 = icmp eq ptr %6, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #19, !srcloc !9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #19, !srcloc !50
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !51
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  tail call void @__put_cred(ptr noundef nonnull %6) #19
  br label %39

39:                                               ; preds = %38, %34, %30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_peercred(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ult ptr %0, %1
  %4 = select i1 %3, ptr %0, ptr %1
  %5 = select i1 %3, ptr %1, ptr %0
  %6 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %6) #19
  %7 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %7) #19
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 60
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 61
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 60
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #19, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #19, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !11

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %24) #19
  br label %25

25:                                               ; preds = %23, %19, %2
  store ptr %13, ptr %8, align 4
  %26 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 61
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.cred, ptr %27, i32 0, i32 24
  store i32 0, ptr %30, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #19, !srcloc !9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #19, !srcloc !25
  br label %32

32:                                               ; preds = %29, %25
  store ptr %27, ptr %10, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %36 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  tail call void @put_pid(ptr noundef %9) #19
  %39 = icmp eq ptr %11, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #19, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #19, !srcloc !50
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !51
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @__put_cred(ptr noundef nonnull %11) #19
  br label %45

45:                                               ; preds = %44, %40, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_unix_gc() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_pskb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_scm_to_skb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #19, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #19, !srcloc !10
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !11

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !12

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %15) #19
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  store ptr %4, ptr %17, align 8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %19 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %22 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp ne ptr %26, null
  %28 = and i1 %27, %2
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = tail call i32 @unix_attach_fds(ptr noundef %0, ptr noundef %1) #19
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i32 [ %30, %29 ], [ 0, %16 ]
  %33 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  store ptr @unix_destruct_scm, ptr %33, align 4
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_from_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @maybe_add_creds(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %47

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.socket, ptr %14, i32 0, i32 2
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %16, %12, %7
  %22 = tail call ptr @llvm.thread.pointer() #19
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr %struct.signal_struct, ptr %24, i32 0, i32 22, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #19, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #19, !srcloc !10
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !11

32:                                               ; preds = %28
  %33 = add i32 %30, 1
  %34 = or i32 %33, %30
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %38, label %36, !prof !12

36:                                               ; preds = %32, %28
  %37 = phi i32 [ 2, %28 ], [ 1, %32 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %26, i32 noundef %37) #19
  br label %38

38:                                               ; preds = %36, %32, %21
  store ptr %26, ptr %4, align 8
  %39 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 83
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  %42 = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %45 = getelementptr inbounds %struct.cred, ptr %40, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr %44, align 8
  br label %47

47:                                               ; preds = %38, %16, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @queue_oob(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = call ptr @sock_alloc_send_skb(ptr noundef %6, i32 noundef 1, i32 noundef %9, ptr noundef nonnull %4) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, ptr %4, align 4
  br label %113

14:                                               ; preds = %3
  %15 = call ptr @skb_put(ptr noundef nonnull %10, i32 noundef 1) #19
  %16 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %17 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %10, i32 noundef 0, ptr noundef %16, i32 noundef 1) #19
  store i32 %17, ptr %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #19
  %20 = load i32, ptr %4, align 4
  br label %113

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.unix_sock, ptr %2, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %22) #19
  %23 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 66
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %21
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %33 = load i16, ptr %22, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #19
  br label %113

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 71
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.socket, ptr %46, i32 0, i32 2
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %48, %44, %39
  %54 = tail call ptr @llvm.thread.pointer() #19
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 93
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr %struct.signal_struct, ptr %56, i32 0, i32 22, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %58) #19, !srcloc !9
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %58, ptr nonnull %58, i32 1, ptr nonnull elementtype(i32) %58) #19, !srcloc !10
  %62 = extractvalue { i32, i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64, !prof !11

64:                                               ; preds = %60
  %65 = add i32 %62, 1
  %66 = or i32 %65, %62
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %70, label %68, !prof !12

68:                                               ; preds = %64, %60
  %69 = phi i32 [ 2, %60 ], [ 1, %64 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %58, i32 noundef %69) #19
  br label %70

70:                                               ; preds = %68, %64, %53
  store ptr %58, ptr %36, align 8
  %71 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 83
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 4
  %74 = getelementptr inbounds %struct.cred, ptr %72, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 8
  %77 = getelementptr inbounds %struct.cred, ptr %72, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %70, %48, %35
  %80 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %80) #19, !srcloc !9
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %80, ptr %80, i32 1, ptr elementtype(i32) %80) #19, !srcloc !10
  %82 = extractvalue { i32, i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84, !prof !11

84:                                               ; preds = %79
  %85 = add i32 %82, 1
  %86 = or i32 %85, %82
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %90, label %88, !prof !12

88:                                               ; preds = %84, %79
  %89 = phi i32 [ 2, %79 ], [ 1, %84 ]
  call void @refcount_warn_saturate(ptr noundef %80, i32 noundef %89) #19
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct.unix_sock, ptr %2, i32 0, i32 14
  %92 = load ptr, ptr %91, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @consume_skb(ptr noundef nonnull %92) #19
  br label %95

95:                                               ; preds = %94, %90
  store ptr %10, ptr %91, align 8
  %96 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %95
  %100 = load i16, ptr %97, align 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %106, label %102, !prof !12

102:                                              ; preds = %99
  %103 = sext i16 %100 to i32
  %104 = getelementptr inbounds %struct.unix_sock, ptr %2, i32 0, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #19, !srcloc !9
  %105 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 %103, ptr elementtype(i32) %104) #19, !srcloc !25
  br label %106

106:                                              ; preds = %102, %99, %95
  %107 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %107, ptr noundef nonnull %10) #19
  call void @sk_send_sigurg(ptr noundef %2) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %108 = load i16, ptr %22, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %110 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %111 = load ptr, ptr %110, align 8
  call void %111(ptr noundef %2) #19
  %112 = load i32, ptr %4, align 4
  br label %113

113:                                              ; preds = %106, %32, %19, %12
  %114 = phi i32 [ %20, %19 ], [ -32, %32 ], [ %112, %106 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scm_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unix_attach_fds(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unix_destruct_scm(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_send_sigurg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_append_pagefrags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_stream_splice_actor(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.unix_stream_read_state, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, %1
  %12 = getelementptr inbounds %struct.unix_stream_read_state, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.unix_stream_read_state, ptr %3, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @skb_splice_bits(ptr noundef %0, ptr noundef %8, i32 noundef %11, ptr noundef %13, i32 noundef %2, i32 noundef %15) #19
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_splice_bits(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_read_sock(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !17
  call void @mutex_lock(ptr noundef %5) #19
  %6 = call ptr @skb_recv_datagram(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4) #19
  call void @mutex_unlock(ptr noundef %5) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.read_descriptor_t, ptr %1, i32 0, i32 1
  br label %12

10:                                               ; preds = %29, %3
  %11 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %34

12:                                               ; preds = %29, %8
  %13 = phi ptr [ %6, %8 ], [ %30, %29 ]
  %14 = phi i32 [ 0, %8 ], [ %26, %29 ]
  %15 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = call i32 %2(ptr noundef %1, ptr noundef nonnull %13, i32 noundef 0, i32 noundef %16) #19
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  %21 = select i1 %20, i32 %17, i32 %14
  call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #19
  br label %32

22:                                               ; preds = %12
  %23 = load i32, ptr %15, align 8
  %24 = icmp ugt i32 %17, %23
  %25 = select i1 %24, i32 0, i32 %17
  %26 = add i32 %25, %14
  call void @kfree_skb_reason(ptr noundef nonnull %13, i32 noundef 0) #19
  %27 = load i32, ptr %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !17
  call void @mutex_lock(ptr noundef %5) #19
  %30 = call ptr @skb_recv_datagram(ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4) #19
  call void @mutex_unlock(ptr noundef %5) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %10, label %12

32:                                               ; preds = %22, %19
  %33 = phi i32 [ %21, %19 ], [ %26, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi i32 [ %33, %32 ], [ %11, %10 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_dgram_connect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp ult i32 %2, 2
  br i1 %7, label %186, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %1, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %89, label %11

11:                                               ; preds = %8
  %12 = add i32 %2, -3
  %13 = icmp ult i32 %12, 108
  %14 = icmp eq i16 %9, 1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %186

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call fastcc i32 @unix_autobind(ptr noundef %6)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %186

28:                                               ; preds = %25, %21, %16
  %29 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = sext i16 %30 to i32
  %32 = tail call fastcc ptr @unix_find_other(ptr noundef %1, i32 noundef %2, i32 noundef %31)
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 8
  br label %39

36:                                               ; preds = %72, %28
  %37 = phi ptr [ %32, %28 ], [ %75, %72 ]
  %38 = ptrtoint ptr %37 to i32
  br label %186

39:                                               ; preds = %72, %34
  %40 = phi ptr [ %32, %34 ], [ %75, %72 ]
  %41 = icmp ne ptr %6, %40
  %42 = icmp ne ptr %40, null
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %49, !prof !52

44:                                               ; preds = %39
  %45 = icmp ult ptr %6, %40
  %46 = select i1 %45, ptr %6, ptr %40
  %47 = select i1 %45, ptr %40, ptr %6
  %48 = getelementptr inbounds %struct.unix_sock, ptr %46, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %48) #19
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi ptr [ %6, %39 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.unix_sock, ptr %50, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %51) #19
  %52 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 13
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19
  %57 = load i16, ptr %35, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19
  tail call void asm sideeffect "", "~{memory}"() #19
  br i1 %43, label %59, label %63, !prof !52

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.unix_sock, ptr %40, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %63

63:                                               ; preds = %59, %56
  %64 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #19, !srcloc !9
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #19, !srcloc !31
  %66 = extractvalue { i32, i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = icmp sgt i32 %66, 0
  br i1 %69, label %72, label %70, !prof !12

70:                                               ; preds = %68
  tail call void @refcount_warn_saturate(ptr noundef %64, i32 noundef 3) #19
  br label %72

71:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %40) #19
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = load i16, ptr %29, align 4
  %74 = sext i16 %73 to i32
  %75 = tail call fastcc ptr @unix_find_other(ptr noundef %1, i32 noundef %2, i32 noundef %74)
  %76 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %76, label %36, label %39

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.unix_sock, ptr %40, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  %80 = icmp ne ptr %79, null
  %81 = icmp ne ptr %79, %6
  %82 = and i1 %80, %81
  br i1 %82, label %170, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 4
  store volatile i8 1, ptr %84, align 2
  %85 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 1, ptr %85, align 2
  %86 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %157, label %95

89:                                               ; preds = %8
  %90 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %90) #19
  %91 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %157, label %94

94:                                               ; preds = %89
  store ptr null, ptr %91, align 4
  br label %97

95:                                               ; preds = %83
  store ptr %40, ptr %86, align 4
  %96 = icmp eq ptr %40, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %95, %94
  %98 = phi ptr [ %92, %94 ], [ %87, %95 ]
  %99 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 7, ptr %99, align 2
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi ptr [ null, %97 ], [ %40, %95 ]
  %102 = phi ptr [ %98, %97 ], [ %87, %95 ]
  %103 = getelementptr inbounds %struct.unix_sock, ptr %102, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %103) #19
  %104 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 12, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %102
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 12, i32 3
  %109 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 12, i32 3, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %108, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %110, ptr %112, align 4
  store volatile ptr %111, ptr %110, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %108, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %109, align 4
  store ptr null, ptr %104, align 4
  br label %113

113:                                              ; preds = %107, %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %114 = load i16, ptr %103, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %103, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %116 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 17
  %117 = load volatile ptr, ptr %116, align 4
  tail call void @__wake_up(ptr noundef %117, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #19
  %118 = icmp ne ptr %6, %101
  %119 = icmp ne ptr %101, null
  %120 = and i1 %118, %119
  %121 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19
  %122 = load i16, ptr %121, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19
  tail call void asm sideeffect "", "~{memory}"() #19
  br i1 %120, label %124, label %128, !prof !52

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.unix_sock, ptr %101, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %126 = load i16, ptr %125, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %125, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %128

128:                                              ; preds = %124, %113
  %129 = icmp eq ptr %101, %102
  br i1 %129, label %148, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 8
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, %131
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  tail call void @skb_queue_purge(ptr noundef %131) #19
  %135 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %135, i32 noundef 1, i32 noundef 0, ptr noundef null) #19
  %136 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 13
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.unix_sock, ptr %102, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %6
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.sock, ptr %102, i32 0, i32 51
  store i32 104, ptr %145, align 4
  tail call void @sk_error_report(ptr noundef nonnull %102) #19
  br label %146

146:                                              ; preds = %144, %140, %134, %130
  %147 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 4
  store volatile i8 7, ptr %147, align 2
  br label %148

148:                                              ; preds = %146, %128
  %149 = getelementptr inbounds %struct.sock_common, ptr %102, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #19, !srcloc !9
  %150 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 1, ptr elementtype(i32) %149) #19, !srcloc !31
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = icmp sgt i32 %151, 0
  br i1 %154, label %186, label %155, !prof !12

155:                                              ; preds = %153
  tail call void @refcount_warn_saturate(ptr noundef %149, i32 noundef 3) #19
  br label %186

156:                                              ; preds = %148
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef nonnull %102) #19
  br label %186

157:                                              ; preds = %89, %83
  %158 = phi ptr [ %91, %89 ], [ %86, %83 ]
  %159 = phi ptr [ null, %89 ], [ %40, %83 ]
  store ptr %159, ptr %158, align 4
  %160 = icmp ne ptr %6, %159
  %161 = icmp ne ptr %159, null
  %162 = and i1 %160, %161
  %163 = getelementptr inbounds %struct.unix_sock, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19
  %164 = load i16, ptr %163, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %163, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19
  tail call void asm sideeffect "", "~{memory}"() #19
  br i1 %162, label %166, label %186, !prof !52

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.unix_sock, ptr %159, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %168 = load i16, ptr %167, align 4
  %169 = add i16 %168, 1
  store i16 %169, ptr %167, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %186

170:                                              ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19
  %171 = load i16, ptr %35, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19
  tail call void asm sideeffect "", "~{memory}"() #19
  br i1 %43, label %173, label %177, !prof !52

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.unix_sock, ptr %40, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %175 = load i16, ptr %174, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %174, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %177

177:                                              ; preds = %173, %170
  %178 = getelementptr inbounds %struct.sock_common, ptr %40, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %178) #19, !srcloc !9
  %179 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %178, ptr %178, i32 1, ptr elementtype(i32) %178) #19, !srcloc !31
  %180 = extractvalue { i32, i32, i32 } %179, 0
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = icmp sgt i32 %180, 0
  br i1 %183, label %186, label %184, !prof !12

184:                                              ; preds = %182
  tail call void @refcount_warn_saturate(ptr noundef %178, i32 noundef 3) #19
  br label %186

185:                                              ; preds = %177
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @sk_free(ptr noundef %40) #19
  br label %186

186:                                              ; preds = %185, %184, %182, %166, %157, %156, %155, %153, %36, %25, %11, %4
  %187 = phi i32 [ -22, %4 ], [ %38, %36 ], [ %26, %25 ], [ 0, %153 ], [ 0, %155 ], [ 0, %156 ], [ 0, %157 ], [ 0, %166 ], [ -1, %182 ], [ -1, %184 ], [ -1, %185 ], [ -22, %11 ]
  ret i32 %187
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_dgram_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !38
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4194304
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 8, i32 10
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i32 [ %25, %20 ], [ 0, %16 ]
  %28 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  %32 = or i32 %27, 8257
  %33 = select i1 %31, i32 %27, i32 %32
  %34 = icmp eq i8 %29, 3
  %35 = or i32 %33, 16
  %36 = select i1 %34, i32 %35, i32 %33
  %37 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  %40 = or i32 %36, 65
  %41 = select i1 %39, i32 %36, i32 %40
  %42 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 27
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %26
  %48 = tail call zeroext i1 %45(ptr noundef %5) #19
  %49 = select i1 %48, i32 %40, i32 %41
  br label %50

50:                                               ; preds = %47, %26
  %51 = phi i32 [ %41, %26 ], [ %49, %47 ]
  %52 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 5
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %57 = load volatile i8, ptr %56, align 2
  %58 = icmp eq i8 %57, 7
  %59 = or i32 %51, 16
  %60 = select i1 %58, i32 %59, i32 %51
  %61 = load volatile i8, ptr %56, align 2
  %62 = icmp eq i8 %61, 2
  br i1 %62, label %121, label %63

63:                                               ; preds = %55, %50
  %64 = phi i32 [ %60, %55 ], [ %51, %50 ]
  br i1 %6, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.poll_table_struct, ptr %2, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 772
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %121, label %70

70:                                               ; preds = %65, %63
  %71 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %72 = load volatile i8, ptr %71, align 2
  %73 = icmp eq i8 %72, 10
  br i1 %73, label %112, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %76 = load volatile i32, ptr %75, align 4
  %77 = shl i32 %76, 2
  %78 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %79 = load i32, ptr %78, align 8
  %80 = icmp ugt i32 %77, %79
  br i1 %80, label %112, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %82) #19
  %83 = getelementptr inbounds %struct.unix_sock, ptr %5, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.unix_sock, ptr %84, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %5
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 8, i32 1
  %92 = load volatile i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 54
  %94 = load volatile i32, ptr %93, align 8
  %95 = icmp ugt i32 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = tail call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %5, ptr noundef nonnull %84)
  %98 = icmp eq i32 %97, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %99 = load i16, ptr %82, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br i1 %98, label %110, label %112

101:                                              ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %102 = load i16, ptr %82, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %110

104:                                              ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %105 = load i16, ptr %82, align 4
  %106 = add i16 %105, 1
  store i16 %106, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %110

107:                                              ; preds = %81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %108 = load i16, ptr %82, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %82, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %110

110:                                              ; preds = %107, %104, %101, %96
  %111 = or i32 %64, 772
  br label %121

112:                                              ; preds = %96, %74, %70
  %113 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 65536
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.socket_wq, ptr %119, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %120) #19
  br label %121

121:                                              ; preds = %117, %112, %110, %65, %55
  %122 = phi i32 [ %60, %55 ], [ %64, %65 ], [ %111, %110 ], [ %64, %112 ], [ %64, %117 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_dgram_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scm_cookie, align 4
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 0, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #19
  tail call void @wait_for_unix_gc() #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 12, i1 false) #19
  %9 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 1
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 2, i32 2
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = call i32 @__scm_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #19
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %317, label %17

17:                                               ; preds = %14, %3
  store i32 -95, ptr %4, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %309

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = add i32 %24, -111
  %28 = icmp ult i32 %27, -108
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr %8, align 2
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26
  store i32 -22, ptr %4, align 4
  br label %309

33:                                               ; preds = %29
  store i32 0, ptr %4, align 4
  br label %55

34:                                               ; preds = %22
  store i32 -107, ptr %4, align 4
  %35 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %35) #19
  %36 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %306, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #19, !srcloc !9
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #19, !srcloc !10
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !11

44:                                               ; preds = %39
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %52, label %48, !prof !12

48:                                               ; preds = %44, %39
  %49 = phi i32 [ 2, %39 ], [ 1, %44 ]
  call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %49) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %50 = load i16, ptr %35, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %55

52:                                               ; preds = %44
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %53 = load i16, ptr %35, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %55

55:                                               ; preds = %52, %48, %33
  %56 = phi ptr [ %8, %33 ], [ null, %52 ], [ null, %48 ]
  %57 = phi ptr [ null, %33 ], [ %37, %52 ], [ %37, %48 ]
  %58 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 2
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = call fastcc i32 @unix_autobind(ptr noundef %7)
  store i32 %67, ptr %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %294

69:                                               ; preds = %66, %62, %55
  store i32 -90, ptr %4, align 4
  %70 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 21
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, -32
  %73 = icmp ult i32 %72, %2
  br i1 %73, label %294, label %74

74:                                               ; preds = %69
  %75 = icmp ugt i32 %2, 16128
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = add i32 %2, -16128
  %78 = call i32 @llvm.umin.i32(i32 %77, i32 69632)
  %79 = add nuw nsw i32 %78, 4095
  %80 = and i32 %79, 258048
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi i32 [ %80, %76 ], [ 0, %74 ]
  %83 = sub i32 %2, %82
  %84 = load i32, ptr %18, align 4
  %85 = and i32 %84, 64
  %86 = call ptr @sock_alloc_send_pskb(ptr noundef %7, i32 noundef %83, i32 noundef %82, i32 noundef %85, ptr noundef nonnull %4, i32 noundef 3) #19
  %87 = icmp eq ptr %86, null
  br i1 %87, label %294, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %5, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %89) #19, !srcloc !9
  %92 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %89, ptr nonnull %89, i32 1, ptr nonnull elementtype(i32) %89) #19, !srcloc !10
  %93 = extractvalue { i32, i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95, !prof !11

95:                                               ; preds = %91
  %96 = add i32 %93, 1
  %97 = or i32 %96, %93
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %101, label %99, !prof !12

99:                                               ; preds = %95, %91
  %100 = phi i32 [ 2, %91 ], [ 1, %95 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %89, i32 noundef %100) #19
  br label %101

101:                                              ; preds = %99, %95, %88
  %102 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3
  store ptr %89, ptr %102, align 8
  %103 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 4
  %104 = load i32, ptr %9, align 4
  store i32 %104, ptr %103, align 4
  %105 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 8
  %106 = load i32, ptr %10, align 4
  store i32 %106, ptr %105, align 8
  %107 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 12
  store ptr null, ptr %107, align 4
  %108 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 4, i32 0, i32 1
  store ptr @unix_destruct_scm, ptr %112, align 4
  store i32 0, ptr %4, align 4
  br label %117

113:                                              ; preds = %101
  %114 = call i32 @unix_attach_fds(ptr noundef nonnull %5, ptr noundef nonnull %86) #19
  %115 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 4, i32 0, i32 1
  store ptr @unix_destruct_scm, ptr %115, align 4
  store i32 %114, ptr %4, align 4
  %116 = icmp slt i32 %114, 0
  br i1 %116, label %292, label %117

117:                                              ; preds = %113, %111
  %118 = call ptr @skb_put(ptr noundef nonnull %86, i32 noundef %83) #19
  %119 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 6
  store i32 %82, ptr %119, align 4
  %120 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 5
  store i32 %2, ptr %120, align 8
  %121 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %122 = call i32 @skb_copy_datagram_from_iter(ptr noundef nonnull %86, i32 noundef 0, ptr noundef %121, i32 noundef %2) #19
  store i32 %122, ptr %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %292

124:                                              ; preds = %117
  %125 = load i32, ptr %18, align 4
  %126 = and i32 %125, 64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 31
  %130 = load i32, ptr %129, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i32 [ %130, %128 ], [ 0, %124 ]
  %133 = icmp eq ptr %56, null
  %134 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 45
  %135 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 5
  %136 = getelementptr inbounds %struct.unix_sock, ptr %7, i32 0, i32 8
  br label %137

137:                                              ; preds = %217, %131
  %138 = phi ptr [ %154, %217 ], [ %57, %131 ]
  %139 = phi i32 [ %210, %217 ], [ %132, %131 ]
  %140 = icmp eq i32 %139, 0
  br label %141

141:                                              ; preds = %188, %137
  %142 = phi ptr [ null, %188 ], [ %138, %137 ]
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  store i32 -104, ptr %4, align 4
  br i1 %133, label %292, label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %23, align 4
  %147 = load i16, ptr %134, align 2
  %148 = zext i16 %147 to i32
  %149 = call fastcc ptr @unix_find_other(ptr noundef nonnull %56, i32 noundef %146, i32 noundef %148)
  %150 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = ptrtoint ptr %149 to i32
  store i32 %152, ptr %4, align 4
  br label %292

153:                                              ; preds = %145, %141
  %154 = phi ptr [ %142, %141 ], [ %149, %145 ]
  %155 = call i32 @sk_filter_trim_cap(ptr noundef %154, ptr noundef nonnull %86, i32 noundef 1) #19
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 %2, ptr %4, align 4
  br label %292

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.unix_sock, ptr %154, i32 0, i32 8
  call void @_raw_spin_lock(ptr noundef %159) #19
  %160 = getelementptr inbounds %struct.unix_sock, ptr %154, i32 0, i32 5
  %161 = getelementptr inbounds %struct.sock_common, ptr %154, i32 0, i32 13
  %162 = getelementptr inbounds %struct.sock, ptr %154, i32 0, i32 66
  %163 = icmp eq ptr %154, %7
  %164 = getelementptr inbounds %struct.sock, ptr %154, i32 0, i32 8, i32 1
  %165 = getelementptr inbounds %struct.sock, ptr %154, i32 0, i32 54
  store i32 -1, ptr %4, align 4
  %166 = load ptr, ptr %160, align 4
  %167 = icmp ne ptr %166, null
  %168 = icmp ne ptr %166, %7
  %169 = and i1 %167, %168
  br i1 %169, label %289, label %170

170:                                              ; preds = %158
  %171 = load volatile i32, ptr %161, align 4
  %172 = and i32 %171, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %193, label %177, !prof !12

174:                                              ; preds = %235
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %175 = load i16, ptr %159, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call fastcc void @sock_put(ptr noundef %154)
  br i1 %173, label %181, label %180

177:                                              ; preds = %170
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %178 = load i16, ptr %159, align 4
  %179 = add i16 %178, 1
  store i16 %179, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call fastcc void @sock_put(ptr noundef %154)
  br label %180

180:                                              ; preds = %177, %174
  call void @_raw_spin_lock(ptr noundef %136) #19
  br label %181

181:                                              ; preds = %180, %174
  store i32 0, ptr %4, align 4
  %182 = load ptr, ptr %135, align 4
  %183 = icmp eq ptr %182, %154
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  store ptr null, ptr %135, align 4
  call fastcc void @unix_dgram_peer_wake_disconnect_wakeup(ptr noundef %7, ptr noundef %154)
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %185 = load i16, ptr %136, align 4
  %186 = add i16 %185, 1
  store i16 %186, ptr %136, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %187 = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  store volatile i8 7, ptr %187, align 2
  call fastcc void @unix_dgram_disconnected(ptr noundef %7, ptr noundef %154)
  call fastcc void @sock_put(ptr noundef %154)
  store i32 -111, ptr %4, align 4
  br label %292

188:                                              ; preds = %181
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %189 = load i16, ptr %136, align 4
  %190 = add i16 %189, 1
  store i16 %190, ptr %136, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %191 = load i32, ptr %4, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %141, label %292

193:                                              ; preds = %170
  store i32 -32, ptr %4, align 4
  %194 = load i8, ptr %162, align 2
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %289

197:                                              ; preds = %193
  %198 = load i16, ptr %134, align 2
  %199 = icmp eq i16 %198, 5
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  store i32 0, ptr %4, align 4
  br label %201

201:                                              ; preds = %200, %197
  br i1 %163, label %262, label %202

202:                                              ; preds = %201
  %203 = icmp eq ptr %166, %7
  br i1 %203, label %262, label %204

204:                                              ; preds = %202
  %205 = load volatile i32, ptr %164, align 4
  %206 = load volatile i32, ptr %165, align 8
  %207 = icmp ugt i32 %205, %206
  br i1 %207, label %208, label %262, !prof !11

208:                                              ; preds = %204
  br i1 %140, label %221, label %209

209:                                              ; preds = %208
  %210 = call fastcc i32 @unix_wait_for_peer(ptr noundef %154, i32 noundef %139)
  %211 = icmp eq i32 %210, 2147483647
  %212 = select i1 %211, i32 -512, i32 -4
  store i32 %212, ptr %4, align 4
  %213 = tail call ptr @llvm.thread.pointer() #19
  %214 = load volatile i32, ptr %213, align 4
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %292, !prof !12

217:                                              ; preds = %209
  %218 = load volatile i32, ptr %213, align 4
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %137, label %292

221:                                              ; preds = %208
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %222 = load i16, ptr %159, align 4
  %223 = add i16 %222, 1
  store i16 %223, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  call fastcc void @unix_state_double_lock(ptr noundef %7, ptr noundef %154)
  %224 = load ptr, ptr %135, align 4
  %225 = icmp eq ptr %224, %154
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %7, ptr noundef %154)
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %256, %253, %226, %221
  store i32 -11, ptr %4, align 4
  br label %286

230:                                              ; preds = %226
  store i32 -1, ptr %4, align 4
  %231 = load ptr, ptr %160, align 4
  %232 = icmp ne ptr %231, null
  %233 = icmp ne ptr %231, %7
  %234 = and i1 %232, %233
  br i1 %234, label %286, label %235

235:                                              ; preds = %230
  %236 = load volatile i32, ptr %161, align 4
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %174, !prof !12

239:                                              ; preds = %235
  store i32 -32, ptr %4, align 4
  %240 = load i8, ptr %162, align 2
  %241 = and i8 %240, 1
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %286

243:                                              ; preds = %239
  %244 = load i16, ptr %134, align 2
  %245 = icmp eq i16 %244, 5
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  store i32 0, ptr %4, align 4
  br label %247

247:                                              ; preds = %246, %243
  %248 = icmp eq ptr %231, %7
  br i1 %248, label %259, label %249, !prof !53

249:                                              ; preds = %247
  %250 = load volatile i32, ptr %164, align 4
  %251 = load volatile i32, ptr %165, align 8
  %252 = icmp ugt i32 %250, %251
  br i1 %252, label %253, label %259, !prof !11

253:                                              ; preds = %249
  %254 = load ptr, ptr %135, align 4
  %255 = icmp eq ptr %254, %154
  br i1 %255, label %256, label %229

256:                                              ; preds = %253
  %257 = call fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %7, ptr noundef %154)
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %229

259:                                              ; preds = %256, %249, %247
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %260 = load i16, ptr %136, align 4
  %261 = add i16 %260, 1
  store i16 %261, ptr %136, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %262

262:                                              ; preds = %259, %204, %202, %201
  %263 = phi ptr [ %154, %259 ], [ %7, %201 ], [ %154, %204 ], [ %154, %202 ]
  %264 = load volatile i32, ptr %161, align 4
  %265 = and i32 %264, 2048
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %262
  %268 = call i64 @ktime_get_with_offset(i32 noundef 0) #19
  %269 = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 2
  store i64 %268, ptr %269, align 8
  br label %270

270:                                              ; preds = %267, %262
  call fastcc void @maybe_add_creds(ptr noundef nonnull %86, ptr noundef %0, ptr noundef %263)
  %271 = load ptr, ptr %107, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %280, label %273

273:                                              ; preds = %270
  %274 = load i16, ptr %271, align 4
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %280, label %276, !prof !12

276:                                              ; preds = %273
  %277 = sext i16 %274 to i32
  %278 = getelementptr inbounds %struct.unix_sock, ptr %263, i32 0, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %278) #19, !srcloc !9
  %279 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %278, ptr %278, i32 %277, ptr elementtype(i32) %278) #19, !srcloc !25
  br label %280

280:                                              ; preds = %276, %273, %270
  %281 = getelementptr inbounds %struct.sock, ptr %263, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %281, ptr noundef nonnull %86) #19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %282 = load i16, ptr %159, align 4
  %283 = add i16 %282, 1
  store i16 %283, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %284 = getelementptr inbounds %struct.sock, ptr %263, i32 0, i32 76
  %285 = load ptr, ptr %284, align 8
  call void %285(ptr noundef %263) #19
  call fastcc void @sock_put(ptr noundef %263)
  call fastcc void @scm_destroy(ptr noundef nonnull %5)
  br label %317

286:                                              ; preds = %239, %230, %229
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %287 = load i16, ptr %136, align 4
  %288 = add i16 %287, 1
  store i16 %288, ptr %136, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %289

289:                                              ; preds = %286, %193, %158
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %290 = load i16, ptr %159, align 4
  %291 = add i16 %290, 1
  store i16 %291, ptr %159, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %292

292:                                              ; preds = %289, %217, %209, %188, %184, %157, %151, %144, %117, %113
  %293 = phi ptr [ %57, %113 ], [ %57, %117 ], [ %154, %157 ], [ %154, %289 ], [ null, %151 ], [ null, %184 ], [ null, %144 ], [ null, %188 ], [ %154, %217 ], [ %154, %209 ]
  call void @kfree_skb_reason(ptr noundef nonnull %86, i32 noundef 0) #19
  br label %294

294:                                              ; preds = %292, %81, %69, %66
  %295 = phi ptr [ %57, %69 ], [ %57, %81 ], [ %293, %292 ], [ %57, %66 ]
  %296 = icmp eq ptr %295, null
  br i1 %296, label %309, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.sock_common, ptr %295, i32 0, i32 19
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %298) #19, !srcloc !9
  %299 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %298, ptr %298, i32 1, ptr elementtype(i32) %298) #19, !srcloc !31
  %300 = extractvalue { i32, i32, i32 } %299, 0
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %305, label %302

302:                                              ; preds = %297
  %303 = icmp sgt i32 %300, 0
  br i1 %303, label %309, label %304, !prof !12

304:                                              ; preds = %302
  call void @refcount_warn_saturate(ptr noundef %298, i32 noundef 3) #19
  br label %309

305:                                              ; preds = %297
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  call void @sk_free(ptr noundef nonnull %295) #19
  br label %309

306:                                              ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %307 = load i16, ptr %35, align 4
  %308 = add i16 %307, 1
  store i16 %308, ptr %35, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %309

309:                                              ; preds = %306, %305, %304, %302, %294, %32, %17
  %310 = load ptr, ptr %5, align 4
  call void @put_pid(ptr noundef %310) #19
  store ptr null, ptr %5, align 4
  %311 = getelementptr inbounds %struct.scm_cookie, ptr %5, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  call void @__scm_destroy(ptr noundef nonnull %5) #19
  br label %315

315:                                              ; preds = %314, %309
  %316 = load i32, ptr %4, align 4
  br label %317

317:                                              ; preds = %315, %280, %14
  %318 = phi i32 [ %316, %315 ], [ %2, %280 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret i32 %318
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_dgram_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = tail call i32 @__unix_dgram_recvmsg(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unix_state_double_lock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, %1
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %11, !prof !52

6:                                                ; preds = %2
  %7 = icmp ult ptr %0, %1
  %8 = select i1 %7, ptr %0, ptr %1
  %9 = select i1 %7, ptr %1, ptr %0
  %10 = getelementptr inbounds %struct.unix_sock, ptr %8, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %10) #19
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %0, %2 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.unix_sock, ptr %12, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %13) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unix_dgram_peer_wake_disconnect_wakeup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3
  %9 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  store ptr null, ptr %4, align 4
  br label %13

13:                                               ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %14 = load i16, ptr %3, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %17 = load volatile ptr, ptr %16, align 4
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unix_dgram_disconnected(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  tail call void @skb_queue_purge(ptr noundef %3) #19
  %7 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %7, i32 noundef 1, i32 noundef 0, ptr noundef null) #19
  %8 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  store i32 104, ptr %17, align 4
  tail call void @sk_error_report(ptr noundef %1) #19
  br label %18

18:                                               ; preds = %16, %12, %6, %2
  %19 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  store volatile i8 7, ptr %19, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @unix_dgram_peer_wake_me(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %3) #19
  %4 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  %8 = getelementptr inbounds %struct.unix_sock, ptr %1, i32 0, i32 11, i32 0, i32 1
  br label %9

9:                                                ; preds = %13, %7
  %10 = phi ptr [ %8, %7 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %11, %13 ], [ %8, %9 ]
  %20 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3
  %21 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store ptr %19, ptr %20, align 4
  %22 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3, i32 1
  store ptr %10, ptr %22, align 4
  store volatile ptr %20, ptr %10, align 4
  br label %23

23:                                               ; preds = %18, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %24 = load i16, ptr %3, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  %26 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %29 = load i32, ptr %28, align 8
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = xor i1 %6, true
  %37 = select i1 %35, i1 true, i1 %36
  %38 = xor i32 %34, 1
  br i1 %37, label %52, label %40

39:                                               ; preds = %23
  br i1 %6, label %40, label %52

40:                                               ; preds = %39, %31
  tail call void @_raw_spin_lock(ptr noundef %3) #19
  %41 = load ptr, ptr %4, align 4
  %42 = icmp eq ptr %41, %1
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3
  %45 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 12, i32 3, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  store ptr null, ptr %4, align 4
  br label %49

49:                                               ; preds = %43, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !13
  %50 = load i16, ptr %3, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !16
  br label %52

52:                                               ; preds = %49, %39, %31
  %53 = phi i32 [ %38, %31 ], [ 0, %49 ], [ 0, %39 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_seqpacket_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !12

9:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #19, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #19, !srcloc !22
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !23
  %12 = sub i32 0, %11
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %16 = load volatile i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call i32 @unix_dgram_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %25

25:                                               ; preds = %23, %14, %9
  %26 = phi i32 [ %24, %23 ], [ %12, %9 ], [ -107, %14 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_seqpacket_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 @__unix_dgram_recvmsg(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef %3) #19
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -107, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_max_files() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_write_space(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 10
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %7 = load volatile i32, ptr %6, align 4
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %29, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !19
  %17 = getelementptr inbounds %struct.wait_queue_head, ptr %14, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @__wake_up_sync_key(ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull inttoptr (i32 772 to ptr)) #19
  br label %21

21:                                               ; preds = %20, %16, %12
  %22 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !46
  %27 = load volatile ptr, ptr %13, align 4
  %28 = tail call i32 @sock_wake_async(ptr noundef %27, i32 noundef 2, i32 noundef 2) #19
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  br label %29

29:                                               ; preds = %26, %21, %5, %1
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @unix_sock_destructor(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %2) #19
  %3 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #19
  store ptr null, ptr %3, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !12

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 557, i32 noundef 9, ptr noundef null) #19
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !12

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 558, i32 noundef 9, ptr noundef null) #19
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 71
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !12

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 559, i32 noundef 9, ptr noundef null) #19
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %0) #20
  br label %58

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.unix_sock, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !30
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %31) #19, !srcloc !9
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #19, !srcloc !31
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %41, label %39, !prof !12

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %31, i32 noundef 3) #19
  br label %41

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !32
  tail call void @kfree(ptr noundef nonnull %31) #19
  br label %41

41:                                               ; preds = %40, %39, %37, %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @unix_nr_socks) #19, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @unix_nr_socks, ptr nonnull @unix_nr_socks, i32 1, ptr nonnull elementtype(i32) @unix_nr_socks) #19, !srcloc !18
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !26
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %47 = getelementptr inbounds %struct.proto, ptr %44, i32 0, i32 25
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr %struct.prot_inuse, ptr %46, i32 0, i32 1, i32 %48
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #16, !srcloc !27
  %54 = add i32 %53, %50
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #19, !srcloc !28
  br label %58

58:                                               ; preds = %41, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @unix_dgram_peer_wake_relay(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  store ptr null, ptr %5, align 4
  %11 = getelementptr i8, ptr %0, i32 -476
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call void @__wake_up(ptr noundef nonnull %12, i32 noundef 1, i32 noundef 1, ptr noundef %3) #19
  br label %15

15:                                               ; preds = %14, %4
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind allocsize(2) }

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
!9 = !{i64 623731, i64 2148113702, i64 2148113728, i64 2148113775, i64 2148113797, i64 2148113825, i64 2148113845}
!10 = !{i64 2148126575, i64 2148126607, i64 2148126636, i64 2148126670, i64 2148126701, i64 2148126724}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149008256}
!14 = !{i64 2149004080}
!15 = !{i64 2149004155, i64 2149004182, i64 2149004229, i64 2149004251, i64 2149004279, i64 2149004299}
!16 = !{i64 2149031259}
!17 = !{!"auto-init"}
!18 = !{i64 2148127474, i64 2148127500, i64 2148127529, i64 2148127563, i64 2148127594, i64 2148127617}
!19 = !{i64 2149217276}
!20 = !{i64 2156515703}
!21 = !{i64 2156330522}
!22 = !{i64 632381, i64 632398, i64 632422, i64 632448, i64 632466}
!23 = !{i64 2156330839}
!24 = !{i64 2156413300}
!25 = !{i64 2148125117, i64 2148125143, i64 2148125172, i64 2148125206, i64 2148125237, i64 2148125260}
!26 = !{i64 529409, i64 529470}
!27 = !{i64 548109}
!28 = !{i64 532426}
!29 = !{i64 2151507329}
!30 = !{i64 2148226797}
!31 = !{i64 2148128932, i64 2148128964, i64 2148128993, i64 2148129027, i64 2148129058, i64 2148129081}
!32 = !{i64 2149076244}
!33 = !{i64 5925682}
!34 = !{i64 2156463861}
!35 = !{i64 2156466169}
!36 = !{i64 2156278947}
!37 = !{i64 2156474671}
!38 = !{i64 2156324298}
!39 = !{i64 3532266}
!40 = !{i64 3532463}
!41 = !{i64 2151017742}
!42 = !{i64 2156547163, i64 2156547443, i64 2156547777, i64 2156548111}
!43 = !{i64 2156555370, i64 2156555650, i64 2156555984, i64 2156556318}
!44 = !{i64 2156541295}
!45 = !{i64 2156564134, i64 2156564414, i64 2156564748, i64 2156565082}
!46 = !{i64 2149126611}
!47 = !{i64 2149126828}
!48 = !{i64 2156434270}
!49 = !{i64 2148225796}
!50 = !{i64 2148128158, i64 2148128190, i64 2148128219, i64 2148128253, i64 2148128284, i64 2148128307}
!51 = !{i64 2148225999}
!52 = !{!"branch_weights", i32 2000, i32 2002}
!53 = !{!"branch_weights", i32 1073205, i32 2146410443}
