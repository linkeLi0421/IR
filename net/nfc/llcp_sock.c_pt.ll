; ModuleID = '/llk/IR/net/nfc/llcp_sock.c_pt.bc'
source_filename = "../net/nfc/llcp_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.87, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.87 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.122, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.122 = type { ptr }
%struct.nfc_protocol = type { i32, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfc_llcp_sock = type { %struct.sock, ptr, ptr, i32, i32, i8, i8, ptr, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.list_head, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [56 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.132 = type { %struct.callback_head }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.134 = type { ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_llcp_local = type { %struct.list_head, ptr, %struct.kref, %struct.mutex, %struct.timer_list, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, ptr, %struct.work_struct, i32, i8, i8, i8, i8, i16, i32, i32, i32, [16 x %struct.atomic_t], [48 x i8], i8, [48 x i8], i8, i8, i16, i16, i8, i16, %struct.mutex, %struct.hlist_head, %struct.timer_list, %struct.work_struct, i8, %struct.llcp_sock_list, %struct.llcp_sock_list, %struct.llcp_sock_list }
%struct.llcp_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.sockaddr_nfc_llcp = type { i16, i32, i32, i32, i8, i8, [63 x i8], i32 }
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
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.119 }
%union.anon.4 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@init_net = external dso_local global %struct.net, align 64
@llcp_sock_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 608, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.122 zeroinitializer, ptr @__this_module, [32 x i8] c"NFC_LLCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@llcp_nfc_proto = internal constant %struct.nfc_protocol { i32 1, ptr @llcp_sock_proto, ptr @__this_module, ptr @llcp_sock_create }, align 4
@.str = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [46 x i8] c"\013llcp: %s: Freeing alive NFC LLCP socket %p\0A\00", align 1
@__func__.llcp_sock_destruct = private unnamed_addr constant [19 x i8] c"llcp_sock_destruct\00", align 1
@llcp_rawsock_ops = internal constant %struct.proto_ops { i32 39, ptr @__this_module, ptr @llcp_sock_release, ptr @llcp_raw_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @llcp_sock_getname, ptr @llcp_sock_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @llcp_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llcp_sock_ops = internal constant %struct.proto_ops { i32 39, ptr @__this_module, ptr @llcp_sock_release, ptr @llcp_sock_bind, ptr @llcp_sock_connect, ptr @sock_no_socketpair, ptr @llcp_sock_accept, ptr @llcp_sock_getname, ptr @llcp_sock_poll, ptr @sock_no_ioctl, ptr null, ptr @llcp_sock_listen, ptr @sock_no_shutdown, ptr @nfc_llcp_setsockopt, ptr @nfc_llcp_getsockopt, ptr null, ptr @llcp_sock_sendmsg, ptr @llcp_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"\013llcp: %s: Recv datagram failed state %d %d %d\00", align 1
@__func__.llcp_sock_recvmsg = private unnamed_addr constant [18 x i8] c"llcp_sock_recvmsg\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_accept_unlink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 53
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %9, align 4
  store ptr null, ptr %7, align 4
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !10
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #9
  br label %20

19:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @sk_free(ptr noundef %0) #9
  br label %20

20:                                               ; preds = %19, %18, %16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_accept_enqueue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #9, !srcloc !9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #9, !srcloc !13
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !14

7:                                                ; preds = %2
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2, %2 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %12) #9
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 21
  %15 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %14, ptr %16, align 4
  store ptr %15, ptr %14, align 4
  %18 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 21, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %14, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %1, i32 0, i32 22
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store volatile i32 %22, ptr %20, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_accept_dequeue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -596
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %73, label %7

7:                                                ; preds = %2
  %8 = icmp ne ptr %1, null
  br label %9

9:                                                ; preds = %70, %7
  %10 = phi ptr [ %5, %7 ], [ %71, %70 ]
  %11 = phi ptr [ %4, %7 ], [ %12, %70 ]
  %12 = load ptr, ptr %11, align 4
  tail call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #9
  %13 = getelementptr i8, ptr %11, i32 -578
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  tail call void @release_sock(ptr noundef %10) #9
  %17 = getelementptr i8, ptr %11, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %17, align 4
  %21 = getelementptr i8, ptr %11, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 53
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store volatile i32 %25, ptr %23, align 4
  store ptr null, ptr %21, align 4
  %26 = getelementptr i8, ptr %11, i32 -496
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #9, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #9, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %70, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #9
  br label %70

33:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @sk_free(ptr noundef %10) #9
  br label %70

34:                                               ; preds = %9
  %35 = load volatile i8, ptr %13, align 2
  %36 = icmp ne i8 %35, 1
  %37 = and i1 %8, %36
  br i1 %37, label %69, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %39, align 4
  %43 = getelementptr i8, ptr %11, i32 -496
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #9, !srcloc !10
  %45 = extractvalue { i32, i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %47
  tail call void @refcount_warn_saturate(ptr noundef %43, i32 noundef 3) #9
  br label %51

50:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @sk_free(ptr noundef %10) #9
  br label %51

51:                                               ; preds = %50, %49, %47
  br i1 %8, label %52, label %65

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %54 = load ptr, ptr %53, align 16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56, !prof !11

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2024, i32 noundef 9, ptr noundef null) #9
  br label %57

57:                                               ; preds = %56, %52
  %58 = getelementptr i8, ptr %11, i32 -204
  tail call void @_raw_write_lock_bh(ptr noundef %58) #9
  %59 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %60 = getelementptr i8, ptr %11, i32 -368
  store volatile ptr %59, ptr %60, align 4
  store ptr %10, ptr %53, align 16
  %61 = getelementptr i8, ptr %11, i32 -124
  store ptr %1, ptr %61, align 8
  %62 = getelementptr i8, ptr %11, i32 -184
  %63 = getelementptr inbounds %struct.socket_alloc, ptr %1, i32 0, i32 1, i32 2
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %62, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %58) #9
  br label %65

65:                                               ; preds = %57, %51
  tail call void @release_sock(ptr noundef %10) #9
  %66 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 53
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, -1
  store volatile i32 %68, ptr %66, align 4
  br label %73

69:                                               ; preds = %34
  tail call void @release_sock(ptr noundef %10) #9
  br label %70

70:                                               ; preds = %69, %33, %32, %30
  %71 = getelementptr i8, ptr %12, i32 -596
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %9

73:                                               ; preds = %70, %65, %2
  %74 = phi ptr [ %10, %65 ], [ null, %2 ], [ null, %70 ]
  ret ptr %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llcp_sock_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 39, i32 noundef %2, ptr noundef nonnull @llcp_sock_proto, i32 noundef %3) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  tail call void @sock_init_data(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  store volatile i8 4, ptr %8, align 2
  %9 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 46
  store i16 1, ptr %9, align 4
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 80
  store ptr @llcp_sock_destruct, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 5
  store i8 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 6
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 9
  store i8 16, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 10
  store i16 8, ptr %16, align 2
  %17 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 13
  %18 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 17
  store i32 0, ptr %17, align 4
  store i8 1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 18
  store i8 -1, ptr %19, align 1
  tail call void @nfc_llcp_socket_remote_param_init(ptr noundef nonnull %5) #9
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 19
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 19, i32 2
  store i32 0, ptr %21, align 4
  store ptr %20, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 19, i32 0, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 19, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 20
  %25 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 20, i32 2
  store i32 0, ptr %25, align 4
  store ptr %24, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 20, i32 0, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 20, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 21
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 21, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %0, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %7
  store i32 1, ptr %0, align 64
  br label %32

32:                                               ; preds = %31, %7, %4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @llcp_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nfc_dev, ptr %7, i32 0, i32 5
  tail call void @put_device(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #9
  %13 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21
  %16 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %16, align 4
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 22
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @nfc_llcp_local_put(ptr noundef %22) #9
  %24 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.llcp_sock_destruct, ptr noundef %0) #10
  br label %30

30:                                               ; preds = %28, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_socket_remote_param_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 19
  tail call void @skb_queue_purge(ptr noundef %4) #9
  %5 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 20
  tail call void @skb_queue_purge(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21
  %7 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 21, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  %11 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 22
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @nfc_llcp_local_put(ptr noundef %13) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_local_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfc_llcp_sock_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @nfc_proto_register(ptr noundef nonnull @llcp_nfc_proto) #9
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llcp_sock_exit() local_unnamed_addr #0 {
  tail call void @nfc_proto_unregister(ptr noundef nonnull @llcp_nfc_proto) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_create(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = add i16 %6, -1
  %8 = icmp ult i16 %7, 3
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  %10 = icmp eq i16 %6, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = tail call zeroext i1 @capable(i32 noundef 13) #9
  br i1 %12, label %13, label %46

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @llcp_rawsock_ops, ptr %14, align 4
  %15 = load i16, ptr %5, align 4
  br label %18

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @llcp_sock_ops, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i16 [ %6, %16 ], [ %15, %13 ]
  %20 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 39, i32 noundef 2592, ptr noundef nonnull @llcp_sock_proto, i32 noundef %3) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %20) #9
  %23 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 4
  store volatile i8 4, ptr %23, align 2
  %24 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 46
  store i16 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 45
  store i16 %19, ptr %25, align 2
  %26 = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 80
  store ptr @llcp_sock_destruct, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 5
  store i8 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 6
  store i8 1, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 9
  store i8 16, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 10
  store i16 8, ptr %30, align 2
  %31 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 13
  %32 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 17
  store i32 0, ptr %31, align 4
  store i8 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 18
  store i8 -1, ptr %33, align 1
  tail call void @nfc_llcp_socket_remote_param_init(ptr noundef nonnull %20) #9
  %34 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 19
  %35 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 19, i32 2
  store i32 0, ptr %35, align 4
  store ptr %34, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 19, i32 0, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 19, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 20
  %39 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 20, i32 2
  store i32 0, ptr %39, align 4
  store ptr %38, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 20, i32 0, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 20, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 21
  store volatile ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %20, i32 0, i32 21, i32 1
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %1, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %22
  store i32 1, ptr %1, align 64
  br label %46

46:                                               ; preds = %45, %22, %18, %11, %4
  %47 = phi i32 [ -94, %4 ], [ -1, %11 ], [ -12, %18 ], [ 0, %22 ], [ 0, %45 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %82, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %66, label %9

9:                                                ; preds = %5
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #9
  %10 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 @nfc_llcp_send_disconnect(ptr noundef nonnull %3) #9
  br label %15

15:                                               ; preds = %13, %9
  %16 = load volatile i8, ptr %10, align 2
  %17 = icmp eq i8 %16, 6
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %3, i32 0, i32 21
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 -596
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %48, label %23

23:                                               ; preds = %45, %18
  %24 = phi ptr [ %46, %45 ], [ %21, %18 ]
  %25 = phi ptr [ %26, %45 ], [ %20, %18 ]
  %26 = load ptr, ptr %25, align 4
  tail call void @lock_sock_nested(ptr noundef %24, i32 noundef 0) #9
  %27 = tail call i32 @nfc_llcp_send_disconnect(ptr noundef %24) #9
  %28 = getelementptr i8, ptr %25, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store volatile ptr %25, ptr %25, align 4
  store ptr %25, ptr %28, align 4
  %32 = getelementptr i8, ptr %25, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 53
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store volatile i32 %36, ptr %34, align 4
  store ptr null, ptr %32, align 4
  %37 = getelementptr i8, ptr %25, i32 -496
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #9, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #9, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %23
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #9
  br label %45

44:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @sk_free(ptr noundef %24) #9
  br label %45

45:                                               ; preds = %44, %43, %41
  tail call void @release_sock(ptr noundef %24) #9
  %46 = getelementptr i8, ptr %26, i32 -596
  %47 = icmp eq ptr %46, %3
  br i1 %47, label %48, label %23

48:                                               ; preds = %45, %18, %15
  %49 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %3, i32 0, i32 18
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %3, i32 0, i32 5
  %55 = load i8, ptr %54, align 8
  tail call void @nfc_llcp_put_ssap(ptr noundef %53, i8 noundef zeroext %55) #9
  br label %56

56:                                               ; preds = %52, %48
  tail call void @release_sock(ptr noundef nonnull %3) #9
  %57 = load volatile i8, ptr %10, align 2
  %58 = icmp eq i8 %57, 3
  br i1 %58, label %82, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %61 = load i16, ptr %60, align 4
  %62 = icmp eq i16 %61, 3
  %63 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 36
  %64 = getelementptr inbounds %struct.nfc_llcp_local, ptr %7, i32 0, i32 34
  %65 = select i1 %62, ptr %63, ptr %64
  tail call void @nfc_llcp_sock_unlink(ptr noundef %65, ptr noundef nonnull %3) #9
  br label %66

66:                                               ; preds = %59, %5
  %67 = phi i32 [ -19, %5 ], [ 0, %59 ]
  %68 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %68) #9
  %69 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %73, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %68) #9
  %74 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #9, !srcloc !9
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #9, !srcloc !10
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %66
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %82, label %80, !prof !11

80:                                               ; preds = %78
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #9
  br label %82

81:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @sk_free(ptr noundef nonnull %3) #9
  br label %82

82:                                               ; preds = %81, %80, %78, %56, %1
  %83 = phi i32 [ 0, %1 ], [ 0, %56 ], [ %67, %78 ], [ %67, %80 ], [ %67, %81 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_raw_sock_bind(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sockaddr_nfc_llcp, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false)
  %7 = icmp eq ptr %1, null
  %8 = icmp ult i32 %2, 2
  %9 = or i1 %7, %8
  br i1 %9, label %43, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %1, align 2
  %12 = icmp eq i16 %11, 39
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 88)
  %15 = icmp ugt i32 %14, 87
  %16 = sub nuw nsw i32 88, %14
  %17 = select i1 %15, i32 0, i32 %16
  %18 = getelementptr i8, ptr %4, i32 %14
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %17, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr nonnull align 2 %1, i32 %14, i1 false)
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #9
  %19 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %20 = load volatile i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 4
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = getelementptr inbounds i8, ptr %4, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @nfc_get_device(i32 noundef %24) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %25) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 1
  store ptr %25, ptr %31, align 8
  %32 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %28) #9
  %33 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds i8, ptr %4, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nfc_llcp_local, ptr %28, i32 0, i32 36
  tail call void @nfc_llcp_sock_link(ptr noundef %37, ptr noundef %6) #9
  store volatile i8 5, ptr %19, align 2
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i32 [ 0, %30 ], [ -19, %27 ]
  %40 = getelementptr inbounds %struct.nfc_dev, ptr %25, i32 0, i32 5
  tail call void @put_device(ptr noundef %40) #9
  br label %41

41:                                               ; preds = %38, %22, %13
  %42 = phi i32 [ %39, %38 ], [ -77, %13 ], [ -19, %22 ]
  tail call void @release_sock(ptr noundef %6) #9
  br label %43

43:                                               ; preds = %41, %10, %3
  %44 = phi i32 [ %42, %41 ], [ -22, %10 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4)
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(88) %1, i8 0, i32 88, i1 false)
  tail call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #9
  %12 = load ptr, ptr %8, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  store i16 39, ptr %1, align 4
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 4
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 5
  %28 = load i8, ptr %27, align 8
  %29 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 5
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 6
  %34 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %33, ptr align 1 %35, i32 %31, i1 false)
  br label %36

36:                                               ; preds = %14, %11
  %37 = phi i32 [ 88, %14 ], [ -77, %11 ]
  tail call void @release_sock(ptr noundef nonnull %5) #9
  br label %38

38:                                               ; preds = %36, %7, %3
  %39 = phi i32 [ -77, %7 ], [ -77, %3 ], [ %37, %36 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_poll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
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
  tail call void %8(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 6
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 21
  br label %18

18:                                               ; preds = %22, %16
  %19 = phi ptr [ %17, %16 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %80, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 -578
  %24 = load volatile i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %80, label %18

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 7
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 4194304
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 8, i32 10
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i32 [ %39, %34 ], [ 0, %30 ]
  %42 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 8
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  %45 = or i32 %41, 65
  %46 = select i1 %44, i32 %41, i32 %45
  %47 = load volatile i8, ptr %13, align 2
  %48 = icmp eq i8 %47, 4
  %49 = or i32 %46, 16
  %50 = select i1 %48, i32 %49, i32 %46
  %51 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  %55 = or i32 %50, 8257
  %56 = select i1 %54, i32 %50, i32 %55
  %57 = icmp eq i8 %52, 3
  %58 = or i32 %56, 16
  %59 = select i1 %57, i32 %58, i32 %56
  %60 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 23
  %61 = load volatile i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 21
  %63 = load volatile i32, ptr %62, align 8
  %64 = ashr i32 %63, 1
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %40
  %67 = load volatile i8, ptr %13, align 2
  %68 = icmp eq i8 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = or i32 %59, 772
  br label %80

71:                                               ; preds = %66, %40
  %72 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, 65536
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.socket_wq, ptr %78, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %79) #9
  br label %80

80:                                               ; preds = %76, %71, %69, %22, %18
  %81 = phi i32 [ %70, %69 ], [ %59, %71 ], [ %59, %76 ], [ 0, %18 ], [ 65, %22 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = and i32 %3, 64
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #9
  %9 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @release_sock(ptr noundef %8) #9
  br label %140

17:                                               ; preds = %12, %4
  tail call void @release_sock(ptr noundef %8) #9
  %18 = and i32 %3, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %140

20:                                               ; preds = %17
  %21 = call ptr @skb_recv_datagram(ptr noundef %8, i32 noundef %3, i32 noundef %6, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load volatile i8, ptr %9, align 2
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %5, align 4
  %27 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 51
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #9, !srcloc !9
  %31 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %27) #9, !srcloc !18
  %32 = extractvalue { i32, i32 } %31, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %33 = sub i32 0, %32
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i32 [ %33, %30 ], [ 0, %23 ]
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.llcp_sock_recvmsg, i32 noundef %25, i32 noundef %26, i32 noundef %35) #10
  %37 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 66
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  %41 = load i32, ptr %5, align 4
  %42 = select i1 %40, i32 %41, i32 0
  br label %140

43:                                               ; preds = %20
  %44 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 %2)
  %47 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %48 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %47, i32 noundef %46) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = and i32 %3, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %140

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %54, ptr noundef nonnull %21) #9
  br label %140

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 65
  %67 = load i16, ptr %66, align 8
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = icmp eq i64 %57, 0
  %73 = and i32 %68, 16
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i64, ptr %60, align 8
  %78 = icmp eq i64 %77, 0
  %79 = and i16 %67, 64
  %80 = icmp eq i16 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %76, %71, %65, %55
  call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %21) #9
  br label %93

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64
  %85 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %85) #9
  %86 = load i32, ptr %84, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %84, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !20
  %88 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 63
  store i64 %57, ptr %88, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !21
  %89 = load i32, ptr %84, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %84, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %91 = load i16, ptr %85, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %85, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  br label %93

93:                                               ; preds = %83, %82
  %94 = load volatile i32, ptr %61, align 4
  %95 = and i32 %94, 524288
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 13
  %99 = load i16, ptr %98, align 8
  %100 = and i16 %99, 1024
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %21) #9
  br label %103

103:                                              ; preds = %102, %97, %93
  %104 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 45
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, 2
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load ptr, ptr %1, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %112 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  store i32 88, ptr %112, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %108, i8 0, i32 88, i1 false)
  store i16 39, ptr %108, align 4
  %113 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %108, i32 0, i32 3
  store i32 5, ptr %113, align 4
  %114 = load i8, ptr %111, align 1
  %115 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %108, i32 0, i32 4
  store i8 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %108, i32 0, i32 5
  store i8 %117, ptr %118, align 1
  br label %119

119:                                              ; preds = %110, %107, %103
  %120 = and i32 %3, 2
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load i16, ptr %104, align 2
  %124 = add i16 %123, -1
  %125 = icmp ult i16 %124, 3
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = call ptr @skb_pull(ptr noundef nonnull %21, i32 noundef %46) #9
  %128 = load i32, ptr %44, align 8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %131, ptr noundef nonnull %21) #9
  br label %133

132:                                              ; preds = %126, %122
  call void @kfree_skb_reason(ptr noundef nonnull %21, i32 noundef 0) #9
  br label %133

133:                                              ; preds = %132, %130, %119
  %134 = load i16, ptr %104, align 2
  %135 = icmp ne i16 %134, 5
  %136 = and i32 %3, 32
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %137, %135
  %139 = select i1 %138, i32 %46, i32 %45
  br label %140

140:                                              ; preds = %133, %53, %50, %34, %17, %16
  %141 = phi i32 [ 0, %16 ], [ %139, %133 ], [ -95, %17 ], [ -14, %53 ], [ -14, %50 ], [ %42, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_put_ssap(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_find_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_llcp_local_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_llcp_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_bind(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sockaddr_nfc_llcp, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !26
  %7 = icmp eq ptr %1, null
  %8 = icmp ult i32 %2, 2
  %9 = or i1 %7, %8
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %1, align 2
  %12 = icmp eq i16 %11, 39
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 88)
  %15 = icmp ugt i32 %14, 87
  %16 = sub nuw nsw i32 88, %14
  %17 = select i1 %15, i32 0, i32 %16
  %18 = getelementptr i8, ptr %4, i32 %14
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %17, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %4, ptr nonnull align 2 %1, i32 %14, i1 false)
  %19 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %4, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %13
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %24 = load volatile i8, ptr %23, align 2
  %25 = icmp eq i8 %24, 4
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %4, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @nfc_get_device(i32 noundef %28) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %66, label %31

31:                                               ; preds = %26
  %32 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %29) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 1
  store ptr %29, ptr %35, align 8
  %36 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %32) #9
  %37 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %4, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %4, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 63)
  %44 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 8
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %4, i32 0, i32 6
  %46 = call ptr @kmemdup(ptr noundef %45, i32 noundef %43, i32 noundef 3264) #9
  %47 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 7
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load ptr, ptr %37, align 4
  %51 = call i32 @nfc_llcp_local_put(ptr noundef %50) #9
  store ptr null, ptr %37, align 4
  store ptr null, ptr %35, align 8
  br label %63

52:                                               ; preds = %34
  %53 = call zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef nonnull %32, ptr noundef %6) #9
  %54 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 5
  store i8 %53, ptr %54, align 8
  %55 = icmp eq i8 %53, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load ptr, ptr %37, align 4
  %58 = call i32 @nfc_llcp_local_put(ptr noundef %57) #9
  store ptr null, ptr %37, align 4
  %59 = load ptr, ptr %47, align 4
  call void @kfree(ptr noundef %59) #9
  store ptr null, ptr %47, align 4
  store ptr null, ptr %35, align 8
  br label %63

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 18
  store i8 %53, ptr %61, align 1
  %62 = getelementptr inbounds %struct.nfc_llcp_local, ptr %32, i32 0, i32 34
  call void @nfc_llcp_sock_link(ptr noundef %62, ptr noundef %6) #9
  store volatile i8 5, ptr %23, align 2
  br label %63

63:                                               ; preds = %60, %56, %49, %31
  %64 = phi i32 [ -98, %56 ], [ 0, %60 ], [ -12, %49 ], [ -19, %31 ]
  %65 = getelementptr inbounds %struct.nfc_dev, ptr %29, i32 0, i32 5
  call void @put_device(ptr noundef %65) #9
  br label %66

66:                                               ; preds = %63, %26, %22
  %67 = phi i32 [ %64, %63 ], [ -77, %22 ], [ -19, %26 ]
  call void @release_sock(ptr noundef %6) #9
  br label %68

68:                                               ; preds = %66, %13, %10, %3
  %69 = phi i32 [ %67, %66 ], [ -22, %10 ], [ -22, %3 ], [ -22, %13 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #9
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_connect(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %1, null
  %8 = icmp ult i32 %2, 88
  %9 = or i1 %7, %8
  br i1 %9, label %106, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %1, align 4
  %12 = icmp eq i16 %11, 39
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %106, label %21

21:                                               ; preds = %17, %13
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %23 = load volatile i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %104, label %25

25:                                               ; preds = %21
  %26 = load volatile i8, ptr %22, align 2
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %104, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call ptr @nfc_get_device(i32 noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %104, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @nfc_llcp_find_local(ptr noundef nonnull %31) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %101, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nfc_dev, ptr %31, i32 0, i32 5, i32 9
  tail call void @mutex_lock(ptr noundef %37) #9
  %38 = getelementptr inbounds %struct.nfc_dev, ptr %31, i32 0, i32 11
  %39 = load i8, ptr %38, align 8, !range !27
  %40 = icmp eq i8 %39, 0
  tail call void @mutex_unlock(ptr noundef %37) #9
  br i1 %40, label %101, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nfc_llcp_local, ptr %34, i32 0, i32 11
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nfc_llcp_local, ptr %34, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %45, %41
  %52 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 1
  store ptr %31, ptr %52, align 8
  %53 = tail call ptr @nfc_llcp_local_get(ptr noundef nonnull %34) #9
  %54 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 2
  store ptr %53, ptr %54, align 4
  %55 = tail call zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef nonnull %34) #9
  %56 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 5
  store i8 %55, ptr %56, align 8
  %57 = icmp eq i8 %55, -1
  br i1 %57, label %97, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 18
  store i8 %55, ptr %59, align 1
  %60 = load i32, ptr %14, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 4
  %64 = load i8, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i8 [ %64, %62 ], [ 1, %58 ]
  %67 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 6
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 4
  store i32 %69, ptr %70, align 4
  %71 = load i32, ptr %14, align 4
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 63)
  %73 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 8
  store i32 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %1, i32 0, i32 6
  %75 = tail call ptr @kmemdup(ptr noundef %74, i32 noundef %72, i32 noundef 3264) #9
  %76 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %6, i32 0, i32 7
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %94, label %78

78:                                               ; preds = %65
  %79 = getelementptr inbounds %struct.nfc_llcp_local, ptr %34, i32 0, i32 35
  tail call void @nfc_llcp_sock_link(ptr noundef %79, ptr noundef %6) #9
  %80 = tail call i32 @nfc_llcp_send_connect(ptr noundef %6) #9
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  store volatile i8 2, ptr %22, align 2
  %83 = and i32 %3, 2048
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 31
  %87 = load i32, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i32 [ %87, %85 ], [ 0, %82 ]
  %90 = tail call fastcc i32 @sock_wait_state(ptr noundef %6, i32 noundef %89)
  switch i32 %90, label %91 [
    i32 -115, label %104
    i32 0, label %104
  ]

91:                                               ; preds = %88, %78
  %92 = phi i32 [ %80, %78 ], [ %90, %88 ]
  tail call void @nfc_llcp_sock_unlink(ptr noundef %79, ptr noundef %6) #9
  %93 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %93) #9
  store ptr null, ptr %76, align 4
  br label %94

94:                                               ; preds = %91, %65
  %95 = phi i32 [ %92, %91 ], [ -12, %65 ]
  %96 = load i8, ptr %56, align 8
  tail call void @nfc_llcp_put_ssap(ptr noundef nonnull %34, i8 noundef zeroext %96) #9
  br label %97

97:                                               ; preds = %94, %51
  %98 = phi i32 [ %95, %94 ], [ -12, %51 ]
  %99 = load ptr, ptr %54, align 4
  %100 = tail call i32 @nfc_llcp_local_put(ptr noundef %99) #9
  store ptr null, ptr %54, align 4
  br label %101

101:                                              ; preds = %97, %45, %36, %33
  %102 = phi i32 [ -19, %33 ], [ -67, %45 ], [ -67, %36 ], [ %98, %97 ]
  %103 = getelementptr inbounds %struct.nfc_dev, ptr %31, i32 0, i32 5
  tail call void @put_device(ptr noundef %103) #9
  br label %104

104:                                              ; preds = %101, %88, %88, %28, %25, %21
  %105 = phi i32 [ %90, %88 ], [ %90, %88 ], [ %102, %101 ], [ -106, %21 ], [ -115, %25 ], [ -19, %28 ]
  tail call void @release_sock(ptr noundef %6) #9
  br label %106

106:                                              ; preds = %104, %17, %10, %4
  %107 = phi i32 [ -22, %10 ], [ -22, %4 ], [ -22, %17 ], [ %105, %104 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @default_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  tail call void @lock_sock_nested(ptr noundef %12, i32 noundef 1) #9
  %13 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 6
  br i1 %15, label %16, label %54

16:                                               ; preds = %4
  %17 = and i32 %2, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 62
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ 0, %16 ]
  %24 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 17
  %25 = load volatile ptr, ptr %24, align 4
  call void @add_wait_queue_exclusive(ptr noundef %25, ptr noundef nonnull %5) #9
  %26 = call ptr @nfc_llcp_accept_dequeue(ptr noundef %12, ptr noundef %1)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  br label %30

30:                                               ; preds = %44, %28
  %31 = phi i32 [ %23, %28 ], [ %45, %44 ]
  store volatile i32 1, ptr %29, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load volatile i32, ptr %7, align 4
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !11

37:                                               ; preds = %33
  %38 = load volatile i32, ptr %7, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37, %33
  %42 = icmp eq i32 %31, 2147483647
  %43 = select i1 %42, i32 -512, i32 -4
  br label %48

44:                                               ; preds = %37
  call void @release_sock(ptr noundef %12) #9
  %45 = call i32 @schedule_timeout(i32 noundef %31) #9
  call void @lock_sock_nested(ptr noundef %12, i32 noundef 1) #9
  %46 = call ptr @nfc_llcp_accept_dequeue(ptr noundef %12, ptr noundef %1)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %30, label %48

48:                                               ; preds = %44, %41, %30, %22
  %49 = phi i32 [ %43, %41 ], [ 0, %22 ], [ 0, %44 ], [ -11, %30 ]
  %50 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  store volatile i32 0, ptr %50, align 8
  %51 = load volatile ptr, ptr %24, align 4
  call void @remove_wait_queue(ptr noundef %51, ptr noundef nonnull %5) #9
  %52 = icmp eq i32 %49, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 3, ptr %1, align 64
  br label %54

54:                                               ; preds = %53, %48, %4
  %55 = phi i32 [ %49, %48 ], [ 0, %53 ], [ -77, %4 ]
  call void @release_sock(ptr noundef %12) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #9
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_listen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #9
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %14 [
    i16 5, label %7
    i16 1, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %9 = load volatile i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 5
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 54
  store i32 %1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 53
  store i32 0, ptr %13, align 4
  store volatile i8 6, ptr %8, align 2
  br label %14

14:                                               ; preds = %11, %7, %2
  %15 = phi i32 [ 0, %11 ], [ -77, %2 ], [ -77, %7 ]
  tail call void @release_sock(ptr noundef %4) #9
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_llcp_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !26
  %9 = icmp eq i32 %1, 280
  br i1 %9, label %10, label %98

10:                                               ; preds = %5
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #9
  switch i32 %2, label %96 [
    i32 0, label %11
    i32 1, label %53
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %96, label %15

15:                                               ; preds = %11
  %16 = load volatile i8, ptr %12, align 2
  %17 = icmp eq i8 %16, 5
  br i1 %17, label %96, label %18

18:                                               ; preds = %15
  %19 = load volatile i8, ptr %12, align 2
  %20 = icmp eq i8 %19, 6
  br i1 %20, label %96, label %21

21:                                               ; preds = %18
  %22 = extractvalue [2 x i32] %3, 0
  %23 = inttoptr i32 %22 to ptr
  %24 = extractvalue [2 x i32] %3, 1
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %23, i32 4, i32 -1090519040) #11, !srcloc !29
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39, !prof !11

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #9
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #12, !srcloc !30
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %37 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %23, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39, !prof !11

39:                                               ; preds = %31, %27
  %40 = phi i32 [ %37, %31 ], [ 4, %27 ]
  %41 = sub i32 4, %40
  %42 = getelementptr i8, ptr %6, i32 %41
  call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %40, i1 false) #9
  br label %96

43:                                               ; preds = %21
  %44 = load i32, ptr %23, align 1
  store i32 %44, ptr %6, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, ptr %6, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %46, %45 ], [ %44, %43 ]
  %49 = icmp ugt i32 %48, 15
  br i1 %49, label %96, label %50

50:                                               ; preds = %47
  %51 = trunc i32 %48 to i8
  %52 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %8, i32 0, i32 9
  store i8 %51, ptr %52, align 4
  br label %96

53:                                               ; preds = %10
  %54 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %55 = load volatile i8, ptr %54, align 2
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %96, label %57

57:                                               ; preds = %53
  %58 = load volatile i8, ptr %54, align 2
  %59 = icmp eq i8 %58, 5
  br i1 %59, label %96, label %60

60:                                               ; preds = %57
  %61 = load volatile i8, ptr %54, align 2
  %62 = icmp eq i8 %61, 6
  br i1 %62, label %96, label %63

63:                                               ; preds = %60
  %64 = extractvalue [2 x i32] %3, 0
  %65 = inttoptr i32 %64 to ptr
  %66 = extractvalue [2 x i32] %3, 1
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 4, i32 -1090519040) #11, !srcloc !29
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81, !prof !11

73:                                               ; preds = %69
  %74 = tail call ptr @llvm.thread.pointer() #9
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %75) #12, !srcloc !30
  %77 = and i32 %76, -13
  %78 = or i32 %77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %79 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %65, i32 noundef 4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #9, !srcloc !31
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81, !prof !11

81:                                               ; preds = %73, %69
  %82 = phi i32 [ %79, %73 ], [ 4, %69 ]
  %83 = sub i32 4, %82
  %84 = getelementptr i8, ptr %6, i32 %83
  call void @llvm.memset.p0.i32(ptr align 1 %84, i8 0, i32 %82, i1 false) #9
  br label %96

85:                                               ; preds = %63
  %86 = load i32, ptr %65, align 1
  store i32 %86, ptr %6, align 4
  br label %89

87:                                               ; preds = %73
  %88 = load i32, ptr %6, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %88, %87 ], [ %86, %85 ]
  %91 = icmp ugt i32 %90, 2047
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = trunc i32 %90 to i16
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %95 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %8, i32 0, i32 10
  store i16 %94, ptr %95, align 2
  br label %96

96:                                               ; preds = %92, %89, %81, %60, %57, %53, %50, %47, %39, %18, %15, %11, %10
  %97 = phi i32 [ 0, %92 ], [ 0, %50 ], [ -22, %18 ], [ -22, %15 ], [ -22, %11 ], [ -22, %47 ], [ -22, %60 ], [ -22, %57 ], [ -22, %53 ], [ -22, %89 ], [ -92, %10 ], [ -14, %39 ], [ -14, %81 ]
  call void @release_sock(ptr noundef %8) #9
  br label %98

98:                                               ; preds = %96, %5
  %99 = phi i32 [ %97, %96 ], [ -92, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfc_llcp_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 16
  %8 = icmp eq i32 %1, 280
  br i1 %8, label %9, label %104

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #9, !srcloc !33
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %104, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @llvm.umin.i32(i32 %17, i32 4)
  tail call void @lock_sock_nested(ptr noundef %7, i32 noundef 0) #9
  switch i32 %2, label %96 [
    i32 0, label %25
    i32 1, label %41
    i32 2, label %59
    i32 3, label %75
    i32 4, label %86
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %7, i32 0, i32 9
  %27 = load i8, ptr %26, align 4
  %28 = icmp ugt i8 %27, 15
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nfc_llcp_local, ptr %21, i32 0, i32 14
  %31 = load i8, ptr %30, align 1
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i8 [ %31, %29 ], [ %27, %25 ]
  %34 = zext i8 %33 to i32
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %34, i32 -1090519041) #9, !srcloc !34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 0, i32 -14
  br label %96

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %7, i32 0, i32 10
  %43 = load i16, ptr %42, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %45 = icmp ugt i16 %44, 2047
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nfc_llcp_local, ptr %21, i32 0, i32 15
  %48 = load i16, ptr %47, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i16 [ %49, %46 ], [ %44, %41 ]
  %52 = zext i16 %51 to i32
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %56 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %52, i32 -1090519041) #9, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 0, i32 -14
  br label %96

59:                                               ; preds = %23
  %60 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %7, i32 0, i32 12
  %61 = load i16, ptr %60, align 2
  %62 = icmp ugt i16 %61, 2175
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.nfc_llcp_local, ptr %21, i32 0, i32 25
  %65 = load i16, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i16 [ %65, %63 ], [ %61, %59 ]
  %68 = zext i16 %67 to i32
  %69 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %70 = and i32 %69, -13
  %71 = or i32 %70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %72 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %68, i32 -1090519041) #9, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 -14
  br label %96

75:                                               ; preds = %23
  %76 = getelementptr inbounds %struct.nfc_llcp_local, ptr %21, i32 0, i32 26
  %77 = load i16, ptr %76, align 2
  %78 = udiv i16 %77, 10
  %79 = zext i16 %78 to i32
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %81 = and i32 %80, -13
  %82 = or i32 %81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %83 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %79, i32 -1090519041) #9, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 -14
  br label %96

86:                                               ; preds = %23
  %87 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %7, i32 0, i32 11
  %88 = load i8, ptr %87, align 8
  %89 = zext i8 %88 to i32
  %90 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %93 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %89, i32 -1090519041) #9, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 0, i32 -14
  br label %96

96:                                               ; preds = %86, %75, %66, %50, %32, %23
  %97 = phi i32 [ %40, %32 ], [ %58, %50 ], [ %74, %66 ], [ %85, %75 ], [ %95, %86 ], [ -92, %23 ]
  tail call void @release_sock(ptr noundef %7) #9
  %98 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #12, !srcloc !30
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %101 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %24, i32 -1090519041) #9, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #9, !srcloc !31
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !32
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 %97, i32 -14
  br label %104

104:                                              ; preds = %96, %19, %9, %5
  %105 = phi i32 [ -92, %5 ], [ -14, %9 ], [ -19, %19 ], [ %103, %96 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @llcp_sock_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #9, !srcloc !18
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %12 = sub i32 0, %11
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #9
  %20 = getelementptr inbounds %struct.nfc_llcp_sock, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @release_sock(ptr noundef %5) #9
  br label %46

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, 88
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @release_sock(ptr noundef %5) #9
  br label %46

33:                                               ; preds = %28
  %34 = load ptr, ptr %1, align 8
  tail call void @release_sock(ptr noundef %5) #9
  %35 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %34, i32 0, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sockaddr_nfc_llcp, ptr %34, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = tail call i32 @nfc_llcp_send_ui_frame(ptr noundef %5, i8 noundef zeroext %36, i8 noundef zeroext %38, ptr noundef %1, i32 noundef %2) #9
  br label %46

40:                                               ; preds = %24
  %41 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %42 = load volatile i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 1
  tail call void @release_sock(ptr noundef %5) #9
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call i32 @nfc_llcp_send_i_frame(ptr noundef %5, ptr noundef %1, i32 noundef %2) #9
  br label %46

46:                                               ; preds = %44, %40, %33, %32, %23, %14, %9
  %47 = phi i32 [ %45, %44 ], [ -19, %23 ], [ %12, %9 ], [ -95, %14 ], [ -22, %32 ], [ %39, %33 ], [ -107, %40 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nfc_llcp_get_sdp_ssap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nfc_llcp_get_local_ssap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sock_wait_state(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %5 = tail call ptr @llvm.thread.pointer() #9
  store i32 0, ptr %3, align 4
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 17
  %10 = load volatile ptr, ptr %9, align 4
  call void @add_wait_queue(ptr noundef %10, ptr noundef nonnull %3) #9
  %11 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 1, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  br label %14

14:                                               ; preds = %39, %2
  %15 = phi i32 [ %1, %2 ], [ %32, %39 ]
  %16 = load volatile i8, ptr %12, align 2
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %18
  %21 = load volatile i32, ptr %5, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !11

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %5, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %20
  %29 = icmp eq i32 %15, 2147483647
  %30 = select i1 %29, i32 -512, i32 -4
  br label %42

31:                                               ; preds = %24
  call void @release_sock(ptr noundef %0) #9
  %32 = call i32 @schedule_timeout(i32 noundef %15) #9
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #9
  store volatile i32 1, ptr %11, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !41
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35, !prof !11

35:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !9
  %36 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %13) #9, !srcloc !18
  %37 = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %38 = sub i32 0, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32 [ %38, %35 ], [ 0, %31 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %14, label %42

42:                                               ; preds = %39, %28, %18, %14
  %43 = phi i32 [ %30, %28 ], [ -115, %18 ], [ 0, %14 ], [ %40, %39 ]
  store volatile i32 0, ptr %11, align 8
  %44 = load volatile ptr, ptr %9, align 4
  call void @remove_wait_queue(ptr noundef %44, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #9
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_ui_frame(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llcp_send_i_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }

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
!8 = !{i64 2148047335}
!9 = !{i64 443496, i64 2147933467, i64 2147933493, i64 2147933540, i64 2147933562, i64 2147933590, i64 2147933610}
!10 = !{i64 2147949494, i64 2147949526, i64 2147949555, i64 2147949589, i64 2147949620, i64 2147949643}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149014918}
!13 = !{i64 2147947137, i64 2147947169, i64 2147947198, i64 2147947232, i64 2147947263, i64 2147947286}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155260822}
!16 = !{i64 2155306173}
!17 = !{i64 2155312397}
!18 = !{i64 452943, i64 452960, i64 452984, i64 453010, i64 453028}
!19 = !{i64 2155312714}
!20 = !{i64 2149402805}
!21 = !{i64 2149403106}
!22 = !{i64 2148946930}
!23 = !{i64 2148942754}
!24 = !{i64 2148942829, i64 2148942856, i64 2148942903, i64 2148942925, i64 2148942953, i64 2148942973}
!25 = !{i64 2148969933}
!26 = !{!"auto-init"}
!27 = !{i8 0, i8 2}
!28 = !{i64 2155476271}
!29 = !{i64 2151030251, i64 2151030276}
!30 = !{i64 3526363}
!31 = !{i64 3526560}
!32 = !{i64 2151011839}
!33 = !{i64 2155406687, i64 2155406967, i64 2155407301, i64 2155407635}
!34 = !{i64 2155421382, i64 2155421662, i64 2155421996, i64 2155422330}
!35 = !{i64 2155430033, i64 2155430313, i64 2155430647, i64 2155430981}
!36 = !{i64 2155438285, i64 2155438565, i64 2155438899, i64 2155439233}
!37 = !{i64 2155446533, i64 2155446813, i64 2155447147, i64 2155447481}
!38 = !{i64 2155454777, i64 2155455057, i64 2155455391, i64 2155455725}
!39 = !{i64 2155462913, i64 2155463193, i64 2155463527, i64 2155463861}
!40 = !{i64 2155379994}
!41 = !{i64 2155382858}
