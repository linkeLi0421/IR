; ModuleID = '/llk/IR/net/bluetooth/l2cap_sock.c_pt.bc'
source_filename = "../net/bluetooth/l2cap_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_l2cap_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22l2cap_is_socket\22\09\09\09\09\09"
module asm "__kstrtabns_l2cap_is_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.61, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.61 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.145, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.145 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
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
%struct.l2cap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.l2cap_pinfo = type { %struct.bt_sock, ptr, ptr }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.71, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.108, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.109, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
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
%union.anon.108 = type { ptr }
%union.anon.109 = type { ptr }
%struct.sk_buff_head = type { %union.anon.69, i32, %struct.spinlock }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.l2cap_chan = type { ptr, ptr, ptr, %struct.kref, %struct.atomic_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [64 x i8], i8, i8, i8, i8, i16, i16, i16, i8, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, ptr, ptr, i16, i8, i16, i8, i8, i16, i32, i32, i32, i8, i8, i16, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.l2cap_seq_list, %struct.l2cap_seq_list, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex }
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.l2cap_seq_list = type { i16, i16, i16, ptr }
%struct.sockaddr_l2 = type { i16, i16, %struct.bdaddr_t, i16, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.161, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.114 }
%union.anon.114 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.115 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.161 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.l2cap_conn = type { ptr, ptr, i32, i32, i8, i8, i8, i8, %struct.delayed_work, ptr, i32, i8, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, i8, ptr, %struct.list_head, %struct.mutex, %struct.kref, %struct.list_head }
%struct.l2cap_options = type { i16, i16, i16, i8, i8, i8, i16 }
%struct.bt_security = type { i8, i8 }
%struct.bt_power = type { i8 }
%struct.hci_conn = type { %struct.list_head, %struct.atomic_t, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, %struct.bdaddr_t, i8, i8, i16, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x [8 x i8]], i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, [31 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i32, i8, i8, i8, i32, %struct.sk_buff_head, %struct.list_head, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bt_codec, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bt_codec = type <{ i8, i16, i16, i8, i8 }>
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
%struct.discovery_state = type { i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.bdaddr_t, i8, i8, i32, [31 x i8], i8, i8, i8, i8, i8, i16, ptr, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.hci_conn_hash = type { %struct.list_head, i32, i32, i32, i32, i32 }
%struct.hci_dev_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.l2cap_conninfo = type { i16, [3 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.40, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.31, %union.anon.32 }
%union.anon.31 = type { ptr }
%union.anon.32 = type { i64 }
%union.anon.40 = type { ptr }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }

@l2cap_sock_ops = internal constant %struct.proto_ops { i32 31, ptr @__this_module, ptr @l2cap_sock_release, ptr @l2cap_sock_bind, ptr @l2cap_sock_connect, ptr @sock_no_socketpair, ptr @l2cap_sock_accept, ptr @l2cap_sock_getname, ptr @bt_sock_poll, ptr @bt_sock_ioctl, ptr @sock_gettstamp, ptr @l2cap_sock_listen, ptr @l2cap_sock_shutdown, ptr @l2cap_sock_setsockopt, ptr @l2cap_sock_getsockopt, ptr null, ptr @l2cap_sock_sendmsg, ptr @l2cap_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_l2cap_is_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_l2cap_is_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_l2cap_is_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @l2cap_is_socket to i32), ptr @__kstrtab_l2cap_is_socket, ptr @__kstrtabns_l2cap_is_socket }, section "___ksymtab+l2cap_is_socket", align 4
@l2cap_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 552, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.61 zeroinitializer, ptr @__this_module, [32 x i8] c"L2CAP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@l2cap_sock_family_ops = internal constant %struct.net_proto_family { i32 31, ptr @l2cap_sock_create, ptr @__this_module }, align 4
@.str = private unnamed_addr constant [34 x i8] c"L2CAP socket registration failed\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [6 x i8] c"l2cap\00", align 1
@l2cap_sk_list = internal global %struct.bt_sock_list zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create L2CAP proc file\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"L2CAP socket layer initialized\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@enable_ecred = external dso_local local_unnamed_addr global i8, align 1
@disable_ertm = external dso_local local_unnamed_addr global i8, align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@l2cap_chan_ops = internal constant %struct.l2cap_ops { ptr @.str.6, ptr @l2cap_sock_new_connection_cb, ptr @l2cap_sock_recv_cb, ptr @l2cap_sock_teardown_cb, ptr @l2cap_sock_close_cb, ptr @l2cap_sock_state_change_cb, ptr @l2cap_sock_ready_cb, ptr @l2cap_sock_defer_cb, ptr @l2cap_sock_resume_cb, ptr @l2cap_sock_suspend_cb, ptr @l2cap_sock_set_shutdown_cb, ptr @l2cap_sock_get_sndtimeo_cb, ptr @l2cap_sock_get_peer_pid_cb, ptr @l2cap_sock_alloc_skb_cb, ptr @l2cap_sock_filter }, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"L2CAP Socket Interface\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_l2cap_is_socket], section "llvm.metadata"
@switch.table.l2cap_sock_getsockopt = private unnamed_addr constant [4 x i32] [i32 2, i32 6, i32 38, i32 102], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @l2cap_is_socket(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @l2cap_sock_ops
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i1 [ false, %1 ], [ %6, %3 ]
  ret i1 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @l2cap_init_sockets() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @l2cap_proto, i32 noundef 0) #15
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bt_sock_register(i32 noundef 0, ptr noundef nonnull @l2cap_sock_family_ops) #15
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #15
  br label %12

7:                                                ; preds = %3
  %8 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @l2cap_sk_list, ptr noundef null) #15
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #15
  tail call void @bt_sock_unregister(i32 noundef 0) #15
  br label %12

11:                                               ; preds = %7
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3) #15
  br label %14

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %4, %6 ], [ %8, %10 ]
  tail call void @proto_unregister(ptr noundef nonnull @l2cap_proto) #15
  br label %14

14:                                               ; preds = %12, %11, %0
  %15 = phi i32 [ %13, %12 ], [ 0, %11 ], [ %1, %0 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @l2cap_cleanup_sockets() local_unnamed_addr #4 {
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1) #15
  tail call void @bt_sock_unregister(i32 noundef 0) #15
  tail call void @proto_unregister(ptr noundef nonnull @l2cap_proto) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_release(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  tail call void @bt_sock_unlink(ptr noundef nonnull @l2cap_sk_list, ptr noundef nonnull %3) #15
  %6 = tail call i32 @l2cap_sock_shutdown(ptr noundef %0, i32 noundef 2)
  %7 = getelementptr inbounds %struct.l2cap_pinfo, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  tail call void @l2cap_chan_hold(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %10) #15
  %11 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %15, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %10) #15
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = load ptr, ptr %14, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8
  tail call void @l2cap_chan_put(ptr noundef %23) #15
  %24 = load i32, ptr %11, align 4
  %25 = or i32 %24, 1
  store i32 %25, ptr %11, align 4
  %26 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #15, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #15, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef 3) #15
  br label %34

33:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  tail call void @sk_free(ptr noundef nonnull %3) #15
  br label %34

34:                                               ; preds = %33, %32, %30, %19, %5
  tail call void @mutex_unlock(ptr noundef %9) #15
  tail call void @l2cap_chan_put(ptr noundef %8) #15
  br label %35

35:                                               ; preds = %34, %1
  %36 = phi i32 [ %6, %34 ], [ 0, %1 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_bind(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca %struct.sockaddr_l2, align 2
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.l2cap_pinfo, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(14) %4, i8 0, i32 14, i1 false), !annotation !13
  %9 = icmp eq ptr %1, null
  %10 = icmp ult i32 %2, 2
  %11 = or i1 %9, %10
  br i1 %11, label %105, label %12

12:                                               ; preds = %3
  %13 = load i16, ptr %1, align 2
  %14 = icmp eq i16 %13, 31
  br i1 %14, label %15, label %105

15:                                               ; preds = %12
  %16 = tail call i32 @llvm.umin.i32(i32 %2, i32 14)
  %17 = icmp ugt i32 %16, 13
  %18 = sub nuw nsw i32 14, %16
  %19 = select i1 %17, i32 0, i32 %18
  %20 = getelementptr i8, ptr %4, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %19, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %4, ptr nonnull align 2 %1, i32 %16, i1 false)
  %21 = getelementptr inbounds %struct.sockaddr_l2, ptr %4, i32 0, i32 3
  %22 = load i16, ptr %21, align 2
  %23 = icmp ne i16 %22, 0
  %24 = getelementptr inbounds %struct.sockaddr_l2, ptr %4, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = icmp ne i16 %25, 0
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %105, label %28

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.sockaddr_l2, ptr %4, i32 0, i32 4
  %30 = load i8, ptr %29, align 2
  %31 = icmp ult i8 %30, 3
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = icmp eq i8 %30, 0
  %34 = and i16 %22, -5
  %35 = icmp eq i16 %34, 0
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %105

37:                                               ; preds = %32
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %38 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %39 = load volatile i8, ptr %38, align 2
  %40 = icmp eq i8 %39, 2
  br i1 %40, label %41, label %103

41:                                               ; preds = %37
  %42 = icmp eq i16 %25, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %41
  %44 = icmp eq i8 %30, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = and i16 %25, 257
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %103

48:                                               ; preds = %45
  %49 = icmp ult i16 %25, 4097
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = tail call zeroext i1 @capable(i32 noundef 10) #15
  br i1 %51, label %58, label %103

52:                                               ; preds = %43
  %53 = icmp ugt i16 %25, 255
  br i1 %53, label %103, label %54

54:                                               ; preds = %52
  %55 = icmp ult i16 %25, 128
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call zeroext i1 @capable(i32 noundef 10) #15
  br i1 %57, label %58, label %103

58:                                               ; preds = %56, %54, %50, %48, %41
  %59 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 8
  %60 = getelementptr inbounds %struct.sockaddr_l2, ptr %4, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %59, ptr noundef align 2 dereferenceable(6) %60, i32 6, i1 false) #15
  %61 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 9
  store i8 %30, ptr %61, align 2
  %62 = icmp eq i16 %22, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = tail call i32 @l2cap_add_scid(ptr noundef %8, i16 noundef zeroext %22) #15
  br label %67

65:                                               ; preds = %58
  %66 = call i32 @l2cap_add_psm(ptr noundef %8, ptr noundef %60, i16 noundef zeroext %25) #15
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 18
  %72 = load i8, ptr %71, align 1
  switch i8 %72, label %88 [
    i8 2, label %73
    i8 3, label %78
    i8 1, label %84
    i8 4, label %86
  ]

73:                                               ; preds = %70
  %74 = load i16, ptr %24, align 2
  %75 = icmp eq i16 %74, 33
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 20
  store i8 0, ptr %77, align 1
  br label %88

78:                                               ; preds = %70
  %79 = load i16, ptr %24, align 2
  %80 = and i16 %79, -3
  %81 = icmp eq i16 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 20
  store i8 0, ptr %83, align 1
  br label %88

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 20
  store i8 0, ptr %85, align 1
  br label %88

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 40
  call void @_set_bit(i32 noundef 10, ptr noundef %87) #15
  br label %88

88:                                               ; preds = %86, %84, %82, %78, %76, %73, %70
  %89 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 10
  %90 = load i16, ptr %89, align 4
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = load i8, ptr %61, align 2
  %94 = add i8 %93, -1
  %95 = icmp ult i8 %94, 2
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 17
  %98 = load i8, ptr %97, align 2
  %99 = icmp eq i8 %98, -127
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  store i8 -128, ptr %97, align 2
  br label %101

101:                                              ; preds = %100, %96, %92, %88
  %102 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 5
  store i8 3, ptr %102, align 4
  store volatile i8 3, ptr %38, align 2
  br label %103

103:                                              ; preds = %101, %67, %56, %52, %50, %45, %37
  %104 = phi i32 [ %68, %67 ], [ %68, %101 ], [ -77, %37 ], [ -13, %56 ], [ -22, %52 ], [ -13, %50 ], [ -22, %45 ]
  call void @release_sock(ptr noundef %6) #15
  br label %105

105:                                              ; preds = %103, %32, %28, %15, %12, %3
  %106 = phi i32 [ %104, %103 ], [ -22, %12 ], [ -22, %3 ], [ -22, %15 ], [ -22, %28 ], [ -22, %32 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %4) #15
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_connect(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.sockaddr_l2, align 2
  %6 = alloca %struct.bdaddr_t, align 1
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  %9 = getelementptr inbounds %struct.l2cap_pinfo, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(14) %5, i8 0, i32 14, i1 false), !annotation !13
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #15
  %11 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  tail call void @release_sock(ptr noundef %8) #15
  br i1 %14, label %15, label %90

15:                                               ; preds = %4
  %16 = icmp eq ptr %1, null
  %17 = icmp ult i32 %2, 2
  %18 = or i1 %16, %17
  br i1 %18, label %90, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %1, align 2
  %21 = icmp eq i16 %20, 31
  br i1 %21, label %22, label %90

22:                                               ; preds = %19
  %23 = tail call i32 @llvm.umin.i32(i32 %2, i32 14)
  %24 = icmp ugt i32 %23, 13
  %25 = sub nuw nsw i32 14, %23
  %26 = select i1 %24, i32 0, i32 %25
  %27 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %26, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %5, ptr nonnull align 2 %1, i32 %23, i1 false)
  %28 = getelementptr inbounds %struct.sockaddr_l2, ptr %5, i32 0, i32 3
  %29 = load i16, ptr %28, align 2
  %30 = icmp ne i16 %29, 0
  %31 = getelementptr inbounds %struct.sockaddr_l2, ptr %5, i32 0, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = icmp ne i16 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %90, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.sockaddr_l2, ptr %5, i32 0, i32 4
  %37 = load i8, ptr %36, align 2
  %38 = icmp ult i8 %37, 3
  br i1 %38, label %39, label %90

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 9
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %6, i8 0, i64 6, i1 false)
  %45 = call i32 @bcmp(ptr noundef dereferenceable(6) %44, ptr noundef nonnull dereferenceable(6) %6, i32 6)
  %46 = icmp ne i32 %45, 0
  %47 = add nsw i8 %37, -1
  %48 = icmp ult i8 %47, 2
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 13
  %52 = load i16, ptr %51, align 2
  %53 = icmp ne i16 %52, 4
  %54 = icmp ne i16 %29, 4
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %90, label %56

56:                                               ; preds = %50
  store i8 1, ptr %40, align 2
  br label %64

57:                                               ; preds = %39
  %58 = icmp eq i8 %37, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %57, %43
  %60 = icmp eq i8 %37, 0
  %61 = and i16 %29, -5
  %62 = icmp eq i16 %61, 0
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %59, %56
  %65 = phi i8 [ %41, %59 ], [ 1, %56 ]
  %66 = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 10
  %67 = load i16, ptr %66, align 4
  %68 = icmp ne i16 %67, 0
  %69 = add i8 %65, -1
  %70 = icmp ult i8 %69, 2
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.l2cap_chan, ptr %10, i32 0, i32 17
  %74 = load i8, ptr %73, align 2
  %75 = icmp eq i8 %74, -127
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i8 -128, ptr %73, align 2
  br label %77

77:                                               ; preds = %76, %72, %64
  tail call fastcc void @l2cap_sock_init_pid(ptr noundef %8)
  %78 = getelementptr inbounds %struct.sockaddr_l2, ptr %5, i32 0, i32 2
  %79 = call i32 @l2cap_chan_connect(ptr noundef %10, i16 noundef zeroext %32, i16 noundef zeroext %29, ptr noundef %78, i8 noundef zeroext %37) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #15
  %82 = and i32 %3, 2048
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 31
  %86 = load i32, ptr %85, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %86, %84 ], [ 0, %81 ]
  %89 = call i32 @bt_sock_wait_state(ptr noundef %8, i32 noundef 1, i32 noundef %88) #15
  call void @release_sock(ptr noundef %8) #15
  br label %90

90:                                               ; preds = %87, %77, %59, %57, %50, %35, %22, %19, %15, %4
  %91 = phi i32 [ %89, %87 ], [ -22, %4 ], [ -22, %19 ], [ -22, %15 ], [ -22, %22 ], [ -22, %35 ], [ -22, %50 ], [ -22, %57 ], [ %79, %77 ], [ -22, %59 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #15
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_accept(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #4 {
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %7 = tail call ptr @llvm.thread.pointer() #15
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
  call void @lock_sock_nested(ptr noundef %12, i32 noundef 2) #15
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
  call void @add_wait_queue_exclusive(ptr noundef %21, ptr noundef nonnull %5) #15
  %22 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 4
  %23 = load volatile i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 4
  br i1 %24, label %25, label %46

25:                                               ; preds = %42, %18
  %26 = phi i32 [ %43, %42 ], [ %19, %18 ]
  %27 = call ptr @bt_accept_dequeue(ptr noundef %12, ptr noundef %1) #15
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %29
  %32 = load volatile i32, ptr %7, align 4
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39, !prof !11

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
  call void @release_sock(ptr noundef %12) #15
  %43 = call i32 @wait_woken(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %26) #15
  call void @lock_sock_nested(ptr noundef %12, i32 noundef 2) #15
  %44 = load volatile i8, ptr %22, align 2
  %45 = icmp eq i8 %44, 4
  br i1 %45, label %25, label %46

46:                                               ; preds = %42, %39, %29, %18
  %47 = phi i32 [ %41, %39 ], [ -77, %18 ], [ -11, %29 ], [ -77, %42 ]
  %48 = load volatile ptr, ptr %20, align 4
  call void @remove_wait_queue(ptr noundef %48, ptr noundef nonnull %5) #15
  br label %51

49:                                               ; preds = %25
  %50 = load volatile ptr, ptr %20, align 4
  call void @remove_wait_queue(ptr noundef %50, ptr noundef nonnull %5) #15
  store i32 3, ptr %1, align 64
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %47, %46 ], [ 0, %49 ]
  call void @release_sock(ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  ret i32 %52
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_sock_getname(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %11 = load volatile i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load volatile i8, ptr %10, align 2
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load volatile i8, ptr %10, align 2
  %18 = icmp eq i8 %17, 6
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load volatile i8, ptr %10, align 2
  %21 = icmp eq i8 %20, 7
  br i1 %21, label %22, label %48

22:                                               ; preds = %19, %16, %13, %9
  %23 = getelementptr inbounds i8, ptr %1, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(14) %23, i8 0, i32 12, i1 false)
  store i16 31, ptr %1, align 2
  %24 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 10
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 1
  store i16 %25, ptr %26, align 2
  %27 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %27, ptr noundef align 1 dereferenceable(6) %28, i32 6, i1 false) #15
  %29 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 12
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 3
  store i16 %30, ptr %31, align 2
  %32 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 7
  br label %44

33:                                               ; preds = %3
  %34 = getelementptr inbounds i8, ptr %1, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(14) %34, i8 0, i32 12, i1 false)
  store i16 31, ptr %1, align 2
  %35 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 10
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 1
  store i16 %36, ptr %37, align 2
  %38 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 2
  %39 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %38, ptr noundef align 1 dereferenceable(6) %39, i32 6, i1 false) #15
  %40 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 13
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 3
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 9
  br label %44

44:                                               ; preds = %33, %22
  %45 = phi ptr [ %32, %22 ], [ %43, %33 ]
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 4
  store i8 %46, ptr %47, align 2
  br label %48

48:                                               ; preds = %44, %19
  %49 = phi i32 [ -107, %19 ], [ 14, %44 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_poll(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_gettstamp(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_listen(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.l2cap_pinfo, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #15
  %7 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 45
  %12 = load i16, ptr %11, align 2
  switch i16 %12, label %54 [
    i16 5, label %13
    i16 1, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 17
  %15 = load i8, ptr %14, align 2
  switch i8 %15, label %54 [
    i8 0, label %22
    i8 -128, label %22
    i8 -127, label %16
    i8 3, label %19
    i8 4, label %19
  ]

16:                                               ; preds = %13
  %17 = load i8, ptr @enable_ecred, align 1, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %54, label %22

19:                                               ; preds = %13, %13
  %20 = load i8, ptr @disable_ertm, align 1, !range !14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %19, %16, %13, %13
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, ptr %23, i32 0, i32 17
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %25, -127
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %28) #15
  %29 = tail call ptr @llvm.thread.pointer() #15
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 93
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 22, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #15, !srcloc !9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #15, !srcloc !15
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39, !prof !16

39:                                               ; preds = %35
  %40 = add i32 %37, 1
  %41 = or i32 %40, %37
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %39, %35
  %44 = phi i32 [ 2, %35 ], [ 1, %39 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef %44) #15
  br label %45

45:                                               ; preds = %43, %39, %27
  %46 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 60
  store ptr %33, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %47 = load i16, ptr %28, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %49

49:                                               ; preds = %45, %22
  %50 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 54
  store i32 %1, ptr %50, align 8
  %51 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 53
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 4
  store volatile i32 2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.l2cap_chan, ptr %6, i32 0, i32 5
  store i8 4, ptr %53, align 4
  store volatile i8 4, ptr %7, align 2
  br label %54

54:                                               ; preds = %49, %19, %16, %13, %10, %2
  %55 = phi i32 [ 0, %49 ], [ -77, %2 ], [ -22, %10 ], [ -95, %16 ], [ -95, %19 ], [ -95, %13 ]
  tail call void @release_sock(ptr noundef %4) #15
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_shutdown(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = add i32 %1, 1
  %7 = icmp eq ptr %5, null
  br i1 %7, label %150, label %8

8:                                                ; preds = %2
  tail call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #15
  %9 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 66
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = and i32 %6, %11
  %13 = icmp eq i32 %12, %6
  br i1 %13, label %144, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #15, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #15, !srcloc !15
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !16

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #15
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  tail call void @l2cap_chan_hold(ptr noundef %27) #15
  %28 = getelementptr inbounds %struct.l2cap_chan, ptr %27, i32 0, i32 17
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 3
  br i1 %30, label %31, label %93

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.l2cap_chan, ptr %27, i32 0, i32 53
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %93, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.l2cap_chan, ptr %27, i32 0, i32 5
  %37 = load i8, ptr %36, align 4
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #15
  %40 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 1
  %41 = tail call ptr @llvm.thread.pointer() #15
  store i32 0, ptr %3, align 4
  store ptr %41, ptr %40, align 4
  %42 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 2
  store ptr @default_wake_function, ptr %42, align 4
  %43 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3
  store ptr null, ptr %43, align 4
  %44 = getelementptr inbounds %struct.wait_queue_entry, ptr %3, i32 0, i32 3, i32 1
  store ptr null, ptr %44, align 4
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %45, 1000
  %47 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 17
  %48 = load volatile ptr, ptr %47, align 4
  call void @add_wait_queue(ptr noundef %48, ptr noundef nonnull %3) #15
  %49 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 1
  store volatile i32 1, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !21
  %50 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  br label %51

51:                                               ; preds = %80, %39
  %52 = phi i32 [ 20, %39 ], [ %66, %80 ]
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 20, i32 %52
  %55 = load volatile i32, ptr %41, align 4
  %56 = and i32 %55, 256
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62, !prof !11

58:                                               ; preds = %51
  %59 = load volatile i32, ptr %41, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58, %51
  %63 = icmp eq i32 %54, 2147483647
  %64 = select i1 %63, i32 -512, i32 -4
  br label %86

65:                                               ; preds = %58
  call void @release_sock(ptr noundef nonnull %5) #15
  %66 = call i32 @schedule_timeout(i32 noundef %54) #15
  call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #15
  store volatile i32 1, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !22
  %67 = load i32, ptr %50, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69, !prof !11

69:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #15, !srcloc !9
  %70 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %50) #15, !srcloc !24
  %71 = extractvalue { i32, i32 } %70, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %69, %65
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = sub i32 %46, %74
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i16, ptr %32, align 4
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i8, ptr %36, align 4
  %82 = icmp eq i8 %81, 1
  br i1 %82, label %51, label %86

83:                                               ; preds = %69
  %84 = extractvalue { i32, i32 } %70, 0
  %85 = sub i32 0, %84
  br label %86

86:                                               ; preds = %83, %80, %77, %73, %62
  %87 = phi i32 [ %64, %62 ], [ %85, %83 ], [ -67, %73 ], [ 0, %77 ], [ 0, %80 ]
  store volatile i32 0, ptr %49, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !26
  %88 = load volatile ptr, ptr %47, align 4
  call void @remove_wait_queue(ptr noundef %88, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #15
  %89 = load i8, ptr %9, align 2
  %90 = zext i8 %89 to i32
  %91 = and i32 %6, %90
  %92 = icmp eq i32 %91, %6
  br i1 %92, label %133, label %93

93:                                               ; preds = %86, %35, %31, %25
  %94 = phi i32 [ %87, %86 ], [ 0, %35 ], [ 0, %31 ], [ 0, %25 ]
  %95 = and i32 %6, 1
  %96 = icmp ne i32 %95, 0
  %97 = load i8, ptr %9, align 2
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %96, i1 %99, i1 false
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = or i8 %97, 1
  store i8 %102, ptr %9, align 2
  %103 = zext i8 %102 to i32
  %104 = and i32 %6, %103
  %105 = icmp eq i32 %104, %6
  br i1 %105, label %133, label %106

106:                                              ; preds = %101, %93
  %107 = phi i8 [ %102, %101 ], [ %97, %93 ]
  %108 = or i8 %107, 2
  store i8 %108, ptr %9, align 2
  call void @release_sock(ptr noundef nonnull %5) #15
  %109 = getelementptr inbounds %struct.l2cap_chan, ptr %27, i32 0, i32 86
  call void @mutex_lock(ptr noundef %109) #15
  %110 = load ptr, ptr %27, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = call ptr @l2cap_conn_get(ptr noundef nonnull %110) #15
  call void @mutex_unlock(ptr noundef %109) #15
  %114 = getelementptr inbounds %struct.l2cap_conn, ptr %110, i32 0, i32 19
  call void @mutex_lock(ptr noundef %114) #15
  call void @mutex_lock(ptr noundef %109) #15
  call void @l2cap_chan_close(ptr noundef %27, i32 noundef 0) #15
  call void @mutex_unlock(ptr noundef %109) #15
  call void @mutex_unlock(ptr noundef %114) #15
  call void @l2cap_conn_put(ptr noundef nonnull %110) #15
  br label %116

115:                                              ; preds = %106
  call void @mutex_unlock(ptr noundef %109) #15
  call void @mutex_lock(ptr noundef %109) #15
  call void @l2cap_chan_close(ptr noundef %27, i32 noundef 0) #15
  call void @mutex_unlock(ptr noundef %109) #15
  br label %116

116:                                              ; preds = %115, %112
  call void @lock_sock_nested(ptr noundef nonnull %5, i32 noundef 0) #15
  %117 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 13
  %118 = load volatile i32, ptr %117, align 4
  %119 = and i32 %118, 16
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 48
  %123 = load i32, ptr %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = tail call ptr @llvm.thread.pointer() #15
  %127 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = call i32 @bt_sock_wait_state(ptr noundef nonnull %5, i32 noundef 9, i32 noundef %123) #15
  br label %133

133:                                              ; preds = %131, %125, %121, %116, %101, %86
  %134 = phi i32 [ %87, %86 ], [ %94, %125 ], [ %132, %131 ], [ %94, %121 ], [ %94, %116 ], [ %94, %101 ]
  call void @l2cap_chan_put(ptr noundef %27) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #15, !srcloc !9
  %135 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #15, !srcloc !10
  %136 = extractvalue { i32, i32, i32 } %135, 0
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = icmp sgt i32 %136, 0
  br i1 %139, label %142, label %140, !prof !11

140:                                              ; preds = %138
  call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #15
  br label %142

141:                                              ; preds = %133
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  call void @sk_free(ptr noundef nonnull %5) #15
  br label %142

142:                                              ; preds = %141, %140, %138
  %143 = icmp eq i32 %134, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %142, %8
  %145 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %146 = load i32, ptr %145, align 4
  %147 = sub i32 0, %146
  br label %148

148:                                              ; preds = %144, %142
  %149 = phi i32 [ %134, %142 ], [ %147, %144 ]
  call void @release_sock(ptr noundef nonnull %5) #15
  br label %150

150:                                              ; preds = %148, %2
  %151 = phi i32 [ %149, %148 ], [ 0, %2 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #4 {
  %6 = alloca %struct.l2cap_options, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.bt_security, align 2
  %9 = alloca %struct.bt_power, align 1
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.l2cap_pinfo, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #15
  store i16 0, ptr %11, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #15
  store i8 0, ptr %12, align 1, !annotation !13
  switch i32 %1, label %451 [
    i32 6, label %17
    i32 274, label %161
  ]

17:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %6, i8 0, i32 12, i1 false) #15, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !annotation !13
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #15
  switch i32 %2, label %159 [
    i32 1, label %18
    i32 3, label %102
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 9
  %20 = load i8, ptr %19, align 2
  %21 = add i8 %20, -1
  %22 = icmp ult i8 %21, 2
  br i1 %22, label %159, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %25 = load volatile i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %159, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 14
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 15
  %32 = load i16, ptr %31, align 2
  store i16 %32, ptr %6, align 2
  %33 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 16
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 2
  store i16 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 17
  %37 = load i8, ptr %36, align 2
  %38 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 3
  store i8 %37, ptr %38, align 2
  %39 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 26
  %40 = load i8, ptr %39, align 2
  %41 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 4
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 30
  %43 = load i8, ptr %42, align 2
  %44 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 5
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 27
  %46 = load i16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 6
  store i16 %46, ptr %47, align 2
  %48 = tail call i32 @llvm.umin.i32(i32 %4, i32 12) #15
  %49 = extractvalue [2 x i32] %3, 0
  %50 = inttoptr i32 %49 to ptr
  %51 = extractvalue [2 x i32] %3, 1
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %27
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %50, i32 %48, i32 -1090519040) #16, !srcloc !27
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65, !prof !11

58:                                               ; preds = %54
  %59 = tail call ptr @llvm.thread.pointer() #15
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #17, !srcloc !28
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %64 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %50, i32 noundef %48) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %65

65:                                               ; preds = %58, %54
  %66 = phi i32 [ %64, %58 ], [ %48, %54 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68, !prof !11

68:                                               ; preds = %65
  %69 = sub i32 %48, %66
  %70 = getelementptr i8, ptr %6, i32 %69
  call void @llvm.memset.p0.i32(ptr align 1 %70, i8 0, i32 %66, i1 false) #15
  br label %159

71:                                               ; preds = %27
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %6, ptr align 1 %50, i32 %48, i1 false) #15
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i16, ptr %47, align 2
  %74 = icmp ugt i16 %73, 16383
  br i1 %74, label %159, label %75

75:                                               ; preds = %72
  %76 = load i16, ptr %30, align 2
  %77 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 13
  %78 = load i16, ptr %77, align 2
  %79 = icmp eq i16 %78, 4
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = icmp ult i16 %76, 23
  br i1 %81, label %159, label %84

82:                                               ; preds = %75
  %83 = icmp ult i16 %76, 48
  br i1 %83, label %159, label %84

84:                                               ; preds = %82, %80
  %85 = load i8, ptr %38, align 2
  switch i8 %85, label %159 [
    i8 0, label %86
    i8 3, label %91
    i8 4, label %91
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 38
  call void @_clear_bit(i32 noundef 7, ptr noundef %87) #15
  %88 = load i8, ptr %38, align 2
  %89 = load i16, ptr %30, align 2
  %90 = load i16, ptr %47, align 2
  br label %94

91:                                               ; preds = %84, %84
  %92 = load i8, ptr @disable_ertm, align 1, !range !14
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %159

94:                                               ; preds = %91, %86
  %95 = phi i16 [ %73, %91 ], [ %90, %86 ]
  %96 = phi i16 [ %76, %91 ], [ %89, %86 ]
  %97 = phi i8 [ %85, %91 ], [ %88, %86 ]
  store i8 %97, ptr %36, align 2
  store i16 %96, ptr %28, align 4
  %98 = load i16, ptr %6, align 2
  store i16 %98, ptr %31, align 2
  %99 = load i8, ptr %41, align 1
  store i8 %99, ptr %39, align 2
  %100 = load i8, ptr %44, align 2
  store i8 %100, ptr %42, align 2
  store i16 %95, ptr %45, align 4
  %101 = load i16, ptr %35, align 2
  store i16 %101, ptr %33, align 4
  br label %159

102:                                              ; preds = %17
  %103 = extractvalue [2 x i32] %3, 0
  %104 = inttoptr i32 %103 to ptr
  %105 = extractvalue [2 x i32] %3, 1
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %104, i32 4, i32 -1090519040) #16, !srcloc !27
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122, !prof !11

112:                                              ; preds = %108
  %113 = tail call ptr @llvm.thread.pointer() #15
  %114 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 3
  %115 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %114) #17, !srcloc !28
  %116 = and i32 %115, -13
  %117 = or i32 %116, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %118 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %104, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122, !prof !11

120:                                              ; preds = %112
  %121 = load i32, ptr %7, align 4
  br label %128

122:                                              ; preds = %112, %108
  %123 = phi i32 [ %118, %112 ], [ 4, %108 ]
  %124 = sub i32 4, %123
  %125 = getelementptr i8, ptr %7, i32 %124
  call void @llvm.memset.p0.i32(ptr align 1 %125, i8 0, i32 %123, i1 false) #15
  br label %159

126:                                              ; preds = %102
  %127 = load i32, ptr %104, align 1
  store i32 %127, ptr %7, align 4
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi i32 [ %121, %120 ], [ %127, %126 ]
  %130 = and i32 %129, 64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = and i32 %129, 2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 20
  store i8 1, ptr %136, align 1
  br label %137

137:                                              ; preds = %135, %132
  %138 = and i32 %129, 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 20
  store i8 2, ptr %141, align 1
  br label %142

142:                                              ; preds = %140, %137
  %143 = and i32 %129, 32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 20
  store i8 3, ptr %146, align 1
  br label %147

147:                                              ; preds = %145, %142
  %148 = and i32 %129, 1
  %149 = icmp eq i32 %148, 0
  %150 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  br i1 %149, label %152, label %151

151:                                              ; preds = %147
  call void @_set_bit(i32 noundef 0, ptr noundef %150) #15
  br label %153

152:                                              ; preds = %147
  call void @_clear_bit(i32 noundef 0, ptr noundef %150) #15
  br label %153

153:                                              ; preds = %152, %151
  %154 = load i32, ptr %7, align 4
  %155 = and i32 %154, 16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  call void @_set_bit(i32 noundef 2, ptr noundef %150) #15
  br label %159

158:                                              ; preds = %153
  call void @_clear_bit(i32 noundef 2, ptr noundef %150) #15
  br label %159

159:                                              ; preds = %158, %157, %128, %122, %94, %91, %84, %82, %80, %72, %68, %23, %18, %17
  %160 = phi i32 [ 0, %157 ], [ 0, %158 ], [ 0, %94 ], [ -22, %18 ], [ -22, %23 ], [ -22, %72 ], [ -22, %128 ], [ -92, %17 ], [ -22, %84 ], [ -22, %91 ], [ -14, %122 ], [ -14, %68 ], [ -22, %80 ], [ -22, %82 ]
  call void @release_sock(ptr noundef %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %451

161:                                              ; preds = %5
  tail call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #15
  switch i32 %2, label %449 [
    i32 4, label %162
    i32 7, label %230
    i32 8, label %271
    i32 9, label %317
    i32 10, label %352
    i32 12, label %397
    i32 13, label %403
    i32 15, label %432
  ]

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 18
  %164 = load i8, ptr %163, align 1
  switch i8 %164, label %449 [
    i8 3, label %165
    i8 4, label %165
    i8 1, label %165
  ]

165:                                              ; preds = %162, %162, %162
  store i8 1, ptr %8, align 2
  %166 = tail call i32 @llvm.umin.i32(i32 %4, i32 2)
  %167 = extractvalue [2 x i32] %3, 0
  %168 = inttoptr i32 %167 to ptr
  %169 = extractvalue [2 x i32] %3, 1
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %165
  %173 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %168, i32 %166, i32 -1090519040) #16, !srcloc !27
  %174 = extractvalue { i32, i32 } %173, 0
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %183, !prof !11

176:                                              ; preds = %172
  %177 = tail call ptr @llvm.thread.pointer() #15
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 3
  %179 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %178) #17, !srcloc !28
  %180 = and i32 %179, -13
  %181 = or i32 %180, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %181) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %182 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %168, i32 noundef %166) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %179) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %183

183:                                              ; preds = %176, %172
  %184 = phi i32 [ %182, %176 ], [ %166, %172 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186, !prof !11

186:                                              ; preds = %183
  %187 = sub i32 %166, %184
  %188 = getelementptr i8, ptr %8, i32 %187
  call void @llvm.memset.p0.i32(ptr align 1 %188, i8 0, i32 %184, i1 false) #15
  br label %449

189:                                              ; preds = %165
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %8, ptr align 1 %168, i32 %166, i1 false) #15
  br label %190

190:                                              ; preds = %189, %183
  %191 = load i8, ptr %8, align 2
  %192 = add i8 %191, -5
  %193 = icmp ult i8 %192, -4
  br i1 %193, label %449, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 20
  store i8 %191, ptr %195, align 1
  %196 = load ptr, ptr %16, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %449, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 13
  %200 = load i16, ptr %199, align 2
  %201 = icmp eq i16 %200, 4
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = load ptr, ptr %196, align 4
  %204 = call i32 @smp_conn_security(ptr noundef %203, i8 noundef zeroext %191) #15
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %449

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  call void @_set_bit(i32 noundef 9, ptr noundef %207) #15
  %208 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  store volatile i8 7, ptr %208, align 2
  %209 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 5
  store i8 7, ptr %209, align 4
  br label %449

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %212 = load volatile i8, ptr %211, align 2
  %213 = icmp eq i8 %212, 6
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.bt_sock, ptr %14, i32 0, i32 3
  %216 = load volatile i32, ptr %215, align 4
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214, %210
  %220 = load volatile i8, ptr %211, align 2
  %221 = icmp eq i8 %220, 1
  br i1 %221, label %222, label %449

222:                                              ; preds = %219, %214
  %223 = call i32 @l2cap_chan_check_security(ptr noundef %16, i1 noundef zeroext true) #15
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.bt_sock, ptr %14, i32 0, i32 3
  call void @_set_bit(i32 noundef 1, ptr noundef %226) #15
  br label %449

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 75
  %229 = load ptr, ptr %228, align 4
  call void %229(ptr noundef %14) #15
  br label %449

230:                                              ; preds = %161
  %231 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %232 = load volatile i8, ptr %231, align 2
  %233 = icmp eq i8 %232, 3
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load volatile i8, ptr %231, align 2
  %236 = icmp eq i8 %235, 4
  br i1 %236, label %237, label %449

237:                                              ; preds = %234, %230
  %238 = extractvalue [2 x i32] %3, 0
  %239 = inttoptr i32 %238 to ptr
  %240 = extractvalue [2 x i32] %3, 1
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %237
  %244 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %239, i32 4, i32 -1090519040) #16, !srcloc !27
  %245 = extractvalue { i32, i32 } %244, 0
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %257, !prof !11

247:                                              ; preds = %243
  %248 = tail call ptr @llvm.thread.pointer() #15
  %249 = getelementptr inbounds %struct.thread_info, ptr %248, i32 0, i32 3
  %250 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %249) #17, !srcloc !28
  %251 = and i32 %250, -13
  %252 = or i32 %251, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %253 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %239, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %250) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %257, !prof !11

255:                                              ; preds = %247
  %256 = load i32, ptr %10, align 4
  br label %263

257:                                              ; preds = %247, %243
  %258 = phi i32 [ %253, %247 ], [ 4, %243 ]
  %259 = sub i32 4, %258
  %260 = getelementptr i8, ptr %10, i32 %259
  call void @llvm.memset.p0.i32(ptr align 1 %260, i8 0, i32 %258, i1 false) #15
  br label %449

261:                                              ; preds = %237
  %262 = load i32, ptr %239, align 1
  store i32 %262, ptr %10, align 4
  br label %263

263:                                              ; preds = %261, %255
  %264 = phi i32 [ %256, %255 ], [ %262, %261 ]
  %265 = icmp eq i32 %264, 0
  %266 = getelementptr inbounds %struct.bt_sock, ptr %14, i32 0, i32 3
  br i1 %265, label %269, label %267

267:                                              ; preds = %263
  call void @_set_bit(i32 noundef 0, ptr noundef %266) #15
  %268 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  call void @_set_bit(i32 noundef 6, ptr noundef %268) #15
  br label %449

269:                                              ; preds = %263
  call void @_clear_bit(i32 noundef 0, ptr noundef %266) #15
  %270 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  call void @_clear_bit(i32 noundef 6, ptr noundef %270) #15
  br label %449

271:                                              ; preds = %161
  %272 = extractvalue [2 x i32] %3, 0
  %273 = inttoptr i32 %272 to ptr
  %274 = extractvalue [2 x i32] %3, 1
  %275 = and i32 %274, 1
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %271
  %278 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %273, i32 4, i32 -1090519040) #16, !srcloc !27
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %291, !prof !11

281:                                              ; preds = %277
  %282 = tail call ptr @llvm.thread.pointer() #15
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 3
  %284 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %283) #17, !srcloc !28
  %285 = and i32 %284, -13
  %286 = or i32 %285, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %286) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %287 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %273, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %284) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291, !prof !11

289:                                              ; preds = %281
  %290 = load i32, ptr %10, align 4
  br label %297

291:                                              ; preds = %281, %277
  %292 = phi i32 [ %287, %281 ], [ 4, %277 ]
  %293 = sub i32 4, %292
  %294 = getelementptr i8, ptr %10, i32 %293
  call void @llvm.memset.p0.i32(ptr align 1 %294, i8 0, i32 %292, i1 false) #15
  br label %449

295:                                              ; preds = %271
  %296 = load i32, ptr %273, align 1
  store i32 %296, ptr %10, align 4
  br label %297

297:                                              ; preds = %295, %289
  %298 = phi i32 [ %290, %289 ], [ %296, %295 ]
  %299 = icmp ugt i32 %298, 1
  br i1 %299, label %449, label %300

300:                                              ; preds = %297
  %301 = icmp eq i32 %298, 0
  br i1 %301, label %302, label %313

302:                                              ; preds = %300
  %303 = load ptr, ptr %16, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %449, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %303, align 4
  %307 = getelementptr inbounds %struct.hci_conn, ptr %306, i32 0, i32 65
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr %struct.hci_dev, ptr %308, i32 0, i32 21, i32 0, i32 6
  %310 = load i8, ptr %309, align 2
  %311 = and i8 %310, 64
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %449, label %315

313:                                              ; preds = %300
  %314 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  call void @_set_bit(i32 noundef 3, ptr noundef %314) #15
  br label %449

315:                                              ; preds = %305
  %316 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  call void @_clear_bit(i32 noundef 3, ptr noundef %316) #15
  br label %449

317:                                              ; preds = %161
  %318 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 18
  %319 = load i8, ptr %318, align 1
  switch i8 %319, label %449 [
    i8 3, label %320
    i8 1, label %320
  ]

320:                                              ; preds = %317, %317
  store i8 1, ptr %9, align 1
  %321 = icmp ne i32 %4, 0
  %322 = zext i1 %321 to i32
  %323 = extractvalue [2 x i32] %3, 0
  %324 = inttoptr i32 %323 to ptr
  %325 = extractvalue [2 x i32] %3, 1
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %345

328:                                              ; preds = %320
  %329 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %324, i32 %322, i32 -1090519040) #16, !srcloc !27
  %330 = extractvalue { i32, i32 } %329, 0
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %339, !prof !11

332:                                              ; preds = %328
  %333 = tail call ptr @llvm.thread.pointer() #15
  %334 = getelementptr inbounds %struct.thread_info, ptr %333, i32 0, i32 3
  %335 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %334) #17, !srcloc !28
  %336 = and i32 %335, -13
  %337 = or i32 %336, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %337) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %338 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %324, i32 noundef %322) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %335) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %339

339:                                              ; preds = %332, %328
  %340 = phi i32 [ %338, %332 ], [ %322, %328 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %346, label %342, !prof !11

342:                                              ; preds = %339
  %343 = sub i32 %322, %340
  %344 = getelementptr i8, ptr %9, i32 %343
  call void @llvm.memset.p0.i32(ptr align 1 %344, i8 0, i32 %340, i1 false) #15
  br label %449

345:                                              ; preds = %320
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr align 1 %324, i32 %322, i1 false) #15
  br label %346

346:                                              ; preds = %345, %339
  %347 = load i8, ptr %9, align 1
  %348 = icmp eq i8 %347, 0
  %349 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 40
  br i1 %348, label %351, label %350

350:                                              ; preds = %346
  call void @_set_bit(i32 noundef 1, ptr noundef %349) #15
  br label %449

351:                                              ; preds = %346
  call void @_clear_bit(i32 noundef 1, ptr noundef %349) #15
  br label %449

352:                                              ; preds = %161
  %353 = extractvalue [2 x i32] %3, 0
  %354 = inttoptr i32 %353 to ptr
  %355 = extractvalue [2 x i32] %3, 1
  %356 = and i32 %355, 1
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %376

358:                                              ; preds = %352
  %359 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %354, i32 4, i32 -1090519040) #16, !srcloc !27
  %360 = extractvalue { i32, i32 } %359, 0
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %372, !prof !11

362:                                              ; preds = %358
  %363 = tail call ptr @llvm.thread.pointer() #15
  %364 = getelementptr inbounds %struct.thread_info, ptr %363, i32 0, i32 3
  %365 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %364) #17, !srcloc !28
  %366 = and i32 %365, -13
  %367 = or i32 %366, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %367) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %368 = call i32 @arm_copy_from_user(ptr noundef nonnull %10, ptr noundef %354, i32 noundef 4) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %365) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %372, !prof !11

370:                                              ; preds = %362
  %371 = load i32, ptr %10, align 4
  br label %378

372:                                              ; preds = %362, %358
  %373 = phi i32 [ %368, %362 ], [ 4, %358 ]
  %374 = sub i32 4, %373
  %375 = getelementptr i8, ptr %10, i32 %374
  call void @llvm.memset.p0.i32(ptr align 1 %375, i8 0, i32 %373, i1 false) #15
  br label %449

376:                                              ; preds = %352
  %377 = load i32, ptr %354, align 1
  store i32 %377, ptr %10, align 4
  br label %378

378:                                              ; preds = %376, %370
  %379 = phi i32 [ %371, %370 ], [ %377, %376 ]
  %380 = icmp ugt i32 %379, 2
  br i1 %380, label %449, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 17
  %383 = load i8, ptr %382, align 2
  %384 = add i8 %383, -3
  %385 = icmp ult i8 %384, 2
  br i1 %385, label %386, label %449

386:                                              ; preds = %381
  %387 = trunc i32 %379 to i8
  %388 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 19
  store i8 %387, ptr %388, align 4
  %389 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %390 = load volatile i8, ptr %389, align 2
  %391 = icmp eq i8 %390, 1
  br i1 %391, label %392, label %449

392:                                              ; preds = %386
  %393 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 45
  %394 = load i8, ptr %393, align 4
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %449

396:                                              ; preds = %392
  call void @l2cap_move_start(ptr noundef %16) #15
  br label %449

397:                                              ; preds = %161
  %398 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 9
  %399 = load i8, ptr %398, align 2
  %400 = add i8 %399, -1
  %401 = icmp ult i8 %400, 2
  %402 = select i1 %401, i32 -1, i32 -22
  br label %449

403:                                              ; preds = %161
  %404 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 9
  %405 = load i8, ptr %404, align 2
  %406 = add i8 %405, -1
  %407 = icmp ult i8 %406, 2
  br i1 %407, label %408, label %449

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 17
  %410 = load i8, ptr %409, align 2
  %411 = icmp eq i8 %410, -128
  br i1 %411, label %412, label %416

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %414 = load volatile i8, ptr %413, align 2
  %415 = icmp eq i8 %414, 1
  br i1 %415, label %449, label %416

416:                                              ; preds = %412, %408
  %417 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %11, [2 x i32] %3, i32 noundef 2)
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %449

419:                                              ; preds = %416
  %420 = load i8, ptr %409, align 2
  %421 = icmp eq i8 %420, -127
  br i1 %421, label %422, label %429

422:                                              ; preds = %419
  %423 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %424 = load volatile i8, ptr %423, align 2
  %425 = icmp eq i8 %424, 1
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = load i16, ptr %11, align 2
  %428 = call i32 @l2cap_chan_reconfigure(ptr noundef %16, i16 noundef zeroext %427) #15
  br label %449

429:                                              ; preds = %422, %419
  %430 = load i16, ptr %11, align 2
  %431 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 14
  store i16 %430, ptr %431, align 4
  br label %449

432:                                              ; preds = %161
  %433 = load i8, ptr @enable_ecred, align 1, !range !14
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %449, label %435

435:                                              ; preds = %432
  %436 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %437 = load volatile i8, ptr %436, align 2
  %438 = icmp eq i8 %437, 3
  br i1 %438, label %439, label %449

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.l2cap_chan, ptr %16, i32 0, i32 18
  %441 = load i8, ptr %440, align 1
  %442 = icmp eq i8 %441, 3
  br i1 %442, label %443, label %449

443:                                              ; preds = %439
  %444 = call fastcc i32 @copy_from_sockptr(ptr noundef nonnull %12, [2 x i32] %3, i32 noundef 1)
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load i8, ptr %12, align 1
  %448 = call fastcc i32 @l2cap_set_mode(ptr noundef %16, i8 noundef zeroext %447)
  br label %449

449:                                              ; preds = %446, %443, %439, %435, %432, %429, %426, %416, %412, %403, %397, %396, %392, %386, %381, %378, %372, %351, %350, %342, %317, %315, %313, %305, %302, %297, %291, %269, %267, %257, %234, %227, %225, %219, %206, %202, %194, %190, %186, %162, %161
  %450 = phi i32 [ %428, %426 ], [ 0, %429 ], [ 0, %396 ], [ 0, %392 ], [ 0, %386 ], [ 0, %350 ], [ 0, %351 ], [ 0, %313 ], [ 0, %315 ], [ 0, %267 ], [ 0, %269 ], [ 0, %206 ], [ 0, %227 ], [ 0, %225 ], [ 0, %194 ], [ -22, %162 ], [ -22, %190 ], [ -22, %202 ], [ -22, %219 ], [ -22, %234 ], [ -22, %297 ], [ -22, %305 ], [ -22, %302 ], [ -22, %317 ], [ -22, %378 ], [ -95, %381 ], [ %402, %397 ], [ -22, %403 ], [ -106, %412 ], [ -14, %416 ], [ -92, %432 ], [ -22, %435 ], [ -22, %439 ], [ -14, %443 ], [ %448, %446 ], [ -92, %161 ], [ -14, %257 ], [ -14, %291 ], [ -14, %372 ], [ -14, %186 ], [ -14, %342 ]
  call void @release_sock(ptr noundef %14) #15
  br label %451

451:                                              ; preds = %449, %159, %5
  %452 = phi i32 [ %160, %159 ], [ %450, %449 ], [ -92, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  ret i32 %452
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #4 {
  %6 = alloca %struct.l2cap_options, align 2
  %7 = alloca %struct.l2cap_conninfo, align 2
  %8 = alloca %struct.bt_security, align 2
  %9 = alloca %struct.bt_power, align 1
  %10 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.l2cap_pinfo, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #15
  store i16 0, ptr %8, align 2, !annotation !13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1, !annotation !13
  switch i32 %1, label %309 [
    i32 6, label %14
    i32 274, label %133
  ]

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(12) %6, i8 0, i32 12, i1 false) #15, !annotation !13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %7, i8 0, i32 6, i1 false) #15, !annotation !13
  %15 = tail call ptr @llvm.thread.pointer() #15
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #17, !srcloc !28
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %20 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #15, !srcloc !31
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = extractvalue { i32, i32 } %20, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %131

24:                                               ; preds = %14
  tail call void @lock_sock_nested(ptr noundef %11, i32 noundef 0) #15
  switch i32 %2, label %129 [
    i32 1, label %25
    i32 3, label %69
    i32 2, label %94
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 9
  %27 = load i8, ptr %26, align 2
  %28 = add i8 %27, -1
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 13
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, 4
  br i1 %33, label %34, label %129

34:                                               ; preds = %30, %25
  %35 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 17
  %36 = load i8, ptr %35, align 2
  switch i8 %36, label %129 [
    i8 0, label %37
    i8 3, label %37
    i8 4, label %37
  ]

37:                                               ; preds = %34, %34, %34
  %38 = getelementptr inbounds i8, ptr %6, i32 8
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 14
  %40 = load i16, ptr %39, align 4
  %41 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 1
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 15
  %43 = load i16, ptr %42, align 2
  store i16 %43, ptr %6, align 2
  %44 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 16
  %45 = load i16, ptr %44, align 4
  %46 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 2
  store i16 %45, ptr %46, align 2
  %47 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 3
  store i8 %36, ptr %47, align 2
  %48 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 26
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 4
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 30
  %52 = load i8, ptr %51, align 2
  store i8 %52, ptr %38, align 2
  %53 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 27
  %54 = load i16, ptr %53, align 4
  %55 = getelementptr inbounds %struct.l2cap_options, ptr %6, i32 0, i32 6
  store i16 %54, ptr %55, align 2
  %56 = tail call i32 @llvm.umin.i32(i32 %22, i32 12) #15
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %56, i32 -1090519040) #16, !srcloc !32
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #17, !srcloc !28
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %64 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %56) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %65

65:                                               ; preds = %60, %37
  %66 = phi i32 [ %64, %60 ], [ %56, %37 ]
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 -14
  br label %129

69:                                               ; preds = %24
  %70 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 20
  %71 = load i8, ptr %70, align 1
  %72 = add i8 %71, -1
  %73 = icmp ult i8 %72, 4
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = sext i8 %72 to i32
  %76 = getelementptr inbounds [4 x i32], ptr @switch.table.l2cap_sock_getsockopt, i32 0, i32 %75
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i32 [ %77, %74 ], [ 0, %69 ]
  %80 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 40
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %81, 1
  %83 = or i32 %82, %79
  %84 = load volatile i32, ptr %80, align 4
  %85 = shl i32 %84, 2
  %86 = and i32 %85, 16
  %87 = or i32 %83, %86
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #17, !srcloc !28
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %91 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %87, i32 -1090519041) #15, !srcloc !33
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 0, i32 -14
  br label %129

94:                                               ; preds = %24
  %95 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %96 = load volatile i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 1
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load volatile i8, ptr %95, align 2
  %100 = icmp eq i8 %99, 6
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 3
  %103 = load volatile i32, ptr %102, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %129, label %106

106:                                              ; preds = %101, %94
  %107 = getelementptr inbounds i8, ptr %7, i32 4
  store i16 0, ptr %107, align 2
  %108 = load ptr, ptr %13, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.hci_conn, ptr %109, i32 0, i32 11
  %111 = load i16, ptr %110, align 2
  store i16 %111, ptr %7, align 2
  %112 = getelementptr inbounds %struct.l2cap_conninfo, ptr %7, i32 0, i32 1
  %113 = load ptr, ptr %13, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.hci_conn, ptr %114, i32 0, i32 18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(3) %112, ptr noundef align 1 dereferenceable(3) %115, i32 3, i1 false) #15
  %116 = tail call i32 @llvm.umin.i32(i32 %22, i32 6) #15
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %116, i32 -1090519040) #16, !srcloc !32
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %106
  %121 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #17, !srcloc !28
  %122 = and i32 %121, -13
  %123 = or i32 %122, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %124 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %116) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %121) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %125

125:                                              ; preds = %120, %106
  %126 = phi i32 [ %124, %120 ], [ %116, %106 ]
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %127, i32 0, i32 -14
  br label %129

129:                                              ; preds = %125, %101, %98, %78, %65, %34, %30, %24
  %130 = phi i32 [ -22, %30 ], [ %68, %65 ], [ -107, %101 ], [ -107, %98 ], [ %128, %125 ], [ -92, %24 ], [ %93, %78 ], [ -22, %34 ]
  call void @release_sock(ptr noundef %11) #15
  br label %131

131:                                              ; preds = %129, %14
  %132 = phi i32 [ %130, %129 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %309

133:                                              ; preds = %5
  %134 = tail call ptr @llvm.thread.pointer() #15
  %135 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 3
  %136 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %137 = and i32 %136, -13
  %138 = or i32 %137, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %138) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %139 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #15, !srcloc !34
  %140 = extractvalue { i32, i32 } %139, 0
  %141 = extractvalue { i32, i32 } %139, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %142 = icmp eq i32 %140, 0
  br i1 %142, label %143, label %309

143:                                              ; preds = %133
  tail call void @lock_sock_nested(ptr noundef %11, i32 noundef 0) #15
  switch i32 %2, label %307 [
    i32 4, label %144
    i32 7, label %178
    i32 8, label %195
    i32 9, label %206
    i32 10, label %229
    i32 12, label %239
    i32 13, label %257
    i32 14, label %271
    i32 15, label %285
  ]

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 18
  %146 = load i8, ptr %145, align 1
  switch i8 %146, label %307 [
    i8 3, label %147
    i8 4, label %147
    i8 1, label %147
  ]

147:                                              ; preds = %144, %144, %144
  store i16 0, ptr %8, align 2
  %148 = load ptr, ptr %13, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %148, align 4
  %152 = getelementptr inbounds %struct.hci_conn, ptr %151, i32 0, i32 24
  %153 = load i8, ptr %152, align 4
  store i8 %153, ptr %8, align 2
  %154 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %155 = load volatile i8, ptr %154, align 2
  %156 = icmp eq i8 %155, 1
  br i1 %156, label %157, label %164

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.hci_conn, ptr %151, i32 0, i32 27
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr inbounds %struct.bt_security, ptr %8, i32 0, i32 1
  store i8 %159, ptr %160, align 1
  br label %164

161:                                              ; preds = %147
  %162 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 20
  %163 = load i8, ptr %162, align 1
  store i8 %163, ptr %8, align 2
  br label %164

164:                                              ; preds = %161, %157, %150
  %165 = tail call i32 @llvm.umin.i32(i32 %141, i32 2)
  %166 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %165, i32 -1090519040) #16, !srcloc !32
  %167 = extractvalue { i32, i32 } %166, 0
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %171 = and i32 %170, -13
  %172 = or i32 %171, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %173 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %8, i32 noundef %165) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %170) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %174

174:                                              ; preds = %169, %164
  %175 = phi i32 [ %173, %169 ], [ %165, %164 ]
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 0, i32 -14
  br label %307

178:                                              ; preds = %143
  %179 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %180 = load volatile i8, ptr %179, align 2
  %181 = icmp eq i8 %180, 3
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load volatile i8, ptr %179, align 2
  %184 = icmp eq i8 %183, 4
  br i1 %184, label %185, label %307

185:                                              ; preds = %182, %178
  %186 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 3
  %187 = load volatile i32, ptr %186, align 4
  %188 = and i32 %187, 1
  %189 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %190 = and i32 %189, -13
  %191 = or i32 %190, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %191) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %192 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %188, i32 -1090519041) #15, !srcloc !35
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %193 = icmp eq i32 %192, 0
  %194 = select i1 %193, i32 0, i32 -14
  br label %307

195:                                              ; preds = %143
  %196 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 40
  %197 = load volatile i32, ptr %196, align 4
  %198 = lshr i32 %197, 3
  %199 = and i32 %198, 1
  %200 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %201 = and i32 %200, -13
  %202 = or i32 %201, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %203 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %199, i32 -1090519041) #15, !srcloc !36
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, i32 0, i32 -14
  br label %307

206:                                              ; preds = %143
  %207 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 45
  %208 = load i16, ptr %207, align 2
  switch i16 %208, label %307 [
    i16 5, label %209
    i16 1, label %209
    i16 3, label %209
  ]

209:                                              ; preds = %206, %206, %206
  %210 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 40
  %211 = load volatile i32, ptr %210, align 4
  %212 = trunc i32 %211 to i8
  %213 = lshr i8 %212, 1
  %214 = and i8 %213, 1
  store i8 %214, ptr %9, align 1
  %215 = icmp ne i32 %141, 0
  %216 = zext i1 %215 to i32
  %217 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %216, i32 -1090519040) #16, !srcloc !32
  %218 = extractvalue { i32, i32 } %217, 0
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %209
  %221 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %222 = and i32 %221, -13
  %223 = or i32 %222, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %223) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %224 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %9, i32 noundef %216) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %221) #15, !srcloc !29
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %225

225:                                              ; preds = %220, %209
  %226 = phi i32 [ %224, %220 ], [ %216, %209 ]
  %227 = icmp eq i32 %226, 0
  %228 = select i1 %227, i32 0, i32 -14
  br label %307

229:                                              ; preds = %143
  %230 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 19
  %231 = load i8, ptr %230, align 4
  %232 = zext i8 %231 to i32
  %233 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %234 = and i32 %233, -13
  %235 = or i32 %234, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %235) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %236 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %232, i32 -1090519041) #15, !srcloc !37
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %233) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %237 = icmp eq i32 %236, 0
  %238 = select i1 %237, i32 0, i32 -14
  br label %307

239:                                              ; preds = %143
  %240 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 9
  %241 = load i8, ptr %240, align 2
  %242 = add i8 %241, -1
  %243 = icmp ult i8 %242, 2
  br i1 %243, label %244, label %307

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %246 = load volatile i8, ptr %245, align 2
  %247 = icmp eq i8 %246, 1
  br i1 %247, label %248, label %307

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 15
  %250 = load i16, ptr %249, align 2
  %251 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %252 = and i32 %251, -13
  %253 = or i32 %252, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %253) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %254 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i16 %250, i32 -1090519041) #15, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %251) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %255, i32 0, i32 -14
  br label %307

257:                                              ; preds = %143
  %258 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 9
  %259 = load i8, ptr %258, align 2
  %260 = add i8 %259, -1
  %261 = icmp ult i8 %260, 2
  br i1 %261, label %262, label %307

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 14
  %264 = load i16, ptr %263, align 4
  %265 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %266 = and i32 %265, -13
  %267 = or i32 %266, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %267) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %268 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i16 %264, i32 -1090519041) #15, !srcloc !39
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %265) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 0, i32 -14
  br label %307

271:                                              ; preds = %143
  %272 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  %273 = load volatile i8, ptr %272, align 2
  %274 = icmp eq i8 %273, 1
  br i1 %274, label %275, label %307

275:                                              ; preds = %271
  %276 = load ptr, ptr %13, align 4
  %277 = load ptr, ptr %276, align 4
  %278 = tail call i32 @hci_conn_get_phy(ptr noundef %277) #15
  %279 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %280 = and i32 %279, -13
  %281 = or i32 %280, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %281) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %282 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %278, i32 -1090519041) #15, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %279) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %283 = icmp eq i32 %282, 0
  %284 = select i1 %283, i32 0, i32 -14
  br label %307

285:                                              ; preds = %143
  %286 = load i8, ptr @enable_ecred, align 1, !range !14
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %307, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 18
  %290 = load i8, ptr %289, align 1
  %291 = icmp eq i8 %290, 3
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  %293 = getelementptr inbounds %struct.l2cap_chan, ptr %13, i32 0, i32 17
  %294 = load i8, ptr %293, align 2
  switch i8 %294, label %307 [
    i8 0, label %299
    i8 3, label %295
    i8 4, label %296
    i8 -128, label %297
    i8 -127, label %298
  ]

295:                                              ; preds = %292
  br label %299

296:                                              ; preds = %292
  br label %299

297:                                              ; preds = %292
  br label %299

298:                                              ; preds = %292
  br label %299

299:                                              ; preds = %298, %297, %296, %295, %292
  %300 = phi i8 [ %294, %292 ], [ 1, %295 ], [ 2, %296 ], [ 3, %297 ], [ 4, %298 ]
  %301 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %135) #17, !srcloc !28
  %302 = and i32 %301, -13
  %303 = or i32 %302, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %303) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %304 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %300, i32 -1090519041) #15, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %301) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %305 = icmp eq i32 %304, 0
  %306 = select i1 %305, i32 0, i32 -14
  br label %307

307:                                              ; preds = %299, %292, %288, %285, %275, %271, %262, %257, %248, %244, %239, %229, %225, %206, %195, %185, %182, %174, %144, %143
  %308 = phi i32 [ -22, %144 ], [ %177, %174 ], [ -22, %182 ], [ %194, %185 ], [ %205, %195 ], [ -22, %206 ], [ %228, %225 ], [ %238, %229 ], [ -22, %239 ], [ -107, %244 ], [ %256, %248 ], [ -22, %257 ], [ %270, %262 ], [ -107, %271 ], [ %284, %275 ], [ -92, %285 ], [ -22, %288 ], [ %306, %299 ], [ -92, %143 ], [ -22, %292 ]
  call void @release_sock(ptr noundef %11) #15
  br label %309

309:                                              ; preds = %307, %133, %131, %5
  %310 = phi i32 [ %132, %131 ], [ %308, %307 ], [ -92, %5 ], [ -14, %133 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #15
  ret i32 %310
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.l2cap_pinfo, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !11

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %8) #15, !srcloc !24
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  %14 = sub i32 0, %13
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  %23 = load volatile i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #15
  %26 = load i32, ptr %17, align 4
  %27 = tail call i32 @bt_sock_wait_ready(ptr noundef %5, i32 noundef %26) #15
  tail call void @release_sock(ptr noundef %5) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.l2cap_chan, ptr %7, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %30) #15
  %31 = tail call i32 @l2cap_chan_send(ptr noundef %7, ptr noundef %1, i32 noundef %2) #15
  tail call void @mutex_unlock(ptr noundef %30) #15
  br label %32

32:                                               ; preds = %29, %25, %21, %16, %11
  %33 = phi i32 [ %31, %29 ], [ %14, %11 ], [ -95, %16 ], [ -107, %21 ], [ %27, %25 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %7 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %8 = load volatile i8, ptr %7, align 2
  %9 = icmp eq i8 %8, 6
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.bt_sock, ptr %6, i32 0, i32 3
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.l2cap_pinfo, ptr %6, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 17
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, -127
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  store volatile i8 1, ptr %7, align 2
  %22 = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 5
  store i8 1, ptr %22, align 4
  %23 = load ptr, ptr %16, align 8
  tail call void @__l2cap_ecred_conn_rsp_defer(ptr noundef %23) #15
  br label %73

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 9
  %26 = load i8, ptr %25, align 2
  %27 = add i8 %26, -1
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  store volatile i8 1, ptr %7, align 2
  %30 = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 5
  store i8 1, ptr %30, align 4
  %31 = load ptr, ptr %16, align 8
  tail call void @__l2cap_le_connect_rsp_defer(ptr noundef %31) #15
  br label %73

32:                                               ; preds = %24
  store volatile i8 7, ptr %7, align 2
  %33 = getelementptr inbounds %struct.l2cap_chan, ptr %17, i32 0, i32 5
  store i8 7, ptr %33, align 4
  %34 = load ptr, ptr %16, align 8
  tail call void @__l2cap_connect_rsp_defer(ptr noundef %34) #15
  br label %73

35:                                               ; preds = %10, %4
  tail call void @release_sock(ptr noundef %6) #15
  %36 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 1
  %37 = load i16, ptr %36, align 4
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = tail call i32 @bt_sock_stream_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  br label %43

41:                                               ; preds = %35
  %42 = tail call i32 @bt_sock_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #15
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct.l2cap_pinfo, ptr %6, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.l2cap_chan, ptr %46, i32 0, i32 17
  %48 = load i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %50, label %75

50:                                               ; preds = %43
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #15
  %51 = load ptr, ptr %45, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, ptr %51, i32 0, i32 39
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.l2cap_pinfo, ptr %6, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @__sock_queue_rcv_skb(ptr noundef %6, ptr noundef nonnull %58) #15
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  store ptr null, ptr %57, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 9
  %66 = load volatile i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 15
  %68 = load i32, ptr %67, align 4
  %69 = ashr i32 %68, 1
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  %72 = load ptr, ptr %45, align 8
  tail call void @l2cap_chan_busy(ptr noundef %72, i32 noundef 0) #15
  br label %73

73:                                               ; preds = %71, %64, %60, %50, %32, %29, %21
  %74 = phi i32 [ %44, %60 ], [ %44, %71 ], [ %44, %64 ], [ %44, %50 ], [ 0, %29 ], [ 0, %32 ], [ 0, %21 ]
  tail call void @release_sock(ptr noundef %6) #15
  br label %75

75:                                               ; preds = %73, %43
  %76 = phi i32 [ %74, %73 ], [ %44, %43 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_scid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_add_psm(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_init_pid(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 17
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, -127
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 58
  tail call void @_raw_spin_lock(ptr noundef %8) #15
  %9 = tail call ptr @llvm.thread.pointer() #15
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 22, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #15, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #15, !srcloc !15
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !16

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %24) #15
  br label %25

25:                                               ; preds = %23, %19, %7
  %26 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 60
  store ptr %13, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  %27 = load i16, ptr %8, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  br label %29

29:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_connect(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bt_accept_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_conn_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_conn_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

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
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %34, label %16, !prof !16

16:                                               ; preds = %15
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %2, i32 -1090519040) #16, !srcloc !27
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !11

20:                                               ; preds = %16
  %21 = tail call ptr @llvm.thread.pointer() #15
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #17, !srcloc !28
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  %26 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %5, i32 noundef %2) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #15, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !30
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %26, %20 ], [ %2, %16 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !11

30:                                               ; preds = %27
  %31 = sub i32 %2, %28
  %32 = getelementptr i8, ptr %0, i32 %31
  tail call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %28, i1 false) #15
  br label %34

33:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %5, i32 %2, i1 false) #15
  br label %34

34:                                               ; preds = %33, %30, %27, %15
  %35 = phi i32 [ 0, %33 ], [ %2, %15 ], [ 0, %27 ], [ %28, %30 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_conn_security(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_check_security(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_move_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_reconfigure(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @l2cap_set_mode(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 {
  switch i8 %1, label %39 [
    i8 0, label %3
    i8 1, label %10
    i8 2, label %18
    i8 3, label %26
    i8 4, label %31
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %9) #15
  br label %36

10:                                               ; preds = %2
  %11 = load i8, ptr @disable_ertm, align 1, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 9
  %15 = load i8, ptr %14, align 2
  %16 = add i8 %15, -1
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %39, label %36

18:                                               ; preds = %2
  %19 = load i8, ptr @disable_ertm, align 1, !range !14
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 9
  %23 = load i8, ptr %22, align 2
  %24 = add i8 %23, -1
  %25 = icmp ult i8 %24, 2
  br i1 %25, label %39, label %36

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 9
  %28 = load i8, ptr %27, align 2
  %29 = add i8 %28, -1
  %30 = icmp ult i8 %29, 2
  br i1 %30, label %36, label %39

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 9
  %33 = load i8, ptr %32, align 2
  %34 = add i8 %33, -1
  %35 = icmp ult i8 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %26, %21, %13, %8
  %37 = phi i8 [ 0, %8 ], [ 3, %13 ], [ 4, %21 ], [ -128, %26 ], [ -127, %31 ]
  %38 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 17
  store i8 %37, ptr %38, align 2
  br label %39

39:                                               ; preds = %36, %31, %26, %21, %18, %13, %10, %3, %2
  %40 = phi i32 [ 0, %36 ], [ -22, %3 ], [ -22, %13 ], [ -22, %10 ], [ -22, %21 ], [ -22, %18 ], [ -22, %26 ], [ -22, %31 ], [ -22, %2 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_conn_get_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l2cap_chan_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_ecred_conn_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_le_connect_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__l2cap_connect_rsp_defer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_stream_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_busy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  store i32 1, ptr %1, align 64
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %59 [
    i16 5, label %7
    i16 1, label %7
    i16 2, label %7
    i16 3, label %7
  ]

7:                                                ; preds = %4, %4, %4, %4
  %8 = icmp ne i16 %6, 3
  %9 = icmp ne i32 %3, 0
  %10 = or i1 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i1 @capable(i32 noundef 13) #15
  br i1 %12, label %13, label %59

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @l2cap_sock_ops, ptr %14, align 4
  %15 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @l2cap_proto, i32 noundef %3) #15
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %15) #15
  %18 = getelementptr inbounds %struct.bt_sock, ptr %15, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.bt_sock, ptr %15, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 80
  store ptr @l2cap_sock_destruct, ptr %20, align 8
  %21 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 31
  store i32 4000, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 13
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -257
  store i32 %24, ptr %22, align 4
  %25 = trunc i32 %2 to i16
  %26 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 46
  store i16 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  store volatile i8 2, ptr %27, align 2
  %28 = tail call ptr @l2cap_chan_create() #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  tail call void @sk_free(ptr noundef nonnull %15) #15
  br label %59

31:                                               ; preds = %17
  tail call void @l2cap_chan_hold(ptr noundef nonnull %28) #15
  %32 = getelementptr inbounds %struct.l2cap_pinfo, ptr %15, i32 0, i32 1
  store ptr %28, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 45
  %34 = load i16, ptr %33, align 2
  switch i16 %34, label %42 [
    i16 3, label %35
    i16 2, label %37
    i16 5, label %40
    i16 1, label %40
  ]

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 18
  store i8 1, ptr %36, align 1
  br label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 18
  store i8 2, ptr %38, align 1
  %39 = getelementptr inbounds %struct.bt_sock, ptr %15, i32 0, i32 4
  store ptr @l2cap_skb_msg_name, ptr %39, align 8
  br label %42

40:                                               ; preds = %31, %31
  %41 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 18
  store i8 3, ptr %41, align 1
  br label %42

42:                                               ; preds = %40, %37, %35, %31
  %43 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 14
  store i16 672, ptr %43, align 4
  %44 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 15
  store i16 0, ptr %44, align 2
  %45 = load i8, ptr @disable_ertm, align 1, !range !14
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i16, ptr %33, align 2
  %49 = icmp eq i16 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 17
  store i8 3, ptr %51, align 2
  %52 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 7, ptr noundef %52) #15
  br label %55

53:                                               ; preds = %47, %42
  %54 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 17
  store i8 0, ptr %54, align 2
  br label %55

55:                                               ; preds = %53, %50
  tail call void @l2cap_chan_set_defaults(ptr noundef nonnull %28) #15
  %56 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 16
  store i16 -1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 84
  store ptr %15, ptr %57, align 4
  %58 = getelementptr inbounds %struct.l2cap_chan, ptr %28, i32 0, i32 85
  store ptr @l2cap_chan_ops, ptr %58, align 4
  tail call void @bt_sock_link(ptr noundef nonnull @l2cap_sk_list, ptr noundef nonnull %15) #15
  br label %59

59:                                               ; preds = %55, %30, %13, %11, %4
  %60 = phi i32 [ 0, %55 ], [ -94, %4 ], [ -1, %11 ], [ -12, %30 ], [ -12, %13 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @l2cap_sock_init(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.l2cap_pinfo, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.l2cap_pinfo, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %10 = load i16, ptr %9, align 2
  %11 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  store i16 %10, ptr %11, align 2
  %12 = getelementptr inbounds %struct.bt_sock, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 18
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 18
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 14
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 14
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 15
  %22 = load i16, ptr %21, align 2
  %23 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 15
  store i16 %22, ptr %23, align 2
  %24 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 38
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 38
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 17
  %28 = load i8, ptr %27, align 2
  %29 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 17
  store i8 %28, ptr %29, align 2
  %30 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 26
  %31 = load i8, ptr %30, align 2
  %32 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 26
  store i8 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 30
  %34 = load i8, ptr %33, align 2
  %35 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 30
  store i8 %34, ptr %35, align 2
  %36 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 27
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 27
  store i16 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 28
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 28
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 20
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 20
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 40
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 40
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 34
  %49 = load i16, ptr %48, align 2
  %50 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 34
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 35
  %52 = load i16, ptr %51, align 4
  %53 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 35
  store i16 %52, ptr %53, align 4
  %54 = icmp eq i8 %16, 4
  br i1 %54, label %55, label %85

55:                                               ; preds = %6
  %56 = getelementptr inbounds %struct.l2cap_chan, ptr %8, i32 0, i32 13
  %57 = load i16, ptr %56, align 2
  %58 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 13
  store i16 %57, ptr %58, align 2
  %59 = load i16, ptr %56, align 2
  %60 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 12
  store i16 %59, ptr %60, align 4
  br label %85

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 45
  %63 = load i16, ptr %62, align 2
  switch i16 %63, label %71 [
    i16 3, label %64
    i16 2, label %66
    i16 5, label %69
    i16 1, label %69
  ]

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 18
  store i8 1, ptr %65, align 1
  br label %71

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 18
  store i8 2, ptr %67, align 1
  %68 = getelementptr inbounds %struct.bt_sock, ptr %0, i32 0, i32 4
  store ptr @l2cap_skb_msg_name, ptr %68, align 8
  br label %71

69:                                               ; preds = %61, %61
  %70 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 18
  store i8 3, ptr %70, align 1
  br label %71

71:                                               ; preds = %69, %66, %64, %61
  %72 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 14
  store i16 672, ptr %72, align 4
  %73 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 15
  store i16 0, ptr %73, align 2
  %74 = load i8, ptr @disable_ertm, align 1, !range !14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i16, ptr %62, align 2
  %78 = icmp eq i16 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 17
  store i8 3, ptr %80, align 2
  %81 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 7, ptr noundef %81) #15
  br label %84

82:                                               ; preds = %76, %71
  %83 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 17
  store i8 0, ptr %83, align 2
  br label %84

84:                                               ; preds = %82, %79
  tail call void @l2cap_chan_set_defaults(ptr noundef %4) #15
  br label %85

85:                                               ; preds = %84, %55, %6
  %86 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 16
  store i16 -1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 84
  store ptr %0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.l2cap_chan, ptr %4, i32 0, i32 85
  store ptr @l2cap_chan_ops, ptr %88, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_destruct(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_pinfo, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.l2cap_chan, ptr %3, i32 0, i32 84
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %2, align 8
  tail call void @l2cap_chan_put(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.l2cap_pinfo, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #15
  store ptr null, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %14) #15
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %15) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @l2cap_chan_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @l2cap_skb_msg_name(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds i8, ptr %1, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(14) %4, i8 0, i32 12, i1 false)
  store i16 31, ptr %1, align 2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 16
  %6 = load i16, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 1
  store i16 %6, ptr %7, align 2
  %8 = getelementptr inbounds %struct.sockaddr_l2, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %8, ptr noundef align 1 dereferenceable(6) %9, i32 6, i1 false) #15
  store i32 14, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @l2cap_chan_set_defaults(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @l2cap_sock_new_connection_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %4 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 53
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 54
  %7 = load volatile i32, ptr %6, align 8
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void @release_sock(ptr noundef %3) #15
  br label %30

10:                                               ; preds = %1
  %11 = tail call ptr @sk_alloc(ptr noundef nonnull @init_net, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @l2cap_proto, i32 noundef 0) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  tail call void @sock_init_data(ptr noundef null, ptr noundef nonnull %11) #15
  %14 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.bt_sock, ptr %11, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 80
  store ptr @l2cap_sock_destruct, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 31
  store i32 4000, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -257
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.sock, ptr %11, i32 0, i32 46
  store i16 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %11, i32 0, i32 4
  store volatile i8 2, ptr %22, align 2
  %23 = tail call ptr @l2cap_chan_create() #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  tail call void @sk_free(ptr noundef nonnull %11) #15
  br label %26

26:                                               ; preds = %25, %10
  tail call void @release_sock(ptr noundef %3) #15
  br label %30

27:                                               ; preds = %13
  tail call void @l2cap_chan_hold(ptr noundef nonnull %23) #15
  %28 = getelementptr inbounds %struct.l2cap_pinfo, ptr %11, i32 0, i32 1
  store ptr %23, ptr %28, align 8
  tail call void @bt_sock_reclassify_lock(ptr noundef nonnull %11, i32 noundef 0) #15
  tail call fastcc void @l2cap_sock_init(ptr noundef nonnull %11, ptr noundef %3)
  tail call void @bt_accept_enqueue(ptr noundef %3, ptr noundef nonnull %11, i1 noundef zeroext false) #15
  tail call void @release_sock(ptr noundef %3) #15
  %29 = load ptr, ptr %28, align 8
  br label %30

30:                                               ; preds = %27, %26, %9
  %31 = phi ptr [ null, %9 ], [ %29, %27 ], [ null, %26 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_recv_cb(ptr noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %4 = load ptr, ptr %3, align 4
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #15
  %5 = getelementptr inbounds %struct.l2cap_pinfo, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 17
  %10 = load i8, ptr %9, align 2
  %11 = add i8 %10, -3
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @sk_filter_trim_cap(ptr noundef %4, ptr noundef %1, i32 noundef 1) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13, %8
  %17 = tail call i32 @__sock_queue_rcv_skb(ptr noundef %4, ptr noundef %1) #15
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8, ptr %9, align 2
  %21 = icmp eq i8 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store ptr %1, ptr %5, align 4
  tail call void @l2cap_chan_busy(ptr noundef %0, i32 noundef 1) #15
  br label %23

23:                                               ; preds = %22, %19, %16, %13, %2
  %24 = phi i32 [ %14, %13 ], [ 0, %22 ], [ %17, %19 ], [ %17, %16 ], [ -12, %2 ]
  tail call void @release_sock(ptr noundef %4) #15
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_teardown_cb(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 4
  %8 = load volatile i32, ptr %7, align 4
  tail call void @lock_sock_nested(ptr noundef nonnull %4, i32 noundef %8) #15
  %9 = getelementptr inbounds %struct.bt_sock, ptr %4, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  switch i8 %12, label %50 [
    i8 2, label %60
    i8 3, label %60
    i8 9, label %60
    i8 4, label %13
  ]

13:                                               ; preds = %6
  %14 = tail call ptr @bt_accept_dequeue(ptr noundef nonnull %4, ptr noundef null) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %45, %13
  %17 = phi ptr [ %46, %45 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.l2cap_pinfo, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  tail call void @l2cap_chan_hold(ptr noundef %19) #15
  %20 = getelementptr inbounds %struct.l2cap_chan, ptr %19, i32 0, i32 86
  tail call void @mutex_lock(ptr noundef %20) #15
  %21 = getelementptr inbounds %struct.l2cap_chan, ptr %19, i32 0, i32 73
  %22 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %21) #15
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void @l2cap_chan_put(ptr noundef %19) #15
  br label %24

24:                                               ; preds = %23, %16
  tail call void @l2cap_chan_close(ptr noundef %19, i32 noundef 104) #15
  %25 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 13
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 71
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load ptr, ptr %18, align 8
  tail call void @l2cap_chan_put(ptr noundef %34) #15
  %35 = load i32, ptr %25, align 4
  %36 = or i32 %35, 1
  store i32 %36, ptr %25, align 4
  %37 = getelementptr inbounds %struct.sock_common, ptr %17, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15, !srcloc !9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15, !srcloc !10
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = icmp sgt i32 %39, 0
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %41
  tail call void @refcount_warn_saturate(ptr noundef %37, i32 noundef 3) #15
  br label %45

44:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  tail call void @sk_free(ptr noundef nonnull %17) #15
  br label %45

45:                                               ; preds = %44, %43, %41, %29, %24
  tail call void @mutex_unlock(ptr noundef %20) #15
  tail call void @l2cap_chan_put(ptr noundef %19) #15
  %46 = tail call ptr @bt_accept_dequeue(ptr noundef nonnull %4, ptr noundef null) #15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %16

48:                                               ; preds = %45, %13
  %49 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  store volatile i8 9, ptr %49, align 2
  store i8 9, ptr %11, align 4
  br label %60

50:                                               ; preds = %6
  %51 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 4
  store volatile i8 9, ptr %51, align 2
  store i8 9, ptr %11, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 51
  store i32 %1, ptr %52, align 4
  %53 = icmp eq ptr %10, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  tail call void @bt_accept_unlink(ptr noundef nonnull %4) #15
  %55 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 76
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull %10) #15
  br label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.sock, ptr %4, i32 0, i32 75
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef nonnull %4) #15
  br label %60

60:                                               ; preds = %57, %54, %48, %6, %6, %6
  tail call void @release_sock(ptr noundef nonnull %4) #15
  %61 = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, 256
  store i32 %63, ptr %61, align 4
  br label %64

64:                                               ; preds = %60, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_close_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.l2cap_pinfo, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  tail call void @l2cap_chan_put(ptr noundef %16) #15
  %17 = load i32, ptr %6, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %6, align 4
  %19 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #15, !srcloc !9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #15, !srcloc !10
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %27, label %25, !prof !11

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #15
  br label %27

26:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  tail call void @sk_free(ptr noundef nonnull %3) #15
  br label %27

27:                                               ; preds = %26, %25, %23, %10, %5, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_state_change_cb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = trunc i32 %1 to i8
  %7 = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 4
  store volatile i8 %6, ptr %7, align 2
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 51
  store i32 %2, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_ready_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %4 = getelementptr inbounds %struct.bt_sock, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  store volatile i8 1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 75
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %3) #15
  %9 = icmp eq ptr %5, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 76
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull %5) #15
  br label %13

13:                                               ; preds = %10, %1
  tail call void @release_sock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_defer_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %4 = getelementptr inbounds %struct.bt_sock, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock, ptr %5, i32 0, i32 76
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull %5) #15
  br label %10

10:                                               ; preds = %7, %1
  tail call void @release_sock(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_resume_cb(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 40
  %5 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %4) #15
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 4
  store volatile i8 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 5
  store i8 1, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.bt_sock, ptr %3, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 75
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_suspend_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bt_sock, ptr %3, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 1, ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 75
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @l2cap_sock_set_shutdown_cb(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  tail call void @lock_sock_nested(ptr noundef %3, i32 noundef 0) #15
  %4 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 66
  store i8 3, ptr %4, align 2
  tail call void @release_sock(ptr noundef %3) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @l2cap_sock_get_sndtimeo_cb(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 31
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @l2cap_sock_get_peer_pid_cb(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 60
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @l2cap_sock_alloc_skb_cb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !13
  %8 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 86
  tail call void @mutex_unlock(ptr noundef %8) #15
  %9 = add i32 %1, 8
  %10 = add i32 %9, %2
  %11 = call ptr @sock_alloc_send_skb(ptr noundef %7, i32 noundef %10, i32 noundef %3, ptr noundef nonnull %5) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  store ptr %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr i8, ptr %18, i32 8
  store ptr %19, ptr %17, align 8
  br label %23

20:                                               ; preds = %4
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %23
  store i32 0, ptr %5, align 4
  br label %33

28:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #15, !srcloc !9
  %29 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %24) #15, !srcloc !24
  %30 = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !25
  %31 = sub i32 0, %30
  store i32 %31, ptr %5, align 4
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28, %27
  %34 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 66
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  store i32 -104, ptr %5, align 4
  br label %38

38:                                               ; preds = %37, %28
  call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #15
  br label %39

39:                                               ; preds = %38, %20
  call void @mutex_lock(ptr noundef %8) #15
  br label %41

40:                                               ; preds = %33
  call void @mutex_lock(ptr noundef %8) #15
  br i1 %12, label %41, label %44

41:                                               ; preds = %40, %39
  %42 = load i32, ptr %5, align 4
  %43 = inttoptr i32 %42 to ptr
  br label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 33
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 13, i32 0, i32 5
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 24
  store ptr %0, ptr %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi ptr [ %11, %44 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @l2cap_sock_filter(ptr nocapture noundef readonly %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 17
  %4 = load i8, ptr %3, align 2
  %5 = add i8 %4, -3
  %6 = icmp ult i8 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.l2cap_chan, ptr %0, i32 0, i32 84
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @sk_filter_trim_cap(ptr noundef %9, ptr noundef %1, i32 noundef 1) #15
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_reclassify_lock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_enqueue(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_accept_unlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 2148185815}
!9 = !{i64 582749, i64 2148072720, i64 2148072746, i64 2148072793, i64 2148072815, i64 2148072843, i64 2148072863}
!10 = !{i64 2148087950, i64 2148087982, i64 2148088011, i64 2148088045, i64 2148088076, i64 2148088099}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149034878}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148085593, i64 2148085625, i64 2148085654, i64 2148085688, i64 2148085719, i64 2148085742}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148966890}
!18 = !{i64 2148962714}
!19 = !{i64 2148962789, i64 2148962816, i64 2148962863, i64 2148962885, i64 2148962913, i64 2148962933}
!20 = !{i64 2148989893}
!21 = !{i64 2156812118}
!22 = !{i64 2156816532}
!23 = !{i64 2156180774}
!24 = !{i64 591399, i64 591416, i64 591440, i64 591466, i64 591484}
!25 = !{i64 2156181091}
!26 = !{i64 2156819705}
!27 = !{i64 2152179905, i64 2152179930}
!28 = !{i64 4676017}
!29 = !{i64 4676214}
!30 = !{i64 2152161493}
!31 = !{i64 2156700646, i64 2156700926, i64 2156701260, i64 2156701594}
!32 = !{i64 2152180483, i64 2152180508}
!33 = !{i64 2156712267, i64 2156712547, i64 2156712881, i64 2156713215}
!34 = !{i64 2156725964, i64 2156726244, i64 2156726578, i64 2156726912}
!35 = !{i64 2156737086, i64 2156737366, i64 2156737700, i64 2156738034}
!36 = !{i64 2156745392, i64 2156745672, i64 2156746006, i64 2156746340}
!37 = !{i64 2156755533, i64 2156755813, i64 2156756147, i64 2156756481}
!38 = !{i64 2156761973, i64 2156762253, i64 2156762587, i64 2156762921}
!39 = !{i64 2156770201, i64 2156770481, i64 2156770815, i64 2156771149}
!40 = !{i64 2156780254, i64 2156780534, i64 2156780868, i64 2156781202}
!41 = !{i64 2156784842, i64 2156785122, i64 2156785456, i64 2156785790}
