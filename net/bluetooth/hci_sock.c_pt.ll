; ModuleID = '/llk/IR/net/bluetooth/hci_sock.c_pt.bc'
source_filename = "../net/bluetooth/hci_sock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_mgmt_chan_register:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_mgmt_chan_register\22\09\09\09\09\09"
module asm "__kstrtabns_hci_mgmt_chan_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hci_mgmt_chan_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22hci_mgmt_chan_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_hci_mgmt_chan_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bt_sock_list = type { %struct.hlist_head, %struct.rwlock_t, ptr }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.122, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.122 = type { ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
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
%struct.anon.87 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
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
%struct.ida = type { %struct.xarray }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.hci_sec_filter = type { i32, [2 x i32], [6 x [4 x i32]] }
%struct.hci_pinfo = type { %struct.bt_sock, ptr, %struct.hci_filter, i8, i16, i32, i32, [16 x i8], i16 }
%struct.bt_sock = type { %struct.sock, %struct.list_head, ptr, i32, ptr, ptr }
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
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.callback_head = type { ptr, ptr }
%struct.netns_tracker = type {}
%struct.hci_filter = type { i32, [2 x i32], i16 }
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
%struct.hci_dev = type { %struct.list_head, %struct.mutex, [8 x i8], i32, i16, i8, i8, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, %struct.bdaddr_t, i8, [248 x i8], [10 x i8], [240 x i8], i16, [3 x i8], i8, i8, i8, [3 x [8 x i8]], [8 x i8], i8, i8, i8, [8 x i8], [64 x i8], i8, i16, i8, i16, i16, i16, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i16, i16, i8, i16, i16, i16, i16, i8, i16, i16, i8, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i32, i16, i16, i8, i32, i32, i32, i32, i8, i16, i16, i32, i32, %struct.amp_assoc, i8, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i8, i8, ptr, ptr, %struct.work_struct, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, %struct.mutex, %struct.wait_queue_head, i32, i32, ptr, ptr, ptr, %struct.discovery_state, i32, i8, i32, i8, %struct.notifier_block, i32, i32, i8, i8, i8, %struct.bdaddr_t, i8, %struct.hci_conn_hash, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.hci_dev_stats, %struct.atomic_t, ptr, ptr, ptr, %struct.device, ptr, [2 x i32], [1 x i32], i8, [251 x i8], i8, [251 x i8], i8, %struct.list_head, i32, i8, i16, %struct.delayed_work, %struct.idr, i32, [16 x i8], i32, %struct.delayed_work, %struct.bdaddr_t, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amp_assoc = type { i16, i16, i16, i16, [672 x i8] }
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
%struct.bdaddr_t = type { [6 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hci_mon_hdr = type { i16, i16, i16 }
%struct.hci_event_hdr = type { i8, i8 }
%struct.hci_ev_stack_internal = type { i16, [0 x i8] }
%struct.hci_mon_new_index = type { i8, i8, %struct.bdaddr_t, [8 x i8] }
%struct.hci_mon_index_info = type { %struct.bdaddr_t, i16 }
%struct.hci_mgmt_chan = type { %struct.list_head, i16, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.sockaddr_hci = type { i16, i16, i16 }
%struct.hci_ufilter = type { i32, [2 x i32], i16 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.121, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.119 }
%union.anon.4 = type { ptr }
%union.anon.119 = type { i64 }
%union.anon.121 = type { ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.mgmt_hdr = type { i16, i16, i16 }
%struct.hci_mgmt_handler = type { ptr, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }

@hci_sk_list = internal global %struct.bt_sock_list zeroinitializer, align 4
@monitor_promisc = internal global %struct.atomic_t zeroinitializer, align 4
@mgmt_chan_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mgmt_chan_list_lock, i64 12), ptr getelementptr (i8, ptr @mgmt_chan_list_lock, i64 12) } }, align 4
@mgmt_chan_list = internal global %struct.list_head { ptr @mgmt_chan_list, ptr @mgmt_chan_list }, align 4
@__kstrtab_hci_mgmt_chan_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_mgmt_chan_register = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_mgmt_chan_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_mgmt_chan_register to i32), ptr @__kstrtab_hci_mgmt_chan_register, ptr @__kstrtabns_hci_mgmt_chan_register }, section "___ksymtab+hci_mgmt_chan_register", align 4
@__kstrtab_hci_mgmt_chan_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_hci_mgmt_chan_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_hci_mgmt_chan_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hci_mgmt_chan_unregister to i32), ptr @__kstrtab_hci_mgmt_chan_unregister, ptr @__kstrtabns_hci_mgmt_chan_unregister }, section "___ksymtab+hci_mgmt_chan_unregister", align 4
@hci_sk_proto = internal global %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 600, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.122 zeroinitializer, ptr @__this_module, [32 x i8] c"HCI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, align 4
@hci_sock_family_ops = internal constant %struct.net_proto_family { i32 31, ptr @hci_sock_create, ptr @__this_module }, align 4
@.str = private unnamed_addr constant [32 x i8] c"HCI socket registration failed\0A\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [4 x i8] c"hci\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create HCI proc file\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"HCI socket layer initialized\0A\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@hci_sock_ops = internal constant %struct.proto_ops { i32 31, ptr @__this_module, ptr @hci_sock_release, ptr @hci_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @hci_sock_getname, ptr @datagram_poll, ptr @hci_sock_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @hci_sock_setsockopt, ptr @hci_sock_getsockopt, ptr null, ptr @hci_sock_sendmsg, ptr @hci_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sock_cookie_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Linux version %s (%s)\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Bluetooth subsystem version %u.%u\00", align 1
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@hci_dev_list_lock = external dso_local global %struct.rwlock_t, align 4
@hci_dev_list = external dso_local global %struct.list_head, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@hci_sec_filter = internal unnamed_addr constant %struct.hci_sec_filter { i32 16, [2 x i32] [i32 268491262, i32 45068], [6 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 -1107296250, i32 1, i32 0, i32 0], [4 x i32] [i32 20992, i32 0, i32 0, i32 0], [4 x i32] [i32 -1431305728, i32 725625514, i32 86114644, i32 0], [4 x i32] [i32 702, i32 0, i32 0, i32 0], [4 x i32] [i32 234, i32 0, i32 0, i32 0]] }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_hci_mgmt_chan_register, ptr @__ksymtab_hci_mgmt_chan_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_sock_set_flag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 5
  tail call void @_set_bit(i32 noundef %1, ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_sock_clear_flag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_sock_test_flag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 5
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %3, i32 %4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %1, 31
  %8 = lshr i32 %6, %7
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @hci_sock_get_channel(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 2
  ret i16 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @hci_sock_get_cookie(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_to_sock(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %3 = load ptr, ptr @hci_sk_list, align 4
  %4 = icmp eq ptr %3, null
  %5 = getelementptr i8, ptr %3, i32 -84
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %101, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  br label %13

13:                                               ; preds = %93, %8
  %14 = phi ptr [ %5, %8 ], [ %98, %93 ]
  %15 = phi ptr [ null, %8 ], [ %94, %93 ]
  %16 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %17 = load volatile i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 3
  br i1 %18, label %19, label %93

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hci_pinfo, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %93

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 4
  %25 = icmp eq ptr %24, %14
  br i1 %25, label %93, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.hci_pinfo, ptr %14, i32 0, i32 4
  %28 = load i16, ptr %27, align 2
  switch i16 %28, label %93 [
    i16 0, label %29
    i16 1, label %69
  ]

29:                                               ; preds = %26
  %30 = load i8, ptr %11, align 8
  %31 = add i8 %30, -1
  %32 = icmp ult i8 %31, 5
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hci_pinfo, ptr %14, i32 0, i32 2
  %35 = zext i8 %30 to i32
  %36 = load volatile i32, ptr %34, align 4
  %37 = shl nuw nsw i32 1, %35
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %93, label %40

40:                                               ; preds = %33
  %41 = icmp eq i8 %30, 4
  br i1 %41, label %42, label %77

42:                                               ; preds = %40
  %43 = load ptr, ptr %12, align 4
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 63
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.hci_pinfo, ptr %14, i32 0, i32 2, i32 1
  %48 = lshr i32 %46, 5
  %49 = getelementptr i32, ptr %47, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %46, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.hci_pinfo, ptr %14, i32 0, i32 2, i32 2
  %57 = load i16, ptr %56, align 4
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = trunc i8 %44 to i6
  switch i6 %60, label %77 [
    i6 14, label %61
    i6 15, label %65
  ]

61:                                               ; preds = %59
  %62 = getelementptr i8, ptr %43, i32 3
  %63 = load i16, ptr %62, align 1
  %64 = icmp eq i16 %57, %63
  br i1 %64, label %77, label %93

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %43, i32 4
  %67 = load i16, ptr %66, align 1
  %68 = icmp eq i16 %57, %67
  br i1 %68, label %77, label %93

69:                                               ; preds = %26
  %70 = load i8, ptr %10, align 4
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %69
  %74 = load i8, ptr %11, align 8
  %75 = add i8 %74, -2
  %76 = icmp ult i8 %75, 4
  br i1 %76, label %77, label %93

77:                                               ; preds = %73, %65, %61, %59, %55, %40
  %78 = icmp eq ptr %15, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 1, i32 noundef 2592, i1 noundef zeroext true) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %93, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @skb_push(ptr noundef nonnull %80, i32 noundef 1) #13
  %84 = load i8, ptr %11, align 8
  store i8 %84, ptr %83, align 1
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi ptr [ %15, %77 ], [ %80, %82 ]
  %87 = tail call ptr @skb_clone(ptr noundef nonnull %86, i32 noundef 2592) #13
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %14, ptr noundef nonnull %87) #13
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  tail call void @kfree_skb_reason(ptr noundef nonnull %87, i32 noundef 0) #13
  br label %93

93:                                               ; preds = %92, %89, %85, %79, %73, %69, %65, %61, %42, %33, %29, %26, %23, %19, %13
  %94 = phi ptr [ %15, %19 ], [ %15, %13 ], [ %15, %23 ], [ %15, %29 ], [ %15, %69 ], [ %15, %73 ], [ %15, %26 ], [ null, %79 ], [ %86, %85 ], [ %86, %92 ], [ %86, %89 ], [ %15, %33 ], [ %15, %42 ], [ %15, %61 ], [ %15, %65 ]
  %95 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 15
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  %98 = getelementptr i8, ptr %96, i32 -84
  %99 = icmp eq ptr %98, null
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %13

101:                                              ; preds = %93, %2
  %102 = phi ptr [ null, %2 ], [ %94, %93 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !9
  %103 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !10
  %104 = extractvalue { i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %107

107:                                              ; preds = %106, %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @kfree_skb_reason(ptr noundef %102, i32 noundef 0) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_to_channel(i16 noundef zeroext %0, ptr noundef %1, i32 noundef %2, ptr noundef readnone %3) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %5 = load ptr, ptr @hci_sk_list, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -84
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %45, label %10

10:                                               ; preds = %4
  %11 = lshr i32 %2, 5
  %12 = and i32 %2, 31
  %13 = shl nuw i32 1, %12
  br label %14

14:                                               ; preds = %38, %10
  %15 = phi ptr [ %7, %10 ], [ %42, %38 ]
  %16 = getelementptr inbounds %struct.hci_pinfo, ptr %15, i32 0, i32 5
  %17 = getelementptr i32, ptr %16, i32 %11
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, %13
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq ptr %15, %3
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %25 = load volatile i8, ptr %24, align 2
  %26 = icmp eq i8 %25, 3
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.hci_pinfo, ptr %15, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, %0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %15, ptr noundef nonnull %32) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @kfree_skb_reason(ptr noundef nonnull %32, i32 noundef 0) #13
  br label %38

38:                                               ; preds = %37, %34, %31, %27, %23, %14
  %39 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 15
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -84
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %14

45:                                               ; preds = %38, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !9
  %46 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !10
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %50

50:                                               ; preds = %49, %45
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_to_monitor(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @monitor_promisc, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %7 = load i8, ptr %6, align 8
  switch i8 %7, label %41 [
    i8 1, label %28
    i8 4, label %8
    i8 2, label %9
    i8 3, label %15
    i8 5, label %21
    i8 -16, label %27
  ]

8:                                                ; preds = %5
  br label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i16 4, i16 5
  br label %28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  %20 = select i1 %19, i16 6, i16 7
  br label %28

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i16 18, i16 19
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %21, %15, %9, %8, %5
  %29 = phi i16 [ 11, %27 ], [ 3, %8 ], [ 2, %5 ], [ %14, %9 ], [ %20, %15 ], [ %26, %21 ]
  %30 = tail call ptr @__pskb_copy_fclone(ptr noundef %1, i32 noundef 6, i32 noundef 2592, i1 noundef zeroext true) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @skb_push(ptr noundef nonnull %30, i32 noundef 6) #13
  store i16 %29, ptr %33, align 1
  %34 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %35 = load i16, ptr %34, align 8
  %36 = getelementptr inbounds %struct.hci_mon_hdr, ptr %33, i32 0, i32 1
  store i16 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 8
  %39 = trunc i32 %38 to i16
  %40 = getelementptr inbounds %struct.hci_mon_hdr, ptr %33, i32 0, i32 2
  store i16 %39, ptr %40, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %30, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %30, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %32, %28, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_send_monitor_ctrl_event(ptr noundef readonly %0, i16 noundef zeroext %1, ptr noundef readonly %2, i16 noundef zeroext %3, i64 noundef %4, i32 noundef %5, ptr noundef readnone %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %0, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i16 [ %11, %9 ], [ -1, %7 ]
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %14 = load ptr, ptr @hci_sk_list, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -84
  %17 = icmp eq ptr %16, null
  %18 = or i1 %15, %17
  br i1 %18, label %105, label %19

19:                                               ; preds = %12
  %20 = lshr i32 %5, 5
  %21 = and i32 %5, 31
  %22 = shl nuw i32 1, %21
  %23 = zext i16 %3 to i32
  %24 = add nuw nsw i32 %23, 14
  %25 = icmp eq ptr %2, null
  br label %26

26:                                               ; preds = %98, %19
  %27 = phi ptr [ %16, %19 ], [ %102, %98 ]
  %28 = getelementptr inbounds %struct.hci_pinfo, ptr %27, i32 0, i32 4
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 3
  br i1 %30, label %31, label %98

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hci_pinfo, ptr %27, i32 0, i32 5
  %33 = getelementptr i32, ptr %32, i32 %20
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, %22
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq ptr %27, %6
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %98, label %39

39:                                               ; preds = %31
  %40 = tail call ptr @__alloc_skb(i32 noundef %24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %98, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  store ptr %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 14
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr i8, ptr %47, i32 8
  store ptr %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.hci_pinfo, ptr %27, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = tail call ptr @skb_put(ptr noundef nonnull %40, i32 noundef 4) #13
  store i32 %50, ptr %51, align 1
  %52 = tail call ptr @skb_put(ptr noundef nonnull %40, i32 noundef 2) #13
  store i16 %1, ptr %52, align 1
  br i1 %25, label %55, label %53

53:                                               ; preds = %42
  %54 = tail call ptr @skb_put(ptr noundef nonnull %40, i32 noundef %23) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr nonnull align 1 %2, i32 %23, i1 false) #13
  br label %55

55:                                               ; preds = %53, %42
  %56 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 2
  store i64 %4, ptr %56, align 8
  %57 = tail call ptr @skb_push(ptr noundef nonnull %40, i32 noundef 6) #13
  store i16 17, ptr %57, align 1
  %58 = getelementptr inbounds %struct.hci_mon_hdr, ptr %57, i32 0, i32 1
  store i16 %13, ptr %58, align 1
  %59 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  %62 = add i16 %61, -6
  %63 = getelementptr inbounds %struct.hci_mon_hdr, ptr %57, i32 0, i32 2
  store i16 %62, ptr %63, align 1
  %64 = load ptr, ptr @hci_sk_list, align 4
  %65 = icmp eq ptr %64, null
  %66 = getelementptr i8, ptr %64, i32 -84
  %67 = icmp eq ptr %66, null
  %68 = or i1 %65, %67
  br i1 %68, label %97, label %69

69:                                               ; preds = %90, %55
  %70 = phi ptr [ %94, %90 ], [ %66, %55 ]
  %71 = getelementptr inbounds %struct.hci_pinfo, ptr %70, i32 0, i32 5
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.sock_common, ptr %70, i32 0, i32 4
  %77 = load volatile i8, ptr %76, align 2
  %78 = icmp eq i8 %77, 3
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.hci_pinfo, ptr %70, i32 0, i32 4
  %81 = load i16, ptr %80, align 2
  %82 = icmp eq i16 %81, 2
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = tail call ptr @skb_clone(ptr noundef nonnull %40, i32 noundef 2592) #13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = tail call i32 @sock_queue_rcv_skb(ptr noundef nonnull %70, ptr noundef nonnull %84) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @kfree_skb_reason(ptr noundef nonnull %84, i32 noundef 0) #13
  br label %90

90:                                               ; preds = %89, %86, %83, %79, %75, %69
  %91 = getelementptr inbounds %struct.sock_common, ptr %70, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = getelementptr i8, ptr %92, i32 -84
  %95 = icmp eq ptr %94, null
  %96 = or i1 %93, %95
  br i1 %96, label %97, label %69

97:                                               ; preds = %90, %55
  tail call void @kfree_skb_reason(ptr noundef nonnull %40, i32 noundef 0) #13
  br label %98

98:                                               ; preds = %97, %39, %31, %26
  %99 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  %102 = getelementptr i8, ptr %100, i32 -84
  %103 = icmp eq ptr %102, null
  %104 = or i1 %101, %103
  br i1 %104, label %105, label %26

105:                                              ; preds = %98, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !9
  %106 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !10
  %107 = extractvalue { i32, i32 } %106, 0
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %110

110:                                              ; preds = %109, %105
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_sock_dev_event(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @monitor_promisc, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @create_monitor_event(ptr noundef %0, i32 noundef %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %6, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = icmp slt i32 %1, 5
  br i1 %10, label %11, label %67

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 8
  store ptr %22, ptr %20, align 8
  %23 = tail call ptr @skb_put(ptr noundef nonnull %14, i32 noundef 2) #13
  store i8 -3, ptr %23, align 1
  %24 = getelementptr inbounds %struct.hci_event_hdr, ptr %23, i32 0, i32 1
  store i8 6, ptr %24, align 1
  %25 = tail call ptr @skb_put(ptr noundef nonnull %14, i32 noundef 6) #13
  store i16 1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.hci_ev_stack_internal, ptr %25, i32 0, i32 1
  %27 = zext i16 %13 to i32
  %28 = shl nuw i32 %27, 16
  %29 = and i32 %1, 65535
  %30 = or i32 %28, %29
  store i32 %30, ptr %26, align 1
  %31 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3
  %32 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 4
  %35 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %36 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  store i8 4, ptr %31, align 8
  tail call void @hci_send_to_sock(ptr noundef null, ptr noundef nonnull %14) #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %14, i32 noundef 0) #13
  br label %37

37:                                               ; preds = %16, %11
  %38 = icmp eq i32 %1, 2
  br i1 %38, label %39, label %67

39:                                               ; preds = %37
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %40 = load ptr, ptr @hci_sk_list, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -84
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %54, %39
  %46 = phi ptr [ %58, %54 ], [ %42, %39 ]
  %47 = getelementptr inbounds %struct.hci_pinfo, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 51
  store i32 32, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sock, ptr %46, i32 0, i32 75
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef nonnull %46) #13
  br label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  %58 = getelementptr i8, ptr %56, i32 -84
  %59 = icmp eq ptr %58, null
  %60 = or i1 %57, %59
  br i1 %60, label %61, label %45

61:                                               ; preds = %54, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !9
  %62 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !10
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %66

66:                                               ; preds = %65, %61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %67

67:                                               ; preds = %66, %37, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_event(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %87 [
    i32 1, label %3
    i32 2, label %24
    i32 9, label %34
    i32 3, label %38
    i32 7, label %53
    i32 8, label %63
  ]

3:                                                ; preds = %2
  %4 = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %87, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  store ptr %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr i8, ptr %11, i32 8
  store ptr %12, ptr %10, align 8
  %13 = tail call ptr @skb_put(ptr noundef nonnull %4, i32 noundef 16) #13
  %14 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  store i8 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.hci_mon_new_index, ptr %13, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.hci_mon_new_index, ptr %13, i32 0, i32 2
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %19, ptr noundef align 1 dereferenceable(6) %20, i32 6, i1 false) #13
  %21 = getelementptr inbounds %struct.hci_mon_new_index, ptr %13, i32 0, i32 3
  %22 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 2
  %23 = load i64, ptr %22, align 4
  store i64 %23, ptr %21, align 1
  br label %73

24:                                               ; preds = %2
  %25 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %87, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 8
  store ptr %33, ptr %31, align 8
  br label %73

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 31
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %36, -1
  br i1 %37, label %87, label %38

38:                                               ; preds = %34, %2
  %39 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %87, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 17
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  store ptr %44, ptr %42, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr i8, ptr %46, i32 8
  store ptr %47, ptr %45, align 8
  %48 = tail call ptr @skb_put(ptr noundef nonnull %39, i32 noundef 8) #13
  %49 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %48, ptr noundef align 1 dereferenceable(6) %49, i32 6, i1 false) #13
  %50 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 31
  %51 = load i16, ptr %50, align 2
  %52 = getelementptr inbounds %struct.hci_mon_index_info, ptr %48, i32 0, i32 1
  store i16 %51, ptr %52, align 1
  br label %73

53:                                               ; preds = %2
  %54 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %87, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  store ptr %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 14
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr i8, ptr %61, i32 8
  store ptr %62, ptr %60, align 8
  br label %73

63:                                               ; preds = %2
  %64 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 17
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 8
  store ptr %69, ptr %67, align 4
  %70 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 14
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr i8, ptr %71, i32 8
  store ptr %72, ptr %70, align 8
  br label %73

73:                                               ; preds = %66, %56, %41, %27, %6
  %74 = phi ptr [ %39, %41 ], [ %4, %6 ], [ %25, %27 ], [ %54, %56 ], [ %64, %66 ]
  %75 = phi i16 [ 10, %41 ], [ 0, %6 ], [ 1, %27 ], [ 8, %56 ], [ 9, %66 ]
  %76 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %77 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 2
  store i64 %76, ptr %77, align 8
  %78 = tail call ptr @skb_push(ptr noundef nonnull %74, i32 noundef 6) #13
  store i16 %75, ptr %78, align 1
  %79 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 4
  %80 = load i16, ptr %79, align 8
  %81 = getelementptr inbounds %struct.hci_mon_hdr, ptr %78, i32 0, i32 1
  store i16 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = trunc i32 %83 to i16
  %85 = add i16 %84, -6
  %86 = getelementptr inbounds %struct.hci_mon_hdr, ptr %78, i32 0, i32 2
  store i16 %85, ptr %86, align 1
  br label %87

87:                                               ; preds = %73, %63, %53, %38, %34, %24, %3, %2
  %88 = phi ptr [ %74, %73 ], [ null, %34 ], [ null, %2 ], [ null, %3 ], [ null, %24 ], [ null, %38 ], [ null, %53 ], [ null, %63 ]
  ret ptr %88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hci_mgmt_chan_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = icmp ult i16 %3, 3
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  %6 = load i16, ptr %2, align 4
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ @mgmt_chan_list, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @mgmt_chan_list
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %9, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, %6
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mgmt_chan_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @mgmt_chan_list, i32 0, i32 1), align 4
  store ptr @mgmt_chan_list, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %0, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ 0, %17 ], [ -114, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i32 [ -22, %1 ], [ %21, %20 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_mgmt_chan_unregister(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @hci_sock_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @proto_register(ptr noundef nonnull @hci_sk_proto, i32 noundef 0) #13
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bt_sock_register(i32 noundef 1, ptr noundef nonnull @hci_sock_family_ops) #13
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str) #13
  br label %12

7:                                                ; preds = %3
  %8 = tail call i32 @bt_procfs_init(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1, ptr noundef nonnull @hci_sk_list, ptr noundef null) #13
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ...) @bt_err(ptr noundef nonnull @.str.2) #13
  tail call void @bt_sock_unregister(i32 noundef 1) #13
  br label %12

11:                                               ; preds = %7
  tail call void (ptr, ...) @bt_info(ptr noundef nonnull @.str.3) #13
  br label %14

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %4, %6 ], [ %8, %10 ]
  tail call void @proto_unregister(ptr noundef nonnull @hci_sk_proto) #13
  br label %14

14:                                               ; preds = %12, %11, %0
  %15 = phi i32 [ %13, %12 ], [ 0, %11 ], [ %1, %0 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_sock_register(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bt_procfs_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unregister(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_info(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hci_sock_cleanup() local_unnamed_addr #0 {
  tail call void @bt_procfs_cleanup(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.1) #13
  tail call void @bt_sock_unregister(i32 noundef 1) #13
  tail call void @proto_unregister(ptr noundef nonnull @hci_sk_proto) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_procfs_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 5
  store ptr @hci_sock_ops, ptr %9, align 4
  %10 = tail call ptr @sk_alloc(ptr noundef %0, i32 noundef 31, i32 noundef 2592, ptr noundef nonnull @hci_sk_proto, i32 noundef %3) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  tail call void @sock_init_data(ptr noundef %1, ptr noundef nonnull %10) #13
  %13 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -257
  store i32 %15, ptr %13, align 4
  %16 = trunc i32 %2 to i16
  %17 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 46
  store i16 %16, ptr %17, align 4
  store i32 1, ptr %1, align 64
  %18 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 4
  store volatile i8 2, ptr %18, align 2
  %19 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 80
  store ptr @hci_sock_destruct, ptr %19, align 8
  tail call void @bt_sock_link(ptr noundef nonnull @hci_sk_list, ptr noundef nonnull %10) #13
  br label %20

20:                                               ; preds = %12, %8, %4
  %21 = phi i32 [ 0, %12 ], [ -94, %4 ], [ -12, %8 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hci_sock_destruct(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  tail call void @lock_sock_nested(ptr noundef nonnull %3, i32 noundef 0) #13
  %6 = getelementptr inbounds %struct.hci_pinfo, ptr %3, i32 0, i32 4
  %7 = load i16, ptr %6, align 2
  switch i16 %7, label %19 [
    i16 2, label %8
    i16 0, label %10
    i16 1, label %10
    i16 3, label %10
  ]

8:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @monitor_promisc) #13, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @monitor_promisc, ptr nonnull @monitor_promisc, i32 1, ptr nonnull elementtype(i32) @monitor_promisc) #13, !srcloc !14
  br label %19

10:                                               ; preds = %5, %5, %5
  %11 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef nonnull %3)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %11, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #13
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %struct.hci_pinfo, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 -1, ptr %15, align 4
  tail call void @ida_free(ptr noundef nonnull @sock_cookie_ida, i32 noundef %16) #13
  br label %19

19:                                               ; preds = %18, %14, %8, %5
  tail call void @bt_sock_unlink(ptr noundef nonnull @hci_sk_list, ptr noundef nonnull %3) #13
  %20 = getelementptr inbounds %struct.hci_pinfo, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = load i16, ptr %6, align 2
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call i32 @hci_dev_do_close(ptr noundef nonnull %21) #13
  %28 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 206
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %28) #13
  tail call void @mgmt_index_added(ptr noundef nonnull %21) #13
  br label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #13, !srcloc !9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #13, !srcloc !14
  %32 = getelementptr inbounds %struct.hci_dev, ptr %21, i32 0, i32 204
  tail call void @put_device(ptr noundef %32) #13
  br label %33

33:                                               ; preds = %29, %19
  %34 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 17
  store ptr null, ptr %39, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %34) #13
  tail call void @release_sock(ptr noundef nonnull %3) #13
  %40 = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #13, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #13, !srcloc !16
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !17

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #13
  br label %48

47:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  tail call void @sk_free(ptr noundef nonnull %3) #13
  br label %48

48:                                               ; preds = %47, %46, %44, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_bind(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sockaddr_hci, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(6) %4, i8 0, i32 6, i1 false)
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %189, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 6)
  %10 = icmp ugt i32 %9, 5
  %11 = sub nuw nsw i32 6, %9
  %12 = select i1 %10, i32 0, i32 %11
  %13 = getelementptr i8, ptr %4, i32 %9
  call void @llvm.memset.p0.i32(ptr align 1 %13, i8 0, i32 %12, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 2 %4, ptr nonnull align 2 %1, i32 %9, i1 false)
  %14 = load i16, ptr %4, align 2
  %15 = icmp eq i16 %14, 31
  br i1 %15, label %16, label %189

16:                                               ; preds = %8
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %17 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 206
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  store ptr null, ptr %17, align 8
  %26 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  store volatile i8 2, ptr %26, align 2
  %27 = getelementptr inbounds %struct.hci_dev, ptr %18, i32 0, i32 204
  tail call void @put_device(ptr noundef %27) #13
  br label %28

28:                                               ; preds = %25, %20, %16
  %29 = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 4
  %30 = load volatile i8, ptr %29, align 2
  %31 = icmp eq i8 %30, 3
  br i1 %31, label %187, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %4, i32 4
  %34 = load i16, ptr %33, align 2
  switch i16 %34, label %146 [
    i16 0, label %35
    i16 1, label %65
    i16 2, label %128
    i16 4, label %138
  ]

35:                                               ; preds = %32
  %36 = load ptr, ptr %17, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %187

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %4, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, -1
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = zext i16 %40 to i32
  %44 = tail call ptr @hci_dev_get(i32 noundef %43) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %187, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.hci_dev, ptr %44, i32 0, i32 200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #13, !srcloc !9
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #13, !srcloc !19
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %44, %46 ], [ null, %38 ]
  %51 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  store i16 0, ptr %51, align 2
  %52 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %6)
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %6)
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %54, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %54, i32 noundef 0) #13
  br label %57

57:                                               ; preds = %56, %53, %49
  %58 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %60) #13
  br label %61

61:                                               ; preds = %59, %57
  store ptr %50, ptr %17, align 8
  %62 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %6)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %181, label %64

64:                                               ; preds = %61
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %62, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %62, i32 noundef 0) #13
  br label %181

65:                                               ; preds = %32
  %66 = load ptr, ptr %17, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %187

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %4, i32 2
  %70 = load i16, ptr %69, align 2
  %71 = icmp eq i16 %70, -1
  br i1 %71, label %187, label %72

72:                                               ; preds = %68
  %73 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %73, label %74, label %187

74:                                               ; preds = %72
  %75 = zext i16 %70 to i32
  %76 = tail call ptr @hci_dev_get(i32 noundef %75) #13
  %77 = icmp eq ptr %76, null
  br i1 %77, label %187, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 3
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 206
  %85 = load volatile i32, ptr %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load volatile i32, ptr %84, align 4
  %90 = and i32 %89, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load volatile i32, ptr %84, align 4
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load volatile i32, ptr %79, align 4
  %98 = and i32 %97, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96, %88, %83, %78
  %101 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 204
  tail call void @put_device(ptr noundef %101) #13
  br label %187

102:                                              ; preds = %96, %92
  %103 = tail call i32 @_test_and_set_bit(i32 noundef 11, ptr noundef %84) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 204
  tail call void @put_device(ptr noundef %106) #13
  br label %187

107:                                              ; preds = %102
  tail call void @mgmt_index_removed(ptr noundef nonnull %76) #13
  %108 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 4
  %109 = load i16, ptr %108, align 8
  %110 = tail call i32 @hci_dev_open(i16 noundef zeroext %109) #13
  switch i32 %110, label %111 [
    i32 0, label %113
    i32 -114, label %113
  ]

111:                                              ; preds = %107
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %84) #13
  tail call void @mgmt_index_added(ptr noundef nonnull %76) #13
  %112 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 204
  tail call void @put_device(ptr noundef %112) #13
  br label %187

113:                                              ; preds = %107, %107
  %114 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  store i16 1, ptr %114, align 2
  %115 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %6)
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %6)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %117, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %117, i32 noundef 0) #13
  br label %120

120:                                              ; preds = %119, %116, %113
  %121 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %121) #13
  store ptr %76, ptr %17, align 8
  %122 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %6)
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %122, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %122, i32 noundef 0) #13
  br label %125

125:                                              ; preds = %124, %120
  %126 = getelementptr inbounds %struct.hci_dev, ptr %76, i32 0, i32 200
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %126) #13, !srcloc !9
  %127 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %126, ptr %126, i32 1, ptr elementtype(i32) %126) #13, !srcloc !19
  br label %181

128:                                              ; preds = %32
  %129 = getelementptr inbounds i8, ptr %4, i32 2
  %130 = load i16, ptr %129, align 2
  %131 = icmp eq i16 %130, -1
  br i1 %131, label %132, label %187

132:                                              ; preds = %128
  %133 = tail call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %133, label %134, label %187

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  store i16 2, ptr %135, align 2
  %136 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %136) #13
  tail call void (ptr, ptr, ...) @send_monitor_note(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2), ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4))
  tail call void (ptr, ptr, ...) @send_monitor_note(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 22)
  tail call fastcc void @send_monitor_replay(ptr noundef %6)
  tail call fastcc void @send_monitor_control_replay(ptr noundef %6)
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @monitor_promisc) #13, !srcloc !9
  %137 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @monitor_promisc, ptr nonnull @monitor_promisc, i32 1, ptr nonnull elementtype(i32) @monitor_promisc) #13, !srcloc !19
  br label %181

138:                                              ; preds = %32
  %139 = getelementptr inbounds i8, ptr %4, i32 2
  %140 = load i16, ptr %139, align 2
  %141 = icmp eq i16 %140, -1
  br i1 %141, label %142, label %187

142:                                              ; preds = %138
  %143 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %143, label %144, label %187

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  store i16 4, ptr %145, align 2
  br label %181

146:                                              ; preds = %32
  tail call void @mutex_lock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %147

147:                                              ; preds = %151, %146
  %148 = phi ptr [ @mgmt_chan_list, %146 ], [ %149, %151 ]
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, @mgmt_chan_list
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %149, i32 0, i32 1
  %153 = load i16, ptr %152, align 4
  %154 = icmp eq i16 %153, %34
  br i1 %154, label %155, label %147

155:                                              ; preds = %151, %147
  %156 = phi ptr [ %149, %151 ], [ null, %147 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  %157 = icmp ne ptr %156, null
  %158 = getelementptr inbounds i8, ptr %4, i32 2
  %159 = load i16, ptr %158, align 2
  %160 = icmp eq i16 %159, -1
  %161 = select i1 %157, i1 %160, i1 false
  br i1 %161, label %162, label %187

162:                                              ; preds = %155
  %163 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %163, label %164, label %166

164:                                              ; preds = %162
  %165 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %165) #13
  br label %166

166:                                              ; preds = %164, %162
  %167 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  store i16 %34, ptr %167, align 2
  %168 = icmp eq i16 %34, 3
  br i1 %168, label %169, label %181

169:                                              ; preds = %166
  %170 = tail call fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %6)
  br i1 %170, label %175, label %171

171:                                              ; preds = %169
  %172 = tail call fastcc ptr @create_monitor_ctrl_close(ptr noundef %6)
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %172, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %172, i32 noundef 0) #13
  br label %175

175:                                              ; preds = %174, %171, %169
  %176 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %6)
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %175
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %176, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %176, i32 noundef 0) #13
  br label %179

179:                                              ; preds = %178, %175
  %180 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %180) #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %180) #13
  tail call void @_set_bit(i32 noundef 5, ptr noundef %180) #13
  tail call void @_set_bit(i32 noundef 6, ptr noundef %180) #13
  tail call void @_set_bit(i32 noundef 7, ptr noundef %180) #13
  tail call void @_set_bit(i32 noundef 8, ptr noundef %180) #13
  br label %181

181:                                              ; preds = %179, %166, %144, %134, %125, %64, %61
  %182 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 8
  %183 = load i16, ptr %182, align 8
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i16 1028, ptr %182, align 8
  br label %186

186:                                              ; preds = %185, %181
  store volatile i8 3, ptr %29, align 2
  br label %187

187:                                              ; preds = %186, %155, %142, %138, %132, %128, %111, %105, %100, %74, %72, %68, %65, %42, %35, %28
  %188 = phi i32 [ 0, %186 ], [ -16, %100 ], [ -87, %105 ], [ %110, %111 ], [ -114, %28 ], [ -114, %35 ], [ -19, %42 ], [ -114, %65 ], [ -22, %68 ], [ -1, %72 ], [ -19, %74 ], [ -22, %128 ], [ -1, %132 ], [ -22, %138 ], [ -1, %142 ], [ -22, %155 ]
  tail call void @release_sock(ptr noundef %6) #13
  br label %189

189:                                              ; preds = %187, %8, %3
  %190 = phi i32 [ %188, %187 ], [ -22, %3 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4)
  ret i32 %190
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_getname(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 16
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %3
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 0) #13
  %8 = getelementptr inbounds %struct.hci_pinfo, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 206
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %16, %11, %7
  %19 = phi ptr [ %9, %16 ], [ inttoptr (i32 -32 to ptr), %11 ], [ inttoptr (i32 -77 to ptr), %7 ]
  %20 = ptrtoint ptr %19 to i32
  br label %28

21:                                               ; preds = %16
  store i16 31, ptr %1, align 2
  %22 = getelementptr inbounds %struct.hci_dev, ptr %9, i32 0, i32 4
  %23 = load i16, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sockaddr_hci, ptr %1, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = getelementptr inbounds %struct.hci_pinfo, ptr %5, i32 0, i32 4
  %26 = load i16, ptr %25, align 2
  %27 = getelementptr inbounds %struct.sockaddr_hci, ptr %1, i32 0, i32 2
  store i16 %26, ptr %27, align 2
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %20, %18 ], [ 6, %21 ]
  tail call void @release_sock(ptr noundef %5) #13
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i32 [ %29, %28 ], [ -95, %3 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %7 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %102

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = tail call i32 @ida_alloc_range(ptr noundef nonnull @sock_cookie_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #13
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 -1) #13
  store i32 %16, ptr %11, align 4
  %17 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 7
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = tail call ptr @__get_task_comm(ptr noundef %17, i32 noundef 16, ptr noundef %18) #13
  %20 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %22) #13
  br label %23

23:                                               ; preds = %21, %14
  %24 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef %6)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %24, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #13
  br label %27

27:                                               ; preds = %26, %23, %10
  tail call void @release_sock(ptr noundef %6) #13
  switch i32 %1, label %60 [
    i32 -2147202862, label %28
    i32 -2147202861, label %30
    i32 -2147202860, label %32
    i32 1074022601, label %34
    i32 1074022602, label %39
    i32 1074022603, label %44
    i32 1074022604, label %49
    i32 1074022621, label %54
    i32 1074022622, label %54
    i32 1074022623, label %54
    i32 1074022624, label %54
    i32 1074022625, label %54
    i32 1074022626, label %54
    i32 1074022627, label %54
    i32 1074022628, label %54
    i32 -2147202832, label %58
  ]

28:                                               ; preds = %27
  %29 = tail call i32 @hci_get_dev_list(ptr noundef %4) #13
  br label %104

30:                                               ; preds = %27
  %31 = tail call i32 @hci_get_dev_info(ptr noundef %4) #13
  br label %104

32:                                               ; preds = %27
  %33 = tail call i32 @hci_get_conn_list(ptr noundef %4) #13
  br label %104

34:                                               ; preds = %27
  %35 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %35, label %36, label %104

36:                                               ; preds = %34
  %37 = trunc i32 %2 to i16
  %38 = tail call i32 @hci_dev_open(i16 noundef zeroext %37) #13
  br label %104

39:                                               ; preds = %27
  %40 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %40, label %41, label %104

41:                                               ; preds = %39
  %42 = trunc i32 %2 to i16
  %43 = tail call i32 @hci_dev_close(i16 noundef zeroext %42) #13
  br label %104

44:                                               ; preds = %27
  %45 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %45, label %46, label %104

46:                                               ; preds = %44
  %47 = trunc i32 %2 to i16
  %48 = tail call i32 @hci_dev_reset(i16 noundef zeroext %47) #13
  br label %104

49:                                               ; preds = %27
  %50 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %50, label %51, label %104

51:                                               ; preds = %49
  %52 = trunc i32 %2 to i16
  %53 = tail call i32 @hci_dev_reset_stat(i16 noundef zeroext %52) #13
  br label %104

54:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27
  %55 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %55, label %56, label %104

56:                                               ; preds = %54
  %57 = tail call i32 @hci_dev_cmd(i32 noundef %1, ptr noundef %4) #13
  br label %104

58:                                               ; preds = %27
  %59 = tail call i32 @hci_inquiry(ptr noundef %4) #13
  br label %104

60:                                               ; preds = %27
  tail call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %61 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 206
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %74

71:                                               ; preds = %69, %64, %60
  %72 = phi ptr [ %62, %69 ], [ inttoptr (i32 -32 to ptr), %64 ], [ inttoptr (i32 -77 to ptr), %60 ]
  %73 = ptrtoint ptr %72 to i32
  br label %102

74:                                               ; preds = %69
  %75 = load volatile i32, ptr %65, align 4
  %76 = and i32 %75, 2048
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %65, align 4
  %80 = and i32 %79, 1024
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.hci_dev, ptr %62, i32 0, i32 6
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  switch i32 %1, label %102 [
    i32 1074022620, label %87
    i32 -2147202859, label %90
    i32 -2147202857, label %92
    i32 1074022630, label %94
    i32 1074022631, label %98
  ]

87:                                               ; preds = %86
  %88 = tail call zeroext i1 @capable(i32 noundef 12) #13
  %89 = select i1 %88, i32 -95, i32 -1
  br label %102

90:                                               ; preds = %86
  %91 = tail call i32 @hci_get_conn_info(ptr noundef nonnull %62, ptr noundef %4) #13
  br label %102

92:                                               ; preds = %86
  %93 = tail call i32 @hci_get_auth_info(ptr noundef nonnull %62, ptr noundef %4) #13
  br label %102

94:                                               ; preds = %86
  %95 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = tail call fastcc i32 @hci_sock_reject_list_add(ptr noundef nonnull %62, ptr noundef %4) #13
  br label %102

98:                                               ; preds = %86
  %99 = tail call zeroext i1 @capable(i32 noundef 12) #13
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = tail call fastcc i32 @hci_sock_reject_list_del(ptr noundef nonnull %62, ptr noundef %4) #13
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92, %90, %87, %86, %82, %78, %74, %71, %3
  %103 = phi i32 [ -77, %3 ], [ %73, %71 ], [ %101, %100 ], [ %97, %96 ], [ %93, %92 ], [ %91, %90 ], [ -16, %74 ], [ -95, %78 ], [ -95, %82 ], [ %89, %87 ], [ -1, %94 ], [ -1, %98 ], [ -515, %86 ]
  tail call void @release_sock(ptr noundef %6) #13
  br label %104

104:                                              ; preds = %102, %58, %56, %54, %51, %49, %46, %44, %41, %39, %36, %34, %32, %30, %28
  %105 = phi i32 [ %103, %102 ], [ %59, %58 ], [ %57, %56 ], [ %53, %51 ], [ %48, %46 ], [ %43, %41 ], [ %38, %36 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ -1, %34 ], [ -1, %39 ], [ -1, %44 ], [ -1, %49 ], [ -1, %54 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_setsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = alloca %struct.hci_ufilter, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #13
  store i16 0, ptr %8, align 2, !annotation !20
  switch i32 %1, label %179 [
    i32 0, label %11
    i32 274, label %141
  ]

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  tail call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %139

15:                                               ; preds = %11
  switch i32 %2, label %139 [
    i32 1, label %16
    i32 3, label %51
    i32 2, label %86
  ]

16:                                               ; preds = %15
  %17 = extractvalue [2 x i32] %3, 0
  %18 = inttoptr i32 %17 to ptr
  %19 = extractvalue [2 x i32] %3, 1
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 4, i32 -1090519040) #14, !srcloc !21
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36, !prof !17

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #13
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #15, !srcloc !22
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %18, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36, !prof !17

34:                                               ; preds = %26
  %35 = load i32, ptr %7, align 4
  br label %42

36:                                               ; preds = %26, %22
  %37 = phi i32 [ %32, %26 ], [ 4, %22 ]
  %38 = sub i32 4, %37
  %39 = getelementptr i8, ptr %7, i32 %38
  call void @llvm.memset.p0.i32(ptr align 1 %39, i8 0, i32 %37, i1 false) #13
  br label %139

40:                                               ; preds = %16
  %41 = load i32, ptr %18, align 1
  store i32 %41, ptr %7, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %35, %34 ], [ %41, %40 ]
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 3
  %46 = load i8, ptr %45, align 4
  br i1 %44, label %49, label %47

47:                                               ; preds = %42
  %48 = or i8 %46, 1
  store i8 %48, ptr %45, align 4
  br label %139

49:                                               ; preds = %42
  %50 = and i8 %46, -2
  store i8 %50, ptr %45, align 4
  br label %139

51:                                               ; preds = %15
  %52 = extractvalue [2 x i32] %3, 0
  %53 = inttoptr i32 %52 to ptr
  %54 = extractvalue [2 x i32] %3, 1
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %53, i32 4, i32 -1090519040) #14, !srcloc !21
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71, !prof !17

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #13
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %63) #15, !srcloc !22
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %67 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %53, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71, !prof !17

69:                                               ; preds = %61
  %70 = load i32, ptr %7, align 4
  br label %77

71:                                               ; preds = %61, %57
  %72 = phi i32 [ %67, %61 ], [ 4, %57 ]
  %73 = sub i32 4, %72
  %74 = getelementptr i8, ptr %7, i32 %73
  call void @llvm.memset.p0.i32(ptr align 1 %74, i8 0, i32 %72, i1 false) #13
  br label %139

75:                                               ; preds = %51
  %76 = load i32, ptr %53, align 1
  store i32 %76, ptr %7, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ %70, %69 ], [ %76, %75 ]
  %79 = icmp eq i32 %78, 0
  %80 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 3
  %81 = load i8, ptr %80, align 4
  br i1 %79, label %84, label %82

82:                                               ; preds = %77
  %83 = or i8 %81, 2
  store i8 %83, ptr %80, align 4
  br label %139

84:                                               ; preds = %77
  %85 = and i8 %81, -3
  store i8 %85, ptr %80, align 4
  br label %139

86:                                               ; preds = %15
  %87 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %6, align 4
  %89 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 2, i32 2
  %90 = load i16, ptr %89, align 4
  %91 = getelementptr inbounds %struct.hci_ufilter, ptr %6, i32 0, i32 2
  store i16 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 2, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.hci_ufilter, ptr %6, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  %95 = getelementptr %struct.hci_pinfo, ptr %10, i32 0, i32 2, i32 1, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.hci_ufilter, ptr %6, i32 0, i32 1, i32 1
  store i32 %96, ptr %97, align 4
  %98 = tail call i32 @llvm.umin.i32(i32 %4, i32 16) #13
  %99 = extractvalue [2 x i32] %3, 0
  %100 = inttoptr i32 %99 to ptr
  %101 = extractvalue [2 x i32] %3, 1
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %86
  %105 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %100, i32 %98, i32 -1090519040) #14, !srcloc !21
  %106 = extractvalue { i32, i32 } %105, 0
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115, !prof !17

108:                                              ; preds = %104
  %109 = tail call ptr @llvm.thread.pointer() #13
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 3
  %111 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %110) #15, !srcloc !22
  %112 = and i32 %111, -13
  %113 = or i32 %112, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %114 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %100, i32 noundef %98) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  br label %115

115:                                              ; preds = %108, %104
  %116 = phi i32 [ %114, %108 ], [ %98, %104 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118, !prof !17

118:                                              ; preds = %115
  %119 = sub i32 %98, %116
  %120 = getelementptr i8, ptr %6, i32 %119
  call void @llvm.memset.p0.i32(ptr align 1 %120, i8 0, i32 %116, i1 false) #13
  br label %139

121:                                              ; preds = %86
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %6, ptr align 1 %100, i32 %98, i1 false) #13
  br label %122

122:                                              ; preds = %121, %115
  %123 = call zeroext i1 @capable(i32 noundef 13) #13
  %124 = load i32, ptr %6, align 4
  br i1 %123, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, ptr %94, align 4
  %127 = load i32, ptr %97, align 4
  br label %134

128:                                              ; preds = %122
  %129 = and i32 %124, 16
  store i32 %129, ptr %6, align 4
  %130 = load i32, ptr %94, align 4
  %131 = and i32 %130, 268491262
  store i32 %131, ptr %94, align 4
  %132 = load i32, ptr %97, align 4
  %133 = and i32 %132, 45068
  store i32 %133, ptr %97, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i32 [ %127, %125 ], [ %133, %128 ]
  %136 = phi i32 [ %126, %125 ], [ %131, %128 ]
  %137 = phi i32 [ %124, %125 ], [ %129, %128 ]
  store i32 %137, ptr %87, align 4
  %138 = load i16, ptr %91, align 4
  store i16 %138, ptr %89, align 4
  store i32 %136, ptr %92, align 4
  store i32 %135, ptr %95, align 4
  br label %139

139:                                              ; preds = %134, %118, %84, %82, %71, %49, %47, %36, %15, %11
  %140 = phi i32 [ 0, %134 ], [ 0, %82 ], [ 0, %84 ], [ 0, %47 ], [ 0, %49 ], [ -77, %11 ], [ -92, %15 ], [ -14, %36 ], [ -14, %71 ], [ -14, %118 ]
  call void @release_sock(ptr noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %179

141:                                              ; preds = %5
  tail call void @lock_sock_nested(ptr noundef %10, i32 noundef 0) #13
  %142 = and i32 %2, -2
  %143 = icmp eq i32 %142, 12
  br i1 %143, label %144, label %177

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 4
  %146 = load i16, ptr %145, align 2
  %147 = icmp ult i16 %146, 2
  br i1 %147, label %177, label %148

148:                                              ; preds = %144
  %149 = extractvalue [2 x i32] %3, 0
  %150 = inttoptr i32 %149 to ptr
  %151 = extractvalue [2 x i32] %3, 1
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %148
  %155 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %150, i32 2, i32 -1090519040) #14, !srcloc !21
  %156 = extractvalue { i32, i32 } %155, 0
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %168, !prof !17

158:                                              ; preds = %154
  %159 = tail call ptr @llvm.thread.pointer() #13
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 3
  %161 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %160) #15, !srcloc !22
  %162 = and i32 %161, -13
  %163 = or i32 %162, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %164 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %150, i32 noundef 2) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %161) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168, !prof !17

166:                                              ; preds = %158
  %167 = load i16, ptr %8, align 2
  br label %174

168:                                              ; preds = %158, %154
  %169 = phi i32 [ %164, %158 ], [ 2, %154 ]
  %170 = sub i32 2, %169
  %171 = getelementptr i8, ptr %8, i32 %170
  call void @llvm.memset.p0.i32(ptr align 1 %171, i8 0, i32 %169, i1 false) #13
  br label %177

172:                                              ; preds = %148
  %173 = load i16, ptr %150, align 1
  store i16 %173, ptr %8, align 2
  br label %174

174:                                              ; preds = %172, %166
  %175 = phi i16 [ %167, %166 ], [ %173, %172 ]
  %176 = getelementptr inbounds %struct.hci_pinfo, ptr %10, i32 0, i32 8
  store i16 %175, ptr %176, align 8
  br label %177

177:                                              ; preds = %174, %168, %144, %141
  %178 = phi i32 [ 0, %174 ], [ -92, %144 ], [ -92, %141 ], [ -14, %168 ]
  call void @release_sock(ptr noundef %10) #13
  br label %179

179:                                              ; preds = %177, %139, %5
  %180 = phi i32 [ %140, %139 ], [ %178, %177 ], [ -92, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #13
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_getsockopt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.hci_ufilter, align 4
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  switch i32 %1, label %90 [
    i32 0, label %9
    i32 274, label %74
  ]

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #13, !annotation !20
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #15, !srcloc !22
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #13, !srcloc !25
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %9
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #13
  %20 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 4
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  switch i32 %2, label %70 [
    i32 1, label %24
    i32 3, label %34
    i32 2, label %45
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 3
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #15, !srcloc !22
  %29 = and i32 %28, -13
  %30 = or i32 %29, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %31 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %27, i32 -1090519041) #13, !srcloc !26
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 0, i32 -14
  br label %70

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 3
  %36 = load i8, ptr %35, align 4
  %37 = lshr i8 %36, 1
  %38 = and i8 %37, 1
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #15, !srcloc !22
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %42 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %38, i32 -1090519041) #13, !srcloc !27
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -14
  br label %70

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 2
  %47 = getelementptr inbounds i8, ptr %6, i32 12
  store i32 0, ptr %47, align 4
  %48 = load i32, ptr %46, align 4
  store i32 %48, ptr %6, align 4
  %49 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 2, i32 2
  %50 = load i16, ptr %49, align 4
  store i16 %50, ptr %47, align 4
  %51 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 2, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.hci_ufilter, ptr %6, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr %struct.hci_pinfo, ptr %8, i32 0, i32 2, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hci_ufilter, ptr %6, i32 0, i32 1, i32 1
  store i32 %55, ptr %56, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %17, i32 16) #13
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %57, i32 -1090519040) #14, !srcloc !28
  %59 = extractvalue { i32, i32 } %58, 0
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #15, !srcloc !22
  %63 = and i32 %62, -13
  %64 = or i32 %63, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %65 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %57) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  br label %66

66:                                               ; preds = %61, %45
  %67 = phi i32 [ %65, %61 ], [ %57, %45 ]
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 -14
  br label %70

70:                                               ; preds = %66, %34, %24, %23, %19
  %71 = phi i32 [ -77, %19 ], [ %69, %66 ], [ -92, %23 ], [ %33, %24 ], [ %44, %34 ]
  call void @release_sock(ptr noundef %8) #13
  br label %72

72:                                               ; preds = %70, %9
  %73 = phi i32 [ %71, %70 ], [ -14, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %90

74:                                               ; preds = %5
  tail call void @lock_sock_nested(ptr noundef %8, i32 noundef 0) #13
  %75 = and i32 %2, -2
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 8
  %79 = load i16, ptr %78, align 8
  %80 = tail call ptr @llvm.thread.pointer() #13
  %81 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 3
  %82 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %81) #15, !srcloc !22
  %83 = and i32 %82, -13
  %84 = or i32 %83, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %84) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %85 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i16 %79, i32 -1090519041) #13, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %82) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 0, i32 -14
  br label %88

88:                                               ; preds = %77, %74
  %89 = phi i32 [ %87, %77 ], [ -92, %74 ]
  tail call void @release_sock(ptr noundef %8) #13
  br label %90

90:                                               ; preds = %88, %72, %5
  %91 = phi i32 [ %73, %72 ], [ %89, %88 ], [ -92, %5 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_sendmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 16
  %7 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %208

11:                                               ; preds = %3
  %12 = and i32 %8, -24641
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %2, 4
  %15 = or i1 %14, %13
  br i1 %15, label %208, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 8
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = icmp ult i32 %19, %2
  br i1 %20, label %208, label %21

21:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !20
  %22 = and i32 %8, 64
  %23 = add i32 %2, 8
  %24 = call ptr @sock_alloc_send_skb(ptr noundef %6, i32 noundef %23, i32 noundef %22, ptr noundef nonnull %4) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  store ptr %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr i8, ptr %31, i32 8
  store ptr %32, ptr %30, align 8
  br label %36

33:                                               ; preds = %21
  %34 = load i32, ptr %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33, %26
  %37 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 51
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !17

40:                                               ; preds = %36
  store i32 0, ptr %4, align 4
  br label %46

41:                                               ; preds = %36
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #13, !srcloc !9
  %42 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %37) #13, !srcloc !31
  %43 = extractvalue { i32, i32 } %42, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %44 = sub i32 0, %43
  store i32 %44, ptr %4, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41, %40
  %47 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 66
  %48 = load i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  store i32 -104, ptr %4, align 4
  br label %51

51:                                               ; preds = %50, %41
  call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #13
  %52 = load i32, ptr %4, align 4
  br label %54

53:                                               ; preds = %46
  br i1 %25, label %54, label %57

54:                                               ; preds = %53, %51, %33
  %55 = phi i32 [ %34, %33 ], [ %52, %51 ], [ 0, %53 ]
  %56 = inttoptr i32 %55 to ptr
  br label %93

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !17

61:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2502, 0\0A.popsection", ""() #13, !srcloc !33
  unreachable

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 14
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = ptrtoint ptr %64 to i32
  %69 = sub i32 %67, %68
  %70 = icmp ugt i32 %69, %2
  %71 = add i32 %68, %2
  %72 = sub i32 %67, %71
  %73 = select i1 %70, i32 %72, i32 0
  %74 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 13, i32 0, i32 11
  store i32 %73, ptr %74, align 4
  %75 = call ptr @skb_put(ptr noundef nonnull %24, i32 noundef %2) #13
  %76 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %77 = icmp slt i32 %2, 0
  %78 = load i1, ptr @check_copy_size.__already_done, align 1
  %79 = xor i1 %78, true
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %82, !prof !34

81:                                               ; preds = %62
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %82

82:                                               ; preds = %81, %62
  br i1 %77, label %85, label %83, !prof !34

83:                                               ; preds = %82
  %84 = call i32 @_copy_from_iter(ptr noundef %75, i32 noundef %2, ptr noundef %76) #13
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ %84, %83 ], [ 0, %82 ]
  %87 = icmp eq i32 %86, %2
  br i1 %87, label %89, label %88, !prof !17

88:                                               ; preds = %85
  call void @iov_iter_revert(ptr noundef %76, i32 noundef %86) #13
  call void @kfree_skb_reason(ptr noundef nonnull %24, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %96

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 33
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 13, i32 0, i32 5
  store i32 %91, ptr %92, align 8
  br label %93

93:                                               ; preds = %89, %54
  %94 = phi ptr [ %24, %89 ], [ %56, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %93, %88
  %97 = phi ptr [ inttoptr (i32 -14 to ptr), %88 ], [ %94, %93 ]
  %98 = ptrtoint ptr %97 to i32
  br label %208

99:                                               ; preds = %93
  call void @lock_sock_nested(ptr noundef %6, i32 noundef 0) #13
  %100 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 4
  %101 = load i16, ptr %100, align 2
  switch i16 %101, label %104 [
    i16 0, label %120
    i16 1, label %120
    i16 2, label %206
    i16 4, label %102
  ]

102:                                              ; preds = %99
  %103 = call fastcc i32 @hci_logging_frame(ptr noundef %94)
  br label %206

104:                                              ; preds = %99
  call void @mutex_lock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  %105 = load i16, ptr %100, align 2
  br label %106

106:                                              ; preds = %110, %104
  %107 = phi ptr [ @mgmt_chan_list, %104 ], [ %108, %110 ]
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, @mgmt_chan_list
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %108, i32 0, i32 1
  %112 = load i16, ptr %111, align 4
  %113 = icmp eq i16 %112, %105
  br i1 %113, label %114, label %106

114:                                              ; preds = %110
  %115 = icmp eq ptr %108, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %114
  %117 = call fastcc i32 @hci_mgmt_cmd(ptr noundef nonnull %108, ptr noundef %6, ptr noundef %94)
  br label %118

118:                                              ; preds = %116, %114, %106
  %119 = phi i32 [ %117, %116 ], [ -22, %114 ], [ -22, %106 ]
  call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %206

120:                                              ; preds = %99, %99
  %121 = getelementptr inbounds %struct.hci_pinfo, ptr %6, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 206
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 512
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %131, label %134

131:                                              ; preds = %129, %124, %120
  %132 = phi ptr [ %122, %129 ], [ inttoptr (i32 -32 to ptr), %124 ], [ inttoptr (i32 -77 to ptr), %120 ]
  %133 = ptrtoint ptr %132 to i32
  br label %206

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 3
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %206, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 17
  %141 = load ptr, ptr %140, align 4
  %142 = load i8, ptr %141, align 1
  %143 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 3
  store i8 %142, ptr %143, align 8
  %144 = call ptr @skb_pull(ptr noundef %94, i32 noundef 1) #13
  %145 = load i16, ptr %100, align 2
  %146 = icmp eq i16 %145, 1
  %147 = load i8, ptr %143, align 8
  br i1 %146, label %148, label %155

148:                                              ; preds = %139
  switch i8 %147, label %206 [
    i8 1, label %149
    i8 2, label %149
    i8 3, label %149
    i8 5, label %149
  ]

149:                                              ; preds = %148, %148, %148, %148
  %150 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %150, ptr noundef %94) #13
  %151 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 154
  %154 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %152, ptr noundef %153) #13
  br label %204

155:                                              ; preds = %139
  %156 = icmp eq i8 %147, 1
  br i1 %156, label %157, label %194

157:                                              ; preds = %155
  %158 = load ptr, ptr %140, align 4
  %159 = load i16, ptr %158, align 1
  %160 = lshr i16 %159, 10
  %161 = icmp ugt i16 %159, 6143
  br i1 %161, label %174, label %162

162:                                              ; preds = %157
  %163 = zext i16 %160 to i32
  %164 = and i16 %159, 127
  %165 = zext i16 %164 to i32
  %166 = getelementptr %struct.hci_sec_filter, ptr @hci_sec_filter, i32 0, i32 2, i32 %163
  %167 = lshr i32 %165, 5
  %168 = getelementptr i32, ptr %166, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %165, 31
  %171 = shl nuw i32 1, %170
  %172 = and i32 %169, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162, %157
  %175 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %175, label %176, label %206

176:                                              ; preds = %174, %162
  %177 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 3, i32 12
  store i16 %159, ptr %177, align 4
  %178 = icmp eq i16 %160, 63
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %180, ptr noundef %94) #13
  %181 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 154
  %184 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %182, ptr noundef %183) #13
  br label %204

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 3, i32 14
  %187 = load i8, ptr %186, align 2
  %188 = or i8 %187, 1
  store i8 %188, ptr %186, align 2
  %189 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 161
  call void @skb_queue_tail(ptr noundef %189, ptr noundef %94) #13
  %190 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 153
  %193 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %191, ptr noundef %192) #13
  br label %204

194:                                              ; preds = %155
  %195 = call zeroext i1 @capable(i32 noundef 13) #13
  br i1 %195, label %196, label %206

196:                                              ; preds = %194
  %197 = load i8, ptr %143, align 8
  switch i8 %197, label %206 [
    i8 2, label %198
    i8 3, label %198
    i8 5, label %198
  ]

198:                                              ; preds = %196, %196, %196
  %199 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 160
  call void @skb_queue_tail(ptr noundef %199, ptr noundef %94) #13
  %200 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 138
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.hci_dev, ptr %122, i32 0, i32 154
  %203 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %201, ptr noundef %202) #13
  br label %204

204:                                              ; preds = %206, %198, %185, %179, %149
  %205 = phi i32 [ %207, %206 ], [ %2, %198 ], [ %2, %149 ], [ %2, %185 ], [ %2, %179 ]
  call void @release_sock(ptr noundef %6) #13
  br label %208

206:                                              ; preds = %196, %194, %174, %148, %134, %131, %118, %102, %99
  %207 = phi i32 [ %119, %118 ], [ %103, %102 ], [ %133, %131 ], [ -95, %99 ], [ -100, %134 ], [ -22, %148 ], [ -1, %194 ], [ -22, %196 ], [ -1, %174 ]
  call void @kfree_skb_reason(ptr noundef %94, i32 noundef 0) #13
  br label %204

208:                                              ; preds = %204, %96, %16, %11, %3
  %209 = phi i32 [ %98, %96 ], [ %205, %204 ], [ -95, %3 ], [ -22, %11 ], [ -22, %16 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hci_sock_recvmsg(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = and i32 %3, 64
  %7 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !20
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hci_pinfo, ptr %8, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 4
  br i1 %14, label %106, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 4
  %17 = load volatile i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 9
  br i1 %18, label %106, label %19

19:                                               ; preds = %15
  %20 = call ptr @skb_recv_datagram(ptr noundef %8, i32 noundef %3, i32 noundef %6, ptr noundef nonnull %5) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4
  br label %106

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  %27 = icmp ugt i32 %26, %2
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 32
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %2, %28 ], [ %26, %24 ]
  %34 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %37 to i32
  %40 = sub i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13, i32 0, i32 17
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %44 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %20, i32 noundef 0, ptr noundef %43, i32 noundef %33) #13
  store i32 %44, ptr %5, align 4
  %45 = load i16, ptr %12, align 2
  switch i16 %45, label %95 [
    i16 0, label %46
    i16 1, label %47
    i16 2, label %47
  ]

46:                                               ; preds = %32
  call fastcc void @hci_sock_cmsg(ptr noundef %8, ptr noundef %1, ptr noundef nonnull %20)
  br label %99

47:                                               ; preds = %32, %32
  %48 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 15
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.skb_shared_info, ptr %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 13
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 2048
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 65
  %59 = load i16, ptr %58, align 8
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = icmp eq i64 %49, 0
  %65 = and i32 %60, 16
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i64, ptr %52, align 8
  %70 = icmp eq i64 %69, 0
  %71 = and i16 %59, 64
  %72 = icmp eq i16 %71, 0
  %73 = select i1 %70, i1 true, i1 %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %68, %63, %57, %47
  call void @__sock_recv_timestamp(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %20) #13
  br label %85

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64
  %77 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %77) #13
  %78 = load i32, ptr %76, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %76, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !35
  %80 = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 63
  store i64 %49, ptr %80, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !36
  %81 = load i32, ptr %76, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %76, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %83 = load i16, ptr %77, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %77, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br label %85

85:                                               ; preds = %75, %74
  %86 = load volatile i32, ptr %53, align 4
  %87 = and i32 %86, 524288
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 13
  %91 = load i16, ptr %90, align 8
  %92 = and i16 %91, 1024
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  call void @__sock_recv_wifi_status(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %20) #13
  br label %99

95:                                               ; preds = %32
  %96 = call fastcc ptr @hci_mgmt_chan_find(i16 noundef zeroext %45)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  call fastcc void @sock_recv_timestamp(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %20)
  br label %99

99:                                               ; preds = %98, %95, %94, %89, %85, %46
  call void @skb_free_datagram(ptr noundef %8, ptr noundef nonnull %20) #13
  %100 = and i32 %3, 32
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 %33, i32 %26
  %103 = load i32, ptr %5, align 4
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 %102, i32 %103
  br label %106

106:                                              ; preds = %99, %22, %15, %11, %4
  %107 = phi i32 [ %105, %99 ], [ %23, %22 ], [ -95, %4 ], [ -95, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_close(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 4
  %7 = load i16, ptr %6, align 2
  switch i16 %7, label %37 [
    i16 0, label %8
    i16 1, label %8
    i16 3, label %8
  ]

8:                                                ; preds = %5, %5, %5
  %9 = tail call ptr @__alloc_skb(i32 noundef 12, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 8
  store ptr %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr i8, ptr %16, i32 8
  store ptr %17, ptr %15, align 8
  %18 = load i32, ptr %2, align 4
  %19 = tail call ptr @skb_put(ptr noundef nonnull %9, i32 noundef 4) #13
  store i32 %18, ptr %19, align 1
  %20 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %21 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 2
  store i64 %20, ptr %21, align 8
  %22 = tail call ptr @skb_push(ptr noundef nonnull %9, i32 noundef 6) #13
  store i16 15, ptr %22, align 1
  %23 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.hci_dev, ptr %24, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = phi i16 [ %28, %26 ], [ -1, %11 ]
  %31 = getelementptr inbounds %struct.hci_mon_hdr, ptr %22, i32 0, i32 1
  store i16 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = trunc i32 %33 to i16
  %35 = add i16 %34, -6
  %36 = getelementptr inbounds %struct.hci_mon_hdr, ptr %22, i32 0, i32 2
  store i16 %35, ptr %36, align 1
  br label %37

37:                                               ; preds = %29, %8, %5, %1
  %38 = phi ptr [ %9, %29 ], [ null, %1 ], [ null, %5 ], [ null, %8 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bt_sock_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_do_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_added(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hci_dev_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hci_sock_gen_cookie(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call i32 @ida_alloc_range(ptr noundef nonnull @sock_cookie_ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #13
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 -1)
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 7
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = tail call ptr @__get_task_comm(ptr noundef %8, i32 noundef 16, ptr noundef %9) #13
  br label %11

11:                                               ; preds = %5, %1
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_monitor_ctrl_open(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, i8 0, i32 3, i1 false), !annotation !20
  %3 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  switch i16 %8, label %53 [
    i16 0, label %9
    i16 1, label %11
    i16 3, label %13
  ]

9:                                                ; preds = %6
  store i8 2, ptr %2, align 1
  %10 = getelementptr inbounds i8, ptr %2, i32 1
  store i16 22, ptr %10, align 1
  br label %14

11:                                               ; preds = %6
  store i8 2, ptr %2, align 1
  %12 = getelementptr inbounds i8, ptr %2, i32 1
  store i16 22, ptr %12, align 1
  br label %14

13:                                               ; preds = %6
  call void @mgmt_fill_version_info(ptr noundef nonnull %2) #13
  br label %14

14:                                               ; preds = %13, %11, %9
  %15 = phi i16 [ 2, %13 ], [ 1, %11 ], [ 0, %9 ]
  %16 = call ptr @__alloc_skb(i32 noundef 38, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 8
  store ptr %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 5
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = load i32, ptr %3, align 4
  %29 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 4) #13
  store i32 %28, ptr %29, align 1
  %30 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 2) #13
  store i16 %15, ptr %30, align 1
  %31 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %31, ptr noundef nonnull align 1 dereferenceable(3) %2, i32 3, i1 false) #13
  %32 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 4) #13
  store i32 %27, ptr %32, align 1
  %33 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 1) #13
  store i8 16, ptr %33, align 1
  %34 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 7
  %35 = call ptr @skb_put(ptr noundef nonnull %16, i32 noundef 16) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %35, ptr noundef align 1 dereferenceable(16) %34, i32 16, i1 false) #13
  %36 = call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %37 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 2
  store i64 %36, ptr %37, align 8
  %38 = call ptr @skb_push(ptr noundef nonnull %16, i32 noundef 6) #13
  store i16 14, ptr %38, align 1
  %39 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.hci_dev, ptr %40, i32 0, i32 4
  %44 = load i16, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %18
  %46 = phi i16 [ %44, %42 ], [ -1, %18 ]
  %47 = getelementptr inbounds %struct.hci_mon_hdr, ptr %38, i32 0, i32 1
  store i16 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 5
  %49 = load i32, ptr %48, align 8
  %50 = trunc i32 %49 to i16
  %51 = add i16 %50, -6
  %52 = getelementptr inbounds %struct.hci_mon_hdr, ptr %38, i32 0, i32 2
  store i16 %51, ptr %52, align 1
  br label %53

53:                                               ; preds = %45, %14, %6, %1
  %54 = phi ptr [ %16, %45 ], [ null, %1 ], [ null, %6 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #13
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_index_removed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_open(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @send_monitor_note(ptr noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !20
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  %7 = add i32 %6, 9
  %8 = call ptr @__alloc_skb(i32 noundef %7, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  store ptr %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i32 8
  store ptr %16, ptr %14, align 8
  call void @llvm.va_start(ptr nonnull %3)
  %17 = call ptr @skb_put(ptr noundef nonnull %8, i32 noundef %6) #13
  %18 = load i32, ptr %3, align 4
  %19 = insertvalue [1 x i32] poison, i32 %18, 0
  %20 = call i32 @vsprintf(ptr noundef %17, ptr noundef %1, [1 x i32] %19)
  %21 = call ptr @skb_put(ptr noundef nonnull %8, i32 noundef 1) #13
  store i8 0, ptr %21, align 1
  call void @llvm.va_end(ptr nonnull %3)
  %22 = call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %23 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 2
  store i64 %22, ptr %23, align 8
  %24 = call ptr @skb_push(ptr noundef nonnull %8, i32 noundef 6) #13
  store i16 12, ptr %24, align 1
  %25 = getelementptr inbounds %struct.hci_mon_hdr, ptr %24, i32 0, i32 1
  store i16 -1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i16
  %29 = add i16 %28, -6
  %30 = getelementptr inbounds %struct.hci_mon_hdr, ptr %24, i32 0, i32 2
  store i16 %29, ptr %30, align 1
  %31 = call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %8) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %10
  call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #13
  br label %34

34:                                               ; preds = %33, %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_monitor_replay(ptr noundef %0) unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @hci_dev_list_lock) #13
  %2 = load ptr, ptr @hci_dev_list, align 4
  %3 = icmp eq ptr %2, @hci_dev_list
  br i1 %3, label %101, label %4

4:                                                ; preds = %98, %1
  %5 = phi ptr [ %99, %98 ], [ %2, %1 ]
  %6 = tail call fastcc ptr @create_monitor_event(ptr noundef %5, i32 noundef 1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %98, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %6) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @kfree_skb_reason(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 3
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %98, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @__alloc_skb(i32 noundef 8, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %98, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 8
  store ptr %26, ptr %24, align 8
  %27 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %28 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 2
  store i64 %27, ptr %28, align 8
  %29 = tail call ptr @skb_push(ptr noundef nonnull %18, i32 noundef 6) #13
  store i16 8, ptr %29, align 1
  %30 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 4
  %31 = load i16, ptr %30, align 8
  %32 = getelementptr inbounds %struct.hci_mon_hdr, ptr %29, i32 0, i32 1
  store i16 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = trunc i32 %34 to i16
  %36 = add i16 %35, -6
  %37 = getelementptr inbounds %struct.hci_mon_hdr, ptr %29, i32 0, i32 2
  store i16 %36, ptr %37, align 1
  %38 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %18) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %20
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #13
  br label %41

41:                                               ; preds = %40, %20
  %42 = load volatile i32, ptr %13, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %98, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 17
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 8
  store ptr %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 14
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %53, i32 8
  store ptr %54, ptr %52, align 8
  %55 = tail call ptr @skb_put(ptr noundef nonnull %46, i32 noundef 8) #13
  %56 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %55, ptr noundef align 1 dereferenceable(6) %56, i32 6, i1 false) #13
  %57 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 31
  br label %79

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 206
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %98, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 31
  %65 = load i16, ptr %64, align 2
  %66 = icmp eq i16 %65, -1
  br i1 %66, label %98, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @__alloc_skb(i32 noundef 16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %69 = icmp eq ptr %68, null
  br i1 %69, label %98, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  store ptr %73, ptr %71, align 4
  %74 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 14
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr i8, ptr %75, i32 8
  store ptr %76, ptr %74, align 8
  %77 = tail call ptr @skb_put(ptr noundef nonnull %68, i32 noundef 8) #13
  %78 = getelementptr inbounds %struct.hci_dev, ptr %5, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %77, ptr noundef align 1 dereferenceable(6) %78, i32 6, i1 false) #13
  br label %79

79:                                               ; preds = %70, %48
  %80 = phi ptr [ %57, %48 ], [ %64, %70 ]
  %81 = phi ptr [ %55, %48 ], [ %77, %70 ]
  %82 = phi ptr [ %46, %48 ], [ %68, %70 ]
  %83 = load i16, ptr %80, align 2
  %84 = getelementptr inbounds %struct.hci_mon_index_info, ptr %81, i32 0, i32 1
  store i16 %83, ptr %84, align 1
  %85 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %86 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 2
  store i64 %85, ptr %86, align 8
  %87 = tail call ptr @skb_push(ptr noundef nonnull %82, i32 noundef 6) #13
  store i16 10, ptr %87, align 1
  %88 = load i16, ptr %30, align 8
  %89 = getelementptr inbounds %struct.hci_mon_hdr, ptr %87, i32 0, i32 1
  store i16 %88, ptr %89, align 1
  %90 = getelementptr inbounds %struct.sk_buff, ptr %82, i32 0, i32 5
  %91 = load i32, ptr %90, align 8
  %92 = trunc i32 %91 to i16
  %93 = add i16 %92, -6
  %94 = getelementptr inbounds %struct.hci_mon_hdr, ptr %87, i32 0, i32 2
  store i16 %93, ptr %94, align 1
  %95 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %82) #13
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %79
  tail call void @kfree_skb_reason(ptr noundef nonnull %82, i32 noundef 0) #13
  br label %98

98:                                               ; preds = %97, %79, %67, %63, %58, %45, %17, %12, %4
  %99 = load ptr, ptr %5, align 4
  %100 = icmp eq ptr %99, @hci_dev_list
  br i1 %100, label %101, label %4

101:                                              ; preds = %98, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @hci_dev_list_lock) #13, !srcloc !9
  %102 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @hci_dev_list_lock) #13, !srcloc !10
  %103 = extractvalue { i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %106

106:                                              ; preds = %105, %101
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @send_monitor_control_replay(ptr noundef %0) unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13
  %2 = load ptr, ptr @hci_sk_list, align 4
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -84
  %5 = icmp eq ptr %4, null
  %6 = or i1 %3, %5
  br i1 %6, label %22, label %7

7:                                                ; preds = %15, %1
  %8 = phi ptr [ %19, %15 ], [ %4, %1 ]
  %9 = tail call fastcc ptr @create_monitor_ctrl_open(ptr noundef nonnull %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef nonnull %9) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @kfree_skb_reason(ptr noundef nonnull %9, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %14, %11, %7
  %16 = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -84
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %7

22:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !9
  %23 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr getelementptr inbounds (%struct.bt_sock_list, ptr @hci_sk_list, i32 0, i32 1)) #13, !srcloc !10
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  br label %27

27:                                               ; preds = %26, %22
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hci_mgmt_chan_find(i16 noundef zeroext %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @mgmt_chan_list, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @mgmt_chan_list
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %4, i32 0, i32 1
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %4, %6 ], [ null, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mgmt_chan_list_lock) #13
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mgmt_fill_version_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_dev_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_dev_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_conn_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_close(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_reset(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_reset_stat(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_dev_cmd(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_inquiry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_conn_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_get_auth_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_reject_list_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bdaddr_t, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !20
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 6, i32 -1090519040) #14, !srcloc !21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #15, !srcloc !22
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 6, %2 ]
  %17 = sub i32 6, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #13
  br label %23

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %22 = call i32 @hci_bdaddr_list_add(ptr noundef %21, ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  call void @mutex_unlock(ptr noundef %20) #13
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %22, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_sock_reject_list_del(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bdaddr_t, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !20
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 6, i32 -1090519040) #14, !srcloc !21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !17

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #15, !srcloc !22
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #13, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 6) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #13, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !17

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %13, %7 ], [ 6, %2 ]
  %17 = sub i32 6, %16
  %18 = getelementptr i8, ptr %3, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #13
  br label %23

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 1
  call void @mutex_lock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.hci_dev, ptr %0, i32 0, i32 185
  %22 = call i32 @hci_bdaddr_list_del(ptr noundef %21, ptr noundef nonnull %3, i8 noundef zeroext 0) #13
  call void @mutex_unlock(ptr noundef %20) #13
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %22, %19 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #13
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_add(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hci_bdaddr_list_del(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_logging_frame(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 9
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hci_mon_hdr, ptr %7, i32 0, i32 2
  %9 = load i16, ptr %8, align 1
  %10 = zext i16 %9 to i32
  %11 = add i32 %3, -6
  %12 = icmp eq i32 %11, %10
  br i1 %12, label %13, label %50

13:                                               ; preds = %5
  %14 = load i16, ptr %7, align 1
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %7, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr i8, ptr %7, i32 7
  %20 = load i8, ptr %19, align 1
  %21 = icmp ugt i8 %18, 7
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = add i32 %3, -1
  %24 = getelementptr i8, ptr %7, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = zext i8 %20 to i32
  %29 = add i32 %3, -9
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = add nuw nsw i32 %28, 7
  %33 = getelementptr i8, ptr %7, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.hci_mon_hdr, ptr %7, i32 0, i32 1
  %38 = load i16, ptr %37, align 1
  %39 = icmp eq i16 %38, -1
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = zext i16 %38 to i32
  %42 = tail call ptr @hci_dev_get(i32 noundef %41) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %40, %36
  %45 = phi ptr [ %42, %40 ], [ null, %36 ]
  store i16 13, ptr %7, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef %0, i32 noundef 0, ptr noundef null)
  %46 = load i32, ptr %2, align 8
  %47 = icmp eq ptr %45, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hci_dev, ptr %45, i32 0, i32 204
  tail call void @put_device(ptr noundef %49) #13
  br label %50

50:                                               ; preds = %48, %44, %40, %31, %27, %22, %16, %13, %5, %1
  %51 = phi i32 [ -22, %1 ], [ -22, %5 ], [ -22, %16 ], [ -22, %22 ], [ -22, %27 ], [ -22, %31 ], [ -22, %13 ], [ -19, %40 ], [ %46, %48 ], [ %46, %44 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @hci_mgmt_cmd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %154, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.mgmt_hdr, ptr %9, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.mgmt_hdr, ptr %9, i32 0, i32 2
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = add i32 %5, -6
  %17 = icmp eq i32 %16, %15
  br i1 %17, label %18, label %154

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %0, i32 0, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %9, i32 6
  %24 = add nuw nsw i32 %15, 14
  %25 = tail call ptr @__alloc_skb(i32 noundef %24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 17
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr i8, ptr %32, i32 8
  store ptr %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @skb_put(ptr noundef nonnull %25, i32 noundef 4) #13
  store i32 %35, ptr %36, align 1
  %37 = tail call ptr @skb_put(ptr noundef nonnull %25, i32 noundef 2) #13
  store i16 %10, ptr %37, align 1
  %38 = icmp eq ptr %23, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = tail call ptr @skb_put(ptr noundef nonnull %25, i32 noundef %15) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %40, ptr nonnull align 1 %23, i32 %15, i1 false) #13
  br label %41

41:                                               ; preds = %39, %27
  %42 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #13
  %43 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 2
  store i64 %42, ptr %43, align 8
  %44 = tail call ptr @skb_push(ptr noundef nonnull %25, i32 noundef 6) #13
  store i16 16, ptr %44, align 1
  %45 = getelementptr inbounds %struct.hci_mon_hdr, ptr %44, i32 0, i32 1
  store i16 %12, ptr %45, align 1
  %46 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = trunc i32 %47 to i16
  %49 = add i16 %48, -6
  %50 = getelementptr inbounds %struct.hci_mon_hdr, ptr %44, i32 0, i32 2
  store i16 %49, ptr %50, align 1
  tail call void @hci_send_to_channel(i16 noundef zeroext 2, ptr noundef nonnull %25, i32 noundef 0, ptr noundef null)
  tail call void @kfree_skb_reason(ptr noundef nonnull %25, i32 noundef 0) #13
  br label %51

51:                                               ; preds = %41, %22, %18
  %52 = zext i16 %10 to i32
  %53 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %0, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp ugt i32 %54, %52
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr %struct.hci_mgmt_handler, ptr %58, i32 %52
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %51
  %63 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 1) #13
  br label %154

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.hci_pinfo, ptr %1, i32 0, i32 5
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = getelementptr %struct.hci_mgmt_handler, ptr %58, i32 %52, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 20) #13
  br label %154

76:                                               ; preds = %69, %64
  %77 = icmp eq i16 %12, -1
  br i1 %77, label %106, label %78

78:                                               ; preds = %76
  %79 = zext i16 %12 to i32
  %80 = tail call ptr @hci_dev_get(i32 noundef %79) #13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 17) #13
  br label %154

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.hci_dev, ptr %80, i32 0, i32 206
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %148

89:                                               ; preds = %84
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %148

93:                                               ; preds = %89
  %94 = load volatile i32, ptr %85, align 4
  %95 = and i32 %94, 2048
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %93
  %98 = load volatile i32, ptr %85, align 4
  %99 = and i32 %98, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr %struct.hci_mgmt_handler, ptr %58, i32 %52, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %148, label %106

106:                                              ; preds = %101, %97, %76
  %107 = phi ptr [ %80, %101 ], [ %80, %97 ], [ null, %76 ]
  %108 = getelementptr %struct.hci_mgmt_handler, ptr %58, i32 %52, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = icmp ne ptr %107, null
  %114 = and i32 %109, 2
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %113, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 17) #13
  br label %145

119:                                              ; preds = %112, %106
  %120 = and i32 %109, 1
  %121 = icmp eq i32 %120, 0
  %122 = getelementptr %struct.hci_mgmt_handler, ptr %58, i32 %52, i32 1
  %123 = load i32, ptr %122, align 4
  br i1 %121, label %126, label %124

124:                                              ; preds = %119
  %125 = icmp ugt i32 %123, %15
  br i1 %125, label %128, label %130

126:                                              ; preds = %119
  %127 = icmp eq i32 %123, %15
  br i1 %127, label %130, label %128

128:                                              ; preds = %126, %124
  %129 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 13) #13
  br label %145

130:                                              ; preds = %126, %124
  %131 = icmp eq ptr %107, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.hci_mgmt_chan, ptr %0, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void %134(ptr noundef %1, ptr noundef nonnull %107) #13
  br label %137

137:                                              ; preds = %136, %132, %130
  %138 = load ptr, ptr %8, align 4
  %139 = getelementptr i8, ptr %138, i32 6
  %140 = load ptr, ptr %59, align 4
  %141 = tail call i32 %140(ptr noundef %1, ptr noundef %107, ptr noundef %139, i16 noundef zeroext %14) #13
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %137
  %144 = load i32, ptr %4, align 8
  br label %145

145:                                              ; preds = %143, %137, %128, %117
  %146 = phi i32 [ %129, %128 ], [ %141, %137 ], [ %144, %143 ], [ %118, %117 ]
  %147 = icmp eq ptr %107, null
  br i1 %147, label %154, label %150

148:                                              ; preds = %101, %93, %89, %84
  %149 = tail call i32 @mgmt_cmd_status(ptr noundef %1, i16 noundef zeroext %12, i16 noundef zeroext %10, i8 noundef zeroext 17) #13
  br label %150

150:                                              ; preds = %148, %145
  %151 = phi i32 [ %146, %145 ], [ %149, %148 ]
  %152 = phi ptr [ %107, %145 ], [ %80, %148 ]
  %153 = getelementptr inbounds %struct.hci_dev, ptr %152, i32 0, i32 204
  tail call void @put_device(ptr noundef %153) #13
  br label %154

154:                                              ; preds = %150, %145, %82, %74, %62, %7, %3
  %155 = phi i32 [ -22, %3 ], [ %151, %150 ], [ %146, %145 ], [ -22, %7 ], [ %75, %74 ], [ %83, %82 ], [ %63, %62 ]
  ret i32 %155
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mgmt_cmd_status(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hci_sock_cmsg(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.__kernel_old_timeval, align 8
  %6 = getelementptr inbounds %struct.hci_pinfo, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %4, align 4
  %16 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %17

17:                                               ; preds = %11, %3
  %18 = and i32 %8, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !20
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %5, i64 noundef %22) #13
  %23 = call i32 @put_cmsg(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %24

24:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_recv_timestamp(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 7
  %9 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 65
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = icmp eq i64 %5, 0
  %21 = and i32 %16, 16
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, ptr %8, align 8
  %26 = icmp eq i64 %25, 0
  %27 = and i16 %15, 64
  %28 = icmp eq i16 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %24, %19, %13, %3
  tail call void @__sock_recv_timestamp(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %41

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64
  %33 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %33) #13
  %34 = load i32, ptr %32, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %32, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !35
  %36 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 63
  store i64 %5, ptr %36, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !36
  %37 = load i32, ptr %32, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !37
  %39 = load i16, ptr %33, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  br label %41

41:                                               ; preds = %31, %30
  %42 = load volatile i32, ptr %9, align 4
  %43 = and i32 %42, 524288
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %47 = load i16, ptr %46, align 8
  %48 = and i16 %47, 1024
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @__sock_recv_wifi_status(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %51

51:                                               ; preds = %50, %45, %41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_timestamp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_wifi_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
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
!8 = !{i64 2148955966}
!9 = !{i64 479558, i64 2147969529, i64 2147969555, i64 2147969602, i64 2147969624, i64 2147969652, i64 2147969672}
!10 = !{i64 1459390, i64 1459413, i64 1459433, i64 1459457, i64 1459473}
!11 = !{i64 2148943908}
!12 = !{i64 2148943983, i64 2148944010, i64 2148944057, i64 2148944079, i64 2148944107, i64 2148944127}
!13 = !{i64 2148993569}
!14 = !{i64 2147983301, i64 2147983327, i64 2147983356, i64 2147983390, i64 2147983421, i64 2147983444}
!15 = !{i64 2148082600}
!16 = !{i64 2147984759, i64 2147984791, i64 2147984820, i64 2147984854, i64 2147984885, i64 2147984908}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2149176852}
!19 = !{i64 2147980944, i64 2147980970, i64 2147980999, i64 2147981033, i64 2147981064, i64 2147981087}
!20 = !{!"auto-init"}
!21 = !{i64 2151105343, i64 2151105368}
!22 = !{i64 3601455}
!23 = !{i64 3601652}
!24 = !{i64 2151086931}
!25 = !{i64 2155948963, i64 2155949243, i64 2155949577, i64 2155949911}
!26 = !{i64 2155958373, i64 2155958653, i64 2155958987, i64 2155959321}
!27 = !{i64 2155966542, i64 2155966822, i64 2155967156, i64 2155967490}
!28 = !{i64 2151105921, i64 2151105946}
!29 = !{i64 2155979162, i64 2155979442, i64 2155979776, i64 2155980110}
!30 = !{i64 2155366653}
!31 = !{i64 488208, i64 488225, i64 488249, i64 488275, i64 488293}
!32 = !{i64 2155366970}
!33 = !{i64 2153857990, i64 2153862539, i64 2153858027, i64 2153858083, i64 2153858117, i64 2153858141, i64 2153858182, i64 2153858203, i64 2153858231, i64 2153858265}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2149483673}
!36 = !{i64 2149483974}
!37 = !{i64 2148948084}
!38 = !{i64 2148971087}
