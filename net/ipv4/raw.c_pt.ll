; ModuleID = '/llk/IR/net/ipv4/raw.c_pt.bc'
source_filename = "../net/ipv4/raw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_v4_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_v4_hashinfo\22\09\09\09\09\09"
module asm "__kstrtabns_raw_v4_hashinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_hash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_hash_sk\22\09\09\09\09\09"
module asm "__kstrtabns_raw_hash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_unhash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_unhash_sk\22\09\09\09\09\09"
module asm "__kstrtabns_raw_unhash_sk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___raw_v4_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__raw_v4_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___raw_v4_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_abort\22\09\09\09\09\09"
module asm "__kstrtabns_raw_abort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_seq_start\22\09\09\09\09\09"
module asm "__kstrtabns_raw_seq_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_seq_next\22\09\09\09\09\09"
module asm "__kstrtabns_raw_seq_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_seq_stop\22\09\09\09\09\09"
module asm "__kstrtabns_raw_seq_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_hashinfo = type { %struct.rwlock_t, [256 x %struct.hlist_head] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.128, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.128 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.icmp_err = type { i32, i8 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.129, [0 x i32], %union.anon.130, i16, i16, %union.anon.131, %struct.refcount_struct, [0 x i32], %union.anon.132 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type {}
%struct.in6_addr = type { %union.anon.79 }
%union.anon.79 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { %struct.hlist_node }
%union.anon.131 = type { i32 }
%union.anon.132 = type { i32 }
%struct.anon.2 = type { i16, i16 }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.anon = type { i32, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.145 }
%union.anon.145 = type { i32 }
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
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.89, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.callback_head = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%union.anon.89 = type { %struct.in6_addr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.raw_sock = type { %struct.inet_sock, %struct.icmp_filter, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.133, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.134, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.135, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.133 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.84 }
%union.anon.84 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.icmp_filter = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.41, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.90, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.41 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.90 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.raw_frag_vec = type { ptr, %union.anon.148, i32 }
%union.anon.148 = type { %struct.icmphdr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.127, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.125 }
%union.anon.4 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.127 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.anon.85 = type { i16, i16 }
%struct.anon.86 = type { i8, i8 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.137, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.138, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.139, ptr, %struct.address_space, %struct.list_head, %union.anon.140, i32, i32, ptr, ptr }
%union.anon.137 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.138 = type { %struct.callback_head }
%union.anon.139 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.140 = type { ptr }
%struct.raw_iter_state = type { %struct.seq_net_private, i32 }
%struct.seq_net_private = type {}
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@raw_v4_hashinfo = dso_local global %struct.raw_hashinfo zeroinitializer, align 4
@__kstrtab_raw_v4_hashinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_v4_hashinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_v4_hashinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_v4_hashinfo to i32), ptr @__kstrtab_raw_v4_hashinfo, ptr @__kstrtabns_raw_v4_hashinfo }, section "___ksymtab_gpl+raw_v4_hashinfo", align 4
@__kstrtab_raw_hash_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_hash_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_hash_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_hash_sk to i32), ptr @__kstrtab_raw_hash_sk, ptr @__kstrtabns_raw_hash_sk }, section "___ksymtab_gpl+raw_hash_sk", align 4
@__kstrtab_raw_unhash_sk = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_unhash_sk = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_unhash_sk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_unhash_sk to i32), ptr @__kstrtab_raw_unhash_sk, ptr @__kstrtabns_raw_unhash_sk }, section "___ksymtab_gpl+raw_unhash_sk", align 4
@__kstrtab___raw_v4_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___raw_v4_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___raw_v4_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__raw_v4_lookup to i32), ptr @__kstrtab___raw_v4_lookup, ptr @__kstrtabns___raw_v4_lookup }, section "___ksymtab_gpl+__raw_v4_lookup", align 4
@__kstrtab_raw_abort = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_abort = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_abort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_abort to i32), ptr @__kstrtab_raw_abort, ptr @__kstrtabns_raw_abort }, section "___ksymtab_gpl+raw_abort", align 4
@raw_prot = dso_local local_unnamed_addr global %struct.proto { ptr @raw_close, ptr null, ptr @ip4_datagram_connect, ptr @__udp_disconnect, ptr null, ptr @raw_ioctl, ptr @raw_sk_init, ptr @raw_destroy, ptr null, ptr @raw_setsockopt, ptr @raw_getsockopt, ptr null, ptr @raw_sendmsg, ptr @raw_recvmsg, ptr null, ptr @raw_bind, ptr null, ptr @raw_rcv_skb, ptr null, ptr @ip4_datagram_release_cb, ptr @raw_hash_sk, ptr @raw_unhash_sk, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 712, i32 0, i32 704, i32 4, ptr null, ptr null, ptr null, %union.anon.128 { ptr @raw_v4_hashinfo }, ptr null, [32 x i8] c"RAW\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr @raw_abort }, align 4
@__kstrtab_raw_seq_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_seq_start = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_seq_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_seq_start to i32), ptr @__kstrtab_raw_seq_start, ptr @__kstrtabns_raw_seq_start }, section "___ksymtab_gpl+raw_seq_start", align 4
@__kstrtab_raw_seq_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_seq_next = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_seq_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_seq_next to i32), ptr @__kstrtab_raw_seq_next, ptr @__kstrtabns_raw_seq_next }, section "___ksymtab_gpl+raw_seq_next", align 4
@__kstrtab_raw_seq_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_seq_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_seq_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_seq_stop to i32), ptr @__kstrtab_raw_seq_stop, ptr @__kstrtabns_raw_seq_stop }, section "___ksymtab_gpl+raw_seq_stop", align 4
@raw_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @raw_init_net, ptr null, ptr @raw_exit_net, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@init_net = external dso_local global %struct.net, align 64
@raw_sysctl_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @raw_sysctl_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str = private unnamed_addr constant [40 x i8] c"RAW: failed to init sysctl parameters.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"include/net/sock.h\00", align 1
@icmp_err_convert = external dso_local local_unnamed_addr constant [0 x %struct.icmp_err], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@raw_sendmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\016%s: %s forgot to set AF_INET. Fix it!\0A\00", align 1
@__func__.raw_sendmsg = private unnamed_addr constant [12 x i8] c"raw_sendmsg\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@raw_seq_ops = internal constant %struct.seq_operations { ptr @raw_seq_start, ptr @raw_seq_stop, ptr @raw_seq_next, ptr @raw_seq_show }, align 4
@.str.7 = private unnamed_addr constant [116 x i8] c"  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode ref pointer drops\0A\00", align 1
@.str.8 = private unnamed_addr constant [79 x i8] c"%4d: %08X:%04X %08X:%04X %02X %08X:%08X %02X:%08lX %08X %5u %8d %lu %d %pK %u\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___raw_v4_lookup, ptr @__ksymtab_raw_abort, ptr @__ksymtab_raw_hash_sk, ptr @__ksymtab_raw_seq_next, ptr @__ksymtab_raw_seq_start, ptr @__ksymtab_raw_seq_stop, ptr @__ksymtab_raw_unhash_sk, ptr @__ksymtab_raw_v4_hashinfo], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_hash_sk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 48
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.anon.2, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 255
  %10 = zext i16 %9 to i32
  %11 = getelementptr %struct.raw_hashinfo, ptr %5, i32 0, i32 1, i32 %10
  tail call void @_raw_write_lock_bh(ptr noundef %5) #17
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #17, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #17, !srcloc !10
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !11

16:                                               ; preds = %1
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %16, %1
  %21 = phi i32 [ 2, %1 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #17
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %24 = load ptr, ptr %11, align 4
  store volatile ptr %24, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  store volatile ptr %23, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %22
  store volatile ptr %23, ptr %11, align 4
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %11, ptr %29, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %5) #17
  %30 = load ptr, ptr %2, align 8
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !13
  %32 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %33 = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 25
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.prot_inuse, ptr %32, i32 0, i32 1, i32 %34
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #8, !srcloc !14
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #17, !srcloc !15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw_unhash_sk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 48
  %5 = load ptr, ptr %4, align 4
  tail call void @_raw_write_lock_bh(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  store volatile ptr %11, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  store volatile ptr %7, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %9
  store ptr null, ptr %6, align 4
  %16 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 19
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 729, i32 noundef 9, ptr noundef null) #17
  br label %20

20:                                               ; preds = %19, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #17, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #17, !srcloc !17
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 4) #17
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %2, align 8
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !13
  %28 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 29, i32 2), align 4
  %29 = getelementptr inbounds %struct.proto, ptr %26, i32 0, i32 25
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.prot_inuse, ptr %28, i32 0, i32 1, i32 %30
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %34 = inttoptr i32 %33 to ptr
  %35 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %34) #8, !srcloc !14
  %36 = add i32 %35, %32
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #17, !srcloc !15
  br label %40

40:                                               ; preds = %25, %1
  tail call void @_raw_write_unlock_bh(ptr noundef %5) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__raw_v4_lookup(ptr nocapture readnone %0, ptr noundef readonly %1, i16 noundef zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = icmp eq ptr %1, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %38, %34 ], [ %1, %7 ]
  %11 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.anon.2, ptr %11, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, %2
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load i32, ptr %10, align 8
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %16, %3
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = icmp eq i32 %22, %4
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = icmp eq i32 %28, %5
  %32 = icmp eq i32 %28, %6
  %33 = or i1 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %30, %20, %15, %9
  %35 = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 15
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = getelementptr i8, ptr %36, i32 -84
  %39 = icmp eq ptr %38, null
  %40 = or i1 %37, %39
  br i1 %40, label %41, label %9

41:                                               ; preds = %34, %30, %26, %7
  %42 = phi ptr [ null, %7 ], [ %10, %26 ], [ %10, %30 ], [ null, %34 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_local_deliver(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.icmphdr, align 8
  %4 = and i32 %1, 255
  %5 = getelementptr %struct.raw_hashinfo, ptr @raw_v4_hashinfo, i32 0, i32 1, i32 %4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -84
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %180, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %13, i32 %16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = inttoptr i32 %20 to ptr
  %24 = getelementptr inbounds %struct.rtable, ptr %23, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %11
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %29, %27 ], [ %25, %22 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v4_hashinfo) #17
  %32 = load volatile ptr, ptr %5, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %173, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %36 = getelementptr i8, ptr %32, i32 -84
  %37 = getelementptr inbounds %struct.iphdr, ptr %17, i32 0, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i16
  %40 = getelementptr inbounds %struct.iphdr, ptr %17, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.iphdr, ptr %17, i32 0, i32 9
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq ptr %36, null
  br i1 %44, label %173, label %45

45:                                               ; preds = %68, %34
  %46 = phi ptr [ %72, %68 ], [ %36, %34 ]
  %47 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.anon.2, ptr %47, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = icmp eq i16 %49, %39
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, ptr %46, align 8
  %53 = icmp eq i32 %52, 0
  %54 = icmp eq i32 %52, %41
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.anon, ptr %46, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = icmp eq i32 %58, %43
  %61 = or i1 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  %66 = icmp eq i32 %64, %31
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %62, %56, %51, %45
  %69 = getelementptr inbounds %struct.sock_common, ptr %46, i32 0, i32 15
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  %72 = getelementptr i8, ptr %70, i32 -84
  %73 = icmp eq ptr %72, null
  %74 = or i1 %71, %73
  br i1 %74, label %173, label %45

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %78 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %79 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %80 = icmp eq ptr %0, null
  br label %81

81:                                               ; preds = %160, %75
  %82 = phi i8 [ %38, %75 ], [ %137, %160 ]
  %83 = phi ptr [ %46, %75 ], [ %144, %160 ]
  %84 = icmp eq i8 %82, 1
  br i1 %84, label %85, label %119

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !annotation !18
  %86 = load ptr, ptr %12, align 8
  %87 = load i16, ptr %76, align 2
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %86, i32 %88
  %90 = load ptr, ptr %77, align 4
  %91 = ptrtoint ptr %89 to i32
  %92 = ptrtoint ptr %90 to i32
  %93 = sub i32 %91, %92
  %94 = load i32, ptr %78, align 8
  %95 = load i32, ptr %79, align 4
  %96 = add i32 %95, %93
  %97 = sub i32 %94, %96
  %98 = icmp sgt i32 %97, 7
  br i1 %98, label %103, label %99, !prof !12

99:                                               ; preds = %85
  br i1 %80, label %111, label %100

100:                                              ; preds = %99
  %101 = call i32 @skb_copy_bits(ptr noundef nonnull %0, i32 noundef %93, ptr noundef nonnull %3, i32 noundef 8) #17
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %111, label %106

103:                                              ; preds = %85
  %104 = getelementptr i8, ptr %90, i32 %93
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %103, %100
  %107 = phi ptr [ %104, %103 ], [ %3, %100 ]
  %108 = load i8, ptr %107, align 4
  %109 = icmp ult i8 %108, 32
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %119

111:                                              ; preds = %103, %100, %99
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  br label %132

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.raw_sock, ptr %83, i32 0, i32 1
  %114 = load i32, ptr %113, align 8
  %115 = zext i8 %108 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %116 = shl nuw i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %112, %110, %81
  %120 = load i32, ptr %42, align 4
  %121 = load i32, ptr %40, align 4
  %122 = load ptr, ptr %35, align 8
  %123 = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 17
  %124 = load i32, ptr %123, align 4
  %125 = call i32 @ip_mc_sf_allow(ptr noundef nonnull %83, i32 noundef %120, i32 noundef %121, i32 noundef %124, i32 noundef 0) #17
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = call ptr @skb_clone(ptr noundef %0, i32 noundef 2592) #17
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 @raw_rcv(ptr noundef nonnull %83, ptr noundef nonnull %128) #17
  br label %132

132:                                              ; preds = %130, %127, %119, %112, %111
  %133 = getelementptr inbounds %struct.sock_common, ptr %83, i32 0, i32 15
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  %136 = getelementptr i8, ptr %134, i32 -84
  %137 = load i8, ptr %37, align 1
  %138 = zext i8 %137 to i16
  %139 = load i32, ptr %40, align 4
  %140 = load i32, ptr %42, align 4
  %141 = icmp eq ptr %136, null
  %142 = or i1 %135, %141
  br i1 %142, label %173, label %143

143:                                              ; preds = %166, %132
  %144 = phi ptr [ %170, %166 ], [ %136, %132 ]
  %145 = getelementptr inbounds %struct.sock_common, ptr %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.anon.2, ptr %145, i32 0, i32 1
  %147 = load i16, ptr %146, align 2
  %148 = icmp eq i16 %147, %138
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load i32, ptr %144, align 8
  %151 = icmp eq i32 %150, 0
  %152 = icmp eq i32 %150, %139
  %153 = or i1 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.anon, ptr %144, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = icmp eq i32 %156, 0
  %158 = icmp eq i32 %156, %140
  %159 = or i1 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.sock_common, ptr %144, i32 0, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  %164 = icmp eq i32 %162, %31
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %81, label %166

166:                                              ; preds = %160, %154, %149, %143
  %167 = getelementptr inbounds %struct.sock_common, ptr %144, i32 0, i32 15
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  %170 = getelementptr i8, ptr %168, i32 -84
  %171 = icmp eq ptr %170, null
  %172 = or i1 %169, %171
  br i1 %172, label %173, label %143

173:                                              ; preds = %166, %132, %68, %34, %30
  %174 = phi i32 [ 0, %34 ], [ 0, %30 ], [ 1, %166 ], [ 1, %132 ], [ 0, %68 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @raw_v4_hashinfo) #17, !srcloc !9
  %175 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @raw_v4_hashinfo) #17, !srcloc !20
  %176 = extractvalue { i32, i32 } %175, 0
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  br label %179

179:                                              ; preds = %178, %173
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  br label %180

180:                                              ; preds = %179, %2
  %181 = phi i32 [ 0, %2 ], [ %174, %179 ]
  ret i32 %181
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw_icmp_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 255
  tail call void @_raw_read_lock(ptr noundef nonnull @raw_v4_hashinfo) #17
  %5 = getelementptr %struct.raw_hashinfo, ptr @raw_v4_hashinfo, i32 0, i32 1, i32 %4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -84
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %128, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.anon.43, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %17 = trunc i32 %1 to i16
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 17
  br label %20

20:                                               ; preds = %121, %11
  %21 = phi ptr [ %8, %11 ], [ %125, %121 ]
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %50, %20
  %28 = phi ptr [ %54, %50 ], [ %21, %20 ]
  %29 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.anon.2, ptr %29, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = icmp eq i16 %31, %17
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load i32, ptr %28, align 8
  %35 = icmp eq i32 %34, 0
  %36 = icmp eq i32 %34, %24
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = icmp eq i32 %40, %26
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq i32 %46, %15
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %44, %38, %33, %27
  %51 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 15
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = getelementptr i8, ptr %52, i32 -84
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %128, label %27

57:                                               ; preds = %44
  %58 = load ptr, ptr %18, align 8
  %59 = load i16, ptr %19, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = load i8, ptr %61, align 4
  %63 = getelementptr inbounds %struct.icmphdr, ptr %61, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i8 %62, 3
  %67 = icmp eq i8 %64, 4
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  tail call void @ipv4_sk_update_pmtu(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %2) #17
  br label %73

70:                                               ; preds = %57
  %71 = icmp eq i8 %62, 5
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  tail call void @ipv4_sk_redirect(ptr noundef %0, ptr noundef nonnull %28) #17
  br label %121

73:                                               ; preds = %70, %69
  %74 = getelementptr inbounds %struct.inet_sock, ptr %28, i32 0, i32 12
  %75 = load i16, ptr %74, align 8
  %76 = and i16 %75, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 4
  %80 = load volatile i8, ptr %79, align 2
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %82, label %121

82:                                               ; preds = %78, %73
  switch i8 %62, label %99 [
    i8 3, label %84
    i8 4, label %121
    i8 12, label %83
  ]

83:                                               ; preds = %82
  br label %99

84:                                               ; preds = %82
  %85 = icmp ugt i8 %64, 15
  br i1 %85, label %99, label %86

86:                                               ; preds = %84
  br i1 %67, label %87, label %92

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.inet_sock, ptr %28, i32 0, i32 11
  %89 = load i8, ptr %88, align 1
  %90 = icmp ne i8 %89, 0
  %91 = zext i1 %90 to i32
  br label %99

92:                                               ; preds = %86
  %93 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %65
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr [0 x %struct.icmp_err], ptr @icmp_err_convert, i32 0, i32 %65, i32 1
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, 1
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %92, %87, %84, %83, %82
  %100 = phi i32 [ 71, %83 ], [ 113, %84 ], [ 90, %87 ], [ %94, %92 ], [ 113, %82 ]
  %101 = phi i32 [ 1, %83 ], [ 0, %84 ], [ %91, %87 ], [ %98, %92 ], [ 0, %82 ]
  br i1 %77, label %115, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr %16, align 4
  %104 = load i8, ptr %103, align 4
  %105 = shl i8 %104, 2
  %106 = and i8 %105, 60
  %107 = zext i8 %106 to i32
  %108 = and i16 %75, 8
  %109 = icmp eq i16 %108, 0
  %110 = select i1 %109, i32 %107, i32 0
  %111 = getelementptr i8, ptr %103, i32 %110
  tail call void @ip_icmp_error(ptr noundef nonnull %28, ptr noundef %0, i32 noundef %100, i16 noundef zeroext 0, i32 noundef %2, ptr noundef %111) #17
  %112 = load i16, ptr %74, align 8
  %113 = and i16 %112, 1
  %114 = icmp ne i16 %113, 0
  br label %115

115:                                              ; preds = %102, %99
  %116 = phi i1 [ %114, %102 ], [ false, %99 ]
  %117 = icmp ne i32 %101, 0
  %118 = select i1 %116, i1 true, i1 %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sock, ptr %28, i32 0, i32 51
  store i32 %100, ptr %120, align 4
  tail call void @sk_error_report(ptr noundef nonnull %28) #17
  br label %121

121:                                              ; preds = %119, %115, %82, %78, %72
  %122 = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 15
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  %125 = getelementptr i8, ptr %123, i32 -84
  %126 = icmp eq ptr %125, null
  %127 = or i1 %124, %126
  br i1 %127, label %128, label %20

128:                                              ; preds = %121, %50, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @raw_v4_hashinfo) #17, !srcloc !9
  %129 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @raw_v4_hashinfo) #17, !srcloc !20
  %130 = extractvalue { i32, i32 } %129, 0
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  br label %133

133:                                              ; preds = %132, %128
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_rcv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__xfrm_policy_check(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #17
  br label %52

10:                                               ; preds = %4, %2
  %11 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 23), align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 40, i32 13), align 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = inttoptr i32 %25 to ptr
  %29 = getelementptr inbounds %struct.dst_entry, ptr %28, i32 0, i32 7
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %27, %22
  %34 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #17
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %52

37:                                               ; preds = %10
  %38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, -2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = inttoptr i32 %40 to ptr
  %44 = getelementptr inbounds %struct.dst_entry, ptr %43, i32 0, i32 7
  %45 = load i16, ptr %44, align 4
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %37
  %49 = tail call i32 @__xfrm_policy_check(ptr noundef %0, i32 noundef 0, ptr noundef %1, i16 noundef zeroext 2) #17
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %33, %8
  %53 = phi i32 [ %9, %8 ], [ %36, %33 ], [ %51, %48 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #17, !srcloc !9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #17, !srcloc !24
  br label %73

58:                                               ; preds = %52, %42, %27, %17
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %64 = load i16, ptr %63, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr i8, ptr %62, i32 %65
  %67 = ptrtoint ptr %60 to i32
  %68 = ptrtoint ptr %66 to i32
  %69 = sub i32 %67, %68
  %70 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %69) #17
  tail call void @ipv4_pktinfo_prepare(ptr noundef %0, ptr noundef %1) #17
  %71 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #17
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58, %55
  %74 = phi i32 [ 1, %55 ], [ 0, %58 ]
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  br label %75

75:                                               ; preds = %73, %58
  %76 = phi i32 [ 0, %58 ], [ %74, %73 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_rcv_skb(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ipv4_pktinfo_prepare(ptr noundef %0, ptr noundef %1) #17
  %3 = tail call i32 @sock_queue_rcv_skb(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #17
  br label %6

6:                                                ; preds = %5, %2
  %7 = phi i32 [ 1, %5 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_abort(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 51
  store i32 %1, ptr %3, align 4
  tail call void @sk_error_report(ptr noundef %0) #17
  %4 = tail call i32 @__udp_disconnect(ptr noundef %0, i32 noundef 0) #17
  tail call void @release_sock(ptr noundef %0) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp_disconnect(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw_close(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @ip_ra_control(ptr noundef %0, i8 noundef zeroext 0, ptr noundef null) #17
  tail call void @sk_common_release(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  switch i32 %1, label %34 [
    i32 21521, label %4
    i32 21531, label %15
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %6 = load volatile i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call ptr @llvm.thread.pointer() #17
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #8, !srcloc !25
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %7, i32 -1090519041) #17, !srcloc !28
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  br label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8
  %17 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #17
  %18 = load ptr, ptr %16, align 4
  %19 = icmp eq ptr %18, %16
  %20 = icmp eq ptr %18, null
  %21 = or i1 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %15
  %26 = phi i32 [ %24, %22 ], [ 0, %15 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #17
  %27 = inttoptr i32 %2 to ptr
  %28 = tail call ptr @llvm.thread.pointer() #17
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %29) #8, !srcloc !25
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %27, i32 %26, i32 -1090519041) #17, !srcloc !29
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  br label %34

34:                                               ; preds = %25, %4, %3
  %35 = phi i32 [ %33, %25 ], [ %14, %4 ], [ -515, %3 ]
  ret i32 %35
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @raw_sk_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.anon.2, ptr %2, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 1
  store i32 0, ptr %7, align 8
  br label %8

8:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw_destroy(ptr noundef %0) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  tail call void @ip_flush_pending_frames(ptr noundef %0) #17
  tail call void @release_sock(ptr noundef %0) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %1, 255
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @ip_setsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, [2 x i32] %3, i32 noundef %4) #17
  br label %42

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %42

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.umin.i32(i32 %4, i32 4) #17
  %18 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 1
  %19 = extractvalue [2 x i32] %3, 0
  %20 = inttoptr i32 %19 to ptr
  %21 = extractvalue [2 x i32] %3, 1
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %16
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 %17, i32 -1090519040) #18, !srcloc !30
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35, !prof !12

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #17
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %30) #8, !srcloc !25
  %32 = and i32 %31, -13
  %33 = or i32 %32, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %34 = tail call i32 @arm_copy_from_user(ptr noundef %18, ptr noundef %20, i32 noundef %17) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i32 [ %34, %28 ], [ %17, %24 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !12

38:                                               ; preds = %35
  %39 = sub i32 %17, %36
  %40 = getelementptr i8, ptr %18, i32 %39
  tail call void @llvm.memset.p0.i32(ptr align 1 %40, i8 0, i32 %36, i1 false) #17
  br label %42

41:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %18, ptr align 1 %20, i32 %17, i1 false) #17
  br label %42

42:                                               ; preds = %41, %38, %35, %11, %9, %7
  %43 = phi i32 [ %8, %7 ], [ -95, %11 ], [ -92, %9 ], [ 0, %41 ], [ 0, %35 ], [ -14, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq i32 %1, 255
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @ip_getsockopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #17
  br label %49

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 1
  br i1 %10, label %11, label %49

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %13 = getelementptr inbounds %struct.anon.2, ptr %12, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %49

16:                                               ; preds = %11
  %17 = tail call ptr @llvm.thread.pointer() #17
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #8, !srcloc !25
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #17, !srcloc !31
  %23 = extractvalue { i32, i32 } %22, 0
  %24 = extractvalue { i32, i32 } %22, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %16
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.umin.i32(i32 %24, i32 4) #17
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #8, !srcloc !25
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %29, i32 -1090519041) #17, !srcloc !32
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %29, i32 -1090519040) #18, !srcloc !33
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.raw_sock, ptr %0, i32 0, i32 1
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #8, !srcloc !25
  %42 = and i32 %41, -13
  %43 = or i32 %42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  %44 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %40, i32 noundef %29) #17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #17, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #17, !srcloc !27
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i32 [ %44, %39 ], [ %29, %35 ]
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 -14
  br label %49

49:                                               ; preds = %45, %28, %26, %16, %11, %9, %7
  %50 = phi i32 [ %8, %7 ], [ -95, %11 ], [ -92, %9 ], [ -14, %16 ], [ -22, %26 ], [ -14, %28 ], [ %48, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_sendmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ipcm_cookie, align 8
  %5 = alloca ptr, align 4
  %6 = alloca %struct.flowi4, align 8
  %7 = alloca %struct.ip_options_data, align 4
  %8 = alloca %struct.raw_frag_vec, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %10 = icmp ugt i32 %2, 65535
  br i1 %10, label %265, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %13 = load i16, ptr %12, align 8
  %14 = lshr i16 %13, 3
  %15 = and i16 %14, 1
  %16 = zext i16 %15 to i32
  store i32 %16, ptr %9, align 4
  %17 = load volatile i32, ptr %9, align 4
  %18 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %265

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %1, align 8
  %28 = icmp ult i32 %24, 16
  br i1 %28, label %265, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr %27, align 4
  %31 = icmp eq i16 %30, 2
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load i1, ptr @raw_sendmsg.__already_done, align 1
  br i1 %33, label %39, label %34, !prof !12

34:                                               ; preds = %32
  store i1 true, ptr @raw_sendmsg.__already_done, align 1
  %35 = tail call ptr @llvm.thread.pointer() #17
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 85
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.raw_sendmsg, ptr noundef %36) #19
  %38 = load i16, ptr %27, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i16 [ %38, %34 ], [ %30, %32 ]
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %265

42:                                               ; preds = %39, %29
  %43 = getelementptr inbounds %struct.sockaddr_in, ptr %27, i32 0, i32 2
  br label %48

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %46 = load volatile i8, ptr %45, align 2
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %48, label %265

48:                                               ; preds = %44, %42
  %49 = phi ptr [ %43, %42 ], [ %0, %44 ]
  %50 = load i32, ptr %49, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %4, i8 0, i32 30, i1 false) #17
  %51 = getelementptr inbounds i8, ptr %4, i32 30
  store i16 -1, ptr %51, align 2
  %52 = getelementptr inbounds i8, ptr %4, i32 32
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.sockcm_cookie, ptr %4, i32 0, i32 1
  store i32 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %57 = load i16, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sockcm_cookie, ptr %4, i32 0, i32 2
  store i16 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 1
  store i32 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  store i32 %50, ptr %64, align 8
  %69 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 3
  br label %81

70:                                               ; preds = %48
  %71 = call i32 @ip_cmsg_send(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext false) #17
  %72 = icmp eq i32 %71, 0
  %73 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  br i1 %72, label %76, label %75, !prof !12

75:                                               ; preds = %70
  call void @kfree(ptr noundef %74) #17
  br label %262

76:                                               ; preds = %70
  %77 = icmp eq ptr %74, null
  %78 = load i32, ptr %64, align 8
  store i32 %50, ptr %64, align 8
  %79 = getelementptr inbounds %struct.ipcm_cookie, ptr %4, i32 0, i32 3
  %80 = icmp eq ptr %74, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %76, %68
  %82 = phi ptr [ %69, %68 ], [ %79, %76 ]
  %83 = phi i1 [ true, %68 ], [ %77, %76 ]
  %84 = phi i32 [ %63, %68 ], [ %78, %76 ]
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !34
  %85 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %86 = load volatile ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.ip_options_rcu, ptr %86, i32 0, i32 1, i32 2
  %90 = load i8, ptr %89, align 4
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %91, 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %7, ptr noundef nonnull align 4 %86, i32 %92, i1 false)
  store ptr %7, ptr %82, align 8
  br label %93

93:                                               ; preds = %88, %81
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !35
  %94 = load ptr, ptr %82, align 8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %112, label %96

96:                                               ; preds = %93, %76
  %97 = phi ptr [ %82, %93 ], [ %79, %76 ]
  %98 = phi i1 [ %83, %93 ], [ %77, %76 ]
  %99 = phi i32 [ %84, %93 ], [ %78, %76 ]
  %100 = phi ptr [ %94, %93 ], [ %74, %76 ]
  %101 = load i32, ptr %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %251

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.ip_options_rcu, ptr %100, i32 0, i32 1
  %105 = getelementptr inbounds %struct.ip_options_rcu, ptr %100, i32 0, i32 1, i32 3
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = icmp eq i32 %50, 0
  br i1 %109, label %251, label %110

110:                                              ; preds = %108
  %111 = load i32, ptr %104, align 4
  br label %112

112:                                              ; preds = %110, %103, %93
  %113 = phi ptr [ %97, %110 ], [ %97, %103 ], [ %82, %93 ]
  %114 = phi i1 [ %98, %110 ], [ %98, %103 ], [ %83, %93 ]
  %115 = phi i32 [ %99, %110 ], [ %99, %103 ], [ %84, %93 ]
  %116 = phi i32 [ %111, %110 ], [ %50, %103 ], [ %50, %93 ]
  %117 = load i16, ptr %51, align 2
  %118 = icmp eq i16 %117, -1
  br i1 %118, label %121, label %119

119:                                              ; preds = %112
  %120 = trunc i16 %117 to i8
  br label %124

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %123 = load i8, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %119
  %125 = phi i8 [ %123, %121 ], [ %120, %119 ]
  %126 = and i8 %125, 30
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %128 = load volatile i32, ptr %127, align 4
  %129 = lshr i32 %128, 13
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = load i32, ptr %18, align 4
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i8 %131, i8 1
  %136 = or i8 %135, %126
  %137 = and i32 %116, 240
  %138 = icmp eq i32 %137, 224
  %139 = load i32, ptr %61, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %138, label %141, label %151

141:                                              ; preds = %124
  br i1 %140, label %142, label %145

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 16
  %144 = load i32, ptr %143, align 8
  store i32 %144, ptr %61, align 4
  br label %145

145:                                              ; preds = %142, %141
  %146 = phi i32 [ %139, %141 ], [ %144, %142 ]
  %147 = icmp eq i32 %115, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 17
  %150 = load i32, ptr %149, align 4
  br label %155

151:                                              ; preds = %124
  br i1 %140, label %152, label %155

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 15
  %154 = load i32, ptr %153, align 4
  store i32 %154, ptr %61, align 4
  br label %155

155:                                              ; preds = %152, %151, %148, %145
  %156 = phi i32 [ %146, %145 ], [ %146, %148 ], [ %154, %152 ], [ %139, %151 ]
  %157 = phi i32 [ %115, %145 ], [ %150, %148 ], [ %115, %152 ], [ %115, %151 ]
  %158 = load i32, ptr %55, align 8
  %159 = load i32, ptr %9, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %163 = load i16, ptr %162, align 4
  %164 = trunc i16 %163 to i8
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi i8 [ 2, %155 ], [ 0, %161 ]
  %167 = phi i8 [ -1, %155 ], [ %164, %161 ]
  %168 = load i16, ptr %12, align 8
  %169 = and i16 %168, 40
  %170 = icmp ne i16 %169, 0
  %171 = zext i1 %170 to i8
  %172 = or i8 %166, %171
  %173 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %174 = load i32, ptr %173, align 4
  store i32 %156, ptr %6, align 8
  %175 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 1
  store i32 1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %158, ptr %176, align 8
  %177 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  store i8 %136, ptr %177, align 4
  %178 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 4
  store i8 0, ptr %178, align 1
  %179 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %167, ptr %179, align 2
  %180 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 6
  store i8 %172, ptr %180, align 1
  %181 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 7
  store i32 0, ptr %181, align 8
  %182 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 9
  store i64 0, ptr %182, align 8
  %183 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 8
  store i32 %174, ptr %183, align 4
  %184 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  store i32 %116, ptr %184, align 4
  %185 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %157, ptr %185, align 8
  %186 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 3
  store i16 0, ptr %186, align 8
  %187 = getelementptr inbounds %struct.anon.85, ptr %186, i32 0, i32 1
  store i16 0, ptr %187, align 2
  %188 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 10
  store i32 0, ptr %188, align 8
  br i1 %160, label %189, label %203

189:                                              ; preds = %165
  store ptr %1, ptr %8, align 4
  %190 = getelementptr inbounds %struct.raw_frag_vec, ptr %8, i32 0, i32 2
  store i32 0, ptr %190, align 4
  %191 = icmp eq i8 %167, 1
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  store i32 2, ptr %190, align 4
  %193 = getelementptr inbounds %struct.raw_frag_vec, ptr %8, i32 0, i32 1
  %194 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %195 = call i32 @_copy_from_iter(ptr noundef %193, i32 noundef 2, ptr noundef %194) #17
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %202, !prof !12

197:                                              ; preds = %192
  %198 = load i8, ptr %193, align 4
  store i8 %198, ptr %186, align 8
  %199 = getelementptr inbounds %struct.raw_frag_vec, ptr %8, i32 0, i32 1, i32 0, i32 1
  %200 = load i8, ptr %199, align 1
  %201 = getelementptr inbounds %struct.anon.86, ptr %186, i32 0, i32 1
  store i8 %200, ptr %201, align 1
  br label %203

202:                                              ; preds = %192
  call void @iov_iter_revert(ptr noundef %194, i32 noundef %195) #17
  br i1 %114, label %259, label %255

203:                                              ; preds = %197, %189, %165
  %204 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %6, ptr noundef %0) #17
  store ptr %204, ptr %5, align 4
  %205 = icmp ugt ptr %204, inttoptr (i32 -4096 to ptr)
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = ptrtoint ptr %204 to i32
  store ptr null, ptr %5, align 4
  br i1 %114, label %259, label %255

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.rtable, ptr %204, i32 0, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = and i32 %210, 268435456
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = load volatile i32, ptr %127, align 4
  %215 = and i32 %214, 64
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %251, label %217

217:                                              ; preds = %213, %208
  %218 = load i32, ptr %18, align 4
  %219 = and i32 %218, 2064
  %220 = icmp eq i32 %219, 2064
  br i1 %220, label %269, label %221

221:                                              ; preds = %279, %217
  %222 = phi i32 [ %281, %279 ], [ %218, %217 ]
  %223 = load i32, ptr %9, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = call fastcc i32 @raw_send_hdrinc(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef %222, ptr noundef nonnull %4)
  br i1 %114, label %259, label %255

227:                                              ; preds = %221
  %228 = load i32, ptr %64, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i32, ptr %184, align 4
  store i32 %231, ptr %64, align 8
  br label %232

232:                                              ; preds = %230, %227
  call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  %233 = load i32, ptr %18, align 4
  %234 = call i32 @ip_append_data(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull @raw_getfrag, ptr noundef nonnull %8, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %233) #17
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  call void @ip_flush_pending_frames(ptr noundef %0) #17
  br label %249

237:                                              ; preds = %232
  %238 = load i32, ptr %18, align 4
  %239 = and i32 %238, 32768
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = call i32 @ip_push_pending_frames(ptr noundef %0, ptr noundef nonnull %6) #17
  %243 = icmp eq i32 %242, -105
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load i16, ptr %12, align 8
  %246 = and i16 %245, 1
  %247 = icmp eq i16 %246, 0
  %248 = select i1 %247, i32 0, i32 -105
  br label %249

249:                                              ; preds = %244, %241, %237, %236
  %250 = phi i32 [ %234, %236 ], [ 0, %237 ], [ %242, %241 ], [ %248, %244 ]
  call void @release_sock(ptr noundef %0) #17
  br i1 %114, label %259, label %255

251:                                              ; preds = %279, %213, %108, %96
  %252 = phi ptr [ %97, %96 ], [ %113, %213 ], [ %97, %108 ], [ %113, %279 ]
  %253 = phi i1 [ %98, %96 ], [ %114, %213 ], [ %98, %108 ], [ %114, %279 ]
  %254 = phi i32 [ -22, %96 ], [ -13, %213 ], [ -22, %108 ], [ 0, %279 ]
  br i1 %253, label %259, label %255

255:                                              ; preds = %251, %249, %225, %206, %202
  %256 = phi i32 [ %207, %206 ], [ %254, %251 ], [ %226, %225 ], [ %250, %249 ], [ -14, %202 ]
  %257 = phi ptr [ %113, %206 ], [ %252, %251 ], [ %113, %225 ], [ %113, %249 ], [ %113, %202 ]
  %258 = load ptr, ptr %257, align 8
  call void @kfree(ptr noundef %258) #17
  br label %259

259:                                              ; preds = %255, %251, %249, %225, %206, %202
  %260 = phi i32 [ %207, %206 ], [ %256, %255 ], [ %254, %251 ], [ %226, %225 ], [ %250, %249 ], [ -14, %202 ]
  %261 = load ptr, ptr %5, align 4
  call void @dst_release(ptr noundef %261) #17
  br label %262

262:                                              ; preds = %259, %75
  %263 = phi i32 [ %71, %75 ], [ %260, %259 ]
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %262, %44, %39, %26, %11, %3
  %266 = phi i32 [ %263, %262 ], [ -89, %44 ], [ -95, %11 ], [ -90, %3 ], [ -97, %39 ], [ -22, %26 ]
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi i32 [ %266, %265 ], [ %2, %262 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  ret i32 %268

269:                                              ; preds = %217
  %270 = getelementptr inbounds %struct.dst_entry, ptr %204, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.dst_ops, ptr %271, i32 0, i32 15
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %279, label %275

275:                                              ; preds = %269
  call void %273(ptr noundef %204, ptr noundef %184) #17
  %276 = load i32, ptr %18, align 4
  %277 = and i32 %276, 16
  %278 = icmp eq i32 %277, 0
  br label %279

279:                                              ; preds = %275, %269
  %280 = phi i1 [ %278, %275 ], [ false, %269 ]
  %281 = phi i32 [ %276, %275 ], [ %218, %269 ]
  %282 = icmp ne i32 %2, 0
  %283 = or i1 %282, %280
  br i1 %283, label %221, label %251
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_recvmsg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  store i32 -95, ptr %7, align 4
  %8 = load ptr, ptr %1, align 8
  %9 = and i32 %4, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %83

11:                                               ; preds = %6
  %12 = and i32 %4, 8192
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @ip_recv_error(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %5) #17
  store i32 %15, ptr %7, align 4
  br label %83

16:                                               ; preds = %11
  %17 = call ptr @skb_recv_datagram(ptr noundef %0, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %7) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, %2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 32
  store i32 %26, ptr %24, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %2, %23 ], [ %21, %19 ]
  %29 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 2
  %30 = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %17, i32 noundef 0, ptr noundef %29, i32 noundef %28) #17
  store i32 %30, ptr %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %81

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 133120
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 80
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37, %32
  call void @__sock_recv_ts_and_drops(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %17) #17
  br label %55

43:                                               ; preds = %37
  %44 = load volatile i32, ptr %33, align 4
  %45 = and i32 %44, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47, !prof !12

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %49) #17
  br label %55

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  %52 = load i64, ptr %51, align 8
  %53 = icmp eq i64 %52, -1000000000
  br i1 %53, label %54, label %55, !prof !11

54:                                               ; preds = %50
  call fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef 0) #17
  br label %55

55:                                               ; preds = %54, %50, %47, %42
  %56 = icmp eq ptr %8, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %55
  store i16 2, ptr %8, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 16
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 13, i32 0, i32 18
  %61 = load i16, ptr %60, align 4
  %62 = zext i16 %61 to i32
  %63 = getelementptr i8, ptr %59, i32 %62
  %64 = getelementptr inbounds %struct.iphdr, ptr %63, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 1
  store i16 0, ptr %67, align 2
  %68 = getelementptr inbounds %struct.sockaddr_in, ptr %8, i32 0, i32 3
  store i64 0, ptr %68, align 4
  store i32 16, ptr %5, align 4
  br label %69

69:                                               ; preds = %57, %55
  %70 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 4
  %71 = load i16, ptr %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  call void @ip_cmsg_recv_offset(ptr noundef %1, ptr noundef %75, ptr noundef nonnull %17, i32 noundef 0, i32 noundef 0) #17
  br label %76

76:                                               ; preds = %73, %69
  %77 = and i32 %4, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %20, align 8
  br label %81

81:                                               ; preds = %79, %76, %27
  %82 = phi i32 [ %28, %27 ], [ %80, %79 ], [ %28, %76 ]
  call void @skb_free_datagram(ptr noundef %0, ptr noundef nonnull %17) #17
  br label %83

83:                                               ; preds = %81, %16, %14, %6
  %84 = phi i32 [ 0, %6 ], [ 0, %14 ], [ %82, %81 ], [ 0, %16 ]
  %85 = load i32, ptr %7, align 4
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %84, i32 %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_bind(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  tail call void @lock_sock_nested(ptr noundef %0, i32 noundef 0) #17
  %4 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 4
  %5 = load volatile i8, ptr %4, align 2
  %6 = icmp ne i8 %5, 7
  %7 = icmp ult i32 %2, 16
  %8 = or i1 %7, %6
  br i1 %8, label %45, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @inet_addr_type_table(ptr noundef nonnull @init_net, i32 noundef %11, i32 noundef 255) #17
  %13 = load i32, ptr %10, align 4
  %14 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 35), align 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = and i16 %18, 32
  %23 = icmp ne i16 %22, 0
  br label %24

24:                                               ; preds = %21, %16, %9
  %25 = phi i1 [ true, %16 ], [ true, %9 ], [ %23, %21 ]
  %26 = icmp eq i32 %13, 0
  %27 = or i1 %26, %25
  %28 = icmp eq i32 %12, 2
  %29 = or i1 %28, %27
  %30 = icmp eq i32 %12, 5
  %31 = or i1 %30, %29
  %32 = icmp eq i32 %12, 3
  %33 = or i1 %32, %31
  br i1 %33, label %34, label %45

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  store i32 %13, ptr %35, align 4
  %36 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  store i32 %13, ptr %36, align 4
  switch i32 %12, label %38 [
    i32 5, label %37
    i32 3, label %37
  ]

37:                                               ; preds = %34, %34
  store i32 0, ptr %35, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 16
  store i16 -1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 29
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #17, !srcloc !9
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %41) #17, !srcloc !37
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = inttoptr i32 %43 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !38
  tail call void @dst_release(ptr noundef %44) #17
  br label %45

45:                                               ; preds = %38, %24, %3
  %46 = phi i32 [ -22, %3 ], [ 0, %38 ], [ -99, %24 ]
  tail call void @release_sock(ptr noundef %0) #17
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip4_datagram_release_cb(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @raw_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_read_lock(ptr noundef %8) #17
  %9 = load i64, ptr %1, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %67, label %11

11:                                               ; preds = %2
  %12 = add i64 %9, -1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 47
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.raw_iter_state, ptr %19, i32 0, i32 1
  store i32 0, ptr %20, align 4
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i32 %25, 1
  store i32 %22, ptr %20, align 4
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %67, label %24

24:                                               ; preds = %21, %11
  %25 = phi i32 [ 0, %11 ], [ %22, %21 ]
  %26 = getelementptr %struct.raw_hashinfo, ptr %17, i32 0, i32 1, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = getelementptr i8, ptr %27, i32 -84
  %30 = icmp eq ptr %29, null
  %31 = or i1 %28, %30
  br i1 %31, label %21, label %32

32:                                               ; preds = %24
  %33 = icmp eq i64 %12, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %63, %32
  %35 = phi i64 [ %65, %63 ], [ %12, %32 ]
  %36 = phi ptr [ %64, %63 ], [ %29, %32 ]
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.file, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 47
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %18, align 8
  %43 = getelementptr inbounds %struct.sock_common, ptr %36, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr i8, ptr %44, i32 -84
  %47 = getelementptr inbounds %struct.raw_iter_state, ptr %42, i32 0, i32 1
  %48 = icmp eq ptr %46, null
  %49 = or i1 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %34
  %51 = load i32, ptr %47, align 4
  br label %52

52:                                               ; preds = %56, %50
  %53 = phi i32 [ %54, %56 ], [ %51, %50 ]
  %54 = add i32 %53, 1
  store i32 %54, ptr %47, align 4
  %55 = icmp slt i32 %54, 256
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = getelementptr %struct.raw_hashinfo, ptr %41, i32 0, i32 1, i32 %54
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -84
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %52, label %63

63:                                               ; preds = %56, %34
  %64 = phi ptr [ %46, %34 ], [ %60, %56 ]
  %65 = add i64 %35, -1
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %34

67:                                               ; preds = %63, %52, %32, %21, %2
  %68 = phi ptr [ inttoptr (i32 1 to ptr), %2 ], [ %29, %32 ], [ null, %52 ], [ %64, %63 ], [ null, %21 ]
  ret ptr %68
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @raw_seq_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #5 {
  %4 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  %5 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8
  br i1 %4, label %13, label %26

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.raw_iter_state, ptr %12, i32 0, i32 1
  store i32 0, ptr %14, align 4
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %47, label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ 0, %13 ], [ %16, %15 ]
  %20 = getelementptr %struct.raw_hashinfo, ptr %10, i32 0, i32 1, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -84
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %15, label %47

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr i8, ptr %28, i32 -84
  %31 = getelementptr inbounds %struct.raw_iter_state, ptr %12, i32 0, i32 1
  %32 = icmp eq ptr %30, null
  %33 = or i1 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load i32, ptr %31, align 4
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi i32 [ %38, %40 ], [ %35, %34 ]
  %38 = add i32 %37, 1
  store i32 %38, ptr %31, align 4
  %39 = icmp slt i32 %38, 256
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr %struct.raw_hashinfo, ptr %10, i32 0, i32 1, i32 %38
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 -84
  %45 = icmp eq ptr %44, null
  %46 = or i1 %43, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %40, %36, %26, %18, %15
  %48 = phi ptr [ %30, %26 ], [ %23, %18 ], [ null, %15 ], [ null, %36 ], [ %44, %40 ]
  %49 = load i64, ptr %2, align 8
  %50 = add i64 %49, 1
  store i64 %50, ptr %2, align 8
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw_seq_stop(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #17, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %8) #17, !srcloc !20
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  br label %13

13:                                               ; preds = %12, %2
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @raw_proc_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @raw_net_ops) #17
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @raw_proc_exit() local_unnamed_addr #6 section ".init.text" {
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @raw_net_ops) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @raw_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @raw_sysctl_ops) #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #20
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_sf_allow(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_update_pmtu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_sk_redirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_icmp_error(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_pktinfo_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_ra_control(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_cmsg_send(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @raw_send_hdrinc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  store i32 0, ptr %8, align 4, !annotation !18
  %9 = load ptr, ptr %4, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  tail call void @ip_local_error(ptr noundef %0, i32 noundef 90, i32 noundef %16, i16 noundef zeroext %18, i32 noundef %12) #17
  br label %226

19:                                               ; preds = %7
  %20 = icmp ult i32 %3, 20
  br i1 %20, label %226, label %21

21:                                               ; preds = %19
  %22 = and i32 %5, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %226

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 19
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 21
  %29 = load i16, ptr %28, align 8
  %30 = zext i16 %29 to i32
  %31 = add nuw nsw i32 %30, %27
  %32 = and i32 %31, 131056
  %33 = add nuw nsw i32 %32, 16
  %34 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 22
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  %37 = add i32 %3, 15
  %38 = add i32 %37, %36
  %39 = add i32 %38, %33
  %40 = and i32 %5, 64
  %41 = call ptr @sock_alloc_send_skb(ptr noundef %0, i32 noundef %39, i32 noundef %40, ptr noundef nonnull %8) #17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %198, label %43

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 %33
  store ptr %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 14
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr i8, ptr %48, i32 %33
  store ptr %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 5
  store i32 %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.sockcm_cookie, ptr %6, i32 0, i32 1
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 11
  store i32 %54, ptr %55, align 4
  %56 = load i64, ptr %6, align 8
  %57 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 2
  store i64 %56, ptr %57, align 8
  %58 = icmp ne ptr %9, null
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 3
  %61 = load i16, ptr %60, align 2
  %62 = lshr i16 %61, 14
  %63 = trunc i16 %62 to i8
  %64 = and i8 %63, 1
  %65 = or i8 %64, %59
  %66 = zext i8 %65 to i16
  %67 = shl nuw nsw i16 %66, 14
  %68 = and i16 %61, -16385
  %69 = or i16 %67, %68
  store i16 %69, ptr %60, align 2
  %70 = ptrtoint ptr %9 to i32
  %71 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 4
  store i32 %70, ptr %71, align 8
  store ptr null, ptr %4, align 4
  %72 = load ptr, ptr %44, align 4
  %73 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = ptrtoint ptr %72 to i32
  %76 = ptrtoint ptr %74 to i32
  %77 = sub i32 %75, %76
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 18
  store i16 %78, ptr %79, align 4
  %80 = and i32 %77, 65535
  %81 = getelementptr i8, ptr %74, i32 %80
  %82 = call ptr @skb_put(ptr noundef nonnull %41, i32 noundef %3) #17
  %83 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13
  %84 = load i16, ptr %83, align 8
  %85 = and i16 %84, -97
  store i16 %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.sockcm_cookie, ptr %6, i32 0, i32 2
  %87 = load i16, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 15
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.skb_shared_info, ptr %91, i32 0, i32 9
  %94 = icmp eq i16 %87, 0
  br i1 %94, label %107, label %95, !prof !12

95:                                               ; preds = %43
  call void @__sock_tx_timestamp(i16 noundef zeroext %87, ptr noundef %92) #17
  %96 = zext i16 %87 to i32
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %96, 771
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %100, %98
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.sock, ptr %89, i32 0, i32 67
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !39
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #17, !srcloc !9
  %104 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #17, !srcloc !40
  %105 = extractvalue { i32, i32 } %104, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !41
  %106 = add i32 %105, -1
  store i32 %106, ptr %93, align 4
  br label %107

107:                                              ; preds = %102, %95, %43
  %108 = getelementptr inbounds %struct.sock_common, ptr %89, i32 0, i32 13
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %109, 524288
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112, !prof !12

112:                                              ; preds = %107
  %113 = load i8, ptr %92, align 1
  %114 = or i8 %113, 16
  store i8 %114, ptr %92, align 1
  br label %115

115:                                              ; preds = %112, %107
  %116 = and i32 %5, 2048
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i16, ptr %60, align 2
  %120 = or i16 %119, 32
  store i16 %120, ptr %60, align 2
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i16, ptr %79, align 4
  %123 = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 13, i32 0, i32 17
  store i16 %122, ptr %123, align 2
  store i32 -14, ptr %8, align 4
  %124 = getelementptr inbounds %struct.msghdr, ptr %2, i32 0, i32 2
  %125 = icmp slt i32 %3, 0
  %126 = load i1, ptr @check_copy_size.__already_done, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %130, !prof !11

129:                                              ; preds = %121
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #17
  br label %130

130:                                              ; preds = %129, %121
  br i1 %125, label %133, label %131, !prof !11

131:                                              ; preds = %130
  %132 = call i32 @_copy_from_iter(ptr noundef %81, i32 noundef %3, ptr noundef %124) #17
  br label %133

133:                                              ; preds = %131, %130
  %134 = phi i32 [ %132, %131 ], [ 0, %130 ]
  %135 = icmp eq i32 %134, %3
  br i1 %135, label %137, label %136, !prof !12

136:                                              ; preds = %133
  call void @iov_iter_revert(ptr noundef %124, i32 noundef %134) #17
  br label %197

137:                                              ; preds = %133
  %138 = load i8, ptr %81, align 4
  %139 = shl i8 %138, 2
  %140 = and i8 %139, 60
  %141 = zext i8 %140 to i32
  store i32 -22, ptr %8, align 4
  %142 = icmp ugt i32 %141, %3
  br i1 %142, label %197, label %143

143:                                              ; preds = %137
  %144 = icmp ugt i8 %140, 19
  br i1 %144, label %145, label %185

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 8
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %151 = load i32, ptr %150, align 8
  store i32 %151, ptr %146, align 4
  br label %152

152:                                              ; preds = %149, %145
  %153 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 7
  store i16 0, ptr %153, align 2
  %154 = trunc i32 %3 to i16
  %155 = call i16 @llvm.bswap.i16(i16 %154)
  %156 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 2
  store i16 %155, ptr %156, align 2
  %157 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 3
  %158 = load i16, ptr %157, align 4
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  call fastcc void @ip_select_ident(ptr noundef nonnull %41)
  br label %161

161:                                              ; preds = %160, %152
  %162 = load i8, ptr %81, align 4
  %163 = and i8 %162, 15
  %164 = zext i8 %163 to i32
  %165 = call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %81, i32 %164) #17, !srcloc !42
  %166 = extractvalue { i32, ptr, i32, i32 } %165, 0
  %167 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %166) #18, !srcloc !43
  %168 = xor i32 %167, -1
  %169 = lshr i32 %168, 16
  %170 = trunc i32 %169 to i16
  store i16 %170, ptr %153, align 2
  %171 = load i16, ptr %123, align 2
  %172 = zext i8 %140 to i16
  %173 = add i16 %171, %172
  store i16 %173, ptr %123, align 2
  %174 = getelementptr inbounds %struct.iphdr, ptr %81, i32 0, i32 6
  %175 = load i8, ptr %174, align 1
  %176 = icmp ne i8 %175, 1
  %177 = add nuw nsw i32 %141, 8
  %178 = icmp ugt i32 %177, %3
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %161
  %181 = load ptr, ptr %73, align 8
  %182 = zext i16 %173 to i32
  %183 = getelementptr i8, ptr %181, i32 %182
  %184 = load i8, ptr %183, align 4
  call void @icmp_out_count(ptr noundef nonnull @init_net, i8 noundef zeroext %184) #17
  br label %185

185:                                              ; preds = %180, %161, %143
  %186 = load i32, ptr %71, align 8
  %187 = and i32 %186, -2
  %188 = inttoptr i32 %187 to ptr
  %189 = getelementptr inbounds %struct.dst_entry, ptr %188, i32 0, i32 6
  %190 = load ptr, ptr %189, align 4
  %191 = call i32 %190(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %41) #17
  %192 = icmp sgt i32 %191, 0
  %193 = icmp eq i32 %191, 2
  %194 = select i1 %193, i32 0, i32 -105
  %195 = select i1 %192, i32 %194, i32 %191
  store i32 %195, ptr %8, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %226, label %198

197:                                              ; preds = %137, %136
  call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #17
  br label %198

198:                                              ; preds = %197, %185, %24
  %199 = tail call ptr @llvm.thread.pointer() #17
  %200 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 1
  %201 = load volatile i32, ptr %200, align 4
  %202 = add i32 %201, 512
  store volatile i32 %202, ptr %200, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !44
  %203 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %204 = ptrtoint ptr %203 to i32
  %205 = call i32 @llvm.read_register.i32(metadata !0) #17
  %206 = inttoptr i32 %205 to ptr
  %207 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %206) #8, !srcloc !14
  %208 = add i32 %207, %204
  %209 = inttoptr i32 %208 to ptr
  %210 = getelementptr inbounds %struct.ipstats_mib, ptr %209, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, 1
  store i32 %212, ptr %210, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !45
  %213 = getelementptr [37 x i64], ptr %209, i32 0, i32 14
  %214 = load i64, ptr %213, align 8
  %215 = add i64 %214, 1
  store i64 %215, ptr %213, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !46
  %216 = load i32, ptr %210, align 4
  %217 = add i32 %216, 1
  store i32 %217, ptr %210, align 4
  call fastcc void @local_bh_enable()
  %218 = load i32, ptr %8, align 4
  %219 = icmp eq i32 %218, -105
  br i1 %219, label %220, label %226

220:                                              ; preds = %198
  %221 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %222 = load i16, ptr %221, align 8
  %223 = and i16 %222, 1
  %224 = icmp eq i16 %223, 0
  %225 = select i1 %224, i32 0, i32 -105
  br label %226

226:                                              ; preds = %220, %198, %185, %21, %19, %14
  %227 = phi i32 [ -90, %14 ], [ -22, %19 ], [ 0, %185 ], [ 0, %21 ], [ %218, %198 ], [ %225, %220 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  ret i32 %227
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_getfrag(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.raw_frag_vec, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, %2
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = sub i32 %8, %2
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 %3)
  %13 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 96
  %16 = icmp eq i16 %15, 96
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.raw_frag_vec, ptr %0, i32 0, i32 1
  %19 = getelementptr i8, ptr %18, i32 %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %19, i32 %12, i1 false)
  br label %34

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.raw_frag_vec, ptr %0, i32 0, i32 1
  %24 = getelementptr i8, ptr %23, i32 %2
  %25 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %24, ptr noundef %1, i32 noundef %12) #17
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  %28 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 24) #17
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = add i32 %29, %22
  %31 = icmp ult i32 %30, %29
  %32 = zext i1 %31 to i32
  %33 = add i32 %30, %32
  store i32 %33, ptr %21, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = sub i32 %3, %12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %1, i32 %12
  %39 = add i32 %12, %2
  %40 = load i32, ptr %7, align 4
  br label %41

41:                                               ; preds = %37, %6
  %42 = phi i32 [ %40, %37 ], [ %8, %6 ]
  %43 = phi i32 [ 0, %37 ], [ %4, %6 ]
  %44 = phi i32 [ %35, %37 ], [ %3, %6 ]
  %45 = phi i32 [ %39, %37 ], [ %2, %6 ]
  %46 = phi ptr [ %38, %37 ], [ %1, %6 ]
  %47 = sub i32 %45, %42
  %48 = load ptr, ptr %0, align 4
  %49 = tail call i32 @ip_generic_getfrag(ptr noundef %48, ptr noundef %46, i32 noundef %47, i32 noundef %44, i32 noundef %43, ptr noundef %5) #17
  br label %50

50:                                               ; preds = %41, %34
  %51 = phi i32 [ %49, %41 ], [ 0, %34 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_push_pending_frames(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_local_error(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_select_ident(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 %6
  %8 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 4
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 64
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 3
  store i16 0, ptr %18, align 4
  br label %20

19:                                               ; preds = %12, %1
  tail call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %7, i32 noundef 1) #17
  br label %20

20:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_out_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #14 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_generic_getfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_recv_ts_and_drops(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sock_write_timestamp(ptr noundef %0, i64 noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64
  %4 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 64, i32 1
  tail call void @_raw_spin_lock(ptr noundef %4) #17
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !45
  %7 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 63
  store i64 %1, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #17, !srcloc !46
  %8 = load i32, ptr %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !47
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #17, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #17, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_cmsg_recv_offset(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @raw_init_net(ptr nocapture noundef readonly %0) #6 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @raw_seq_ops, i32 noundef 4, ptr noundef nonnull @raw_v4_hashinfo) #17
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 -12, i32 0
  ret i32 %6
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @raw_exit_net(ptr nocapture noundef readonly %0) #15 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @raw_seq_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7) #17
  br label %34

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.raw_iter_state, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %1, align 8
  %11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 2
  %14 = getelementptr inbounds %struct.anon.2, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %18 = load volatile i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %21 = load volatile i32, ptr %20, align 4
  %22 = add i32 %21, -1
  %23 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 9
  %24 = load volatile i32, ptr %23, align 4
  %25 = tail call i32 @sock_i_uid(ptr noundef %1) #17
  %26 = icmp eq i32 %25, -1
  %27 = load i32, ptr @overflowuid, align 4
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = tail call i32 @sock_i_ino(ptr noundef %1) #17
  %30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %31 = load volatile i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 5
  %33 = load volatile i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %9, i32 noundef %12, i32 noundef %16, i32 noundef %10, i32 noundef 0, i32 noundef %19, i32 noundef %22, i32 noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %28, i32 noundef 0, i32 noundef %29, i32 noundef %31, ptr noundef %1, i32 noundef %33) #17
  br label %34

34:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @raw_sysctl_init(ptr nocapture noundef readnone %0) #16 section ".init.text" {
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { cold noreturn nounwind }

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
!9 = !{i64 271437, i64 2147773003, i64 2147773029, i64 2147773076, i64 2147773098, i64 2147773126, i64 2147773146}
!10 = !{i64 2147848162, i64 2147848194, i64 2147848223, i64 2147848257, i64 2147848288, i64 2147848311}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 300184, i64 300245}
!14 = !{i64 307289}
!15 = !{i64 303201}
!16 = !{i64 2147948360}
!17 = !{i64 2147850519, i64 2147850551, i64 2147850580, i64 2147850614, i64 2147850645, i64 2147850668}
!18 = !{!"auto-init"}
!19 = !{i64 2149211477}
!20 = !{i64 1714901, i64 1714924, i64 1714944, i64 1714968, i64 1714984}
!21 = !{i64 2149199419}
!22 = !{i64 2149199494, i64 2149199521, i64 2149199568, i64 2149199590, i64 2149199618, i64 2149199638}
!23 = !{i64 2149249080}
!24 = !{i64 2147846704, i64 2147846730, i64 2147846759, i64 2147846793, i64 2147846824, i64 2147846847}
!25 = !{i64 2425865}
!26 = !{i64 2426062}
!27 = !{i64 2149911341}
!28 = !{i64 2156560995, i64 2156561275, i64 2156561609, i64 2156561943}
!29 = !{i64 2156569202, i64 2156569482, i64 2156569816, i64 2156570150}
!30 = !{i64 2149929753, i64 2149929778}
!31 = !{i64 2156543782, i64 2156544062, i64 2156544396, i64 2156544730}
!32 = !{i64 2156552692, i64 2156552972, i64 2156553306, i64 2156553640}
!33 = !{i64 2149930331, i64 2149930356}
!34 = !{i64 2148977396}
!35 = !{i64 2148977613}
!36 = !{i64 2155297648}
!37 = !{i64 353968, i64 353985, i64 354009, i64 354035, i64 354053}
!38 = !{i64 2155297967}
!39 = !{i64 2147944526}
!40 = !{i64 2147847388, i64 2147847420, i64 2147847449, i64 2147847483, i64 2147847514, i64 2147847537}
!41 = !{i64 2147944729}
!42 = !{i64 5234300, i64 5234339, i64 5234365, i64 5234389, i64 5234414, i64 5234440, i64 5234465, i64 5234491, i64 5234518, i64 5234544, i64 5234583, i64 5234627, i64 5234658, i64 5234683}
!43 = !{i64 5233917}
!44 = !{i64 2148790976}
!45 = !{i64 2149622957}
!46 = !{i64 2149623258}
!47 = !{i64 2149203595}
!48 = !{i64 2149226598}
