; ModuleID = '/llk/IR/net/bluetooth/sco.c_pt.bc'
source_filename = "../net/bluetooth/sco.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.122, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.122 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type {}
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.46, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.hci_cb = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.86 }
%union.anon.86 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bdaddr_t = type { [6 x i8] }
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.sk_buff_head = type { %union.anon.0, i32, %struct.spinlock }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sock_common = type { %union.anon.115, %union.anon.117, %union.anon.118, i16, i8, i8, i32, %union.anon.120, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.123, [0 x i32], %union.anon.124, i16, i16, %union.anon.125, %struct.refcount_struct, [0 x i32], %union.anon.126 }
%union.anon.115 = type { i64 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.120 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.50 }
%union.anon.50 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.123 = type { i32 }
%union.anon.124 = type { %struct.hlist_node }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%struct.sco_pinfo = type { %struct.bt_sock, %struct.bdaddr_t, %struct.bdaddr_t, i32, i16, i8, %struct.bt_codec, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.127, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.128, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.129, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.127 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.1, %union.anon.98, %union.anon.99, [48 x i8], %union.anon.100, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.102, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { i64 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { i32, ptr }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.104, i32, i32, i32, i16, i16, %union.anon.106, %union.anon.107, %union.anon.108, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.104 = type { i32 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i16 }
%struct.sco_conn = type { ptr, %struct.spinlock, ptr, %struct.delayed_work, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.72 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_sco = type { i16, %struct.bdaddr_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bt_voice = type { i16 }
%struct.bt_codecs = type { i8, [0 x %struct.bt_codec] }
%struct.sco_options = type { i16 }
%struct.sco_conninfo = type { i16, [3 x i8] }
%struct.codec_list = type { %struct.list_head, i8, i16, i16, i8, i8, i32, [0 x %struct.hci_codec_caps] }
%struct.hci_codec_caps = type { i8, [0 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.78, %union.anon.79 }
%union.anon.78 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.121 = type { ptr }
%struct.hci_cp_accept_conn_req = type { %struct.bdaddr_t, i8 }
%struct.hci_cp_accept_sync_conn_req = type <{ %struct.bdaddr_t, i32, i32, i16, i16, i8, i16 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.131, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.132, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.133, ptr, %struct.address_space, %struct.list_head, %union.anon.134, i32, i32, ptr, ptr }
%union.anon.131 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.132 = type { %struct.callback_head }
%union.anon.133 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.134 = type { ptr }

@sco_sk_list = internal global %struct.bt_sock_list zeroinitializer, align 4
@sco_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 576, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.122 zeroinitializer, ptr @__this_module, [32 x i8] c"SCO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@sco_sock_family_ops = internal constant %struct.net_proto_family { i32 31, ptr @sco_sock_create, ptr @__this_module }, align 4
@.str = private unnamed_addr constant [32 x i8] c"SCO socket registration failed\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [4 x i8] c"sco\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create SCO proc file\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SCO socket layer initialized\0A\00", align 1
@sco_cb = internal global %struct.hci_cb { %struct.list_head zeroinitializer, ptr @.str.6, ptr @sco_connect_cfm, ptr @sco_disconn_cfm, ptr null, ptr null, ptr null }, align 4
@bt_debugfs = external dso_local local_unnamed_addr global ptr, align 4
@sco_debugfs_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sco_debugfs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sco_debugfs = internal unnamed_addr global ptr null, align 4
@__param_str_disable_esco = internal constant [13 x i8] c"disable_esco\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_esco = internal global i8 0, align 1
@__param_disable_esco = internal constant %struct.kernel_param { ptr @__param_str_disable_esco, ptr @__this_module, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.86 { ptr @disable_esco } }, section "__param", align 4
@__UNIQUE_ID_disable_escotype441 = internal constant [27 x i8] c"parmtype=disable_esco:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_esco442 = internal constant [51 x i8] c"parm=disable_esco:Disable eSCO connection creation\00", section ".modinfo", align 1
@sco_sock_ops = internal constant %struct.proto_ops { i32 31, ptr @__this_module, ptr @sco_sock_release, ptr @sco_sock_bind, ptr @sco_sock_connect, ptr @sock_no_socketpair, ptr @sco_sock_accept, ptr @sco_sock_getname, ptr @bt_sock_poll, ptr @bt_sock_ioctl, ptr @sock_gettstamp, ptr @sco_sock_listen, ptr @sco_sock_shutdown, ptr @sco_sock_setsockopt, ptr @sco_sock_getsockopt, ptr null, ptr @sco_sock_sendmsg, ptr @sco_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"SCO\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%pMR %pMR %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_disable_esco442, ptr @__UNIQUE_ID_disable_escotype441, ptr @__param_disable_esco], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sco_connect_ind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.bdaddr_t, align 1
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12
  %5 = load ptr, ptr @sco_sk_list, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -84
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %39, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  br label %12

12:                                               ; preds = %32, %10
  %13 = phi ptr [ %7, %10 ], [ %36, %32 ]
  %14 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 4
  %15 = load volatile i8, ptr %14, align 2
  %16 = icmp eq i8 %15, 4
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sco_pinfo, ptr %13, i32 0, i32 1
  %19 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef dereferenceable(6) %11, i32 6)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i64 6, i1 false)
  %22 = call i32 @bcmp(ptr noundef dereferenceable(6) %18, ptr noundef nonnull dereferenceable(6) %4, i32 6)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.bt_sock, ptr %13, i32 0, i32 3
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i8, ptr %2, align 1
  %31 = or i8 %30, 1
  store i8 %31, ptr %2, align 1
  br label %39

32:                                               ; preds = %21, %12
  %33 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 15
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  %36 = getelementptr i8, ptr %34, i32 -84
  %37 = icmp eq ptr %36, null
  %38 = or i1 %35, %37
  br i1 %38, label %39, label %12

39:                                               ; preds = %32, %29, %24, %3
  %40 = phi i32 [ 32768, %29 ], [ 32768, %24 ], [ 0, %3 ], [ 0, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !9
  %41 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !10
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  br label %45

45:                                               ; preds = %44, %39
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sco_recv_scodata(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 67
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %14 = load i16, ptr %11, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %16 = icmp eq ptr %13, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 4
  %19 = load volatile i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %13, ptr noundef %1) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %17, %10, %6, %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #12
  br label %25

25:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @sco_init() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @sco_proto, i32 noundef 0) #12
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bt_sock_register(i32 noundef 2, ptr noundef nonnull @sco_sock_family_ops) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #12
  br label %19

7:                                                ; preds = %3
  %8 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @sco_sk_list, ptr noundef null) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #12
  tail call void @bt_sock_unregister(i32 noundef 2) #12
  br label %19

11:                                               ; preds = %7
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3) #12
  %12 = tail call i32 @hci_register_cb(ptr noundef nonnull @sco_cb) #12
  %13 = load ptr, ptr @bt_debugfs, align 4
  %14 = icmp eq ptr %13, null
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @sco_debugfs_fops) #12
  store ptr %18, ptr @sco_debugfs, align 4
  br label %21

19:                                               ; preds = %10, %6
  %20 = phi i32 [ %4, %6 ], [ %8, %10 ]
  tail call void @proto_unregister(ptr noundef nonnull @sco_proto) #12
  br label %21

21:                                               ; preds = %19, %17, %11, %0
  %22 = phi i32 [ %20, %19 ], [ 0, %17 ], [ %1, %0 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_register_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sco_exit() local_unnamed_addr #0 {
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1) #12
  %1 = load ptr, ptr @sco_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #12
  %2 = tail call i32 @hci_unregister_cb(ptr noundef nonnull @sco_cb) #12
  tail call void @bt_sock_unregister(i32 noundef 2) #12
  tail call void @proto_unregister(ptr noundef nonnull @sco_proto) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_unregister_cb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  store i32 1, ptr %1, align 64
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 5
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @sco_sock_ops, ptr %9, align 4
  %10 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @sco_proto, i32 noundef %3) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %10) #12
  %13 = getelementptr inbounds %struct.bt_sock, ptr %10, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.bt_sock, ptr %10, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 80
  store ptr @sco_sock_destruct, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 31
  store i32 4000, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -257
  store i32 %19, ptr %17, align 4
  %20 = trunc i32 %2 to i16
  %21 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 46
  store i16 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  store volatile i8 2, ptr %22, align 2
  %23 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 4
  store i16 96, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6
  store i8 2, ptr %24, align 1
  %25 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6, i32 1
  store i16 -1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6, i32 2
  store i16 -1, ptr %26, align 1
  %27 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6, i32 3
  store i8 0, ptr %27, align 1
  tail call void @bt_sock_link(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %10) #12
  %28 = getelementptr inbounds %struct.bt_sock, ptr %10, i32 0, i32 5
  store ptr @sco_skb_put_cmsg, ptr %28, align 4
  br label %29

29:                                               ; preds = %12, %8, %4
  %30 = phi i32 [ 0, %12 ], [ -94, %4 ], [ -12, %8 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.sco_pinfo, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sco_conn, ptr %7, i32 0, i32 3
  %11 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %10) #12
  br label %12

12:                                               ; preds = %9, %5
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %3) #12
  tail call void @release_sock(ptr noundef nonnull %3) #12
  %13 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 48
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @llvm.thread.pointer() #12
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #12
  %28 = load i32, ptr %18, align 8
  %29 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %3, i32 noundef 9, i32 noundef %28) #12
  tail call void @release_sock(ptr noundef nonnull %3) #12
  br label %30

30:                                               ; preds = %27, %21, %17, %12
  %31 = phi i32 [ 0, %21 ], [ %29, %27 ], [ 0, %17 ], [ 0, %12 ]
  %32 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %32) #12
  %33 = load i32, ptr %13, align 4
  %34 = or i32 %33, 1
  store i32 %34, ptr %13, align 4
  %35 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %36, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %32) #12
  %37 = load volatile i32, ptr %13, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %30
  %41 = load ptr, ptr %35, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  tail call void @bt_sock_unlink(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %3) #12
  %44 = load i32, ptr %13, align 4
  %45 = or i32 %44, 1
  store i32 %45, ptr %13, align 4
  %46 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #12, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #12, !srcloc !17
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %54, label %52, !prof !18

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %46, i32 noundef 3) #12
  br label %54

53:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %3) #12
  br label %54

54:                                               ; preds = %53, %52, %50, %40, %30, %1
  %55 = phi i32 [ 0, %1 ], [ %31, %30 ], [ %31, %40 ], [ %31, %50 ], [ %31, %52 ], [ %31, %53 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_bind(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq ptr %1, null
  %7 = icmp ult i32 %2, 8
  %8 = or i1 %6, %7
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = load i16, ptr %1, align 2
  %11 = icmp eq i16 %10, 31
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %14 = load volatile i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 2
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 45
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 5
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sco_pinfo, ptr %5, i32 0, i32 1
  %22 = getelementptr inbounds %struct.sockaddr_sco, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %21, ptr noundef align 1 dereferenceable(6) %22, i32 6, i1 false) #12
  store volatile i8 3, ptr %13, align 2
  br label %23

23:                                               ; preds = %20, %16, %12
  %24 = phi i32 [ 0, %20 ], [ -77, %12 ], [ -22, %16 ]
  tail call void @release_sock(ptr noundef %5) #12
  br label %25

25:                                               ; preds = %23, %9, %3
  %26 = phi i32 [ %24, %23 ], [ -22, %9 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_connect(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp ult i32 %2, 8
  br i1 %7, label %163, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %1, align 2
  %10 = icmp eq i16 %9, 31
  br i1 %10, label %11, label %163

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load volatile i8, ptr %12, align 2
  %17 = icmp eq i8 %16, 3
  br i1 %17, label %18, label %163

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 45
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 5
  br i1 %21, label %22, label %163

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sockaddr_sco, ptr %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 1
  %25 = tail call ptr @hci_get_route(ptr noundef %23, ptr noundef %24, i8 noundef zeroext 0) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %163, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %28) #12
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #12
  %29 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %29, ptr noundef align 1 dereferenceable(6) %23, i32 6, i1 false) #12
  %30 = getelementptr %struct.hci_dev, ptr %25, i32 0, i32 21, i32 0, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = icmp slt i8 %31, 0
  %33 = load i8, ptr @disable_esco, align 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  %36 = select i1 %35, i32 2, i32 0
  %37 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = icmp eq i16 %38, 3
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = getelementptr %struct.hci_dev, ptr %25, i32 0, i32 21, i32 0, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = and i8 %42, 8
  %44 = icmp eq i8 %43, 0
  %45 = icmp sgt i8 %31, -1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %148, label %47

47:                                               ; preds = %40, %27
  %48 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 6
  %49 = tail call ptr @hci_connect_sco(ptr noundef nonnull %25, i32 noundef %36, ptr noundef %29, i16 noundef zeroext %38, ptr noundef %48) #12
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = ptrtoint ptr %49 to i32
  br label %148

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 65
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 67
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %110

59:                                               ; preds = %53
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 60) #13
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 1
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 3
  store i32 -32, ptr %65, align 4
  %66 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %66, ptr %66, align 8
  %67 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 3, i32 0, i32 2
  store ptr @sco_sock_timeout, ptr %68, align 8
  %69 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %69, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  store ptr %61, ptr %56, align 4
  store ptr %49, ptr %61, align 8
  %70 = getelementptr inbounds %struct.hci_dev, ptr %55, i32 0, i32 124
  %71 = load i32, ptr %70, align 8
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.sco_conn, ptr %61, i32 0, i32 4
  %74 = select i1 %72, i32 60, i32 %71
  store i32 %74, ptr %73, align 8
  br label %110

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %76) #12, !srcloc !9
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %76, ptr %76, i32 1, ptr elementtype(i32) %76) #12, !srcloc !21
  %78 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %148

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 14
  %82 = load i8, ptr %81, align 1
  switch i8 %82, label %102 [
    i8 1, label %83
    i8 -128, label %83
    i8 -127, label %98
  ]

83:                                               ; preds = %80, %80
  %84 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 60
  %85 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %84) #12
  %86 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 12
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, 1
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 31
  %91 = load i16, ptr %90, align 2
  %92 = zext i16 %91 to i32
  %93 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 16
  %94 = load i8, ptr %93, align 1, !range !23
  %95 = xor i8 %94, 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %92, %96
  br label %102

98:                                               ; preds = %80
  %99 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 31
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  br label %102

102:                                              ; preds = %98, %89, %83, %80
  %103 = phi i32 [ %101, %98 ], [ %97, %89 ], [ 0, %83 ], [ 0, %80 ]
  %104 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 58
  %105 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %104) #12
  %106 = load ptr, ptr %54, align 4
  %107 = getelementptr inbounds %struct.hci_dev, ptr %106, i32 0, i32 138
  %108 = load ptr, ptr %107, align 4
  %109 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %108, ptr noundef %104, i32 noundef %103) #12
  br label %148

110:                                              ; preds = %63, %53
  %111 = phi ptr [ %61, %63 ], [ %57, %53 ]
  %112 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %24, ptr noundef align 1 dereferenceable(6) %112, i32 6, i1 false) #12
  %113 = getelementptr inbounds %struct.sco_conn, ptr %111, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %113) #12
  %114 = getelementptr inbounds %struct.sco_conn, ptr %111, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 7
  store ptr %111, ptr %118, align 4
  store ptr %6, ptr %114, align 4
  br label %119

119:                                              ; preds = %117, %110
  %120 = phi i32 [ 0, %117 ], [ -16, %110 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %121 = load i16, ptr %113, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %113, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br i1 %116, label %123, label %148

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.hci_conn, ptr %49, i32 0, i32 12
  %125 = load i16, ptr %124, align 4
  %126 = icmp eq i16 %125, 1
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 7
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.sco_conn, ptr %129, i32 0, i32 3
  %133 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %132) #12
  br label %134

134:                                              ; preds = %131, %127
  store volatile i8 1, ptr %12, align 2
  br label %148

135:                                              ; preds = %123
  store volatile i8 5, ptr %12, align 2
  %136 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 7
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 31
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.sco_conn, ptr %137, i32 0, i32 3
  %143 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %142) #12
  %144 = load ptr, ptr %136, align 4
  %145 = getelementptr inbounds %struct.sco_conn, ptr %144, i32 0, i32 3
  %146 = load ptr, ptr @system_wq, align 4
  %147 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %146, ptr noundef %145, i32 noundef %141) #12
  br label %148

148:                                              ; preds = %139, %135, %134, %119, %102, %75, %51, %40
  %149 = phi i32 [ %52, %51 ], [ -95, %40 ], [ %120, %119 ], [ 0, %134 ], [ -12, %75 ], [ -12, %102 ], [ 0, %135 ], [ 0, %139 ]
  tail call void @mutex_unlock(ptr noundef %28) #12
  %150 = getelementptr inbounds %struct.hci_dev, ptr %25, i32 0, i32 204
  tail call void @put_device(ptr noundef %150) #12
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = and i32 %3, 2048
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 31
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %157, %155 ], [ 0, %152 ]
  %160 = tail call i32 @bt_sock_wait_state(ptr noundef %6, i32 noundef 1, i32 noundef %159) #12
  br label %161

161:                                              ; preds = %158, %148
  %162 = phi i32 [ %149, %148 ], [ %160, %158 ]
  tail call void @release_sock(ptr noundef %6) #12
  br label %163

163:                                              ; preds = %161, %22, %18, %15, %8, %4
  %164 = phi i32 [ %162, %161 ], [ -22, %8 ], [ -22, %4 ], [ -77, %15 ], [ -22, %18 ], [ -113, %22 ]
  ret i32 %164
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #12
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #12
  store i32 0, ptr %5, align 4
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @woken_wake_function, ptr %8, align 4
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  call void @lock_sock_nested(ptr noundef %12, i32 noundef 0) #12
  %13 = and i32 %2, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 62
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i32 [ %17, %15 ], [ 0, %4 ]
  %20 = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 17
  %21 = load volatile ptr, ptr %20, align 4
  call void @add_wait_queue_exclusive(ptr noundef %21, ptr noundef nonnull %5) #12
  %22 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %23 = load volatile i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 4
  br i1 %24, label %25, label %46

25:                                               ; preds = %42, %18
  %26 = phi i32 [ %43, %42 ], [ %19, %18 ]
  %27 = call ptr @bt_accept_dequeue(ptr noundef %12, ptr noundef %1) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %29
  %32 = load volatile i32, ptr %7, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !18

35:                                               ; preds = %31
  %36 = load volatile i32, ptr %7, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35, %31
  %40 = icmp eq i32 %26, 2147483647
  %41 = select i1 %40, i32 -512, i32 -4
  br label %46

42:                                               ; preds = %35
  call void @release_sock(ptr noundef %12) #12
  %43 = call i32 @wait_woken(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %26) #12
  call void @lock_sock_nested(ptr noundef %12, i32 noundef 0) #12
  %44 = load volatile i8, ptr %22, align 2
  %45 = icmp eq i8 %44, 4
  br i1 %45, label %25, label %46

46:                                               ; preds = %42, %39, %29, %18
  %47 = phi i32 [ %41, %39 ], [ -77, %18 ], [ -11, %29 ], [ -77, %42 ]
  %48 = load volatile ptr, ptr %20, align 4
  call void @remove_wait_queue(ptr noundef %48, ptr noundef nonnull %5) #12
  br label %51

49:                                               ; preds = %25
  %50 = load volatile ptr, ptr %20, align 4
  call void @remove_wait_queue(ptr noundef %50, ptr noundef nonnull %5) #12
  store i32 3, ptr %1, align 64
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %47, %46 ], [ 0, %49 ]
  call void @release_sock(ptr noundef %12) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #12
  ret i32 %52
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sco_sock_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  store i16 31, ptr %1, align 2
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.sockaddr_sco, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sco_pinfo, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sco_pinfo, ptr %5, i32 0, i32 2
  %10 = select i1 %6, ptr %8, ptr %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %7, ptr noundef align 1 dereferenceable(6) %10, i32 6, i1 false) #12
  ret i32 8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_listen(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.sco_pinfo, ptr %4, i32 0, i32 1
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %40

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 45
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, 5
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  tail call void @_raw_write_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12
  %14 = load ptr, ptr @sco_sk_list, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -84
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %28, %13
  %20 = phi ptr [ %32, %28 ], [ %16, %13 ]
  %21 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 4
  %22 = load volatile i8, ptr %21, align 2
  %23 = icmp eq i8 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sco_pinfo, ptr %20, i32 0, i32 1
  %26 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %25, ptr noundef dereferenceable(6) %5, i32 6) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24, %19
  %29 = getelementptr inbounds %struct.sock_common, ptr %20, i32 0, i32 15
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = getelementptr i8, ptr %30, i32 -84
  %33 = icmp eq ptr %32, null
  %34 = or i1 %31, %33
  br i1 %34, label %35, label %19

35:                                               ; preds = %28, %13
  %36 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 54
  store i32 %1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 53
  store i32 0, ptr %37, align 4
  store volatile i8 4, ptr %6, align 2
  br label %38

38:                                               ; preds = %35, %24
  %39 = phi i32 [ 0, %35 ], [ -98, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !24
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1), i32 0) #12, !srcloc !25
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !26
  br label %40

40:                                               ; preds = %38, %9, %2
  %41 = phi i32 [ %39, %38 ], [ -77, %2 ], [ -22, %9 ]
  tail call void @release_sock(ptr noundef %4) #12
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_shutdown(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !27
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !28

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !18

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %15, %11
  tail call void @lock_sock_nested(ptr noundef nonnull %4, i32 noundef 0) #12
  %18 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 66
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  store i8 3, ptr %18, align 2
  %22 = getelementptr inbounds %struct.sco_pinfo, ptr %4, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.sco_conn, ptr %23, i32 0, i32 3
  %27 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %26) #12
  br label %28

28:                                               ; preds = %25, %21
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %4)
  %29 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 48
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @llvm.thread.pointer() #12
  %39 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = tail call i32 @bt_sock_wait_state(ptr noundef nonnull %4, i32 noundef 9, i32 noundef %35) #12
  br label %45

45:                                               ; preds = %43, %37, %33, %28, %17
  %46 = phi i32 [ 0, %17 ], [ 0, %37 ], [ %44, %43 ], [ 0, %33 ], [ 0, %28 ]
  tail call void @release_sock(ptr noundef nonnull %4) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !17
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %54, label %52, !prof !18

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #12
  br label %54

53:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %4) #12
  br label %54

54:                                               ; preds = %53, %52, %50, %2
  %55 = phi i32 [ 0, %2 ], [ %46, %50 ], [ %46, %52 ], [ %46, %53 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca %struct.bt_voice, align 2
  %7 = alloca i32, align 4
  %8 = alloca [255 x i8], align 1
  %9 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %8, i8 0, i32 255, i1 false), !annotation !29
  tail call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #12
  switch i32 %2, label %188 [
    i32 7, label %11
    i32 11, label %50
    i32 16, label %106
    i32 19, label %141
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load volatile i8, ptr %12, align 2
  %17 = icmp eq i8 %16, 4
  br i1 %17, label %18, label %188

18:                                               ; preds = %15, %11
  %19 = extractvalue [2 x i32] %3, 0
  %20 = inttoptr i32 %19 to ptr
  %21 = extractvalue [2 x i32] %3, 1
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 4, i32 -1090519040) #14, !srcloc !30
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38, !prof !18

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #12
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #15, !srcloc !31
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %34 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %20, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38, !prof !18

36:                                               ; preds = %28
  %37 = load i32, ptr %7, align 4
  br label %44

38:                                               ; preds = %28, %24
  %39 = phi i32 [ %34, %28 ], [ 4, %24 ]
  %40 = sub i32 4, %39
  %41 = getelementptr i8, ptr %7, i32 %40
  call void @llvm.memset.p0.i32(ptr align 1 %41, i8 0, i32 %39, i1 false) #12
  br label %188

42:                                               ; preds = %18
  %43 = load i32, ptr %20, align 1
  store i32 %43, ptr %7, align 4
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i32 [ %37, %36 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr inbounds %struct.bt_sock, ptr %10, i32 0, i32 3
  br i1 %46, label %49, label %48

48:                                               ; preds = %44
  call void @_set_bit(i32 noundef 0, ptr noundef %47) #12
  br label %188

49:                                               ; preds = %44
  call void @_clear_bit(i32 noundef 0, ptr noundef %47) #12
  br label %188

50:                                               ; preds = %5
  %51 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %52 = load volatile i8, ptr %51, align 2
  %53 = icmp eq i8 %52, 2
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load volatile i8, ptr %51, align 2
  %56 = icmp eq i8 %55, 3
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load volatile i8, ptr %51, align 2
  %59 = icmp eq i8 %58, 6
  br i1 %59, label %60, label %188

60:                                               ; preds = %57, %54, %50
  %61 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 4
  %62 = load i16, ptr %61, align 8
  store i16 %62, ptr %6, align 2
  %63 = tail call i32 @llvm.umin.i32(i32 %4, i32 2)
  %64 = extractvalue [2 x i32] %3, 0
  %65 = inttoptr i32 %64 to ptr
  %66 = extractvalue [2 x i32] %3, 1
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %60
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 %63, i32 -1090519040) #14, !srcloc !30
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80, !prof !18

73:                                               ; preds = %69
  %74 = tail call ptr @llvm.thread.pointer() #12
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %76 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %75) #15, !srcloc !31
  %77 = and i32 %76, -13
  %78 = or i32 %77, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %79 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %65, i32 noundef %63) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %76) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %80

80:                                               ; preds = %73, %69
  %81 = phi i32 [ %79, %73 ], [ %63, %69 ]
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83, !prof !18

83:                                               ; preds = %80
  %84 = sub i32 %63, %81
  %85 = getelementptr i8, ptr %6, i32 %84
  call void @llvm.memset.p0.i32(ptr align 1 %85, i8 0, i32 %81, i1 false) #12
  br label %188

86:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %6, ptr align 1 %65, i32 %63, i1 false) #12
  br label %87

87:                                               ; preds = %86, %80
  %88 = load i16, ptr %6, align 2
  switch i16 %88, label %188 [
    i16 96, label %89
    i16 3, label %89
  ]

89:                                               ; preds = %87, %87
  store i16 %88, ptr %61, align 8
  %90 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 2
  %91 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 1
  %92 = call ptr @hci_get_route(ptr noundef %90, ptr noundef %91, i8 noundef zeroext 0) #12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %188, label %94

94:                                               ; preds = %89
  %95 = getelementptr %struct.hci_dev, ptr %92, i32 0, i32 27, i32 29
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 8
  %98 = icmp ne i8 %97, 0
  %99 = load i16, ptr %6, align 2
  %100 = icmp eq i16 %99, 3
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6
  store i8 3, ptr %103, align 1
  br label %104

104:                                              ; preds = %102, %94
  %105 = getelementptr inbounds %struct.hci_dev, ptr %92, i32 0, i32 204
  call void @put_device(ptr noundef %105) #12
  br label %188

106:                                              ; preds = %5
  %107 = extractvalue [2 x i32] %3, 0
  %108 = inttoptr i32 %107 to ptr
  %109 = extractvalue [2 x i32] %3, 1
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %108, i32 4, i32 -1090519040) #14, !srcloc !30
  %114 = extractvalue { i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %126, !prof !18

116:                                              ; preds = %112
  %117 = tail call ptr @llvm.thread.pointer() #12
  %118 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %119 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %118) #15, !srcloc !31
  %120 = and i32 %119, -13
  %121 = or i32 %120, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %122 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %108, i32 noundef 4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126, !prof !18

124:                                              ; preds = %116
  %125 = load i32, ptr %7, align 4
  br label %132

126:                                              ; preds = %116, %112
  %127 = phi i32 [ %122, %116 ], [ 4, %112 ]
  %128 = sub i32 4, %127
  %129 = getelementptr i8, ptr %7, i32 %128
  call void @llvm.memset.p0.i32(ptr align 1 %129, i8 0, i32 %127, i1 false) #12
  br label %188

130:                                              ; preds = %106
  %131 = load i32, ptr %108, align 1
  store i32 %131, ptr %7, align 4
  br label %132

132:                                              ; preds = %130, %124
  %133 = phi i32 [ %125, %124 ], [ %131, %130 ]
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 5
  %136 = load i8, ptr %135, align 2
  br i1 %134, label %139, label %137

137:                                              ; preds = %132
  %138 = or i8 %136, 1
  store i8 %138, ptr %135, align 2
  br label %188

139:                                              ; preds = %132
  %140 = and i8 %136, 1
  store i8 %140, ptr %135, align 2
  br label %188

141:                                              ; preds = %5
  %142 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  %143 = load volatile i8, ptr %142, align 2
  %144 = icmp eq i8 %143, 2
  br i1 %144, label %151, label %145

145:                                              ; preds = %141
  %146 = load volatile i8, ptr %142, align 2
  %147 = icmp eq i8 %146, 3
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load volatile i8, ptr %142, align 2
  %150 = icmp eq i8 %149, 6
  br i1 %150, label %151, label %188

151:                                              ; preds = %148, %145, %141
  %152 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 2
  %153 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 1
  %154 = tail call ptr @hci_get_route(ptr noundef %152, ptr noundef %153, i8 noundef zeroext 0) #12
  %155 = icmp eq ptr %154, null
  br i1 %155, label %188, label %156

156:                                              ; preds = %151
  %157 = getelementptr %struct.hci_dev, ptr %154, i32 0, i32 206, i32 1
  %158 = load volatile i32, ptr %157, align 4
  %159 = and i32 %158, 8192
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  tail call void @put_device(ptr noundef %162) #12
  br label %188

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 240
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  tail call void @put_device(ptr noundef %168) #12
  br label %188

169:                                              ; preds = %163
  %170 = add i32 %4, -256
  %171 = icmp ult i32 %170, -255
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  tail call void @put_device(ptr noundef %173) #12
  br label %188

174:                                              ; preds = %169
  %175 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %8, [2 x i32] %3, i32 noundef %4)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  call void @put_device(ptr noundef %178) #12
  br label %188

179:                                              ; preds = %174
  %180 = load i8, ptr %8, align 1
  %181 = icmp ugt i8 %180, 1
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  call void @put_device(ptr noundef %183) #12
  br label %188

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.sco_pinfo, ptr %10, i32 0, i32 6
  %186 = getelementptr inbounds %struct.bt_codecs, ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %185, ptr noundef align 1 dereferenceable(7) %186, i32 7, i1 false)
  %187 = getelementptr inbounds %struct.hci_dev, ptr %154, i32 0, i32 204
  call void @put_device(ptr noundef %187) #12
  br label %188

188:                                              ; preds = %184, %182, %177, %172, %167, %161, %151, %148, %139, %137, %126, %104, %89, %87, %83, %57, %49, %48, %38, %15, %5
  %189 = phi i32 [ -22, %172 ], [ -14, %177 ], [ -22, %182 ], [ 0, %184 ], [ -95, %167 ], [ -95, %161 ], [ 0, %137 ], [ 0, %139 ], [ 0, %104 ], [ 0, %48 ], [ 0, %49 ], [ -22, %15 ], [ -22, %57 ], [ -22, %87 ], [ -77, %89 ], [ -22, %148 ], [ -77, %151 ], [ -92, %5 ], [ -14, %38 ], [ -14, %126 ], [ -14, %83 ]
  call void @release_sock(ptr noundef %10) #12
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  ret i32 %189
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.sco_options, align 2
  %7 = alloca %struct.sco_conninfo, align 2
  %8 = alloca %struct.bt_voice, align 2
  %9 = alloca %struct.bt_codec, align 1
  %10 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !29
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %9) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %9, i8 0, i32 7, i1 false), !annotation !29
  %12 = icmp eq i32 %1, 17
  br i1 %12, label %13, label %94

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #12
  store i16 0, ptr %6, align 2, !annotation !29
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false) #12, !annotation !29
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !31
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #12, !srcloc !34
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %13
  tail call void @lock_sock_nested(ptr noundef %11, i32 noundef 0) #12
  switch i32 %2, label %90 [
    i32 1, label %24
    i32 2, label %55
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %26 = load volatile i8, ptr %25, align 2
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load volatile i8, ptr %25, align 2
  %30 = icmp eq i8 %29, 6
  br i1 %30, label %31, label %90

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 3
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %90, label %36

36:                                               ; preds = %31, %24
  %37 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sco_conn, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %6, align 2
  %42 = tail call i32 @llvm.umin.i32(i32 %21, i32 2) #12
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %42, i32 -1090519040) #14, !srcloc !35
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !31
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %50 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %42) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %51

51:                                               ; preds = %46, %36
  %52 = phi i32 [ %50, %46 ], [ %42, %36 ]
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 -14
  br label %90

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %57 = load volatile i8, ptr %56, align 2
  %58 = icmp eq i8 %57, 1
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load volatile i8, ptr %56, align 2
  %61 = icmp eq i8 %60, 6
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 3
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %62, %55
  %68 = getelementptr inbounds i8, ptr %7, i32 4
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.hci_conn, ptr %71, i32 0, i32 11
  %73 = load i16, ptr %72, align 2
  store i16 %73, ptr %7, align 2
  %74 = getelementptr inbounds %struct.sco_conninfo, ptr %7, i32 0, i32 1
  %75 = load ptr, ptr %70, align 4
  %76 = getelementptr inbounds %struct.hci_conn, ptr %75, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %74, ptr noundef align 1 dereferenceable(3) %76, i32 3, i1 false) #12
  %77 = tail call i32 @llvm.umin.i32(i32 %21, i32 6) #12
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %77, i32 -1090519040) #14, !srcloc !35
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !31
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %85 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %77) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %86

86:                                               ; preds = %81, %67
  %87 = phi i32 [ %85, %81 ], [ %77, %67 ]
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 0, i32 -14
  br label %90

90:                                               ; preds = %86, %62, %59, %51, %31, %28, %23
  %91 = phi i32 [ -107, %31 ], [ -107, %28 ], [ %54, %51 ], [ -107, %62 ], [ -107, %59 ], [ %89, %86 ], [ -92, %23 ]
  call void @release_sock(ptr noundef %11) #12
  br label %92

92:                                               ; preds = %90, %13
  %93 = phi i32 [ %91, %90 ], [ -14, %13 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #12
  br label %345

94:                                               ; preds = %5
  %95 = tail call ptr @llvm.thread.pointer() #12
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %97 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %100 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #12, !srcloc !36
  %101 = extractvalue { i32, i32 } %100, 0
  %102 = extractvalue { i32, i32 } %100, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %104, label %345

104:                                              ; preds = %94
  tail call void @lock_sock_nested(ptr noundef %11, i32 noundef 0) #12
  switch i32 %2, label %343 [
    i32 7, label %105
    i32 11, label %122
    i32 14, label %138
    i32 16, label %153
    i32 12, label %164
    i32 13, label %164
    i32 19, label %179
  ]

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %107 = load volatile i8, ptr %106, align 2
  %108 = icmp eq i8 %107, 3
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load volatile i8, ptr %106, align 2
  %111 = icmp eq i8 %110, 4
  br i1 %111, label %112, label %343

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 3
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %114, 1
  %116 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %117 = and i32 %116, -13
  %118 = or i32 %117, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %118) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %119 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %115, i32 -1090519041) #12, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %116) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 0, i32 -14
  br label %343

122:                                              ; preds = %104
  %123 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 4
  %124 = load i16, ptr %123, align 8
  store i16 %124, ptr %8, align 2
  %125 = tail call i32 @llvm.umin.i32(i32 %102, i32 2)
  %126 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %125, i32 -1090519040) #14, !srcloc !35
  %127 = extractvalue { i32, i32 } %126, 0
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %131 = and i32 %130, -13
  %132 = or i32 %131, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %132) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %133 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %125) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %134

134:                                              ; preds = %129, %122
  %135 = phi i32 [ %133, %129 ], [ %125, %122 ]
  %136 = icmp eq i32 %135, 0
  %137 = select i1 %136, i32 0, i32 -14
  br label %343

138:                                              ; preds = %104
  %139 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %140 = load volatile i8, ptr %139, align 2
  %141 = icmp eq i8 %140, 1
  br i1 %141, label %142, label %343

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 7
  %144 = load ptr, ptr %143, align 4
  %145 = load ptr, ptr %144, align 4
  %146 = tail call i32 @hci_conn_get_phy(ptr noundef %145) #12
  %147 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %148 = and i32 %147, -13
  %149 = or i32 %148, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %150 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %146, i32 -1090519041) #12, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %151, i32 0, i32 -14
  br label %343

153:                                              ; preds = %104
  %154 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 5
  %155 = load i8, ptr %154, align 2
  %156 = and i8 %155, 1
  %157 = zext i8 %156 to i32
  %158 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %159 = and i32 %158, -13
  %160 = or i32 %159, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %160) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %161 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %157, i32 -1090519041) #12, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 0, i32 -14
  br label %343

164:                                              ; preds = %104, %104
  %165 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %166 = load volatile i8, ptr %165, align 2
  %167 = icmp eq i8 %166, 1
  br i1 %167, label %168, label %343

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 7
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.sco_conn, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 4
  %173 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %174 = and i32 %173, -13
  %175 = or i32 %174, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %175) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %176 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %172, i32 -1090519041) #12, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %173) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %177 = icmp eq i32 %176, 0
  %178 = select i1 %177, i32 0, i32 -14
  br label %343

179:                                              ; preds = %104
  %180 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 2
  %181 = getelementptr inbounds %struct.sco_pinfo, ptr %11, i32 0, i32 1
  %182 = tail call ptr @hci_get_route(ptr noundef %180, ptr noundef %181, i8 noundef zeroext 0) #12
  %183 = icmp eq ptr %182, null
  br i1 %183, label %343, label %184

184:                                              ; preds = %179
  %185 = getelementptr %struct.hci_dev, ptr %182, i32 0, i32 206, i32 1
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 8192
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 204
  tail call void @put_device(ptr noundef %190) #12
  br label %343

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 240
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 204
  tail call void @put_device(ptr noundef %196) #12
  br label %343

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %198) #12
  %199 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 198
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, %199
  br i1 %201, label %235, label %202

202:                                              ; preds = %230, %197
  %203 = phi ptr [ %233, %230 ], [ %200, %197 ]
  %204 = phi i32 [ %232, %230 ], [ 0, %197 ]
  %205 = phi i8 [ %231, %230 ], [ 0, %197 ]
  %206 = getelementptr inbounds %struct.codec_list, ptr %203, i32 0, i32 4
  %207 = load i8, ptr %206, align 2
  %208 = icmp eq i8 %207, 1
  br i1 %208, label %209, label %230

209:                                              ; preds = %202
  %210 = add i8 %205, 1
  %211 = getelementptr inbounds %struct.codec_list, ptr %203, i32 0, i32 5
  %212 = load i8, ptr %211, align 1
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %227, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.codec_list, ptr %203, i32 0, i32 7
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi i32 [ %223, %216 ], [ %204, %214 ]
  %218 = phi i8 [ %225, %216 ], [ 0, %214 ]
  %219 = phi ptr [ %224, %216 ], [ %215, %214 ]
  %220 = load i8, ptr %219, align 1
  %221 = zext i8 %220 to i32
  %222 = add i32 %217, 1
  %223 = add i32 %222, %221
  %224 = getelementptr %struct.hci_codec_caps, ptr %219, i32 0, i32 1, i32 %221
  %225 = add nuw i8 %218, 1
  %226 = icmp ult i8 %225, %212
  br i1 %226, label %216, label %227

227:                                              ; preds = %216, %209
  %228 = phi i32 [ %204, %209 ], [ %223, %216 ]
  %229 = add i32 %228, 7
  br label %230

230:                                              ; preds = %227, %202
  %231 = phi i8 [ %205, %202 ], [ %210, %227 ]
  %232 = phi i32 [ %204, %202 ], [ %229, %227 ]
  %233 = load ptr, ptr %203, align 4
  %234 = icmp eq ptr %233, %199
  br i1 %234, label %235, label %202

235:                                              ; preds = %230, %197
  %236 = phi i8 [ 0, %197 ], [ %231, %230 ]
  %237 = phi i32 [ 0, %197 ], [ %232, %230 ]
  tail call void @mutex_unlock(ptr noundef %198) #12
  %238 = add i32 %237, 1
  %239 = icmp sgt i32 %238, %102
  br i1 %239, label %240, label %242

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 204
  tail call void @put_device(ptr noundef %241) #12
  br label %343

242:                                              ; preds = %235
  %243 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %244 = and i32 %243, -13
  %245 = or i32 %244, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %245) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %246 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %236, i32 -1090519041) #12, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %243) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 204
  tail call void @put_device(ptr noundef %249) #12
  br label %343

250:                                              ; preds = %242
  tail call void @mutex_lock(ptr noundef %198) #12
  %251 = load ptr, ptr %199, align 4
  %252 = icmp eq ptr %251, %199
  br i1 %252, label %333, label %253

253:                                              ; preds = %250
  %254 = getelementptr i8, ptr %3, i32 1
  %255 = getelementptr inbounds %struct.bt_codec, ptr %9, i32 0, i32 1
  %256 = getelementptr inbounds %struct.bt_codec, ptr %9, i32 0, i32 2
  %257 = getelementptr inbounds %struct.bt_codec, ptr %9, i32 0, i32 3
  %258 = getelementptr inbounds %struct.bt_codec, ptr %9, i32 0, i32 4
  br label %259

259:                                              ; preds = %326, %253
  %260 = phi ptr [ %251, %253 ], [ %329, %326 ]
  %261 = phi i32 [ 0, %253 ], [ %328, %326 ]
  %262 = phi ptr [ %254, %253 ], [ %327, %326 ]
  %263 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 4
  %264 = load i8, ptr %263, align 2
  %265 = icmp eq i8 %264, 1
  br i1 %265, label %266, label %326

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 1
  %268 = load i8, ptr %267, align 4
  store i8 %268, ptr %9, align 1
  %269 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 2
  %270 = load i16, ptr %269, align 2
  store i16 %270, ptr %255, align 1
  %271 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 3
  %272 = load i16, ptr %271, align 4
  store i16 %272, ptr %256, align 1
  %273 = load ptr, ptr %192, align 8
  %274 = call i32 %273(ptr noundef nonnull %182, ptr noundef %257) #12
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %340, label %276

276:                                              ; preds = %266
  %277 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 5
  %278 = load i8, ptr %277, align 1
  store i8 %278, ptr %258, align 1
  %279 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %262, i32 7, i32 -1090519040) #14, !srcloc !35
  %280 = extractvalue { i32, i32 } %279, 0
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %340

282:                                              ; preds = %276
  %283 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %284 = and i32 %283, -13
  %285 = or i32 %284, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %285) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %286 = call i32 @arm_copy_to_user(ptr noundef %262, ptr noundef nonnull %9, i32 noundef 7) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %340

288:                                              ; preds = %282
  %289 = getelementptr i8, ptr %262, i32 7
  %290 = getelementptr inbounds %struct.codec_list, ptr %260, i32 0, i32 7
  %291 = load i8, ptr %277, align 1
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %323, label %293

293:                                              ; preds = %293, %288
  %294 = phi i32 [ %300, %293 ], [ 0, %288 ]
  %295 = phi i8 [ %302, %293 ], [ 0, %288 ]
  %296 = phi ptr [ %301, %293 ], [ %290, %288 ]
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i32
  %299 = add i32 %294, 1
  %300 = add i32 %299, %298
  %301 = getelementptr %struct.hci_codec_caps, ptr %296, i32 0, i32 1, i32 %298
  %302 = add nuw i8 %295, 1
  %303 = icmp ult i8 %302, %291
  br i1 %303, label %293, label %304

304:                                              ; preds = %293
  %305 = icmp eq i32 %300, 0
  br i1 %305, label %323, label %306

306:                                              ; preds = %304
  %307 = icmp slt i32 %300, 0
  %308 = load i1, ptr @check_copy_size.__already_done, align 1
  %309 = xor i1 %308, true
  %310 = select i1 %307, i1 %309, i1 false
  br i1 %310, label %311, label %312, !prof !28

311:                                              ; preds = %306
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %312

312:                                              ; preds = %311, %306
  br i1 %307, label %340, label %313, !prof !28

313:                                              ; preds = %312
  %314 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %289, i32 %300, i32 -1090519040) #14, !srcloc !35
  %315 = extractvalue { i32, i32 } %314, 0
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %340

317:                                              ; preds = %313
  %318 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %319 = and i32 %318, -13
  %320 = or i32 %319, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %320) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %321 = call i32 @arm_copy_to_user(ptr noundef %289, ptr noundef %290, i32 noundef %300) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %318) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %340

323:                                              ; preds = %317, %304, %288
  %324 = phi i32 [ %300, %317 ], [ 0, %304 ], [ 0, %288 ]
  %325 = getelementptr i8, ptr %289, i32 %324
  br label %326

326:                                              ; preds = %323, %259
  %327 = phi ptr [ %262, %259 ], [ %325, %323 ]
  %328 = phi i32 [ %261, %259 ], [ %274, %323 ]
  %329 = load ptr, ptr %260, align 4
  %330 = icmp eq ptr %329, %199
  br i1 %330, label %331, label %259

331:                                              ; preds = %326
  %332 = icmp eq i32 %328, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %331, %250
  %334 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #15, !srcloc !31
  %335 = and i32 %334, -13
  %336 = or i32 %335, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %336) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %337 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %238, i32 -1090519041) #12, !srcloc !42
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %334) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %338 = icmp eq i32 %337, 0
  %339 = select i1 %338, i32 0, i32 -14
  br label %340

340:                                              ; preds = %333, %331, %317, %313, %312, %282, %276, %266
  %341 = phi i32 [ %328, %331 ], [ %339, %333 ], [ -14, %313 ], [ -14, %312 ], [ -14, %276 ], [ %274, %266 ], [ -14, %282 ], [ -14, %317 ]
  call void @mutex_unlock(ptr noundef %198) #12
  %342 = getelementptr inbounds %struct.hci_dev, ptr %182, i32 0, i32 204
  call void @put_device(ptr noundef %342) #12
  br label %343

343:                                              ; preds = %340, %248, %240, %195, %189, %179, %168, %164, %153, %142, %138, %134, %112, %109, %104
  %344 = phi i32 [ -105, %240 ], [ -14, %248 ], [ %341, %340 ], [ -95, %195 ], [ -95, %189 ], [ -22, %109 ], [ %121, %112 ], [ %137, %134 ], [ -107, %138 ], [ %152, %142 ], [ %163, %153 ], [ -107, %164 ], [ %178, %168 ], [ -77, %179 ], [ -92, %104 ]
  call void @release_sock(ptr noundef %11) #12
  br label %345

345:                                              ; preds = %343, %94, %92
  %346 = phi i32 [ %93, %92 ], [ %344, %343 ], [ -14, %94 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  ret i32 %346
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !18

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %7) #12, !srcloc !44
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %13 = sub i32 0, %12
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %116

15:                                               ; preds = %10, %3
  %16 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %116

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !29
  %21 = and i32 %17, 64
  %22 = add i32 %2, 8
  %23 = call ptr @sock_alloc_send_skb(ptr noundef %6, i32 noundef %22, i32 noundef %21, ptr noundef nonnull %4) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 8
  store ptr %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr i8, ptr %30, i32 8
  store ptr %31, ptr %29, align 8
  br label %35

32:                                               ; preds = %20
  %33 = load i32, ptr %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32, %25
  %36 = load i32, ptr %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !18

38:                                               ; preds = %35
  store i32 0, ptr %4, align 4
  br label %44

39:                                               ; preds = %35
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %40 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %7) #12, !srcloc !44
  %41 = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !45
  %42 = sub i32 0, %41
  store i32 %42, ptr %4, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %38
  %45 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 66
  %46 = load i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  store i32 -104, ptr %4, align 4
  br label %49

49:                                               ; preds = %48, %39
  call void @kfree_skb_reason(ptr noundef %23, i32 noundef 0) #12
  %50 = load i32, ptr %4, align 4
  br label %52

51:                                               ; preds = %44
  br i1 %24, label %52, label %55

52:                                               ; preds = %51, %49, %32
  %53 = phi i32 [ %33, %32 ], [ %50, %49 ], [ 0, %51 ]
  %54 = inttoptr i32 %53 to ptr
  br label %91

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59, !prof !18

59:                                               ; preds = %55
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #12, !srcloc !46
  unreachable

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 14
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = ptrtoint ptr %62 to i32
  %67 = sub i32 %65, %66
  %68 = icmp ugt i32 %67, %2
  %69 = add i32 %66, %2
  %70 = sub i32 %65, %69
  %71 = select i1 %68, i32 %70, i32 0
  %72 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 13, i32 0, i32 11
  store i32 %71, ptr %72, align 4
  %73 = call ptr @skb_put(ptr noundef nonnull %23, i32 noundef %2) #12
  %74 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %75 = icmp slt i32 %2, 0
  %76 = load i1, ptr @check_copy_size.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !28

79:                                               ; preds = %60
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %80

80:                                               ; preds = %79, %60
  br i1 %75, label %83, label %81, !prof !28

81:                                               ; preds = %80
  %82 = call i32 @_copy_from_iter(ptr noundef %73, i32 noundef %2, ptr noundef %74) #12
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ %82, %81 ], [ 0, %80 ]
  %85 = icmp eq i32 %84, %2
  br i1 %85, label %87, label %86, !prof !18

86:                                               ; preds = %83
  call void @iov_iter_revert(ptr noundef %74, i32 noundef %84) #12
  call void @kfree_skb_reason(ptr noundef nonnull %23, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 33
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 13, i32 0, i32 5
  store i32 %89, ptr %90, align 8
  br label %91

91:                                               ; preds = %87, %52
  %92 = phi ptr [ %23, %87 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %94, label %97

94:                                               ; preds = %91, %86
  %95 = phi ptr [ inttoptr (i32 -14 to ptr), %86 ], [ %92, %91 ]
  %96 = ptrtoint ptr %95 to i32
  br label %116

97:                                               ; preds = %91
  call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #12
  %98 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %99 = load volatile i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 1
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.sco_pinfo, ptr %6, i32 0, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr inbounds %struct.sco_conn, ptr %103, i32 0, i32 4
  %107 = load i32, ptr %106, align 4
  %108 = icmp ugt i32 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %101, %97
  %110 = phi i32 [ -22, %101 ], [ -107, %97 ]
  call void @release_sock(ptr noundef %6) #12
  br label %114

111:                                              ; preds = %101
  %112 = load ptr, ptr %103, align 4
  call void @hci_send_sco(ptr noundef %112, ptr noundef %92) #12
  call void @release_sock(ptr noundef %6) #12
  %113 = icmp slt i32 %105, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111, %109
  %115 = phi i32 [ %110, %109 ], [ %105, %111 ]
  call void @kfree_skb_reason(ptr noundef %92, i32 noundef 0) #12
  br label %116

116:                                              ; preds = %114, %111, %94, %15, %10
  %117 = phi i32 [ %96, %94 ], [ %13, %10 ], [ -95, %15 ], [ %115, %114 ], [ %105, %111 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_sock_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.hci_cp_accept_conn_req, align 1
  %6 = alloca %struct.hci_cp_accept_sync_conn_req, align 1
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %10 = load volatile i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 6
  br i1 %11, label %12, label %52

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.bt_sock, ptr %8, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sco_pinfo, ptr %8, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sco_pinfo, ptr %8, i32 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 65
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 12
  store i16 7, ptr %25, align 4
  %26 = getelementptr %struct.hci_dev, ptr %24, i32 0, i32 21, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #12
  %30 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, ptr noundef align 1 dereferenceable(6) %30, i32 6, i1 false) #12
  %31 = getelementptr inbounds %struct.hci_cp_accept_conn_req, ptr %5, i32 0, i32 1
  store i8 0, ptr %31, align 1
  %32 = call i32 @hci_send_cmd(ptr noundef %24, i16 noundef zeroext 1033, i32 noundef 7, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #12
  br label %51

33:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #12
  %34 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 2
  %35 = getelementptr inbounds i8, ptr %6, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %6, ptr noundef align 1 dereferenceable(6) %34, i32 6, i1 false) #12
  %36 = getelementptr inbounds %struct.hci_conn, ptr %20, i32 0, i32 20
  %37 = load i16, ptr %36, align 2
  %38 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %6, i32 0, i32 6
  store i16 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %6, i32 0, i32 1
  store i32 8000, ptr %39, align 1
  %40 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %6, i32 0, i32 2
  store i32 8000, ptr %40, align 1
  %41 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %6, i32 0, i32 4
  store i16 %22, ptr %41, align 1
  %42 = and i16 %22, 3
  %43 = icmp eq i16 %42, 3
  %44 = and i16 %37, 64
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i16 13, i16 8
  %47 = select i1 %43, i16 %46, i16 -1
  %48 = select i1 %43, i8 2, i8 -1
  store i16 %47, ptr %35, align 1
  %49 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, ptr %6, i32 0, i32 5
  store i8 %48, ptr %49, align 1
  %50 = call i32 @hci_send_cmd(ptr noundef %24, i16 noundef zeroext 1065, i32 noundef 21, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #12
  br label %51

51:                                               ; preds = %33, %29
  store volatile i8 7, ptr %9, align 2
  call void @release_sock(ptr noundef %8) #12
  br label %54

52:                                               ; preds = %12, %4
  tail call void @release_sock(ptr noundef %8) #12
  %53 = tail call i32 @bt_sock_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #12
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 0, %51 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sco_sock_close(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %3 = load volatile i8, ptr %2, align 2
  switch i8 %3, label %105 [
    i8 4, label %4
    i8 1, label %42
    i8 7, label %42
    i8 6, label %104
    i8 5, label %104
    i8 8, label %104
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @bt_accept_dequeue(ptr noundef %0, ptr noundef null) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %35, %4
  %8 = phi ptr [ %36, %35 ], [ %5, %4 ]
  tail call void @lock_sock_nested(ptr noundef nonnull %8, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.sco_pinfo, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.sco_conn, ptr %10, i32 0, i32 3
  %14 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %13) #12
  br label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @__sco_sock_close(ptr noundef nonnull %8) #12
  tail call void @release_sock(ptr noundef nonnull %8) #12
  %16 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 71
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  tail call void @bt_sock_unlink(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %8) #12
  %25 = load i32, ptr %16, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %16, align 4
  %27 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #12, !srcloc !9
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #12, !srcloc !17
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = icmp sgt i32 %29, 0
  br i1 %32, label %35, label %33, !prof !18

33:                                               ; preds = %31
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef 3) #12
  br label %35

34:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %8) #12
  br label %35

35:                                               ; preds = %34, %33, %31, %20, %15
  %36 = tail call ptr @bt_accept_dequeue(ptr noundef %0, ptr noundef null) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %7

38:                                               ; preds = %35, %4
  store volatile i8 9, ptr %2, align 2
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 256
  store i32 %41, ptr %39, align 4
  br label %109

42:                                               ; preds = %1, %1
  %43 = getelementptr inbounds %struct.sco_pinfo, ptr %0, i32 0, i32 7
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %103, label %47

47:                                               ; preds = %42
  store volatile i8 8, ptr %2, align 2
  %48 = icmp eq ptr %44, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.sco_conn, ptr %44, i32 0, i32 3
  %51 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %50) #12
  %52 = load ptr, ptr %43, align 4
  %53 = getelementptr inbounds %struct.sco_conn, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr @system_wq, align 4
  %55 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %54, ptr noundef %53, i32 noundef 200) #12
  %56 = load ptr, ptr %43, align 4
  br label %57

57:                                               ; preds = %49, %47
  %58 = phi ptr [ null, %47 ], [ %56, %49 ]
  %59 = getelementptr inbounds %struct.sco_conn, ptr %58, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %59) #12
  %60 = load ptr, ptr %43, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %62) #12, !srcloc !9
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %62, ptr %62, i32 1, ptr elementtype(i32) %62) #12, !srcloc !21
  %64 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %97

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 14
  %68 = load i8, ptr %67, align 1
  switch i8 %68, label %88 [
    i8 1, label %69
    i8 -128, label %69
    i8 -127, label %84
  ]

69:                                               ; preds = %66, %66
  %70 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 60
  %71 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %70) #12
  %72 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 12
  %73 = load i16, ptr %72, align 4
  %74 = icmp eq i16 %73, 1
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 31
  %77 = load i16, ptr %76, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 16
  %80 = load i8, ptr %79, align 1, !range !23
  %81 = xor i8 %80, 1
  %82 = zext i8 %81 to i32
  %83 = shl nuw nsw i32 %78, %82
  br label %88

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 31
  %86 = load i16, ptr %85, align 2
  %87 = zext i16 %86 to i32
  br label %88

88:                                               ; preds = %84, %75, %69, %66
  %89 = phi i32 [ %87, %84 ], [ %83, %75 ], [ 0, %69 ], [ 0, %66 ]
  %90 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 58
  %91 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %90) #12
  %92 = getelementptr inbounds %struct.hci_conn, ptr %61, i32 0, i32 65
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hci_dev, ptr %93, i32 0, i32 138
  %95 = load ptr, ptr %94, align 4
  %96 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %95, ptr noundef %90, i32 noundef %89) #12
  br label %97

97:                                               ; preds = %88, %57
  %98 = load ptr, ptr %43, align 4
  store ptr null, ptr %98, align 4
  %99 = load ptr, ptr %43, align 4
  %100 = getelementptr inbounds %struct.sco_conn, ptr %99, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %109

103:                                              ; preds = %42
  tail call fastcc void @sco_chan_del(ptr noundef %0, i32 noundef 104)
  br label %109

104:                                              ; preds = %1, %1, %1
  tail call fastcc void @sco_chan_del(ptr noundef %0, i32 noundef 104)
  br label %109

105:                                              ; preds = %1
  %106 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, 256
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %105, %104, %103, %97, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sco_chan_del(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sco_pinfo, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 2
  store ptr null, ptr %8, align 4
  store ptr null, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %9 = load i16, ptr %7, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #12, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #12, !srcloc !21
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 14
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %40 [
    i8 1, label %21
    i8 -128, label %21
    i8 -127, label %36
  ]

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 60
  %23 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %22) #12
  %24 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 12
  %25 = load i16, ptr %24, align 4
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 31
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 16
  %32 = load i8, ptr %31, align 1, !range !23
  %33 = xor i8 %32, 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %30, %34
  br label %40

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 31
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  br label %40

40:                                               ; preds = %36, %27, %21, %18
  %41 = phi i32 [ %39, %36 ], [ %35, %27 ], [ 0, %21 ], [ 0, %18 ]
  %42 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 58
  %43 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %42) #12
  %44 = getelementptr inbounds %struct.hci_conn, ptr %11, i32 0, i32 65
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.hci_dev, ptr %45, i32 0, i32 138
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %47, ptr noundef %42, i32 noundef %41) #12
  br label %49

49:                                               ; preds = %40, %13, %6, %2
  %50 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  store volatile i8 9, ptr %50, align 2
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 75
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0) #12
  %54 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 256
  store i32 %56, ptr %54, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bt_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_get_route(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_connect_sco(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sco_sock_timeout(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !27
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !28

11:                                               ; preds = %6
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !18

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %6 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %15, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %18 = load i16, ptr %2, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  tail call void @lock_sock_nested(ptr noundef nonnull %4, i32 noundef 0) #12
  %20 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 51
  store i32 110, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 75
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef nonnull %4) #12
  tail call void @release_sock(ptr noundef nonnull %4) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !9
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #12, !srcloc !17
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %33, label %28, !prof !18

28:                                               ; preds = %26
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #12
  br label %33

29:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %4) #12
  br label %33

30:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %33

33:                                               ; preds = %30, %29, %28, %26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_enqueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @copy_from_sockptr(ptr noundef %0, [2 x i32] %1, i32 noundef %2) unnamed_addr #9 {
  %4 = extractvalue [2 x i32] %1, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = extractvalue [2 x i32] %1, 1
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = icmp slt i32 %2, 0
  %11 = load i1, ptr @check_copy_size.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !28

14:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %34, label %16, !prof !28

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %2, i32 -1090519040) #14, !srcloc !30
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !18

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #15, !srcloc !31
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %5, i32 noundef %2) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %2, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !18

30:                                               ; preds = %27
  %31 = sub i32 %2, %28
  %32 = getelementptr i8, ptr %0, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #12
  br label %34

33:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %5, i32 %2, i1 false) #12
  br label %34

34:                                               ; preds = %33, %30, %27, %15
  %35 = phi i32 [ 0, %33 ], [ %2, %15 ], [ 0, %27 ], [ %28, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_get_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hci_send_sco(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_send_cmd(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sco_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sco_skb_put_cmsg(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.sco_pinfo, ptr %2, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 8
  %10 = tail call i32 @put_cmsg(ptr noundef %1, i32 noundef 274, i32 noundef 3, i32 noundef 1, ptr noundef %9) #12
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sco_connect_cfm(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.bdaddr_t, align 1
  %4 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 1
  switch i8 %5, label %143 [
    i8 0, label %6
    i8 2, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %140

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 65
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 67
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 60) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %143, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 1
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 3
  store i32 -32, ptr %20, align 4
  %21 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 8
  %22 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 3, i32 0, i32 2
  store ptr @sco_sock_timeout, ptr %23, align 8
  %24 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #12
  store ptr %16, ptr %11, align 4
  store ptr %0, ptr %16, align 8
  %25 = getelementptr inbounds %struct.hci_dev, ptr %10, i32 0, i32 124
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.sco_conn, ptr %16, i32 0, i32 4
  %29 = select i1 %27, i32 60, i32 %26
  store i32 %29, ptr %28, align 8
  br label %30

30:                                               ; preds = %18, %8
  %31 = phi ptr [ %16, %18 ], [ %12, %8 ]
  %32 = getelementptr inbounds %struct.sco_conn, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  tail call void @lock_sock_nested(ptr noundef nonnull %33, i32 noundef 0) #12
  %36 = getelementptr inbounds %struct.sco_pinfo, ptr %33, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sco_conn, ptr %37, i32 0, i32 3
  %41 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %40) #12
  br label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds %struct.sock_common, ptr %33, i32 0, i32 4
  store volatile i8 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 75
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef nonnull %33) #12
  tail call void @release_sock(ptr noundef nonnull %33) #12
  br label %143

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.sco_conn, ptr %31, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %47) #12
  %48 = load ptr, ptr %31, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %51 = load i16, ptr %47, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %143

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.hci_conn, ptr %48, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #12
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12
  %55 = load ptr, ptr @sco_sk_list, align 4
  %56 = icmp eq ptr %55, null
  %57 = getelementptr i8, ptr %55, i32 -84
  %58 = icmp eq ptr %57, null
  %59 = or i1 %56, %58
  br i1 %59, label %82, label %60

60:                                               ; preds = %74, %53
  %61 = phi ptr [ %79, %74 ], [ %57, %53 ]
  %62 = phi ptr [ %75, %74 ], [ null, %53 ]
  %63 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 4
  %64 = load volatile i8, ptr %63, align 2
  %65 = icmp eq i8 %64, 4
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sco_pinfo, ptr %61, i32 0, i32 1
  %68 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %67, ptr noundef dereferenceable(6) %54, i32 6) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i64 6, i1 false) #12
  %71 = call i32 @bcmp(ptr noundef dereferenceable(6) %67, ptr noundef nonnull dereferenceable(6) %3, i32 6) #12
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr %61, ptr %62
  br label %74

74:                                               ; preds = %70, %60
  %75 = phi ptr [ %62, %60 ], [ %73, %70 ]
  %76 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = getelementptr i8, ptr %77, i32 -84
  %80 = icmp eq ptr %79, null
  %81 = or i1 %78, %80
  br i1 %81, label %82, label %60

82:                                               ; preds = %74, %66, %53
  %83 = phi ptr [ null, %53 ], [ %61, %66 ], [ %75, %74 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !9
  %84 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !10
  %85 = extractvalue { i32, i32 } %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  br label %88

88:                                               ; preds = %87, %82
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #12
  %89 = icmp eq ptr %83, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %91 = load i16, ptr %47, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %143

93:                                               ; preds = %88
  tail call void @lock_sock_nested(ptr noundef nonnull %83, i32 noundef 0) #12
  %94 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @sco_proto, i32 noundef 0) #12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  tail call void @release_sock(ptr noundef nonnull %83) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %97 = load i16, ptr %47, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %143

99:                                               ; preds = %93
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %94) #12
  %100 = getelementptr inbounds %struct.bt_sock, ptr %94, i32 0, i32 1
  store volatile ptr %100, ptr %100, align 4
  %101 = getelementptr inbounds %struct.bt_sock, ptr %94, i32 0, i32 1, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 80
  store ptr @sco_sock_destruct, ptr %102, align 8
  %103 = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 31
  store i32 4000, ptr %103, align 4
  %104 = getelementptr inbounds %struct.sock_common, ptr %94, i32 0, i32 13
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -257
  store i32 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 46
  store i16 2, ptr %107, align 4
  %108 = getelementptr inbounds %struct.sock_common, ptr %94, i32 0, i32 4
  store volatile i8 2, ptr %108, align 2
  %109 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 4
  store i16 96, ptr %109, align 8
  %110 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 6
  store i8 2, ptr %110, align 1
  %111 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 6, i32 1
  store i16 -1, ptr %111, align 1
  %112 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 6, i32 2
  store i16 -1, ptr %112, align 1
  %113 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 6, i32 3
  store i8 0, ptr %113, align 1
  tail call void @bt_sock_link(ptr noundef nonnull @sco_sk_list, ptr noundef nonnull %94) #12
  %114 = getelementptr inbounds %struct.sock, ptr %83, i32 0, i32 45
  %115 = load i16, ptr %114, align 2
  %116 = getelementptr inbounds %struct.sock, ptr %94, i32 0, i32 45
  store i16 %115, ptr %116, align 2
  %117 = getelementptr inbounds %struct.bt_sock, ptr %83, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.bt_sock, ptr %94, i32 0, i32 3
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 1
  %121 = load ptr, ptr %31, align 4
  %122 = getelementptr inbounds %struct.hci_conn, ptr %121, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %120, ptr noundef align 1 dereferenceable(6) %122, i32 6, i1 false) #12
  %123 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 2
  %124 = load ptr, ptr %31, align 4
  %125 = getelementptr inbounds %struct.hci_conn, ptr %124, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %123, ptr noundef align 1 dereferenceable(6) %125, i32 6, i1 false) #12
  %126 = load ptr, ptr %31, align 4
  %127 = getelementptr inbounds %struct.hci_conn, ptr %126, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %127) #12, !srcloc !9
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %127, ptr %127, i32 1, ptr elementtype(i32) %127) #12, !srcloc !47
  %129 = getelementptr inbounds %struct.hci_conn, ptr %126, i32 0, i32 58
  %130 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %129) #12
  %131 = getelementptr inbounds %struct.sco_pinfo, ptr %94, i32 0, i32 7
  store ptr %31, ptr %131, align 4
  store ptr %94, ptr %32, align 4
  tail call void @bt_accept_enqueue(ptr noundef nonnull %83, ptr noundef nonnull %94, i1 noundef zeroext true) #12
  %132 = load volatile i32, ptr %117, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i8 1, i8 6
  store volatile i8 %135, ptr %108, align 2
  %136 = getelementptr inbounds %struct.sock, ptr %83, i32 0, i32 76
  %137 = load ptr, ptr %136, align 8
  tail call void %137(ptr noundef nonnull %83) #12
  tail call void @release_sock(ptr noundef nonnull %83) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %138 = load i16, ptr %47, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %143

140:                                              ; preds = %6
  %141 = zext i8 %1 to i16
  %142 = tail call i32 @bt_to_errno(i16 noundef zeroext %141) #12
  tail call fastcc void @sco_conn_del(ptr noundef %0, i32 noundef %142)
  br label %143

143:                                              ; preds = %140, %99, %96, %90, %50, %42, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sco_disconn_cfm(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 14
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %8 [
    i8 0, label %5
    i8 2, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = zext i8 %1 to i16
  %7 = tail call i32 @bt_to_errno(i16 noundef zeroext %6) #12
  tail call fastcc void @sco_conn_del(ptr noundef %0, i32 noundef %7)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sco_conn_del(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_conn, ptr %0, i32 0, i32 67
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !27
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !28

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !18

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #12
  br label %22

22:                                               ; preds = %20, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %23 = load i16, ptr %7, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  tail call void @lock_sock_nested(ptr noundef nonnull %9, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.sco_pinfo, ptr %9, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sco_conn, ptr %26, i32 0, i32 3
  %30 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %29) #12
  br label %31

31:                                               ; preds = %28, %22
  tail call fastcc void @sco_chan_del(ptr noundef nonnull %9, i32 noundef %1)
  tail call void @release_sock(ptr noundef nonnull %9) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !9
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !17
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = icmp sgt i32 %33, 0
  br i1 %36, label %42, label %37, !prof !18

37:                                               ; preds = %35
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #12
  br label %42

38:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void @sk_free(ptr noundef nonnull %9) #12
  br label %42

39:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %40 = load i16, ptr %7, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %42

42:                                               ; preds = %39, %38, %37, %35
  %43 = getelementptr inbounds %struct.sco_conn, ptr %4, i32 0, i32 3
  %44 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %43) #12
  store ptr null, ptr %3, align 4
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %45

45:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_to_errno(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @sco_debugfs_show, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sco_debugfs_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12
  %3 = load ptr, ptr @sco_sk_list, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -84
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %21, label %8

8:                                                ; preds = %8, %2
  %9 = phi ptr [ %18, %8 ], [ %5, %2 ]
  %10 = getelementptr inbounds %struct.sco_pinfo, ptr %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.sco_pinfo, ptr %9, i32 0, i32 2
  %12 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 4
  %13 = load volatile i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %10, ptr noundef %11, i32 noundef %14) #12
  %15 = getelementptr inbounds %struct.sock_common, ptr %9, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -84
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %8

21:                                               ; preds = %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !9
  %22 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @sco_sk_list, i32 0, i32 1)) #12, !srcloc !10
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  br label %26

26:                                               ; preds = %25, %21
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

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
!8 = !{i64 2148962039}
!9 = !{i64 570016, i64 2148059987, i64 2148060013, i64 2148060060, i64 2148060082, i64 2148060110, i64 2148060130}
!10 = !{i64 1465463, i64 1465486, i64 1465506, i64 1465530, i64 1465546}
!11 = !{i64 2148949981}
!12 = !{i64 2148950056, i64 2148950083, i64 2148950130, i64 2148950152, i64 2148950180, i64 2148950200}
!13 = !{i64 2148999642}
!14 = !{i64 2148954157}
!15 = !{i64 2148977160}
!16 = !{i64 2148173082}
!17 = !{i64 2148075217, i64 2148075249, i64 2148075278, i64 2148075312, i64 2148075343, i64 2148075366}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2149022145}
!20 = !{i64 2148172081}
!21 = !{i64 2148074443, i64 2148074475, i64 2148074504, i64 2148074538, i64 2148074569, i64 2148074592}
!22 = !{i64 2148172284}
!23 = !{i8 0, i8 2}
!24 = !{i64 2148961234}
!25 = !{i64 1464448}
!26 = !{i64 2148999203}
!27 = !{i64 2148072860, i64 2148072892, i64 2148072921, i64 2148072955, i64 2148072986, i64 2148073009}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{!"auto-init"}
!30 = !{i64 2151268981, i64 2151269006}
!31 = !{i64 3765093}
!32 = !{i64 3765290}
!33 = !{i64 2151250569}
!34 = !{i64 2155823917, i64 2155824197, i64 2155824531, i64 2155824865}
!35 = !{i64 2151269559, i64 2151269584}
!36 = !{i64 2155840963, i64 2155841243, i64 2155841577, i64 2155841911}
!37 = !{i64 2155850164, i64 2155850444, i64 2155850778, i64 2155851112}
!38 = !{i64 2155860373, i64 2155860653, i64 2155860987, i64 2155861321}
!39 = !{i64 2155868627, i64 2155868907, i64 2155869241, i64 2155869575}
!40 = !{i64 2155876961, i64 2155877241, i64 2155877575, i64 2155877909}
!41 = !{i64 2155884902, i64 2155885182, i64 2155885516, i64 2155885850}
!42 = !{i64 2155899927, i64 2155900207, i64 2155900541, i64 2155900875}
!43 = !{i64 2155317585}
!44 = !{i64 578666, i64 578683, i64 578707, i64 578733, i64 578751}
!45 = !{i64 2155317902}
!46 = !{i64 2153816709, i64 2153817197, i64 2153816746, i64 2153816802, i64 2153816836, i64 2153816860, i64 2153816901, i64 2153816922, i64 2153816950, i64 2153816984}
!47 = !{i64 2148071402, i64 2148071428, i64 2148071457, i64 2148071491, i64 2148071522, i64 2148071545}
