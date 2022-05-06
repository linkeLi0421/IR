; ModuleID = '/llk/IR/net/ipv6/ip6_flowlabel.c_pt.bc'
source_filename = "../net/ipv6/ip6_flowlabel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv6_flowlabel_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv6_flowlabel_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_ipv6_flowlabel_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fl6_sock_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__fl6_sock_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___fl6_sock_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fl6_merge_options:\09\09\09\09\09"
module asm "\09.asciz \09\22fl6_merge_options\22\09\09\09\09\09"
module asm "__kstrtabns_fl6_merge_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_false_deferred = type { %struct.static_key_false }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.67, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon.15, %union.anon.17, %union.anon.18, i16, i8, i8, i32, %union.anon.20, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.46, [0 x i32], %union.anon.47, i16, i16, %union.anon.48, %struct.refcount_struct, [0 x i32], %union.anon.49 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { i32 }
%union.anon.20 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.46 = type { i32 }
%union.anon.47 = type { %struct.hlist_node }
%union.anon.48 = type { i32 }
%union.anon.49 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.54, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.55, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.56, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.54 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.55 = type { ptr }
%union.anon.56 = type { ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.108 }
%union.anon.108 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, i32, i32, i32, i32, i32, %union.anon.136, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.ipv6_fl_socklist = type { ptr, ptr, %struct.callback_head }
%struct.ip6_flowlabel = type { ptr, i32, %struct.atomic_t, %struct.in6_addr, ptr, i32, %struct.callback_head, i8, %union.anon.0, i32, i32, ptr }
%union.anon.0 = type { ptr }
%struct.ipv6_txoptions = type { %struct.refcount_struct, i32, i16, i16, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.in6_flowlabel_req = type { %struct.in6_addr, i32, i8, i8, i16, i16, i16, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.24, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%union.anon.24 = type { ptr }
%struct.ipcm6_cookie = type { %struct.sockcm_cookie, i16, i16, i16, i8, ptr }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.128, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.128 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.69 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.69 = type { %struct.callback_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.132, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.133, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.134, ptr, %struct.address_space, %struct.list_head, %union.anon.135, i32, i32, ptr, ptr }
%union.anon.132 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.133 = type { %struct.callback_head }
%union.anon.134 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.135 = type { ptr }
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
%struct.ip6fl_iter_state = type { %struct.seq_net_private, ptr, i32 }
%struct.seq_net_private = type {}

@ipv6_flowlabel_exclusive = dso_local global %struct.static_key_false_deferred zeroinitializer, align 4
@__kstrtab_ipv6_flowlabel_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv6_flowlabel_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv6_flowlabel_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv6_flowlabel_exclusive to i32), ptr @__kstrtab_ipv6_flowlabel_exclusive, ptr @__kstrtabns_ipv6_flowlabel_exclusive }, section "___ksymtab+ipv6_flowlabel_exclusive", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___fl6_sock_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___fl6_sock_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___fl6_sock_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fl6_sock_lookup to i32), ptr @__kstrtab___fl6_sock_lookup, ptr @__kstrtabns___fl6_sock_lookup }, section "___ksymtab_gpl+__fl6_sock_lookup", align 4
@ip6_sk_fl_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_fl6_merge_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_fl6_merge_options = external dso_local constant [0 x i8], align 1
@__ksymtab_fl6_merge_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fl6_merge_options to i32), ptr @__kstrtab_fl6_merge_options, ptr @__kstrtabns_fl6_merge_options }, section "___ksymtab_gpl+fl6_merge_options", align 4
@ip6_fl_lock = internal global %struct.spinlock zeroinitializer, align 4
@ip6_flowlabel_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip6_flowlabel_proc_init, ptr null, ptr @ip6_flowlabel_net_exit, ptr null, ptr null, i32 0 }, align 4
@ip6_fl_gc_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @ip6_fl_gc, i32 0 }, align 4
@init_net = external dso_local global %struct.net, align 64
@fl_ht = internal global [256 x ptr] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"\016Can not set IPV6_FL_F_REFLECT if flowlabel_consistency sysctl is enable\0A\00", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@fl_size = internal global %struct.atomic_t zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"ip6_flowlabel\00", align 1
@ip6fl_seq_ops = internal constant %struct.seq_operations { ptr @ip6fl_seq_start, ptr @ip6fl_seq_stop, ptr @ip6fl_seq_next, ptr @ip6fl_seq_show }, align 4
@.str.6 = private unnamed_addr constant [76 x i8] c"Label S Owner  Users  Linger Expires  Dst                              Opt\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"%05X %-1d %-6d %-6d %-6ld %-8ld %pi6 %-4d\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"include/linux/jump_label_ratelimit.h\00", align 1
@__func__.static_key_deferred_flush = private unnamed_addr constant [26 x i8] c"static_key_deferred_flush\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___fl6_sock_lookup, ptr @__ksymtab_fl6_merge_options, ptr @__ksymtab_ipv6_flowlabel_exclusive], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__fl6_sock_lookup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %4 = load volatile i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 1, %5
  %7 = and i32 %6, -4161
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  %14 = and i32 %1, -61696
  %15 = tail call ptr @llvm.thread.pointer() #15
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %17, 512
  store volatile i32 %18, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %19 = getelementptr inbounds %struct.ipv6_pinfo, ptr %13, i32 0, i32 16
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %37, %12
  %23 = phi ptr [ %38, %37 ], [ %20, %12 ]
  %24 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ip6_flowlabel, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %14
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ip6_flowlabel, ptr %25, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #15, !srcloc !10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 1, ptr elementtype(i32) %30) #15, !srcloc !11
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr inbounds %struct.ip6_flowlabel, ptr %25, i32 0, i32 9
  store i32 %35, ptr %36, align 4
  br label %40

37:                                               ; preds = %29, %22
  %38 = load volatile ptr, ptr %23, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22

40:                                               ; preds = %37, %34, %12
  %41 = phi ptr [ %25, %34 ], [ null, %12 ], [ null, %37 ]
  tail call fastcc void @local_bh_enable() #15
  ret ptr %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fl6_free_socklist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 16
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %25, %19 ], [ %17, %16 ]
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %13, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %22 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @fl_release(ptr noundef %23)
  %24 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %20, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %24, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %25 = load ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  br label %28

28:                                               ; preds = %27, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fl_release(ptr noundef %0) unnamed_addr #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 9
  store i32 %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !14
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32, ptr %3, align 4
  %10 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %14, %12
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 %12, ptr %13, align 4
  br label %18

18:                                               ; preds = %17, %8
  %19 = phi i32 [ %12, %17 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr null, ptr %20, align 4
  tail call void @kfree(ptr noundef nonnull %21) #15
  br label %28

28:                                               ; preds = %27, %23, %18
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @ip6_fl_gc_timer, i32 0, i32 0, i32 1), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr getelementptr inbounds (%struct.timer_list, ptr @ip6_fl_gc_timer, i32 0, i32 1), align 4
  %33 = sub i32 %19, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %28
  %36 = tail call i32 @mod_timer(ptr noundef nonnull @ip6_fl_gc_timer, i32 noundef %19) #15
  br label %37

37:                                               ; preds = %35, %31, %1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @fl6_merge_options(ptr noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ipv6_txoptions, ptr %2, i32 0, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 4
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 5
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ipv6_txoptions, ptr %5, i32 0, i32 3
  %24 = load i16, ptr %23, align 2
  %25 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  br label %32

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.ipv6_txoptions, ptr %2, i32 0, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(14) %31, i8 0, i64 14, i1 false)
  br label %32

32:                                               ; preds = %30, %13
  %33 = getelementptr inbounds %struct.ipv6_txoptions, ptr %2, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 7
  store ptr %34, ptr %35, align 4
  %36 = load i16, ptr %8, align 4
  %37 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 2
  store i16 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ipv6_txoptions, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ipv6_txoptions, ptr %0, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %32, %26, %7, %3
  %42 = phi ptr [ %0, %32 ], [ %5, %7 ], [ %5, %3 ], [ %2, %26 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_flowlabel_opt_get(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw i32 1, %6
  %8 = and i32 %7, -4161
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %12, %10 ], [ null, %3 ]
  %15 = and i32 %2, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -61696
  %21 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  br label %77

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 9
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %77

31:                                               ; preds = %22
  %32 = tail call ptr @llvm.thread.pointer() #15
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = add i32 %34, 512
  store volatile i32 %35, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %36 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 16
  %37 = getelementptr inbounds %struct.ipv6_pinfo, ptr %14, i32 0, i32 3
  br label %38

38:                                               ; preds = %42, %31
  %39 = phi ptr [ %36, %31 ], [ %40, %42 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %40, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ip6_flowlabel, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %37, align 4
  %48 = and i32 %47, -61696
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %38

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %40, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ip6_flowlabel, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr inbounds %struct.ip6_flowlabel, ptr %56, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %57, i32 16, i1 false)
  %58 = load ptr, ptr %51, align 4
  %59 = getelementptr inbounds %struct.ip6_flowlabel, ptr %58, i32 0, i32 7
  %60 = load i8, ptr %59, align 4
  %61 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 3
  store i8 %60, ptr %61, align 1
  %62 = load ptr, ptr %51, align 4
  %63 = getelementptr inbounds %struct.ip6_flowlabel, ptr %62, i32 0, i32 10
  %64 = load i32, ptr %63, align 4
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 %64, %65
  %67 = udiv i32 %66, 100
  %68 = trunc i32 %67 to i16
  %69 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 5
  store i16 %68, ptr %69, align 4
  %70 = load ptr, ptr %51, align 4
  %71 = getelementptr inbounds %struct.ip6_flowlabel, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = udiv i32 %72, 100
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %1, i32 0, i32 6
  store i16 %74, ptr %75, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  tail call fastcc void @local_bh_enable() #15
  br label %77

76:                                               ; preds = %38
  tail call fastcc void @local_bh_enable() #15
  br label %77

77:                                               ; preds = %76, %50, %27, %17
  %78 = phi i32 [ 0, %17 ], [ 0, %27 ], [ 0, %50 ], [ -2, %76 ]
  ret i32 %78
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipv6_flowlabel_opt(ptr noundef %0, [2 x i32] %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca %struct.flowi6, align 8
  %6 = alloca %struct.ipcm6_cookie, align 8
  %7 = alloca %struct.in6_flowlabel_req, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !16
  %8 = icmp ult i32 %2, 32
  br i1 %8, label %432, label %9

9:                                                ; preds = %3
  %10 = extractvalue [2 x i32] %1, 0
  %11 = inttoptr i32 %10 to ptr
  %12 = extractvalue [2 x i32] %1, 1
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 32, i32 -1090519040) #16, !srcloc !17
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27, !prof !18

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #15
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #17, !srcloc !19
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %11, i32 noundef 32) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #15, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !18

27:                                               ; preds = %19, %15
  %28 = phi i32 [ %25, %19 ], [ 32, %15 ]
  %29 = sub i32 32, %28
  %30 = getelementptr i8, ptr %7, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %28, i1 false) #15
  br label %432

31:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef align 1 dereferenceable(32) %11, i32 32, i1 false) #15
  br label %32

32:                                               ; preds = %31, %19
  %33 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 2
  %34 = load i8, ptr %33, align 4
  switch i8 %34, label %432 [
    i8 1, label %35
    i8 2, label %90
    i8 0, label %162
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %37 = load volatile i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, -4161
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi ptr [ %44, %42 ], [ null, %35 ]
  %47 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 4
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, 6
  br i1 %54, label %55, label %432

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ipv6_pinfo, ptr %46, i32 0, i32 9
  %57 = load i16, ptr %56, align 2
  %58 = and i16 %57, 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %432, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ipv6_pinfo, ptr %46, i32 0, i32 3
  store i32 0, ptr %61, align 4
  %62 = and i16 %57, -5
  store i16 %62, ptr %56, align 2
  br label %432

63:                                               ; preds = %45
  call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %64 = getelementptr inbounds %struct.ipv6_pinfo, ptr %46, i32 0, i32 16
  %65 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %71, %63
  %68 = phi ptr [ %64, %63 ], [ %69, %71 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %69, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ip6_flowlabel, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, %66
  br i1 %76, label %78, label %67

77:                                               ; preds = %67
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  br label %432

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %69, i32 0, i32 1
  %80 = getelementptr inbounds %struct.ipv6_pinfo, ptr %46, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -61696
  %83 = icmp eq i32 %66, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = and i32 %81, 61695
  store i32 %85, ptr %80, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = load ptr, ptr %69, align 4
  store ptr %87, ptr %68, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %88 = load ptr, ptr %79, align 4
  call fastcc void @fl_release(ptr noundef %88) #15
  %89 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %69, i32 0, i32 2
  call void @kvfree_call_rcu(ptr noundef %89, ptr noundef nonnull inttoptr (i32 8 to ptr)) #15
  br label %432

90:                                               ; preds = %32
  %91 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %92 = load volatile i8, ptr %91, align 2
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, -4161
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 8
  br label %100

100:                                              ; preds = %97, %90
  %101 = phi ptr [ %99, %97 ], [ null, %90 ]
  %102 = tail call ptr @llvm.thread.pointer() #15
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %104 = load volatile i32, ptr %103, align 4
  %105 = add i32 %104, 512
  store volatile i32 %105, ptr %103, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %106 = getelementptr inbounds %struct.ipv6_pinfo, ptr %101, i32 0, i32 16
  %107 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  br label %109

109:                                              ; preds = %113, %100
  %110 = phi ptr [ %106, %100 ], [ %111, %113 ]
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %111, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ip6_flowlabel, ptr %115, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %108
  br i1 %118, label %119, label %109

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 6
  %121 = load i16, ptr %120, align 2
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 5
  %124 = load i16, ptr %123, align 4
  %125 = zext i16 %124 to i32
  %126 = call fastcc i32 @fl6_renew(ptr noundef %115, i32 noundef %122, i32 noundef %125) #15
  call fastcc void @local_bh_enable() #15
  br label %432

127:                                              ; preds = %109
  call fastcc void @local_bh_enable() #15
  %128 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 3
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %432

131:                                              ; preds = %127
  %132 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 11), align 4
  %133 = call zeroext i1 @ns_capable(ptr noundef %132, i32 noundef 12) #15
  br i1 %133, label %134, label %432

134:                                              ; preds = %131
  %135 = load i32, ptr %107, align 4
  %136 = load volatile i32, ptr %103, align 4
  %137 = add i32 %136, 512
  store volatile i32 %137, ptr %103, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %138 = lshr i32 %135, 24
  %139 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %138
  br label %140

140:                                              ; preds = %144, %134
  %141 = phi ptr [ %139, %134 ], [ %142, %144 ]
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ip6_flowlabel, ptr %142, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, %135
  br i1 %147, label %148, label %140

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ip6_flowlabel, ptr %142, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %149) #15, !srcloc !10
  %150 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %149, ptr %149, i32 0, i32 1, ptr elementtype(i32) %149) #15, !srcloc !11
  %151 = extractvalue { i32, i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %140
  call fastcc void @local_bh_enable() #15
  br label %432

154:                                              ; preds = %148
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  call fastcc void @local_bh_enable() #15
  %155 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 6
  %156 = load i16, ptr %155, align 2
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 5
  %159 = load i16, ptr %158, align 4
  %160 = zext i16 %159 to i32
  %161 = call fastcc i32 @fl6_renew(ptr noundef nonnull %142, i32 noundef %157, i32 noundef %160) #15
  call fastcc void @fl_release(ptr noundef nonnull %142) #15
  br label %432

162:                                              ; preds = %32
  %163 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %164 = load volatile i8, ptr %163, align 2
  %165 = zext i8 %164 to i32
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, -4161
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi ptr [ %171, %169 ], [ null, %162 ]
  %174 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 4
  %175 = load i16, ptr %174, align 2
  %176 = and i16 %175, 4
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %194, label %178

178:                                              ; preds = %172
  %179 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 16), align 2
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = call i32 @net_ratelimit() #15
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %432, label %184

184:                                              ; preds = %181
  %185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #18
  br label %432

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %188 = load i16, ptr %187, align 4
  %189 = icmp eq i16 %188, 6
  br i1 %189, label %190, label %432

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.ipv6_pinfo, ptr %173, i32 0, i32 9
  %192 = load i16, ptr %191, align 2
  %193 = or i16 %192, 4
  store i16 %193, ptr %191, align 2
  br label %432

194:                                              ; preds = %172
  %195 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 61695
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %432

199:                                              ; preds = %194
  %200 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 1, i32 27), align 1
  %201 = icmp eq i8 %200, 0
  %202 = and i32 %196, 2048
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %201, i1 true, i1 %203
  br i1 %204, label %205, label %432

205:                                              ; preds = %199
  %206 = add i32 %2, -32
  %207 = icmp sgt i32 %206, 65536
  br i1 %207, label %432, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %210 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %209, i32 noundef 3520, i32 noundef 64) #19
  %211 = icmp eq ptr %210, null
  br i1 %211, label %432, label %212

212:                                              ; preds = %208
  %213 = icmp sgt i32 %206, 0
  br i1 %213, label %214, label %258

214:                                              ; preds = %212
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #15, !annotation !16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false) #15, !annotation !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i32 32, i1 false) #15, !annotation !16
  %215 = add nuw nsw i32 %2, 4
  %216 = call noalias align 64 ptr @__kmalloc(i32 noundef %215, i32 noundef 3264) #20
  %217 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 4
  store ptr %216, ptr %217, align 4
  %218 = icmp eq ptr %216, null
  br i1 %218, label %255, label %219

219:                                              ; preds = %214
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 64 dereferenceable(36) %216, i8 0, i32 36, i1 false) #15
  %220 = getelementptr inbounds %struct.ipv6_txoptions, ptr %216, i32 0, i32 1
  store i32 %215, ptr %220, align 4
  %221 = getelementptr %struct.ipv6_txoptions, ptr %216, i32 1
  %222 = getelementptr i8, ptr %11, i32 32
  br i1 %14, label %223, label %239

223:                                              ; preds = %219
  %224 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %222, i32 %206, i32 -1090519040) #16, !srcloc !17
  %225 = extractvalue { i32, i32 } %224, 0
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %235, !prof !18

227:                                              ; preds = %223
  %228 = tail call ptr @llvm.thread.pointer() #15
  %229 = getelementptr inbounds %struct.thread_info, ptr %228, i32 0, i32 3
  %230 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %229) #17, !srcloc !19
  %231 = and i32 %230, -13
  %232 = or i32 %231, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #15, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %233 = call i32 @arm_copy_from_user(ptr noundef %221, ptr noundef %222, i32 noundef %206) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %230) #15, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235, !prof !18

235:                                              ; preds = %227, %223
  %236 = phi i32 [ %233, %227 ], [ %206, %223 ]
  %237 = sub i32 %206, %236
  %238 = getelementptr i8, ptr %221, i32 %237
  call void @llvm.memset.p0.i32(ptr align 1 %238, i8 0, i32 %236, i1 false) #15
  br label %255

239:                                              ; preds = %219
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %221, ptr align 1 %222, i32 %206, i1 false) #15
  br label %240

240:                                              ; preds = %239, %227
  %241 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 5
  store i32 %206, ptr %241, align 8
  %242 = getelementptr inbounds %struct.msghdr, ptr %4, i32 0, i32 3
  store ptr %221, ptr %242, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false) #15
  %243 = getelementptr inbounds %struct.ipcm6_cookie, ptr %6, i32 0, i32 5
  store ptr %216, ptr %243, align 8
  %244 = call i32 @ip6_datagram_send_ctl(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.ipv6_txoptions, ptr %216, i32 0, i32 2
  %248 = load i16, ptr %247, align 8
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.ipv6_txoptions, ptr %216, i32 0, i32 3
  %252 = load i16, ptr %251, align 2
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  call void @kfree(ptr noundef nonnull %216) #15
  store ptr null, ptr %217, align 4
  br label %257

255:                                              ; preds = %246, %240, %235, %214
  %256 = phi i32 [ -22, %246 ], [ %244, %240 ], [ -12, %214 ], [ -14, %235 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %309

257:                                              ; preds = %254, %250
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  br label %258

258:                                              ; preds = %257, %212
  %259 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 11
  store ptr @init_net, ptr %259, align 4
  %260 = load volatile i32, ptr @jiffies, align 64
  %261 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 10
  store i32 %260, ptr %261, align 8
  %262 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 6
  %263 = load i16, ptr %262, align 2
  %264 = zext i16 %263 to i32
  %265 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 5
  %266 = load i16, ptr %265, align 4
  %267 = zext i16 %266 to i32
  %268 = call fastcc i32 @fl6_renew(ptr noundef nonnull %210, i32 noundef %264, i32 noundef %267) #15
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %309

270:                                              ; preds = %258
  %271 = getelementptr inbounds %struct.in6_flowlabel_req, ptr %7, i32 0, i32 3
  %272 = load i8, ptr %271, align 1
  %273 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 7
  store i8 %272, ptr %273, align 4
  %274 = call i32 @__ipv6_addr_type(ptr noundef nonnull %7) #15
  %275 = and i32 %274, 65535
  %276 = and i32 %274, 4096
  %277 = icmp ne i32 %276, 0
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  br i1 %279, label %309, label %280

280:                                              ; preds = %270
  %281 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %281, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 16, i1 false) #15
  %282 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 2
  store volatile i32 1, ptr %282, align 8
  switch i8 %272, label %309 [
    i8 1, label %295
    i8 -1, label %295
    i8 2, label %283
    i8 3, label %288
  ]

283:                                              ; preds = %280
  %284 = tail call ptr @llvm.thread.pointer() #15
  %285 = call ptr @get_task_pid(ptr noundef %284, i32 noundef 0) #15
  %286 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 8
  store ptr %285, ptr %286, align 8
  %287 = load i8, ptr %273, align 4
  br label %295

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 8
  %290 = tail call ptr @llvm.thread.pointer() #15
  %291 = getelementptr inbounds %struct.task_struct, ptr %290, i32 0, i32 83
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr inbounds %struct.cred, ptr %292, i32 0, i32 5
  %294 = load i32, ptr %293, align 4
  store i32 %294, ptr %289, align 8
  br label %303

295:                                              ; preds = %283, %280, %280
  %296 = phi i8 [ %272, %280 ], [ %272, %280 ], [ %287, %283 ]
  %297 = add i8 %296, -1
  %298 = icmp ult i8 %297, 3
  br i1 %298, label %303, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 4
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %313, label %303

303:                                              ; preds = %299, %295, %288
  store volatile i8 1, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 36, i32 17), align 16
  %304 = load i8, ptr @static_key_initialized, align 1, !range !22
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %306, label %307, !prof !23

306:                                              ; preds = %303
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %307

307:                                              ; preds = %306, %303
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ipv6_flowlabel_exclusive) #15, !srcloc !10
  %308 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive, ptr nonnull @ipv6_flowlabel_exclusive, i32 1, ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive) #15, !srcloc !24
  br label %313

309:                                              ; preds = %280, %270, %258, %255
  %310 = phi i32 [ %256, %255 ], [ -22, %280 ], [ -22, %270 ], [ -1, %258 ]
  %311 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 4
  %312 = load ptr, ptr %311, align 4
  call void @kfree(ptr noundef %312) #15
  call void @kfree(ptr noundef nonnull %210) #15
  br label %432

313:                                              ; preds = %307, %299
  %314 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %315 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %314, i32 noundef 3264, i32 noundef 16) #19
  %316 = load i32, ptr %195, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %396, label %318

318:                                              ; preds = %313
  %319 = tail call ptr @llvm.thread.pointer() #15
  %320 = getelementptr inbounds %struct.thread_info, ptr %319, i32 0, i32 1
  %321 = load volatile i32, ptr %320, align 4
  %322 = add i32 %321, 512
  store volatile i32 %322, ptr %320, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %323 = getelementptr inbounds %struct.ipv6_pinfo, ptr %173, i32 0, i32 16
  %324 = load i32, ptr %195, align 4
  br label %325

325:                                              ; preds = %329, %318
  %326 = phi ptr [ %323, %318 ], [ %327, %329 ]
  %327 = load volatile ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %345, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %327, i32 0, i32 1
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.ip6_flowlabel, ptr %331, i32 0, i32 1
  %333 = load i32, ptr %332, align 4
  %334 = icmp eq i32 %333, %324
  br i1 %334, label %335, label %325

335:                                              ; preds = %329
  %336 = load i16, ptr %174, align 2
  %337 = and i16 %336, 2
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  call fastcc void @local_bh_enable() #15
  br label %415

340:                                              ; preds = %335
  %341 = getelementptr inbounds %struct.ip6_flowlabel, ptr %331, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %341) #15, !srcloc !10
  %342 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %341, ptr %341, i32 0, i32 1, ptr elementtype(i32) %341) #15, !srcloc !11
  %343 = extractvalue { i32, i32, i32 } %342, 0
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340, %325
  call fastcc void @local_bh_enable() #15
  br label %348

346:                                              ; preds = %340
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  call fastcc void @local_bh_enable() #15
  %347 = icmp eq ptr %331, null
  br i1 %347, label %348, label %352

348:                                              ; preds = %346, %345
  %349 = load i32, ptr %195, align 4
  %350 = call fastcc ptr @fl_lookup(i32 noundef %349) #15
  %351 = icmp eq ptr %350, null
  br i1 %351, label %396, label %352

352:                                              ; preds = %405, %348, %346
  %353 = phi ptr [ %350, %348 ], [ %407, %405 ], [ %331, %346 ]
  %354 = load i16, ptr %174, align 2
  %355 = and i16 %354, 2
  %356 = icmp eq i16 %355, 0
  br i1 %356, label %357, label %394

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.ip6_flowlabel, ptr %353, i32 0, i32 7
  %359 = load i8, ptr %358, align 4
  %360 = icmp eq i8 %359, 1
  br i1 %360, label %394, label %361

361:                                              ; preds = %357
  %362 = load i8, ptr %273, align 4
  %363 = icmp eq i8 %359, %362
  br i1 %363, label %364, label %394

364:                                              ; preds = %361
  switch i8 %359, label %377 [
    i8 2, label %365
    i8 3, label %371
  ]

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.ip6_flowlabel, ptr %353, i32 0, i32 8
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 8
  %369 = load ptr, ptr %368, align 8
  %370 = icmp eq ptr %367, %369
  br i1 %370, label %377, label %394

371:                                              ; preds = %364
  %372 = getelementptr inbounds %struct.ip6_flowlabel, ptr %353, i32 0, i32 8
  %373 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 8
  %374 = load i32, ptr %372, align 4
  %375 = load i32, ptr %373, align 8
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %394

377:                                              ; preds = %371, %365, %364
  %378 = icmp eq ptr %315, null
  br i1 %378, label %394, label %379

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 5
  %381 = load i32, ptr %380, align 8
  %382 = getelementptr inbounds %struct.ip6_flowlabel, ptr %353, i32 0, i32 5
  %383 = load i32, ptr %382, align 4
  %384 = icmp ugt i32 %381, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  store i32 %381, ptr %382, align 4
  br label %386

386:                                              ; preds = %385, %379
  %387 = load i32, ptr %261, align 8
  %388 = getelementptr inbounds %struct.ip6_flowlabel, ptr %353, i32 0, i32 10
  %389 = load i32, ptr %388, align 4
  %390 = sub i32 %387, %389
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %386
  store i32 %387, ptr %388, align 4
  br label %393

393:                                              ; preds = %392, %386
  call fastcc void @fl_link(ptr noundef %173, ptr noundef nonnull %315, ptr noundef nonnull %353) #15
  call fastcc void @fl_free(ptr noundef nonnull %210) #15
  br label %432

394:                                              ; preds = %377, %371, %365, %361, %357, %352
  %395 = phi i32 [ -1, %357 ], [ -12, %377 ], [ -1, %371 ], [ -1, %365 ], [ -1, %361 ], [ -17, %352 ]
  call fastcc void @fl_release(ptr noundef nonnull %353) #15
  br label %415

396:                                              ; preds = %348, %313
  %397 = load i16, ptr %174, align 2
  %398 = and i16 %397, 1
  %399 = icmp eq i16 %398, 0
  br i1 %399, label %415, label %400

400:                                              ; preds = %396
  %401 = icmp eq ptr %315, null
  br i1 %401, label %415, label %402

402:                                              ; preds = %400
  %403 = call fastcc i32 @mem_check(ptr noundef %0) #15
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %415

405:                                              ; preds = %402
  %406 = load i32, ptr %195, align 4
  %407 = call fastcc ptr @fl_intern(ptr noundef nonnull %210, i32 noundef %406) #15
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %352

409:                                              ; preds = %405
  %410 = load i32, ptr %195, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 1
  call fastcc void @copy_to_sockptr_offset([2 x i32] %1, ptr noundef %413) #15
  br label %414

414:                                              ; preds = %412, %409
  call fastcc void @fl_link(ptr noundef %173, ptr noundef nonnull %315, ptr noundef nonnull %210) #15
  br label %432

415:                                              ; preds = %402, %400, %396, %394, %339
  %416 = phi i32 [ -2, %396 ], [ -12, %400 ], [ %395, %394 ], [ %403, %402 ], [ -17, %339 ]
  %417 = load i8, ptr %273, align 4
  %418 = add i8 %417, -1
  %419 = icmp ult i8 %418, 3
  br i1 %419, label %424, label %420

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 4
  %422 = load ptr, ptr %421, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %430, label %424

424:                                              ; preds = %420, %415
  %425 = load i8, ptr @static_key_initialized, align 1, !range !22
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %428, !prof !23

427:                                              ; preds = %424
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %428

428:                                              ; preds = %427, %424
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ipv6_flowlabel_exclusive) #15, !srcloc !10
  %429 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive, ptr nonnull @ipv6_flowlabel_exclusive, i32 1, ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive) #15, !srcloc !25
  br label %430

430:                                              ; preds = %428, %420
  %431 = getelementptr inbounds %struct.ip6_flowlabel, ptr %210, i32 0, i32 6
  call void @call_rcu(ptr noundef %431, ptr noundef nonnull @fl_free_rcu) #15
  call void @kfree(ptr noundef %315) #15
  br label %432

432:                                              ; preds = %430, %414, %393, %309, %208, %205, %199, %194, %190, %186, %184, %181, %154, %153, %131, %127, %119, %86, %77, %60, %55, %51, %32, %27, %3
  %433 = phi i32 [ -22, %3 ], [ -22, %32 ], [ -14, %27 ], [ 0, %60 ], [ 0, %86 ], [ -3, %77 ], [ -92, %51 ], [ -3, %55 ], [ %126, %119 ], [ %161, %154 ], [ -3, %153 ], [ -3, %131 ], [ -3, %127 ], [ 0, %190 ], [ %416, %430 ], [ 0, %393 ], [ 0, %414 ], [ -1, %184 ], [ -1, %181 ], [ -92, %186 ], [ -22, %194 ], [ -34, %199 ], [ -12, %208 ], [ -22, %205 ], [ %310, %309 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #15
  ret i32 %433
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip6_flowlabel_init() local_unnamed_addr #0 {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_flowlabel_net_ops) #15
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip6_flowlabel_cleanup() local_unnamed_addr #0 {
  %1 = load i8, ptr @static_key_initialized, align 1, !range !22
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4, !prof !23

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_deferred_flush, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @del_timer(ptr noundef nonnull @ip6_fl_gc_timer) #15
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_flowlabel_net_ops) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fl6_renew(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ult i32 %1, 6
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %1, 150
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @capable(i32 noundef 12) #15
  %9 = mul i32 %1, 100
  %10 = icmp ne i32 %9, 0
  %11 = and i1 %10, %8
  br i1 %11, label %14, label %47

12:                                               ; preds = %5
  %13 = mul nuw nsw i32 %1, 100
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = phi i32 [ %13, %12 ], [ 600, %3 ], [ %9, %7 ]
  %16 = icmp ult i32 %2, 6
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = icmp ugt i32 %2, 150
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @capable(i32 noundef 12) #15
  %21 = mul i32 %2, 100
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %22, %20
  br i1 %23, label %26, label %47

24:                                               ; preds = %17
  %25 = mul nuw nsw i32 %2, 100
  br label %26

26:                                               ; preds = %24, %19, %14
  %27 = phi i32 [ %25, %24 ], [ 600, %14 ], [ %21, %19 ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 9
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %31, %15
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 %15, ptr %30, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = phi i32 [ %15, %34 ], [ %31, %26 ]
  %37 = sub i32 %27, %36
  %38 = icmp slt i32 %37, 0
  %39 = select i1 %38, i32 %36, i32 %27
  %40 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %39, %28
  %43 = sub i32 %41, %42
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 %42, ptr %40, align 4
  br label %46

46:                                               ; preds = %45, %35
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  br label %47

47:                                               ; preds = %46, %19, %7
  %48 = phi i32 [ 0, %46 ], [ -1, %7 ], [ -1, %19 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fl_lookup(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #15
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = add i32 %4, 512
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %6 = lshr i32 %0, 24
  %7 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %6
  br label %8

8:                                                ; preds = %12, %1
  %9 = phi ptr [ %7, %1 ], [ %10, %12 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ip6_flowlabel, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %0
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.ip6_flowlabel, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 0, i32 1, ptr elementtype(i32) %17) #15, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  br label %22

22:                                               ; preds = %21, %16, %8
  %23 = phi ptr [ null, %16 ], [ %10, %21 ], [ null, %8 ]
  tail call fastcc void @local_bh_enable() #15
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fl_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  %4 = getelementptr inbounds %struct.ipv6_fl_socklist, ptr %1, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ipv6_pinfo, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  store ptr %6, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  store volatile ptr %1, ptr %5, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_sk_fl_lock) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fl_free(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %3
  %13 = load i8, ptr @static_key_initialized, align 1, !range !22
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16, !prof !23

15:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %16

16:                                               ; preds = %15, %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ipv6_flowlabel_exclusive) #15, !srcloc !10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive, ptr nonnull @ipv6_flowlabel_exclusive, i32 1, ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive) #15, !srcloc !25
  br label %18

18:                                               ; preds = %16, %8
  %19 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %19, ptr noundef nonnull @fl_free_rcu) #15
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mem_check(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = and i32 %5, -4161
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  %13 = load volatile i32, ptr @fl_size, align 4
  %14 = sub i32 4096, %13
  %15 = icmp sgt i32 %14, 4064
  br i1 %15, label %41, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #15
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = add i32 %19, 512
  store volatile i32 %20, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %21 = getelementptr inbounds %struct.ipv6_pinfo, ptr %12, i32 0, i32 16
  br label %22

22:                                               ; preds = %22, %16
  %23 = phi i32 [ 0, %16 ], [ %27, %22 ]
  %24 = phi ptr [ %21, %16 ], [ %25, %22 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = add i32 %23, 1
  br i1 %26, label %28, label %22

28:                                               ; preds = %22
  tail call fastcc void @local_bh_enable() #15
  %29 = icmp slt i32 %14, 1
  br i1 %29, label %41, label %30

30:                                               ; preds = %28
  %31 = icmp sgt i32 %23, 31
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = icmp sgt i32 %23, 0
  %34 = icmp ult i32 %14, 2048
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ult i32 %14, 1024
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %30
  %39 = tail call zeroext i1 @capable(i32 noundef 12) #15
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %32
  br label %41

41:                                               ; preds = %40, %38, %28, %11
  %42 = phi i32 [ 0, %40 ], [ 0, %11 ], [ -105, %38 ], [ -105, %28 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @fl_intern(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, -61696
  %4 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 1
  store i32 %3, ptr %4, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %11, %2
  %7 = tail call i32 @prandom_u32() #15
  %8 = and i32 %7, 1048575
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  store i32 %9, ptr %4, align 4
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %19, %6
  br label %6

12:                                               ; preds = %6
  %13 = lshr i32 %9, 24
  %14 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %13
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi ptr [ %14, %12 ], [ %17, %19 ]
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ip6_flowlabel, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %11, label %15

23:                                               ; preds = %2
  %24 = load i32, ptr %4, align 4
  %25 = lshr i32 %24, 24
  %26 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %25
  br label %27

27:                                               ; preds = %31, %23
  %28 = phi ptr [ %26, %23 ], [ %29, %31 ]
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ip6_flowlabel, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %24
  br i1 %34, label %35, label %27

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ip6_flowlabel, ptr %29, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #15, !srcloc !10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #15, !srcloc !24
  br label %48

38:                                               ; preds = %27, %15
  %39 = phi i32 [ %13, %15 ], [ %25, %27 ]
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.ip6_flowlabel, ptr %0, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %39
  %43 = load ptr, ptr %42, align 4
  store ptr %43, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !27
  %44 = load i32, ptr %4, align 4
  %45 = lshr i32 %44, 24
  %46 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %45
  store volatile ptr %0, ptr %46, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @fl_size) #15, !srcloc !10
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #15, !srcloc !24
  br label %48

48:                                               ; preds = %38, %35
  %49 = phi ptr [ null, %38 ], [ %29, %35 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  ret ptr %49
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_to_sockptr_offset([2 x i32] %0, ptr noundef %1) unnamed_addr #7 {
  %3 = extractvalue [2 x i32] %0, 0
  %4 = inttoptr i32 %3 to ptr
  %5 = extractvalue [2 x i32] %0, 1
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr i8, ptr %4, i32 16
  br i1 %7, label %9, label %20

9:                                                ; preds = %2
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1090519040) #16, !srcloc !28
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #15
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #17, !srcloc !19
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  %19 = tail call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef %1, i32 noundef 4) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #15, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !21
  br label %22

20:                                               ; preds = %2
  %21 = load i32, ptr %1, align 1
  store i32 %21, ptr %8, align 1
  br label %22

22:                                               ; preds = %20, %13, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_datagram_send_ctl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fl_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 8
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 12
  %7 = load ptr, ptr %6, align 4
  tail call void @put_pid(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr i8, ptr %0, i32 -36
  %10 = getelementptr i8, ptr %0, i32 -8
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #15
  tail call void @kfree(ptr noundef %9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip6_flowlabel_proc_init(ptr nocapture noundef readonly %0) #12 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @ip6fl_seq_ops, i32 noundef 8, ptr noundef null) #15
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_flowlabel_net_exit(ptr nocapture noundef readonly %0) #13 section ".ref.text" {
  tail call fastcc void @ip6_fl_purge()
  tail call fastcc void @ip6_flowlabel_proc_fini(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ip6fl_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %4, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @llvm.thread.pointer() #15
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = add i32 %17, 512
  store volatile i32 %18, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !8
  %19 = load i64, ptr %1, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %56, label %21

21:                                               ; preds = %2
  %22 = add i64 %19, -1
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %23, i32 0, i32 2
  store i32 0, ptr %24, align 4
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i32 %29, 1
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %26, 256
  br i1 %27, label %56, label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ 0, %21 ], [ %26, %25 ]
  %30 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %29
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %25, label %33

33:                                               ; preds = %28
  %34 = icmp eq i64 %22, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %52, %33
  %36 = phi i64 [ %54, %52 ], [ %22, %33 ]
  %37 = phi ptr [ %53, %52 ], [ %31, %33 ]
  %38 = load ptr, ptr %3, align 8
  %39 = load volatile ptr, ptr %37, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %38, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %48, %41
  %45 = phi i32 [ %43, %41 ], [ %46, %48 ]
  %46 = add i32 %45, 1
  store i32 %46, ptr %42, align 4
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %46
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %44, label %52

52:                                               ; preds = %48, %35
  %53 = phi ptr [ %39, %35 ], [ %50, %48 ]
  %54 = add i64 %36, -1
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %35

56:                                               ; preds = %52, %44, %33, %25, %2
  %57 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %31, %33 ], [ null, %44 ], [ %53, %52 ], [ null, %25 ]
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6fl_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call fastcc void @local_bh_enable() #15
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ip6fl_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #14 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br i1 %4, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %6, i32 0, i32 2
  store i32 0, ptr %8, align 4
  br label %12

9:                                                ; preds = %12
  %10 = add nuw nsw i32 %13, 1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %31, label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ 0, %7 ], [ %10, %9 ]
  %14 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %13
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %31

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %6, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi i32 [ %22, %20 ], [ %25, %27 ]
  %25 = add i32 %24, 1
  store i32 %25, ptr %21, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %25
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %23, label %31

31:                                               ; preds = %27, %23, %17, %12, %9
  %32 = phi ptr [ %18, %17 ], [ %15, %12 ], [ null, %9 ], [ null, %23 ], [ %29, %27 ]
  %33 = load i64, ptr %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, ptr %2, align 8
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip6fl_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #15
  br label %48

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 7
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  switch i8 %12, label %26 [
    i8 2, label %14
    i8 3, label %20
  ]

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ip6fl_iter_state, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @pid_nr_ns(ptr noundef %16, ptr noundef %18) #15
  br label %26

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowuid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  br label %26

26:                                               ; preds = %20, %14, %7
  %27 = phi i32 [ %19, %14 ], [ %25, %20 ], [ 0, %7 ]
  %28 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 2
  %29 = load volatile i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = udiv i32 %31, 100
  %33 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = sub i32 %34, %35
  %37 = sdiv i32 %36, 100
  %38 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 3
  %39 = getelementptr inbounds %struct.ip6_flowlabel, ptr %1, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.ipv6_txoptions, ptr %40, i32 0, i32 3
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %42, %26
  %47 = phi i32 [ %45, %42 ], [ 0, %26 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %13, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %37, ptr noundef %38, i32 noundef %47) #15
  br label %48

48:                                               ; preds = %46, %6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_fl_purge() unnamed_addr #13 section ".ref.text" {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  br label %1

1:                                                ; preds = %37, %0
  %2 = phi i32 [ 0, %0 ], [ %38, %37 ]
  %3 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %37, label %8

6:                                                ; preds = %11
  %7 = icmp eq ptr %16, null
  br i1 %7, label %37, label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %16, %6 ], [ %4, %1 ]
  %10 = phi ptr [ %12, %6 ], [ %3, %1 ]
  br label %11

11:                                               ; preds = %32, %8
  %12 = phi ptr [ %9, %8 ], [ %35, %32 ]
  %13 = getelementptr inbounds %struct.ip6_flowlabel, ptr %12, i32 0, i32 2
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %12, align 4
  br i1 %15, label %17, label %6

17:                                               ; preds = %11
  store ptr %16, ptr %10, align 4
  %18 = getelementptr inbounds %struct.ip6_flowlabel, ptr %12, i32 0, i32 7
  %19 = load i8, ptr %18, align 4
  %20 = add i8 %19, -1
  %21 = icmp ult i8 %20, 3
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ip6_flowlabel, ptr %12, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %17
  %27 = load i8, ptr @static_key_initialized, align 1, !range !22
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30, !prof !23

29:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %30

30:                                               ; preds = %29, %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ipv6_flowlabel_exclusive) #15, !srcloc !10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive, ptr nonnull @ipv6_flowlabel_exclusive, i32 1, ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive) #15, !srcloc !25
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr inbounds %struct.ip6_flowlabel, ptr %12, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %33, ptr noundef nonnull @fl_free_rcu) #15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @fl_size) #15, !srcloc !10
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #15, !srcloc !25
  %35 = load ptr, ptr %10, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11

37:                                               ; preds = %32, %6, %1
  %38 = add nuw nsw i32 %2, 1
  %39 = icmp eq i32 %38, 256
  br i1 %39, label %40, label %1

40:                                               ; preds = %37
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ip6_fl_lock) #15
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip6_flowlabel_proc_fini(ptr nocapture noundef readonly %0) unnamed_addr #13 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip6_fl_gc(ptr nocapture noundef readnone %0) #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  tail call void @_raw_spin_lock(ptr noundef nonnull @ip6_fl_lock) #15
  br label %3

3:                                                ; preds = %64, %1
  %4 = phi i32 [ 0, %1 ], [ %66, %64 ]
  %5 = phi i32 [ 0, %1 ], [ %65, %64 ]
  %6 = getelementptr [256 x ptr], ptr @fl_ht, i32 0, i32 %4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %60, %3
  %10 = phi ptr [ %62, %60 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %60 ], [ %6, %3 ]
  %12 = phi i32 [ %61, %60 ], [ %5, %3 ]
  br label %13

13:                                               ; preds = %55, %9
  %14 = phi ptr [ %10, %9 ], [ %58, %55 ]
  %15 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 2
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %23
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 %23, ptr %24, align 4
  br label %29

29:                                               ; preds = %28, %18
  %30 = phi i32 [ %23, %28 ], [ %25, %18 ]
  %31 = sub i32 %2, %30
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load ptr, ptr %14, align 4
  store ptr %34, ptr %11, align 4
  %35 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 7
  %36 = load i8, ptr %35, align 4
  %37 = add i8 %36, -1
  %38 = icmp ult i8 %37, 3
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39, %33
  %44 = load i8, ptr @static_key_initialized, align 1, !range !22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47, !prof !23

46:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @ipv6_flowlabel_exclusive) #15
  br label %47

47:                                               ; preds = %46, %43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ipv6_flowlabel_exclusive) #15, !srcloc !10
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive, ptr nonnull @ipv6_flowlabel_exclusive, i32 1, ptr nonnull elementtype(i32) @ipv6_flowlabel_exclusive) #15, !srcloc !25
  br label %55

49:                                               ; preds = %29
  %50 = icmp eq i32 %12, 0
  %51 = sub i32 %30, %12
  %52 = icmp slt i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  %54 = select i1 %53, i32 %30, i32 %12
  br label %60

55:                                               ; preds = %47, %39
  %56 = getelementptr inbounds %struct.ip6_flowlabel, ptr %14, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %56, ptr noundef nonnull @fl_free_rcu) #15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @fl_size) #15, !srcloc !10
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @fl_size, ptr nonnull @fl_size, i32 1, ptr nonnull elementtype(i32) @fl_size) #15, !srcloc !25
  %58 = load ptr, ptr %11, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %13

60:                                               ; preds = %49, %13
  %61 = phi i32 [ %54, %49 ], [ %12, %13 ]
  %62 = load ptr, ptr %14, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %9

64:                                               ; preds = %60, %55, %3
  %65 = phi i32 [ %5, %3 ], [ %12, %55 ], [ %61, %60 ]
  %66 = add nuw nsw i32 %4, 1
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %3

68:                                               ; preds = %64
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load volatile i32, ptr @fl_size, align 4
  %72 = icmp eq i32 %71, 0
  %73 = add i32 %2, 150
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %70, %68
  %77 = phi i32 [ %65, %68 ], [ %73, %70 ]
  %78 = tail call i32 @mod_timer(ptr noundef nonnull @ip6_fl_gc_timer, i32 noundef %77) #15
  br label %79

79:                                               ; preds = %76, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !29
  %80 = load i16, ptr @ip6_fl_lock, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr @ip6_fl_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

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
!8 = !{i64 2148882877}
!9 = !{i64 2148007750}
!10 = !{i64 506060, i64 2147996031, i64 2147996057, i64 2147996104, i64 2147996126, i64 2147996154, i64 2147996174}
!11 = !{i64 492629, i64 492654, i64 492676, i64 492692, i64 492704, i64 492724, i64 492748, i64 492764, i64 492776}
!12 = !{i64 2148007876}
!13 = !{i64 2148108898}
!14 = !{i64 2148011284, i64 2148011316, i64 2148011345, i64 2148011379, i64 2148011410, i64 2148011433}
!15 = !{i64 2148109101}
!16 = !{!"auto-init"}
!17 = !{i64 2151096363, i64 2151096388}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 3592475}
!20 = !{i64 3592672}
!21 = !{i64 2151077951}
!22 = !{i8 0, i8 2}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2148008243, i64 2148008269, i64 2148008298, i64 2148008332, i64 2148008363, i64 2148008386}
!25 = !{i64 2148010600, i64 2148010626, i64 2148010655, i64 2148010689, i64 2148010720, i64 2148010743}
!26 = !{i64 2155713427}
!27 = !{i64 2155669366}
!28 = !{i64 2151096941, i64 2151096966}
!29 = !{i64 2148950752}
!30 = !{i64 2148946576}
!31 = !{i64 2148946651, i64 2148946678, i64 2148946725, i64 2148946747, i64 2148946775, i64 2148946795}
!32 = !{i64 2148973755}
