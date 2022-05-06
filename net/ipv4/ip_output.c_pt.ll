; ModuleID = '/llk/IR/net/ipv4/ip_output.c_pt.bc'
source_filename = "../net/ipv4/ip_output.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_send_check\22\09\09\09\09\09"
module asm "__kstrtabns_ip_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_local_out\22\09\09\09\09\09"
module asm "__kstrtabns_ip_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_build_and_send_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_build_and_send_pkt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_build_and_send_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_output\22\09\09\09\09\09"
module asm "__kstrtabns_ip_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_queue_xmit\22\09\09\09\09\09"
module asm "__kstrtabns___ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_queue_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fraglist_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fraglist_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_next\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_do_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_do_fragment\22\09\09\09\09\09"
module asm "__kstrtabns_ip_do_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_generic_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_generic_getfrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_generic_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.167, ptr, [60 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.167 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.75, %union.anon.139, %union.anon.140, [48 x i8], %union.anon.141, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.143, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.139 = type { ptr }
%union.anon.140 = type { i64 }
%union.anon.141 = type { %struct.anon.142 }
%struct.anon.142 = type { i32, ptr }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.145, i32, i32, i32, i16, i16, %union.anon.147, %union.anon.148, %union.anon.149, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { i32 }
%union.anon.148 = type { i32 }
%union.anon.149 = type { i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.161, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.162, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.163, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.157, [0 x i32], %union.anon.158, i16, i16, %union.anon.159, %struct.refcount_struct, [0 x i32], %union.anon.160 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.127 }
%union.anon.127 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { %struct.hlist_node }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.161 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.162 = type { ptr }
%union.anon.163 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.132 }
%union.anon.132 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.137, i32, %struct.list_head, ptr }
%union.anon.137 = type { %struct.in6_addr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.138, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.138 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.anon.133 = type { i16, i16 }
%struct.ip_fraglist_iter = type { ptr, ptr, i32, i32 }
%struct.ip_frag_state = type { i8, i32, i32, i32, i32, i32, i32, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.74, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.18, %union.anon.72 }
%union.anon.18 = type { ptr }
%union.anon.72 = type { i64 }
%union.anon.74 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ubuf_info = type { ptr, %union.anon.179, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.179 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.page = type { i32, %union.anon.19, %union.anon.71, %struct.atomic_t }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_reply_arg = type { [1 x %struct.kvec], i32, i32, i32, i32, i8, %struct.kuid_t }
%struct.kvec = type { ptr, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ip_send_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_send_check = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_send_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_send_check to i32), ptr @__kstrtab_ip_send_check, ptr @__kstrtabns_ip_send_check }, section "___ksymtab+ip_send_check", align 4
@__kstrtab_ip_local_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_local_out = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_local_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_local_out to i32), ptr @__kstrtab_ip_local_out, ptr @__kstrtabns_ip_local_out }, section "___ksymtab_gpl+ip_local_out", align 4
@__kstrtab_ip_build_and_send_pkt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_build_and_send_pkt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_build_and_send_pkt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_build_and_send_pkt to i32), ptr @__kstrtab_ip_build_and_send_pkt, ptr @__kstrtabns_ip_build_and_send_pkt }, section "___ksymtab_gpl+ip_build_and_send_pkt", align 4
@__kstrtab_ip_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_output to i32), ptr @__kstrtab_ip_output, ptr @__kstrtabns_ip_output }, section "___ksymtab+ip_output", align 4
@__kstrtab___ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_queue_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_queue_xmit to i32), ptr @__kstrtab___ip_queue_xmit, ptr @__kstrtabns___ip_queue_xmit }, section "___ksymtab+__ip_queue_xmit", align 4
@__kstrtab_ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_queue_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_queue_xmit to i32), ptr @__kstrtab_ip_queue_xmit, ptr @__kstrtabns_ip_queue_xmit }, section "___ksymtab+ip_queue_xmit", align 4
@__kstrtab_ip_fraglist_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fraglist_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fraglist_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fraglist_init to i32), ptr @__kstrtab_ip_fraglist_init, ptr @__kstrtabns_ip_fraglist_init }, section "___ksymtab+ip_fraglist_init", align 4
@__kstrtab_ip_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fraglist_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fraglist_prepare to i32), ptr @__kstrtab_ip_fraglist_prepare, ptr @__kstrtabns_ip_fraglist_prepare }, section "___ksymtab+ip_fraglist_prepare", align 4
@__kstrtab_ip_frag_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_init to i32), ptr @__kstrtab_ip_frag_init, ptr @__kstrtabns_ip_frag_init }, section "___ksymtab+ip_frag_init", align 4
@__kstrtab_ip_frag_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_next to i32), ptr @__kstrtab_ip_frag_next, ptr @__kstrtabns_ip_frag_next }, section "___ksymtab+ip_frag_next", align 4
@__kstrtab_ip_do_fragment = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_do_fragment = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_do_fragment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_do_fragment to i32), ptr @__kstrtab_ip_do_fragment, ptr @__kstrtabns_ip_do_fragment }, section "___ksymtab+ip_do_fragment", align 4
@__kstrtab_ip_generic_getfrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_generic_getfrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_generic_getfrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_generic_getfrag to i32), ptr @__kstrtab_ip_generic_getfrag, ptr @__kstrtabns_ip_generic_getfrag }, section "___ksymtab+ip_generic_getfrag", align 4
@sysctl_wmem_default = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [23 x i8] c"include/linux/skbuff.h\00", align 1
@init_net = external dso_local global %struct.net, align 64
@.str.1 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@neigh_hh_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"include/net/neighbour.h\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___ip_queue_xmit, ptr @__ksymtab_ip_build_and_send_pkt, ptr @__ksymtab_ip_do_fragment, ptr @__ksymtab_ip_frag_init, ptr @__ksymtab_ip_frag_next, ptr @__ksymtab_ip_fraglist_init, ptr @__ksymtab_ip_fraglist_prepare, ptr @__ksymtab_ip_generic_getfrag, ptr @__ksymtab_ip_local_out, ptr @__ksymtab_ip_output, ptr @__ksymtab_ip_queue_xmit, ptr @__ksymtab_ip_send_check], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_send_check(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iphdr, ptr %0, i32 0, i32 7
  store i16 0, ptr %2, align 2
  %3 = load i8, ptr %0, align 4
  %4 = and i8 %3, 15
  %5 = zext i8 %4 to i32
  %6 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %0, i32 %5) #13, !srcloc !9
  %7 = extractvalue { i32, ptr, i32, i32 } %6, 0
  %8 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %7) #14, !srcloc !10
  %9 = xor i32 %8, -1
  %10 = lshr i32 %9, 16
  %11 = trunc i32 %10 to i16
  store i16 %11, ptr %2, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip_local_out(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 2
  store i16 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 7
  store i16 0, ptr %15, align 2
  %16 = load i8, ptr %9, align 4
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i32
  %19 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %9, i32 %18) #13, !srcloc !9
  %20 = extractvalue { i32, ptr, i32, i32 } %19, 0
  %21 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %20) #14, !srcloc !10
  %22 = xor i32 %21, -1
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %15, align 2
  %25 = icmp eq ptr %2, null
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %3
  %29 = phi i32 [ 1, %26 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_local_out(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr i8, ptr %5, i32 %8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #13
  %14 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 2
  store i16 %13, ptr %14, align 2
  %15 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 7
  store i16 0, ptr %15, align 2
  %16 = load i8, ptr %9, align 4
  %17 = and i8 %16, 15
  %18 = zext i8 %17 to i32
  %19 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %9, i32 %18) #13, !srcloc !9
  %20 = extractvalue { i32, ptr, i32, i32 } %19, 0
  %21 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %20) #14, !srcloc !10
  %22 = xor i32 %21, -1
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr %15, align 2
  %25 = icmp eq ptr %2, null
  br i1 %25, label %35, label %26, !prof !11

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, -2
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %35

35:                                               ; preds = %26, %3
  %36 = phi i32 [ %34, %26 ], [ 0, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_build_and_send_pkt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) #0 {
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq ptr %4, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ip_options_rcu, ptr %4, i32 0, i32 1, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 20
  br label %17

17:                                               ; preds = %12, %6
  %18 = phi i32 [ %16, %12 ], [ 20, %6 ]
  %19 = tail call ptr @skb_push(ptr noundef %0, i32 noundef %18) #13
  %20 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  store i16 %27, ptr %28, align 4
  %29 = and i32 %26, 65535
  %30 = getelementptr i8, ptr %23, i32 %29
  store i8 69, ptr %30, align 4
  %31 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 1
  store i8 %5, ptr %31, align 1
  %32 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 3
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = icmp slt i16 %33, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -4
  %40 = inttoptr i32 %39 to ptr
  %41 = getelementptr i32, ptr %40, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %45 = zext i8 %44 to i32
  %46 = select i1 %43, i32 %45, i32 %42
  br label %47

47:                                               ; preds = %36, %17
  %48 = phi i32 [ %46, %36 ], [ %34, %17 ]
  %49 = trunc i32 %48 to i8
  %50 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 5
  store i8 %49, ptr %50, align 4
  br i1 %11, label %58, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ip_options_rcu, ptr %4, i32 0, i32 1, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.ip_options_rcu, ptr %4, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %51, %47
  %59 = phi i32 [ %57, %55 ], [ %3, %51 ], [ %3, %47 ]
  %60 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 9
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 8
  store i32 %2, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %63 = load i16, ptr %62, align 4
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 6
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 8
  %68 = icmp ult i32 %67, 69
  br i1 %68, label %85, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 11
  %71 = load volatile i8, ptr %70, align 1
  switch i8 %71, label %88 [
    i8 2, label %85
    i8 1, label %72
  ]

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.rtable, ptr %10, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.dst_entry, ptr %10, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, -4
  %81 = inttoptr i32 %80 to ptr
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %69, %58
  %86 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 4
  store i16 64, ptr %86, align 2
  %87 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 3
  store i16 0, ptr %87, align 4
  br label %97

88:                                               ; preds = %77, %72, %69
  %89 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 4
  store i16 0, ptr %89, align 2
  %90 = load i16, ptr %62, align 4
  %91 = icmp eq i16 %90, 6
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = tail call i32 @prandom_u32() #13
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds %struct.iphdr, ptr %30, i32 0, i32 3
  store i16 %94, ptr %95, align 4
  br label %97

96:                                               ; preds = %88
  tail call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %30, i32 noundef 1) #13
  br label %97

97:                                               ; preds = %96, %92, %85
  br i1 %11, label %110, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.ip_options_rcu, ptr %4, i32 0, i32 1, i32 2
  %100 = load i8, ptr %99, align 4
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.ip_options_rcu, ptr %4, i32 0, i32 1
  %104 = lshr i8 %100, 2
  %105 = load i8, ptr %30, align 4
  %106 = add i8 %105, %104
  %107 = and i8 %106, 15
  %108 = and i8 %105, -16
  %109 = or i8 %107, %108
  store i8 %109, ptr %30, align 4
  tail call void @ip_options_build(ptr noundef %0, ptr noundef %103, i32 noundef %3, ptr noundef %10, i32 noundef 0) #13
  br label %110

110:                                              ; preds = %102, %98, %97
  %111 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 33
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  store i32 %112, ptr %113, align 8
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %119 = load i32, ptr %118, align 8
  store i32 %119, ptr %114, align 4
  br label %120

120:                                              ; preds = %117, %110
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %22, align 8
  %124 = load i16, ptr %28, align 4
  %125 = zext i16 %124 to i32
  %126 = getelementptr i8, ptr %123, i32 %125
  %127 = load i32, ptr %66, align 8
  %128 = trunc i32 %127 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #13
  %130 = getelementptr inbounds %struct.iphdr, ptr %126, i32 0, i32 2
  store i16 %129, ptr %130, align 2
  %131 = getelementptr inbounds %struct.iphdr, ptr %126, i32 0, i32 7
  store i16 0, ptr %131, align 2
  %132 = load i8, ptr %126, align 4
  %133 = and i8 %132, 15
  %134 = zext i8 %133 to i32
  %135 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %126, i32 %134) #13, !srcloc !9
  %136 = extractvalue { i32, ptr, i32, i32 } %135, 0
  %137 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %136) #14, !srcloc !10
  %138 = xor i32 %137, -1
  %139 = lshr i32 %138, 16
  %140 = trunc i32 %139 to i16
  store i16 %140, ptr %131, align 2
  %141 = icmp eq ptr %0, null
  br i1 %141, label %150, label %142, !prof !11

142:                                              ; preds = %120
  %143 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %143, align 8
  %144 = load i32, ptr %7, align 8
  %145 = and i32 %144, -2
  %146 = inttoptr i32 %145 to ptr
  %147 = getelementptr inbounds %struct.dst_entry, ptr %146, i32 0, i32 6
  %148 = load ptr, ptr %147, align 4
  %149 = tail call i32 %148(ptr noundef nonnull @init_net, ptr noundef %122, ptr noundef nonnull %0) #13
  br label %150

150:                                              ; preds = %142, %120
  %151 = phi i32 [ %149, %142 ], [ 0, %120 ]
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_options_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_output(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #13
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = add i32 %11, 512
  store volatile i32 %12, ptr %10, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %13 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #10, !srcloc !13
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %24 = getelementptr [37 x i64], ptr %20, i32 0, i32 5
  %25 = load i64, ptr %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = getelementptr [37 x i64], ptr %20, i32 0, i32 6
  %31 = load i64, ptr %30, align 8
  %32 = add i64 %31, %29
  store i64 %32, ptr %30, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %33 = load i32, ptr %21, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %21, align 4
  tail call fastcc void @local_bh_enable()
  %35 = getelementptr inbounds %struct.anon.76, ptr %2, i32 0, i32 2
  store ptr %8, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rtable, ptr %7, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 536870912
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %3
  %42 = tail call zeroext i1 @sk_mc_loop(ptr noundef %1) #13
  br i1 %42, label %43, label %72

43:                                               ; preds = %41
  %44 = tail call ptr @skb_clone(ptr noundef %2, i32 noundef 2592) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %72, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, -2
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call ptr @rt_dst_clone(ptr noundef %48, ptr noundef %52) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.rtable, ptr %53, i32 0, i32 6
  store i32 0, ptr %56, align 4
  %57 = load i32, ptr %49, align 8
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %57, 1
  %60 = icmp eq i32 %59, 0
  %61 = and i1 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = and i32 %57, -2
  %64 = inttoptr i32 %63 to ptr
  tail call void @dst_release(ptr noundef %64) #13
  br label %65

65:                                               ; preds = %62, %55
  %66 = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 13, i32 0, i32 3
  %67 = load i16, ptr %66, align 2
  %68 = or i16 %67, 16384
  store i16 %68, ptr %66, align 2
  %69 = ptrtoint ptr %53 to i32
  store i32 %69, ptr %49, align 8
  br label %70

70:                                               ; preds = %65, %46
  %71 = tail call i32 @dev_loopback_xmit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %44) #13
  br label %72

72:                                               ; preds = %70, %43, %41
  %73 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = zext i16 %76 to i32
  %78 = getelementptr i8, ptr %74, i32 %77
  %79 = getelementptr inbounds %struct.iphdr, ptr %78, i32 0, i32 5
  %80 = load i8, ptr %79, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %72
  %83 = load i32, ptr %37, align 4
  br label %85

84:                                               ; preds = %72
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  br label %120

85:                                               ; preds = %82, %3
  %86 = phi i32 [ %83, %82 ], [ %38, %3 ]
  %87 = and i32 %86, 268435456
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %85
  %90 = tail call ptr @skb_clone(ptr noundef %2, i32 noundef 2592) #13
  %91 = icmp eq ptr %90, null
  br i1 %91, label %118, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  %94 = load ptr, ptr %93, align 64
  %95 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -2
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call ptr @rt_dst_clone(ptr noundef %94, ptr noundef %98) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %116, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.rtable, ptr %99, i32 0, i32 6
  store i32 0, ptr %102, align 4
  %103 = load i32, ptr %95, align 8
  %104 = icmp ne i32 %103, 0
  %105 = and i32 %103, 1
  %106 = icmp eq i32 %105, 0
  %107 = and i1 %104, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = and i32 %103, -2
  %110 = inttoptr i32 %109 to ptr
  tail call void @dst_release(ptr noundef %110) #13
  br label %111

111:                                              ; preds = %108, %101
  %112 = getelementptr inbounds %struct.sk_buff, ptr %90, i32 0, i32 13, i32 0, i32 3
  %113 = load i16, ptr %112, align 2
  %114 = or i16 %113, 16384
  store i16 %114, ptr %112, align 2
  %115 = ptrtoint ptr %99 to i32
  store i32 %115, ptr %95, align 8
  br label %116

116:                                              ; preds = %111, %92
  %117 = tail call i32 @dev_loopback_xmit(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %90) #13
  br label %118

118:                                              ; preds = %116, %89, %85
  %119 = tail call fastcc i32 @NF_HOOK_COND(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %120

120:                                              ; preds = %118, %84
  %121 = phi i32 [ 0, %84 ], [ %119, %118 ]
  ret i32 %121
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_mc_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @NF_HOOK_COND(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %7 = load volatile i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, -4161
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 11
  %14 = load i8, ptr %13, align 1
  %15 = icmp ult i8 %14, 3
  br i1 %15, label %16, label %75

16:                                               ; preds = %12, %5, %3
  %17 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -2
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 33), align 4
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.rtable, ptr %20, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %22, i1 %26, i1 false
  br i1 %27, label %28, label %43

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 1
  %32 = icmp ne i16 %31, 0
  %33 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -4
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  %40 = and i1 %32, %39
  %41 = icmp ult i32 %24, 2
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %52, label %45

43:                                               ; preds = %16
  %44 = icmp ult i32 %24, 2
  br i1 %44, label %52, label %45

45:                                               ; preds = %43, %28
  %46 = lshr i32 %24, 1
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %47, %49
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %45, %43, %28
  %53 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -4
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr i32, ptr %56, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %52
  %61 = load ptr, ptr %20, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 20
  %63 = load volatile i32, ptr %62, align 4
  br i1 %26, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, ptr %56, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %83, label %68, !prof !16

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.rtable, ptr %20, i32 0, i32 5
  %70 = load i8, ptr %69, align 1
  %71 = icmp ne i8 %70, 0
  %72 = icmp ugt i32 %63, 576
  %73 = select i1 %71, i1 %72, i1 false
  %74 = select i1 %73, i32 576, i32 %63
  br label %83

75:                                               ; preds = %12
  %76 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, -2
  %79 = inttoptr i32 %78 to ptr
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.net_device, ptr %80, i32 0, i32 20
  %82 = load volatile i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %75, %68, %64, %52, %45
  %84 = phi i32 [ %82, %75 ], [ %46, %45 ], [ %58, %52 ], [ %74, %68 ], [ %63, %64 ]
  %85 = tail call i32 @llvm.umin.i32(i32 %84, i32 65535) #13
  %86 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.skb_shared_info, ptr %87, i32 0, i32 4
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %83
  %92 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %2, i32 noundef %85) #13
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = tail call i32 @ip_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %126

95:                                               ; preds = %91
  %96 = tail call i64 @netif_skb_features(ptr noundef %2) #13
  %97 = and i64 %96, -34359672833
  %98 = tail call ptr @__skb_gso_segment(ptr noundef %2, i64 noundef %97, i1 noundef zeroext true) #13
  %99 = icmp eq ptr %98, null
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  %101 = or i1 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  br label %126

103:                                              ; preds = %95
  tail call void @consume_skb(ptr noundef %2) #13
  br label %104

104:                                              ; preds = %104, %103
  %105 = phi ptr [ %98, %103 ], [ %107, %104 ]
  %106 = phi i32 [ 0, %103 ], [ %112, %104 ]
  %107 = load ptr, ptr %105, align 8
  store ptr null, ptr %105, align 8
  %108 = tail call fastcc i32 @ip_fragment(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %105, i32 noundef %85) #13
  %109 = icmp ne i32 %108, 0
  %110 = icmp eq i32 %106, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = select i1 %111, i32 %108, i32 %106
  %113 = icmp eq ptr %107, null
  br i1 %113, label %126, label %104

114:                                              ; preds = %83
  %115 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %116 = load i32, ptr %115, align 8
  %117 = icmp ugt i32 %116, %85
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 22
  %120 = load i16, ptr %119, align 2
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118, %114
  %123 = tail call fastcc i32 @ip_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %85) #13
  br label %126

124:                                              ; preds = %118
  %125 = tail call i32 @ip_finish_output2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  br label %126

126:                                              ; preds = %124, %122, %104, %102, %93
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ], [ %94, %93 ], [ -12, %102 ], [ %112, %104 ]
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_output(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -2
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.76, ptr %2, i32 0, i32 2
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, 512
  store volatile i32 %13, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %14 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #10, !srcloc !13
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.ipstats_mib, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %25 = getelementptr [37 x i64], ptr %21, i32 0, i32 5
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = zext i32 %29 to i64
  %31 = getelementptr [37 x i64], ptr %21, i32 0, i32 6
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, ptr %31, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %34 = load i32, ptr %22, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %22, align 4
  tail call fastcc void @local_bh_enable()
  store ptr %8, ptr %9, align 8
  %36 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %36, align 8
  %37 = tail call fastcc i32 @NF_HOOK_COND(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ip_queue_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %5 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 5
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %4
  %13 = tail call ptr @__sk_dst_check(ptr noundef %0, i32 noundef 0) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %77

15:                                               ; preds = %12
  %16 = load i32, ptr %0, align 8
  %17 = icmp eq ptr %6, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18, %15
  %26 = phi i32 [ %24, %22 ], [ %16, %18 ], [ %16, %15 ]
  %27 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 6
  %32 = load i16, ptr %31, align 8
  %33 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %34 = load i16, ptr %33, align 4
  %35 = trunc i16 %34 to i8
  %36 = and i8 %3, 30
  %37 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %38 = load volatile i32, ptr %37, align 4
  %39 = lshr i32 %38, 13
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = or i8 %41, %36
  %43 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq ptr %0, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %50 = load i16, ptr %49, align 8
  %51 = and i16 %50, 40
  %52 = icmp ne i16 %51, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 55
  %55 = load i32, ptr %54, align 4
  store i32 %44, ptr %2, align 8
  %56 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  store i8 %53, ptr %56, align 1
  %57 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 7
  store i32 0, ptr %57, align 8
  %58 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 9
  store i64 0, ptr %58, align 8
  %59 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 8
  store i32 %55, ptr %59, align 4
  br label %62

60:                                               ; preds = %25
  store i32 %44, ptr %2, align 8
  %61 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %61, i8 0, i64 17, i1 false) #13
  br label %62

62:                                               ; preds = %60, %46
  %63 = phi i32 [ 0, %60 ], [ %48, %46 ]
  %64 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 1
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 2
  store i32 %63, ptr %65, align 8
  %66 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 3
  store i8 %42, ptr %66, align 4
  %67 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 4
  store i8 0, ptr %67, align 1
  %68 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 5
  store i8 %35, ptr %68, align 2
  %69 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  store i32 %26, ptr %69, align 4
  %70 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  store i32 %28, ptr %70, align 8
  %71 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 3
  store i16 %30, ptr %71, align 8
  %72 = getelementptr inbounds %struct.anon.133, ptr %71, i32 0, i32 1
  store i16 %32, ptr %72, align 2
  %73 = getelementptr inbounds %struct.flowi_common, ptr %2, i32 0, i32 10
  store i32 0, ptr %73, align 8
  %74 = tail call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef %0) #13
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %264, label %76

76:                                               ; preds = %62
  tail call void @sk_setup_caps(ptr noundef %0, ptr noundef %74) #13
  br label %77

77:                                               ; preds = %76, %12
  %78 = phi ptr [ %13, %12 ], [ %74, %76 ]
  %79 = icmp ne ptr %78, null
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %82 = load i16, ptr %81, align 2
  %83 = lshr i16 %82, 14
  %84 = trunc i16 %83 to i8
  %85 = and i8 %84, 1
  %86 = or i8 %85, %80
  %87 = zext i8 %86 to i16
  %88 = shl nuw nsw i16 %87, 14
  %89 = and i16 %82, -16385
  %90 = or i16 %88, %89
  store i16 %90, ptr %81, align 2
  %91 = ptrtoint ptr %78 to i32
  %92 = or i32 %91, 1
  store i32 %92, ptr %7, align 8
  br label %93

93:                                               ; preds = %77, %4
  %94 = phi ptr [ %10, %4 ], [ %78, %77 ]
  %95 = icmp eq ptr %6, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1, i32 6
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtable, ptr %94, i32 0, i32 5
  %103 = load i8, ptr %102, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %264

105:                                              ; preds = %101, %96
  %106 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1, i32 2
  %107 = load i8, ptr %106, align 4
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %108, 20
  br label %110

110:                                              ; preds = %105, %93
  %111 = phi i32 [ %109, %105 ], [ 20, %93 ]
  %112 = tail call ptr @skb_push(ptr noundef %1, i32 noundef %111) #13
  %113 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %116 = load ptr, ptr %115, align 8
  %117 = ptrtoint ptr %114 to i32
  %118 = ptrtoint ptr %116 to i32
  %119 = sub i32 %117, %118
  %120 = trunc i32 %119 to i16
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  store i16 %120, ptr %121, align 4
  %122 = and i32 %119, 65535
  %123 = getelementptr i8, ptr %116, i32 %122
  %124 = zext i8 %3 to i16
  %125 = or i16 %124, 17664
  %126 = tail call i16 @llvm.bswap.i16(i16 %125)
  store i16 %126, ptr %123, align 2
  %127 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %128 = load volatile i8, ptr %127, align 1
  switch i8 %128, label %147 [
    i8 2, label %142
    i8 1, label %129
  ]

129:                                              ; preds = %110
  %130 = getelementptr inbounds %struct.rtable, ptr %94, i32 0, i32 9
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.dst_entry, ptr %94, i32 0, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, -4
  %138 = inttoptr i32 %137 to ptr
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %134, %110
  %143 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %144 = load i16, ptr %143, align 8
  %145 = and i16 %144, 8
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %134, %129, %110
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i16 [ 0, %147 ], [ 64, %142 ]
  %150 = getelementptr inbounds %struct.iphdr, ptr %123, i32 0, i32 4
  store i16 %149, ptr %150, align 2
  %151 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 3
  %152 = load i16, ptr %151, align 8
  %153 = zext i16 %152 to i32
  %154 = icmp slt i16 %152, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.dst_entry, ptr %94, i32 0, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = and i32 %157, -4
  %159 = inttoptr i32 %158 to ptr
  %160 = getelementptr i32, ptr %159, i32 9
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 0
  %163 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %164 = zext i8 %163 to i32
  %165 = select i1 %162, i32 %164, i32 %161
  br label %166

166:                                              ; preds = %155, %148
  %167 = phi i32 [ %165, %155 ], [ %153, %148 ]
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.iphdr, ptr %123, i32 0, i32 5
  store i8 %168, ptr %169, align 4
  %170 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %171 = load i16, ptr %170, align 4
  %172 = trunc i16 %171 to i8
  %173 = getelementptr inbounds %struct.iphdr, ptr %123, i32 0, i32 6
  store i8 %172, ptr %173, align 1
  %174 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 1
  %175 = load i32, ptr %174, align 8
  %176 = getelementptr inbounds %struct.iphdr, ptr %123, i32 0, i32 8
  store i32 %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.iphdr, ptr %123, i32 0, i32 9
  store i32 %178, ptr %179, align 4
  br i1 %95, label %191, label %180

180:                                              ; preds = %166
  %181 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1, i32 2
  %182 = load i8, ptr %181, align 4
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.ip_options_rcu, ptr %6, i32 0, i32 1
  %186 = lshr i8 %182, 2
  %187 = add nuw nsw i8 %186, 5
  %188 = and i8 %187, 15
  %189 = or i8 %188, 64
  store i8 %189, ptr %123, align 4
  %190 = load i32, ptr %0, align 8
  tail call void @ip_options_build(ptr noundef %1, ptr noundef %185, i32 noundef %190, ptr noundef %94, i32 noundef 0) #13
  br label %191

191:                                              ; preds = %184, %180, %166
  %192 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 5
  %195 = load i16, ptr %194, align 2
  %196 = icmp eq i16 %195, 0
  %197 = select i1 %196, i16 1, i16 %195
  %198 = zext i16 %197 to i32
  %199 = load ptr, ptr %115, align 8
  %200 = load i16, ptr %121, align 4
  %201 = zext i16 %200 to i32
  %202 = getelementptr i8, ptr %199, i32 %201
  %203 = icmp eq ptr %0, null
  br i1 %203, label %214, label %204

204:                                              ; preds = %191
  %205 = load i32, ptr %0, align 8
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 7
  %209 = load i16, ptr %208, align 2
  %210 = tail call i16 @llvm.bswap.i16(i16 %209) #13
  %211 = getelementptr inbounds %struct.iphdr, ptr %202, i32 0, i32 3
  store i16 %210, ptr %211, align 4
  %212 = load i16, ptr %208, align 2
  %213 = add i16 %212, %197
  store i16 %213, ptr %208, align 2
  br label %227

214:                                              ; preds = %204, %191
  %215 = getelementptr inbounds %struct.iphdr, ptr %202, i32 0, i32 4
  %216 = load i16, ptr %215, align 2
  %217 = and i16 %216, 64
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %221 = load i16, ptr %220, align 8
  %222 = and i16 %221, 8
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.iphdr, ptr %202, i32 0, i32 3
  store i16 0, ptr %225, align 4
  br label %227

226:                                              ; preds = %219, %214
  tail call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %202, i32 noundef %198) #13
  br label %227

227:                                              ; preds = %226, %224, %207
  %228 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %229 = load i32, ptr %228, align 4
  %230 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  store i32 %229, ptr %230, align 8
  %231 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %232 = load i32, ptr %231, align 8
  %233 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  store i32 %232, ptr %233, align 4
  %234 = load ptr, ptr %115, align 8
  %235 = load i16, ptr %121, align 4
  %236 = zext i16 %235 to i32
  %237 = getelementptr i8, ptr %234, i32 %236
  %238 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %239 = load i32, ptr %238, align 8
  %240 = trunc i32 %239 to i16
  %241 = tail call i16 @llvm.bswap.i16(i16 %240) #13
  %242 = getelementptr inbounds %struct.iphdr, ptr %237, i32 0, i32 2
  store i16 %241, ptr %242, align 2
  %243 = getelementptr inbounds %struct.iphdr, ptr %237, i32 0, i32 7
  store i16 0, ptr %243, align 2
  %244 = load i8, ptr %237, align 4
  %245 = and i8 %244, 15
  %246 = zext i8 %245 to i32
  %247 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %237, i32 %246) #13, !srcloc !9
  %248 = extractvalue { i32, ptr, i32, i32 } %247, 0
  %249 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %248) #14, !srcloc !10
  %250 = xor i32 %249, -1
  %251 = lshr i32 %250, 16
  %252 = trunc i32 %251 to i16
  store i16 %252, ptr %243, align 2
  %253 = icmp eq ptr %1, null
  br i1 %253, label %262, label %254, !prof !11

254:                                              ; preds = %227
  %255 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %255, align 8
  %256 = load i32, ptr %7, align 8
  %257 = and i32 %256, -2
  %258 = inttoptr i32 %257 to ptr
  %259 = getelementptr inbounds %struct.dst_entry, ptr %258, i32 0, i32 6
  %260 = load ptr, ptr %259, align 4
  %261 = tail call i32 %260(ptr noundef nonnull @init_net, ptr noundef %0, ptr noundef nonnull %1) #13
  br label %262

262:                                              ; preds = %254, %227
  %263 = phi i32 [ %261, %254 ], [ 0, %227 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  br label %284

264:                                              ; preds = %101, %62
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %265 = tail call ptr @llvm.thread.pointer() #13
  %266 = getelementptr inbounds %struct.thread_info, ptr %265, i32 0, i32 1
  %267 = load volatile i32, ptr %266, align 4
  %268 = add i32 %267, 512
  store volatile i32 %268, ptr %266, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %269 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %270 = ptrtoint ptr %269 to i32
  %271 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %272 = inttoptr i32 %271 to ptr
  %273 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %272) #10, !srcloc !13
  %274 = add i32 %273, %270
  %275 = inttoptr i32 %274 to ptr
  %276 = getelementptr inbounds %struct.ipstats_mib, ptr %275, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %279 = getelementptr [37 x i64], ptr %275, i32 0, i32 15
  %280 = load i64, ptr %279, align 8
  %281 = add i64 %280, 1
  store i64 %281, ptr %279, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %282 = load i32, ptr %276, align 4
  %283 = add i32 %282, 1
  store i32 %283, ptr %276, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #13
  br label %284

284:                                              ; preds = %264, %262
  %285 = phi i32 [ -113, %264 ], [ %263, %262 ]
  ret i32 %285
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_queue_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4
  %6 = tail call i32 @__ip_queue_xmit(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_fraglist_init(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = zext i8 %12 to i32
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ %19, %16 ], [ %15, %14 ]
  %18 = phi i32 [ %22, %16 ], [ 0, %14 ]
  %19 = add nsw i32 %17, -1
  %20 = getelementptr %struct.skb_shared_info, ptr %10, i32 0, i32 12, i32 %19, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %18
  %23 = icmp ugt i32 %17, 1
  br i1 %23, label %16, label %24

24:                                               ; preds = %16, %4
  %25 = phi i32 [ 0, %4 ], [ %22, %16 ]
  %26 = sub i32 %6, %8
  %27 = add i32 %25, %26
  %28 = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %3, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 6
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %3, i32 0, i32 2
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %3, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %3, i32 0, i32 3
  store i32 %2, ptr %34, align 4
  %35 = load i32, ptr %5, align 8
  %36 = load i32, ptr %7, align 4
  %37 = sub i32 %27, %35
  %38 = add i32 %37, %36
  store i32 %38, ptr %7, align 4
  store i32 %27, ptr %5, align 8
  %39 = trunc i32 %27 to i16
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %41 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 2
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 4
  store i16 32, ptr %42, align 2
  %43 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 7
  store i16 0, ptr %43, align 2
  %44 = load i8, ptr %1, align 4
  %45 = and i8 %44, 15
  %46 = zext i8 %45 to i32
  %47 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %1, i32 %46) #13, !srcloc !9
  %48 = extractvalue { i32, ptr, i32, i32 } %47, 0
  %49 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %48) #14, !srcloc !10
  %50 = xor i32 %49, -1
  %51 = lshr i32 %50, 16
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %43, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_fraglist_prepare(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, -97
  store i16 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 17
  store i16 %18, ptr %19, align 2
  %20 = sub i32 0, %4
  %21 = getelementptr i8, ptr %12, i32 %20
  store ptr %21, ptr %11, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = add i32 %23, %4
  store i32 %24, ptr %22, align 8
  %25 = ptrtoint ptr %21 to i32
  %26 = sub i32 %25, %16
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 13, i32 0, i32 18
  store i16 %27, ptr %28, align 4
  %29 = and i32 %26, 65535
  %30 = getelementptr i8, ptr %14, i32 %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %30, ptr align 4 %6, i32 %4, i1 false)
  %31 = load ptr, ptr %13, align 8
  %32 = load i16, ptr %28, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr i8, ptr %31, i32 %33
  store ptr %34, ptr %5, align 4
  %35 = load i32, ptr %22, align 8
  %36 = trunc i32 %35 to i16
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = getelementptr inbounds %struct.iphdr, ptr %34, i32 0, i32 2
  store i16 %37, ptr %38, align 2
  tail call fastcc void @ip_copy_metadata(ptr noundef %7, ptr noundef %0)
  %39 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = sub i32 %40, %4
  %42 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %1, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  store i32 %44, ptr %42, align 4
  %45 = lshr i32 %44, 3
  %46 = trunc i32 %45 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  %48 = getelementptr inbounds %struct.iphdr, ptr %34, i32 0, i32 4
  store i16 %47, ptr %48, align 2
  %49 = load ptr, ptr %7, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %2
  %52 = or i16 %47, 32
  store i16 %52, ptr %48, align 2
  br label %53

53:                                               ; preds = %51, %2
  %54 = getelementptr inbounds %struct.iphdr, ptr %34, i32 0, i32 7
  store i16 0, ptr %54, align 2
  %55 = load i8, ptr %34, align 4
  %56 = and i8 %55, 15
  %57 = zext i8 %56 to i32
  %58 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %34, i32 %57) #13, !srcloc !9
  %59 = extractvalue { i32, ptr, i32, i32 } %58, 0
  %60 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %59) #14, !srcloc !10
  %61 = xor i32 %60, -1
  %62 = lshr i32 %61, 16
  %63 = trunc i32 %62 to i16
  store i16 %63, ptr %54, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ip_copy_metadata(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13
  %4 = load i16, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13
  %6 = and i16 %4, 7
  %7 = load i16, ptr %5, align 8
  %8 = and i16 %7, -8
  %9 = or i16 %8, %6
  store i16 %9, ptr %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 5
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %14 = load i16, ptr %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  store i16 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 6
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = and i32 %20, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = and i32 %20, -2
  %27 = inttoptr i32 %26 to ptr
  tail call void @dst_release(ptr noundef %27) #13
  br label %28

28:                                               ; preds = %25, %22
  store i32 0, ptr %19, align 8
  br label %29

29:                                               ; preds = %28, %2
  %30 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %35 = load i16, ptr %34, align 2
  %36 = lshr i16 %35, 14
  %37 = trunc i16 %36 to i8
  %38 = and i8 %37, 1
  %39 = or i8 %38, %33
  %40 = zext i8 %39 to i16
  %41 = shl nuw nsw i16 %40, 14
  %42 = and i16 %35, -16385
  %43 = or i16 %41, %42
  store i16 %43, ptr %34, align 2
  store i32 %31, ptr %19, align 8
  %44 = and i32 %31, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %29
  %47 = and i32 %31, -2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %46
  %50 = inttoptr i32 %47 to ptr
  %51 = getelementptr inbounds %struct.dst_entry, ptr %50, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #13, !srcloc !20
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 0, i32 1, ptr elementtype(i32) %51) #13, !srcloc !21
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  br label %57

56:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %57

57:                                               ; preds = %56, %55, %46, %29
  %58 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 7
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 7
  store i32 %65, ptr %66, align 8
  %67 = load i16, ptr %3, align 8
  %68 = and i16 %67, 512
  %69 = load i16, ptr %5, align 8
  %70 = and i16 %69, -513
  %71 = or i16 %70, %68
  store i16 %71, ptr %5, align 8
  %72 = load i16, ptr %3, align 8
  %73 = and i16 %72, 256
  %74 = and i16 %71, -257
  %75 = or i16 %74, %73
  store i16 %75, ptr %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 3
  %77 = load i16, ptr %76, align 2
  %78 = and i16 %77, 16384
  %79 = load i16, ptr %34, align 2
  %80 = and i16 %79, -16385
  %81 = or i16 %80, %78
  store i16 %81, ptr %34, align 2
  %82 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 12
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %57
  %86 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  %87 = load ptr, ptr %86, align 8
  tail call void @__skb_ext_put(ptr noundef %87) #13
  br label %88

88:                                               ; preds = %85, %57
  %89 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %90 = load i8, ptr %89, align 1
  store i8 %90, ptr %82, align 1
  %91 = load i8, ptr %89, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %95 = load ptr, ptr %94, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %95) #13, !srcloc !20
  %96 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %95, ptr %95, i32 1, ptr elementtype(i32) %95) #13, !srcloc !23
  %97 = extractvalue { i32, i32, i32 } %96, 0
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99, !prof !11

99:                                               ; preds = %93
  %100 = add i32 %97, 1
  %101 = or i32 %100, %97
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %105, label %103, !prof !16

103:                                              ; preds = %99, %93
  %104 = phi i32 [ 2, %93 ], [ 1, %99 ]
  tail call void @refcount_warn_saturate(ptr noundef %95, i32 noundef %104) #13
  br label %105

105:                                              ; preds = %103, %99
  %106 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 20
  store ptr %95, ptr %106, align 8
  br label %107

107:                                              ; preds = %105, %88
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ip_frag_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef writeonly %5) #6 {
  %7 = zext i1 %4 to i8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %9, i32 %12
  store i8 %7, ptr %5, align 4
  %14 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 2
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 3
  store i32 %3, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 8
  %19 = sub i32 %18, %1
  %20 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 6
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.iphdr, ptr %13, i32 0, i32 4
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, -225
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = shl nuw i16 %25, 3
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 5
  store i32 %27, ptr %28, align 4
  %29 = load i16, ptr %22, align 2
  %30 = and i16 %29, 32
  %31 = getelementptr inbounds %struct.ip_frag_state, ptr %5, i32 0, i32 7
  store i16 %30, ptr %31, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_frag_next(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %4, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %4, i32 %6)
  %9 = and i32 %8, -8
  %10 = select i1 %7, i32 %9, i32 %8
  %11 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = add i32 %15, %10
  %17 = tail call ptr @__alloc_skb(i32 noundef %16, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %112, label %19

19:                                               ; preds = %2
  tail call fastcc void @ip_copy_metadata(ptr noundef nonnull %17, ptr noundef %0)
  %20 = load i32, ptr %13, align 4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  store ptr %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr i8, ptr %25, i32 %20
  store ptr %26, ptr %24, align 8
  %27 = load i32, ptr %11, align 4
  %28 = add i32 %27, %10
  %29 = tail call ptr @skb_put(ptr noundef nonnull %17, i32 noundef %28) #13
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 16
  %32 = load ptr, ptr %31, align 8
  %33 = ptrtoint ptr %30 to i32
  %34 = ptrtoint ptr %32 to i32
  %35 = sub i32 %33, %34
  %36 = trunc i32 %35 to i16
  %37 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 13, i32 0, i32 18
  store i16 %36, ptr %37, align 4
  %38 = load i32, ptr %11, align 4
  %39 = trunc i32 %38 to i16
  %40 = add i16 %36, %39
  %41 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 13, i32 0, i32 17
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %19
  tail call void @skb_set_owner_w(ptr noundef nonnull %17, ptr noundef nonnull %43) #13
  %46 = load ptr, ptr %31, align 8
  %47 = load i16, ptr %37, align 4
  br label %48

48:                                               ; preds = %45, %19
  %49 = phi i16 [ %47, %45 ], [ %36, %19 ]
  %50 = phi ptr [ %46, %45 ], [ %32, %19 ]
  %51 = zext i16 %49 to i32
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = load i32, ptr %11, align 4
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %55, i32 %53, i1 false) #13
  %56 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %31, align 8
  %59 = load i16, ptr %41, align 2
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = tail call i32 @skb_copy_bits(ptr noundef %0, i32 noundef %57, ptr noundef %61, i32 noundef %10) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ip_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 724, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable

65:                                               ; preds = %48
  %66 = load i32, ptr %3, align 4
  %67 = sub i32 %66, %10
  store i32 %67, ptr %3, align 4
  %68 = load ptr, ptr %31, align 8
  %69 = load i16, ptr %37, align 4
  %70 = zext i16 %69 to i32
  %71 = getelementptr i8, ptr %68, i32 %70
  %72 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 3
  %75 = trunc i32 %74 to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %77 = getelementptr inbounds %struct.iphdr, ptr %71, i32 0, i32 4
  store i16 %76, ptr %77, align 2
  %78 = load i8, ptr %1, align 4, !range !25
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %65
  %81 = or i16 %76, 64
  store i16 %81, ptr %77, align 2
  br label %82

82:                                               ; preds = %80, %65
  %83 = phi i16 [ %81, %80 ], [ %76, %65 ]
  %84 = load i32, ptr %3, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ip_frag_state, ptr %1, i32 0, i32 7
  %88 = load i16, ptr %87, align 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86, %82
  %91 = or i16 %83, 32
  store i16 %91, ptr %77, align 2
  br label %92

92:                                               ; preds = %90, %86
  %93 = load i32, ptr %56, align 4
  %94 = add i32 %93, %10
  store i32 %94, ptr %56, align 4
  %95 = load i32, ptr %72, align 4
  %96 = add i32 %95, %10
  store i32 %96, ptr %72, align 4
  %97 = load i32, ptr %11, align 4
  %98 = add i32 %97, %10
  %99 = trunc i32 %98 to i16
  %100 = tail call i16 @llvm.bswap.i16(i16 %99)
  %101 = getelementptr inbounds %struct.iphdr, ptr %71, i32 0, i32 2
  store i16 %100, ptr %101, align 2
  %102 = getelementptr inbounds %struct.iphdr, ptr %71, i32 0, i32 7
  store i16 0, ptr %102, align 2
  %103 = load i8, ptr %71, align 4
  %104 = and i8 %103, 15
  %105 = zext i8 %104 to i32
  %106 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %71, i32 %105) #13, !srcloc !9
  %107 = extractvalue { i32, ptr, i32, i32 } %106, 0
  %108 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %107) #14, !srcloc !10
  %109 = xor i32 %108, -1
  %110 = lshr i32 %109, 16
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %102, align 2
  br label %112

112:                                              ; preds = %92, %2
  %113 = phi ptr [ %17, %92 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_do_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.ip_fraglist_iter, align 4
  %6 = alloca %struct.ip_frag_state, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, -2
  %10 = inttoptr i32 %9 to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !26
  %11 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !26
  %13 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 96
  %16 = icmp eq i16 %15, 96
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = tail call i32 @skb_checksum_help(ptr noundef %2) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %492

20:                                               ; preds = %17, %4
  %21 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %22, i32 %25
  %27 = icmp eq ptr %1, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %30 = load volatile i8, ptr %29, align 2
  %31 = zext i8 %30 to i32
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, -4161
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 11
  %37 = load i8, ptr %36, align 1
  %38 = icmp ult i8 %37, 3
  br i1 %38, label %39, label %97

39:                                               ; preds = %35, %28, %20
  %40 = load i32, ptr %7, align 8
  %41 = and i32 %40, -2
  %42 = inttoptr i32 %41 to ptr
  %43 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 33), align 4
  %44 = icmp eq i8 %43, 0
  %45 = getelementptr inbounds %struct.rtable, ptr %42, i32 0, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %44, i1 %48, i1 false
  br i1 %49, label %50, label %65

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 1
  %54 = icmp ne i16 %53, 0
  %55 = getelementptr inbounds %struct.dst_entry, ptr %42, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -4
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  %62 = and i1 %54, %61
  %63 = icmp ult i32 %46, 2
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %74, label %67

65:                                               ; preds = %39
  %66 = icmp ult i32 %46, 2
  br i1 %66, label %74, label %67

67:                                               ; preds = %65, %50
  %68 = lshr i32 %46, 1
  %69 = load volatile i32, ptr @jiffies, align 64
  %70 = getelementptr inbounds %struct.dst_entry, ptr %42, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %69, %71
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %104, label %74

74:                                               ; preds = %67, %65, %50
  %75 = getelementptr inbounds %struct.dst_entry, ptr %42, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, -4
  %78 = inttoptr i32 %77 to ptr
  %79 = getelementptr i32, ptr %78, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %74
  %83 = load ptr, ptr %42, align 4
  %84 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 20
  %85 = load volatile i32, ptr %84, align 4
  br i1 %48, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, ptr %78, align 4
  %88 = and i32 %87, 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %90, !prof !16

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %struct.rtable, ptr %42, i32 0, i32 5
  %92 = load i8, ptr %91, align 1
  %93 = icmp ne i8 %92, 0
  %94 = icmp ugt i32 %85, 576
  %95 = select i1 %93, i1 %94, i1 false
  %96 = select i1 %95, i32 576, i32 %85
  br label %104

97:                                               ; preds = %35
  %98 = load i32, ptr %7, align 8
  %99 = and i32 %98, -2
  %100 = inttoptr i32 %99 to ptr
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 20
  %103 = load volatile i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %97, %90, %86, %74, %67
  %105 = phi i32 [ %103, %97 ], [ %68, %67 ], [ %80, %74 ], [ %96, %90 ], [ %85, %86 ]
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 65535) #13
  %107 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 22
  %108 = load i16, ptr %107, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp ne i16 %108, 0
  %111 = icmp ugt i32 %106, %109
  %112 = select i1 %110, i1 %111, i1 false
  %113 = select i1 %112, i32 %109, i32 %106
  %114 = load i8, ptr %26, align 4
  %115 = shl i8 %114, 2
  %116 = and i8 %115, 60
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %113, %117
  %119 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 20
  %120 = load i16, ptr %119, align 4
  %121 = or i16 %120, 8
  store i16 %121, ptr %119, align 4
  %122 = load ptr, ptr %10, align 4
  %123 = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 19
  %124 = load i16, ptr %123, align 2
  %125 = zext i16 %124 to i32
  %126 = getelementptr inbounds %struct.net_device, ptr %122, i32 0, i32 21
  %127 = load i16, ptr %126, align 8
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %128, %125
  %130 = and i32 %129, 131056
  %131 = add nuw nsw i32 %130, 16
  %132 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 6
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %402, label %137

137:                                              ; preds = %104
  %138 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %139 = load i32, ptr %138, align 8
  %140 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 2
  %143 = load i8, ptr %142, align 2
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %137
  %146 = zext i8 %143 to i32
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i32 [ %150, %147 ], [ %146, %145 ]
  %149 = phi i32 [ %153, %147 ], [ 0, %145 ]
  %150 = add nsw i32 %148, -1
  %151 = getelementptr %struct.skb_shared_info, ptr %133, i32 0, i32 12, i32 %150, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, %149
  %154 = icmp ugt i32 %148, 1
  br i1 %154, label %147, label %155

155:                                              ; preds = %147, %137
  %156 = phi i32 [ 0, %137 ], [ %153, %147 ]
  %157 = add i32 %141, %117
  %158 = sub i32 %139, %157
  %159 = add i32 %158, %156
  %160 = icmp ule i32 %159, %118
  %161 = and i32 %159, 7
  %162 = icmp eq i32 %161, 0
  %163 = and i1 %160, %162
  br i1 %163, label %164, label %402

164:                                              ; preds = %155
  %165 = getelementptr inbounds %struct.iphdr, ptr %26, i32 0, i32 4
  %166 = load i16, ptr %165, align 2
  %167 = and i16 %166, -193
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %402

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 11
  %171 = load i8, ptr %170, align 2
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 10
  %176 = load volatile i32, ptr %175, align 4
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %402

179:                                              ; preds = %174, %169
  %180 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %181 = load ptr, ptr %180, align 4
  %182 = ptrtoint ptr %181 to i32
  %183 = ptrtoint ptr %22 to i32
  %184 = sub i32 %182, %183
  %185 = icmp ult i32 %184, %131
  br i1 %185, label %402, label %186

186:                                              ; preds = %179
  %187 = add nuw nsw i32 %131, %117
  %188 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 1
  %189 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18
  br label %190

190:                                              ; preds = %224, %186
  %191 = phi ptr [ %135, %186 ], [ %229, %224 ]
  %192 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 5
  %193 = load i32, ptr %192, align 8
  %194 = icmp ugt i32 %193, %118
  br i1 %194, label %383, label %195

195:                                              ; preds = %190
  %196 = and i32 %193, 7
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %191, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %383

201:                                              ; preds = %198, %195
  %202 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 17
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 16
  %205 = load ptr, ptr %204, align 8
  %206 = ptrtoint ptr %203 to i32
  %207 = ptrtoint ptr %205 to i32
  %208 = sub i32 %206, %207
  %209 = icmp ult i32 %208, %187
  br i1 %209, label %383, label %210

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 19
  %212 = load volatile i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %383

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %219, label %218, !prof !16

218:                                              ; preds = %214
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ip_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 824, 0\0A.popsection", ""() #13, !srcloc !27
  unreachable

219:                                              ; preds = %214
  %220 = load ptr, ptr %188, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  store ptr %220, ptr %215, align 4
  %223 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 4, i32 0, i32 1
  store ptr @sock_wfree, ptr %223, align 4
  br label %224

224:                                              ; preds = %222, %219
  %225 = getelementptr inbounds %struct.sk_buff, ptr %191, i32 0, i32 18
  %226 = load i32, ptr %225, align 8
  %227 = load i32, ptr %189, align 8
  %228 = sub i32 %227, %226
  store i32 %228, ptr %189, align 8
  %229 = load ptr, ptr %191, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %190

231:                                              ; preds = %224
  call void @ip_fraglist_init(ptr noundef %2, ptr noundef %26, i32 noundef %117, ptr noundef nonnull %5)
  %232 = load ptr, ptr %5, align 4
  %233 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %5, i32 0, i32 2
  %234 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %5, i32 0, i32 3
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %5, i32 0, i32 1
  %237 = sub i32 0, %235
  %238 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %239 = load i32, ptr %233, align 4
  %240 = load ptr, ptr %236, align 4
  br label %241

241:                                              ; preds = %346, %231
  %242 = phi ptr [ %347, %346 ], [ %232, %231 ]
  %243 = phi ptr [ %321, %346 ], [ %240, %231 ]
  %244 = phi i32 [ %322, %346 ], [ %239, %231 ]
  %245 = phi ptr [ %242, %346 ], [ %2, %231 ]
  %246 = icmp eq ptr %242, null
  br i1 %246, label %320, label %247

247:                                              ; preds = %241
  %248 = icmp eq i32 %244, 0
  %249 = getelementptr inbounds %struct.sk_buff, ptr %245, i32 0, i32 3, i32 20
  %250 = load i16, ptr %249, align 4
  %251 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 3, i32 20
  store i16 %250, ptr %251, align 4
  %252 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 13
  %253 = load i16, ptr %252, align 8
  %254 = and i16 %253, -97
  store i16 %254, ptr %252, align 8
  %255 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 17
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 16
  %258 = load ptr, ptr %257, align 8
  %259 = ptrtoint ptr %256 to i32
  %260 = ptrtoint ptr %258 to i32
  %261 = sub i32 %259, %260
  %262 = trunc i32 %261 to i16
  %263 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 13, i32 0, i32 17
  store i16 %262, ptr %263, align 2
  %264 = getelementptr i8, ptr %256, i32 %237
  store ptr %264, ptr %255, align 4
  %265 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 5
  %266 = load i32, ptr %265, align 8
  %267 = add i32 %266, %235
  store i32 %267, ptr %265, align 8
  %268 = ptrtoint ptr %264 to i32
  %269 = sub i32 %268, %260
  %270 = trunc i32 %269 to i16
  %271 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 13, i32 0, i32 18
  store i16 %270, ptr %271, align 4
  %272 = and i32 %269, 65535
  %273 = getelementptr i8, ptr %258, i32 %272
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %273, ptr align 4 %243, i32 %235, i1 false) #13
  %274 = load ptr, ptr %257, align 8
  %275 = load i16, ptr %271, align 4
  %276 = zext i16 %275 to i32
  %277 = getelementptr i8, ptr %274, i32 %276
  %278 = load i32, ptr %265, align 8
  %279 = trunc i32 %278 to i16
  %280 = tail call i16 @llvm.bswap.i16(i16 %279) #13
  %281 = getelementptr inbounds %struct.iphdr, ptr %277, i32 0, i32 2
  store i16 %280, ptr %281, align 2
  tail call fastcc void @ip_copy_metadata(ptr noundef nonnull %242, ptr noundef %245) #13
  %282 = getelementptr inbounds %struct.sk_buff, ptr %245, i32 0, i32 5
  %283 = load i32, ptr %282, align 8
  %284 = sub i32 %283, %235
  %285 = add i32 %284, %244
  %286 = lshr i32 %285, 3
  %287 = trunc i32 %286 to i16
  %288 = tail call i16 @llvm.bswap.i16(i16 %287) #13
  %289 = getelementptr inbounds %struct.iphdr, ptr %277, i32 0, i32 4
  store i16 %288, ptr %289, align 2
  %290 = load ptr, ptr %242, align 8
  %291 = icmp eq ptr %290, null
  br i1 %291, label %294, label %292

292:                                              ; preds = %247
  %293 = or i16 %288, 32
  store i16 %293, ptr %289, align 2
  br label %294

294:                                              ; preds = %292, %247
  %295 = getelementptr inbounds %struct.iphdr, ptr %277, i32 0, i32 7
  store i16 0, ptr %295, align 2
  %296 = load i8, ptr %277, align 4
  %297 = and i8 %296, 15
  %298 = zext i8 %297 to i32
  %299 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %277, i32 %298) #13, !srcloc !9
  %300 = extractvalue { i32, ptr, i32, i32 } %299, 0
  %301 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %300) #14, !srcloc !10
  %302 = xor i32 %301, -1
  %303 = lshr i32 %302, 16
  %304 = trunc i32 %303 to i16
  store i16 %304, ptr %295, align 2
  br i1 %248, label %305, label %320

305:                                              ; preds = %294
  %306 = getelementptr inbounds %struct.sk_buff, ptr %245, i32 0, i32 3, i32 12
  %307 = load i8, ptr %306, align 4
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %320, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.sk_buff, ptr %242, i32 0, i32 3, i32 12
  store i8 %307, ptr %310, align 4
  tail call void @ip_options_fragment(ptr noundef nonnull %242) #13
  store i16 0, ptr %295, align 2
  %311 = load i8, ptr %277, align 4
  %312 = and i8 %311, 15
  %313 = zext i8 %312 to i32
  %314 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %277, i32 %313) #13, !srcloc !9
  %315 = extractvalue { i32, ptr, i32, i32 } %314, 0
  %316 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %315) #14, !srcloc !10
  %317 = xor i32 %316, -1
  %318 = lshr i32 %317, 16
  %319 = trunc i32 %318 to i16
  store i16 %319, ptr %295, align 2
  br label %320

320:                                              ; preds = %309, %305, %294, %241
  %321 = phi ptr [ %277, %294 ], [ %277, %305 ], [ %277, %309 ], [ %243, %241 ]
  %322 = phi i32 [ %285, %294 ], [ %285, %305 ], [ %285, %309 ], [ %244, %241 ]
  %323 = getelementptr inbounds %struct.sk_buff, ptr %245, i32 0, i32 2
  store i64 %12, ptr %323, align 8
  %324 = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %245) #13
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %365

326:                                              ; preds = %320
  %327 = tail call ptr @llvm.thread.pointer() #13
  %328 = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 1
  %329 = load volatile i32, ptr %328, align 4
  %330 = add i32 %329, 512
  store volatile i32 %330, ptr %328, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %331 = load ptr, ptr %238, align 8
  %332 = ptrtoint ptr %331 to i32
  %333 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %334 = inttoptr i32 %333 to ptr
  %335 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %334) #10, !srcloc !13
  %336 = add i32 %335, %332
  %337 = inttoptr i32 %336 to ptr
  %338 = getelementptr inbounds %struct.ipstats_mib, ptr %337, i32 0, i32 1
  %339 = load i32, ptr %338, align 4
  %340 = add i32 %339, 1
  store i32 %340, ptr %338, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %341 = getelementptr [37 x i64], ptr %337, i32 0, i32 22
  %342 = load i64, ptr %341, align 8
  %343 = add i64 %342, 1
  store i64 %343, ptr %341, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %344 = load i32, ptr %338, align 4
  %345 = add i32 %344, 1
  store i32 %345, ptr %338, align 4
  tail call fastcc void @local_bh_enable()
  br i1 %246, label %348, label %346

346:                                              ; preds = %326
  %347 = load ptr, ptr %242, align 8
  store ptr null, ptr %242, align 8
  br label %241

348:                                              ; preds = %326
  %349 = getelementptr inbounds %struct.thread_info, ptr %327, i32 0, i32 1
  store i32 %322, ptr %233, align 4
  store ptr %321, ptr %236, align 4
  store ptr null, ptr %5, align 4
  %350 = load volatile i32, ptr %349, align 4
  %351 = add i32 %350, 512
  store volatile i32 %351, ptr %349, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %352 = load ptr, ptr %238, align 8
  %353 = ptrtoint ptr %352 to i32
  %354 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %355 = inttoptr i32 %354 to ptr
  %356 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %355) #10, !srcloc !13
  %357 = add i32 %356, %353
  %358 = inttoptr i32 %357 to ptr
  %359 = getelementptr inbounds %struct.ipstats_mib, ptr %358, i32 0, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 1
  store i32 %361, ptr %359, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %362 = getelementptr [37 x i64], ptr %358, i32 0, i32 20
  %363 = load i64, ptr %362, align 8
  %364 = add i64 %363, 1
  store i64 %364, ptr %362, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %512

365:                                              ; preds = %320
  store i32 %322, ptr %233, align 4
  store ptr %321, ptr %236, align 4
  store ptr %242, ptr %5, align 4
  tail call void @kfree_skb_list(ptr noundef %242) #13
  %366 = tail call ptr @llvm.thread.pointer() #13
  %367 = getelementptr inbounds %struct.thread_info, ptr %366, i32 0, i32 1
  %368 = load volatile i32, ptr %367, align 4
  %369 = add i32 %368, 512
  store volatile i32 %369, ptr %367, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %370 = load ptr, ptr %238, align 8
  %371 = ptrtoint ptr %370 to i32
  %372 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %373 = inttoptr i32 %372 to ptr
  %374 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %373) #10, !srcloc !13
  %375 = add i32 %374, %371
  %376 = inttoptr i32 %375 to ptr
  %377 = getelementptr inbounds %struct.ipstats_mib, ptr %376, i32 0, i32 1
  %378 = load i32, ptr %377, align 4
  %379 = add i32 %378, 1
  store i32 %379, ptr %377, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %380 = getelementptr [37 x i64], ptr %376, i32 0, i32 21
  %381 = load i64, ptr %380, align 8
  %382 = add i64 %381, 1
  store i64 %382, ptr %380, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %512

383:                                              ; preds = %210, %201, %198, %190
  %384 = load ptr, ptr %132, align 4
  %385 = getelementptr inbounds %struct.skb_shared_info, ptr %384, i32 0, i32 6
  %386 = load ptr, ptr %385, align 8
  %387 = icmp eq ptr %386, null
  %388 = icmp eq ptr %386, %191
  %389 = select i1 %387, i1 true, i1 %388
  br i1 %389, label %402, label %390

390:                                              ; preds = %390, %383
  %391 = phi ptr [ %398, %390 ], [ %386, %383 ]
  %392 = getelementptr inbounds %struct.sk_buff, ptr %391, i32 0, i32 1
  store ptr null, ptr %392, align 4
  %393 = getelementptr inbounds %struct.sk_buff, ptr %391, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %393, align 4
  %394 = getelementptr inbounds %struct.sk_buff, ptr %391, i32 0, i32 18
  %395 = load i32, ptr %394, align 8
  %396 = load i32, ptr %189, align 8
  %397 = add i32 %396, %395
  store i32 %397, ptr %189, align 8
  %398 = load ptr, ptr %391, align 8
  %399 = icmp eq ptr %398, null
  %400 = icmp eq ptr %398, %191
  %401 = select i1 %399, i1 true, i1 %400
  br i1 %401, label %402, label %390

402:                                              ; preds = %390, %383, %179, %174, %164, %155, %104
  %403 = load i16, ptr %119, align 4
  %404 = trunc i16 %403 to i8
  %405 = lshr i8 %404, 6
  %406 = and i8 %405, 1
  %407 = load ptr, ptr %21, align 8
  %408 = load i16, ptr %23, align 4
  %409 = zext i16 %408 to i32
  %410 = getelementptr i8, ptr %407, i32 %409
  store i8 %406, ptr %6, align 4
  %411 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 1
  store i32 %117, ptr %411, align 4
  %412 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 2
  store i32 %131, ptr %412, align 4
  %413 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 3
  store i32 %118, ptr %413, align 4
  %414 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %415 = load i32, ptr %414, align 8
  %416 = sub i32 %415, %117
  %417 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 4
  store i32 %416, ptr %417, align 4
  %418 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 6
  store i32 %117, ptr %418, align 4
  %419 = getelementptr inbounds %struct.iphdr, ptr %410, i32 0, i32 4
  %420 = load i16, ptr %419, align 2
  %421 = and i16 %420, -225
  %422 = tail call i16 @llvm.bswap.i16(i16 %421) #13
  %423 = shl nuw i16 %422, 3
  %424 = zext i16 %423 to i32
  %425 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 5
  store i32 %424, ptr %425, align 4
  %426 = and i16 %420, 32
  %427 = getelementptr inbounds %struct.ip_frag_state, ptr %6, i32 0, i32 7
  store i16 %426, ptr %427, align 4
  %428 = icmp eq i32 %415, %117
  br i1 %428, label %473, label %429

429:                                              ; preds = %402
  %430 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %431 = call ptr @ip_frag_next(ptr noundef %2, ptr noundef nonnull %6)
  %432 = icmp ugt ptr %431, inttoptr (i32 -4096 to ptr)
  br i1 %432, label %433, label %436

433:                                              ; preds = %469, %429
  %434 = phi ptr [ %431, %429 ], [ %471, %469 ]
  %435 = ptrtoint ptr %434 to i32
  br label %492

436:                                              ; preds = %469, %429
  %437 = phi ptr [ %471, %469 ], [ %431, %429 ]
  %438 = phi i32 [ %470, %469 ], [ %424, %429 ]
  %439 = icmp eq i32 %438, 0
  %440 = load i16, ptr %119, align 4
  %441 = getelementptr inbounds %struct.sk_buff, ptr %437, i32 0, i32 3, i32 20
  store i16 %440, ptr %441, align 4
  br i1 %439, label %442, label %443

442:                                              ; preds = %436
  tail call void @ip_options_fragment(ptr noundef %2) #13
  br label %443

443:                                              ; preds = %442, %436
  %444 = getelementptr inbounds %struct.sk_buff, ptr %437, i32 0, i32 2
  store i64 %12, ptr %444, align 8
  %445 = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %437) #13
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %492

447:                                              ; preds = %443
  %448 = tail call ptr @llvm.thread.pointer() #13
  %449 = getelementptr inbounds %struct.thread_info, ptr %448, i32 0, i32 1
  %450 = load volatile i32, ptr %449, align 4
  %451 = add i32 %450, 512
  store volatile i32 %451, ptr %449, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %452 = load ptr, ptr %430, align 8
  %453 = ptrtoint ptr %452 to i32
  %454 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %455 = inttoptr i32 %454 to ptr
  %456 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %455) #10, !srcloc !13
  %457 = add i32 %456, %453
  %458 = inttoptr i32 %457 to ptr
  %459 = getelementptr inbounds %struct.ipstats_mib, ptr %458, i32 0, i32 1
  %460 = load i32, ptr %459, align 4
  %461 = add i32 %460, 1
  store i32 %461, ptr %459, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %462 = getelementptr [37 x i64], ptr %458, i32 0, i32 22
  %463 = load i64, ptr %462, align 8
  %464 = add i64 %463, 1
  store i64 %464, ptr %462, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %465 = load i32, ptr %459, align 4
  %466 = add i32 %465, 1
  store i32 %466, ptr %459, align 4
  tail call fastcc void @local_bh_enable()
  %467 = load i32, ptr %417, align 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %447
  %470 = load i32, ptr %425, align 4
  %471 = call ptr @ip_frag_next(ptr noundef %2, ptr noundef nonnull %6)
  %472 = icmp ugt ptr %471, inttoptr (i32 -4096 to ptr)
  br i1 %472, label %433, label %436

473:                                              ; preds = %447, %402
  tail call void @consume_skb(ptr noundef %2) #13
  %474 = tail call ptr @llvm.thread.pointer() #13
  %475 = getelementptr inbounds %struct.thread_info, ptr %474, i32 0, i32 1
  %476 = load volatile i32, ptr %475, align 4
  %477 = add i32 %476, 512
  store volatile i32 %477, ptr %475, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %478 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %479 = load ptr, ptr %478, align 8
  %480 = ptrtoint ptr %479 to i32
  %481 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %482 = inttoptr i32 %481 to ptr
  %483 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %482) #10, !srcloc !13
  %484 = add i32 %483, %480
  %485 = inttoptr i32 %484 to ptr
  %486 = getelementptr inbounds %struct.ipstats_mib, ptr %485, i32 0, i32 1
  %487 = load i32, ptr %486, align 4
  %488 = add i32 %487, 1
  store i32 %488, ptr %486, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %489 = getelementptr [37 x i64], ptr %485, i32 0, i32 20
  %490 = load i64, ptr %489, align 8
  %491 = add i64 %490, 1
  store i64 %491, ptr %489, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %512

492:                                              ; preds = %443, %433, %17
  %493 = phi i32 [ %18, %17 ], [ %435, %433 ], [ %445, %443 ]
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  %494 = tail call ptr @llvm.thread.pointer() #13
  %495 = getelementptr inbounds %struct.thread_info, ptr %494, i32 0, i32 1
  %496 = load volatile i32, ptr %495, align 4
  %497 = add i32 %496, 512
  store volatile i32 %497, ptr %495, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %498 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %499 = load ptr, ptr %498, align 8
  %500 = ptrtoint ptr %499 to i32
  %501 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %502 = inttoptr i32 %501 to ptr
  %503 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %502) #10, !srcloc !13
  %504 = add i32 %503, %500
  %505 = inttoptr i32 %504 to ptr
  %506 = getelementptr inbounds %struct.ipstats_mib, ptr %505, i32 0, i32 1
  %507 = load i32, ptr %506, align 4
  %508 = add i32 %507, 1
  store i32 %508, ptr %506, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %509 = getelementptr [37 x i64], ptr %505, i32 0, i32 21
  %510 = load i64, ptr %509, align 8
  %511 = add i64 %510, 1
  store i64 %511, ptr %509, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %512

512:                                              ; preds = %492, %473, %365, %348
  %513 = phi ptr [ %359, %348 ], [ %377, %365 ], [ %506, %492 ], [ %486, %473 ]
  %514 = phi i32 [ 0, %348 ], [ %324, %365 ], [ %493, %492 ], [ 0, %473 ]
  %515 = load i32, ptr %513, align 4
  %516 = add i32 %515, 1
  store i32 %516, ptr %513, align 4
  tail call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %514
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_options_fragment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_generic_getfrag(ptr noundef %0, ptr noundef %1, i32 %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 96
  %11 = icmp eq i16 %10, 96
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %14 = icmp slt i32 %3, 0
  %15 = load i1, ptr @check_copy_size.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %19

19:                                               ; preds = %18, %12
  br i1 %14, label %22, label %20, !prof !11

20:                                               ; preds = %19
  %21 = tail call i32 @_copy_from_iter(ptr noundef %1, i32 noundef %3, ptr noundef %13) #13
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ %21, %20 ], [ 0, %19 ]
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %43, label %25, !prof !16

25:                                               ; preds = %22
  tail call void @iov_iter_revert(ptr noundef %13, i32 noundef %23) #13
  br label %43

26:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4
  %27 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 2
  %28 = call i32 @csum_and_copy_from_iter(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %7, ptr noundef %27) #13
  %29 = icmp eq i32 %28, %3
  br i1 %29, label %30, label %42, !prof !16

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %7, align 4
  %34 = and i32 %4, 1
  %35 = icmp eq i32 %34, 0
  %36 = call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 24) #13
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = add i32 %37, %32
  %39 = icmp ult i32 %38, %37
  %40 = zext i1 %39 to i32
  %41 = add i32 %38, %40
  store i32 %41, ptr %31, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %43

42:                                               ; preds = %26
  call void @iov_iter_revert(ptr noundef %27, i32 noundef %28) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %43

43:                                               ; preds = %42, %30, %25, %22
  %44 = phi i32 [ -14, %25 ], [ -14, %42 ], [ 0, %30 ], [ 0, %22 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_append_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = and i32 %8, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %18 = tail call fastcc i32 @ip_setup_cork(ptr noundef %0, ptr noundef %17, ptr noundef %6, ptr noundef %7)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %5, %16 ], [ 0, %12 ]
  %22 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %23 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 132224
  %26 = icmp eq i32 %25, 1152
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = tail call ptr @llvm.thread.pointer() #13
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 139
  br label %32

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %29, %27 ], [ %31, %30 ]
  %34 = tail call fastcc i32 @__ip_append_data(ptr noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %22, ptr noundef %33, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %21, i32 noundef %8)
  br label %35

35:                                               ; preds = %32, %16, %9
  %36 = phi i32 [ %34, %32 ], [ 0, %9 ], [ %18, %16 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_setup_cork(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %93, label %7, !prof !11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !16

20:                                               ; preds = %15
  %21 = and i32 %17, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 2
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ 0, %15 ], [ %23, %20 ]
  %26 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %25, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef %17, i32 noundef 56) #15
  store ptr %28, ptr %12, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %93, label %30, !prof !11

30:                                               ; preds = %24, %11
  %31 = phi ptr [ %28, %24 ], [ %13, %11 ]
  %32 = getelementptr inbounds %struct.ip_options_rcu, ptr %9, i32 0, i32 1
  %33 = getelementptr inbounds %struct.ip_options_rcu, ptr %9, i32 0, i32 1, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %35, 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 %31, ptr noundef align 4 %32, i32 %36, i1 false)
  %37 = load i32, ptr %1, align 8
  %38 = or i32 %37, 1
  store i32 %38, ptr %1, align 8
  %39 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %30, %7
  %43 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %44 = load i8, ptr %43, align 1
  %45 = icmp ult i8 %44, 3
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dst_ops, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef nonnull %5) #13
  br label %56

52:                                               ; preds = %42
  %53 = load ptr, ptr %5, align 4
  %54 = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 20
  %55 = load volatile i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %51, %46 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  %59 = icmp ugt i32 %57, 67
  br i1 %59, label %60, label %93

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 7
  %62 = load i16, ptr %61, align 2
  %63 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 10
  store i16 %62, ptr %63, align 2
  %64 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 5
  store ptr %5, ptr %64, align 4
  store ptr null, ptr %3, align 4
  %65 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 4
  store i32 0, ptr %65, align 8
  %66 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 4
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 7
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 5
  %70 = load i16, ptr %69, align 2
  %71 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 8
  store i16 %70, ptr %71, align 2
  %72 = getelementptr inbounds %struct.sockcm_cookie, ptr %2, i32 0, i32 1
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 12
  store i32 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.ipcm_cookie, ptr %2, i32 0, i32 6
  %76 = load i8, ptr %75, align 8
  %77 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 9
  store i8 %76, ptr %77, align 4
  %78 = load i64, ptr %2, align 8
  %79 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 11
  store i64 %78, ptr %79, align 8
  %80 = getelementptr inbounds %struct.inet_cork, ptr %1, i32 0, i32 6
  store i8 0, ptr %80, align 8
  %81 = getelementptr inbounds %struct.sockcm_cookie, ptr %2, i32 0, i32 2
  %82 = load i16, ptr %81, align 4
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %85, label %84, !prof !16

84:                                               ; preds = %60
  tail call void @__sock_tx_timestamp(i16 noundef zeroext %82, ptr noundef %80) #13
  br label %85

85:                                               ; preds = %84, %60
  %86 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %87, 524288
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90, !prof !16

90:                                               ; preds = %85
  %91 = load i8, ptr %80, align 1
  %92 = or i8 %91, 16
  store i8 %92, ptr %80, align 1
  br label %93

93:                                               ; preds = %90, %85, %56, %24, %4
  %94 = phi i32 [ -14, %4 ], [ -105, %24 ], [ -101, %56 ], [ 0, %85 ], [ 0, %90 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ip_append_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !26
  %14 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %2
  %19 = select i1 %18, ptr null, ptr %17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %21, %10
  %26 = phi i32 [ %24, %21 ], [ 0, %10 ]
  %27 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 10
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi i32 [ %32, %30 ], [ 65535, %25 ]
  %35 = icmp ne i16 %28, 0
  %36 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 6
  %37 = load i8, ptr %36, align 8
  %38 = and i8 %37, 66
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 65
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, 128
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #13, !srcloc !20
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #13, !srcloc !29
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  %49 = add i32 %48, -1
  br label %50

50:                                               ; preds = %45, %40, %33
  %51 = phi i32 [ %49, %45 ], [ 0, %40 ], [ 0, %33 ]
  %52 = load ptr, ptr %15, align 4
  %53 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 19
  %54 = load i16, ptr %53, align 2
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 21
  %57 = load i16, ptr %56, align 8
  %58 = zext i16 %57 to i32
  %59 = add nuw nsw i32 %58, %55
  %60 = and i32 %59, 131056
  %61 = add nuw nsw i32 %60, 16
  %62 = icmp eq ptr %13, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.ip_options, ptr %13, i32 0, i32 2
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  br label %67

67:                                               ; preds = %63, %50
  %68 = phi i32 [ %66, %63 ], [ 0, %50 ]
  %69 = add nuw nsw i32 %68, 20
  %70 = sub i32 %34, %69
  %71 = and i32 %70, -8
  %72 = add i32 %71, %69
  %73 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %74 = load i8, ptr %73, align 1
  %75 = icmp ult i8 %74, 2
  %76 = icmp eq i8 %74, 5
  %77 = or i1 %75, %76
  %78 = select i1 %77, i32 65535, i32 %34
  %79 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 4
  %80 = load i32, ptr %79, align 8
  %81 = add i32 %80, %7
  %82 = sub i32 %78, %69
  %83 = icmp ugt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %88 = load i16, ptr %87, align 4
  br i1 %62, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.ip_options, ptr %13, i32 0, i32 2
  %91 = load i8, ptr %90, align 4
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i32 [ %92, %89 ], [ 0, %84 ]
  %95 = sub i32 %34, %94
  tail call void @ip_local_error(ptr noundef %0, i32 noundef 90, i32 noundef %86, i16 noundef zeroext %88, i32 noundef %95) #13
  br label %692

96:                                               ; preds = %67
  %97 = icmp eq i32 %8, 0
  %98 = add i32 %69, %7
  %99 = icmp ugt i32 %98, %34
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 23
  %103 = load i64, ptr %102, align 16
  %104 = and i64 %103, 10
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = and i32 %9, 32768
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i16, ptr %27, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %109, %106
  %113 = icmp ne i32 %26, 0
  %114 = and i64 %103, 2251799813685248
  %115 = icmp eq i64 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  %117 = xor i1 %116, true
  %118 = select i1 %116, i32 0, i32 3
  br label %119

119:                                              ; preds = %112, %109, %101, %96
  %120 = phi i1 [ false, %109 ], [ false, %101 ], [ false, %96 ], [ %117, %112 ]
  %121 = phi i32 [ 0, %109 ], [ 0, %101 ], [ 0, %96 ], [ %118, %112 ]
  %122 = and i32 %9, 67108864
  %123 = icmp ne i32 %122, 0
  %124 = icmp ne i32 %7, 0
  %125 = and i1 %124, %123
  br i1 %125, label %126, label %205

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 13
  %128 = load volatile i32, ptr %127, align 4
  %129 = and i32 %128, 262144
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %205, label %131

131:                                              ; preds = %126
  br i1 %20, label %145, label %132

132:                                              ; preds = %131
  %133 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15
  %134 = load ptr, ptr %133, align 4
  %135 = load i8, ptr %134, align 8
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.skb_shared_info, ptr %134, i32 0, i32 11
  %140 = load ptr, ptr %139, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = phi ptr [ %140, %138 ], [ null, %132 ]
  %143 = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %7, ptr noundef %142) #13
  %144 = icmp eq ptr %143, null
  br i1 %144, label %692, label %148

145:                                              ; preds = %131
  %146 = tail call ptr @msg_zerocopy_realloc(ptr noundef %0, i32 noundef %7, ptr noundef null) #13
  %147 = icmp eq ptr %146, null
  br i1 %147, label %692, label %156

148:                                              ; preds = %141
  %149 = load ptr, ptr %133, align 4
  %150 = load i8, ptr %149, align 8
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.skb_shared_info, ptr %149, i32 0, i32 11
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %148, %145
  %157 = phi ptr [ %143, %153 ], [ %143, %148 ], [ %146, %145 ]
  %158 = phi ptr [ %155, %153 ], [ null, %148 ], [ null, %145 ]
  %159 = icmp eq ptr %158, null
  %160 = load ptr, ptr %15, align 4
  %161 = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 23
  %162 = load i64, ptr %161, align 16
  %163 = and i64 %162, 1
  %164 = icmp ne i64 %163, 0
  %165 = and i1 %120, %164
  br i1 %165, label %205, label %166

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.ubuf_info, ptr %157, i32 0, i32 1, i32 0, i32 2
  %168 = load i8, ptr %167, align 2
  %169 = and i8 %168, -2
  store i8 %169, ptr %167, align 2
  br i1 %20, label %205, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 15
  %172 = load ptr, ptr %171, align 4
  %173 = load i8, ptr %172, align 8
  %174 = and i8 %173, 1
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.skb_shared_info, ptr %172, i32 0, i32 11
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %200

180:                                              ; preds = %176, %170
  br i1 %159, label %192, label %181, !prof !11

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.ubuf_info, ptr %157, i32 0, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %182) #13, !srcloc !20
  %183 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %182, ptr %182, i32 1, ptr elementtype(i32) %182) #13, !srcloc !23
  %184 = extractvalue { i32, i32, i32 } %183, 0
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %190, label %186, !prof !11

186:                                              ; preds = %181
  %187 = add i32 %184, 1
  %188 = or i32 %187, %184
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %192, label %190, !prof !16

190:                                              ; preds = %186, %181
  %191 = phi i32 [ 2, %181 ], [ 1, %186 ]
  tail call void @refcount_warn_saturate(ptr noundef %182, i32 noundef %191) #13
  br label %192

192:                                              ; preds = %190, %186, %180
  %193 = load ptr, ptr %171, align 4
  %194 = getelementptr inbounds %struct.skb_shared_info, ptr %193, i32 0, i32 11
  store ptr %157, ptr %194, align 4
  %195 = getelementptr inbounds %struct.ubuf_info, ptr %157, i32 0, i32 3
  %196 = load i8, ptr %195, align 4
  %197 = load ptr, ptr %171, align 4
  %198 = load i8, ptr %197, align 8
  %199 = or i8 %198, %196
  store i8 %199, ptr %197, align 8
  br label %200

200:                                              ; preds = %192, %176
  %201 = phi i1 [ %159, %176 ], [ false, %192 ]
  %202 = zext i1 %201 to i8
  %203 = load i32, ptr %79, align 8
  %204 = add i32 %203, %7
  store i32 %204, ptr %79, align 8
  br label %212

205:                                              ; preds = %166, %156, %126, %119
  %206 = phi i1 [ %159, %156 ], [ false, %126 ], [ false, %119 ], [ %159, %166 ]
  %207 = phi i1 [ true, %156 ], [ %35, %126 ], [ %35, %119 ], [ %35, %166 ]
  %208 = phi ptr [ %157, %156 ], [ null, %126 ], [ null, %119 ], [ %157, %166 ]
  %209 = zext i1 %206 to i8
  %210 = load i32, ptr %79, align 8
  %211 = add i32 %210, %7
  store i32 %211, ptr %79, align 8
  br i1 %20, label %247, label %212

212:                                              ; preds = %456, %205, %200
  %213 = phi ptr [ %208, %205 ], [ %248, %456 ], [ %157, %200 ]
  %214 = phi i1 [ %207, %205 ], [ %249, %456 ], [ %35, %200 ]
  %215 = phi i8 [ %209, %205 ], [ %439, %456 ], [ %202, %200 ]
  %216 = phi i32 [ 0, %205 ], [ %398, %456 ], [ 0, %200 ]
  %217 = phi i32 [ %121, %205 ], [ 0, %456 ], [ %121, %200 ]
  %218 = phi i32 [ 0, %205 ], [ %457, %456 ], [ 0, %200 ]
  %219 = phi i32 [ %51, %205 ], [ 0, %456 ], [ %51, %200 ]
  %220 = phi i32 [ %26, %205 ], [ 0, %456 ], [ %26, %200 ]
  %221 = phi ptr [ %17, %205 ], [ %325, %456 ], [ %17, %200 ]
  %222 = phi i32 [ %8, %205 ], [ 0, %456 ], [ %8, %200 ]
  %223 = phi i32 [ %7, %205 ], [ %400, %456 ], [ %7, %200 ]
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %624

225:                                              ; preds = %212
  %226 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 5
  %227 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 6
  %228 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 15
  %229 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 14
  %230 = icmp eq ptr %213, null
  %231 = getelementptr inbounds %struct.ubuf_info, ptr %213, i32 0, i32 1, i32 0, i32 2
  %232 = getelementptr inbounds %struct.page_frag, ptr %4, i32 0, i32 1
  %233 = icmp eq ptr %221, null
  %234 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 11
  %235 = getelementptr inbounds %struct.page_frag, ptr %4, i32 0, i32 2
  %236 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 18
  br label %237

237:                                              ; preds = %618, %225
  %238 = phi i32 [ %223, %225 ], [ %622, %618 ]
  %239 = phi i32 [ %218, %225 ], [ %619, %618 ]
  %240 = phi i32 [ %216, %225 ], [ %621, %618 ]
  %241 = load i32, ptr %226, align 8
  %242 = sub i32 %34, %241
  %243 = icmp slt i32 %242, %238
  %244 = sub i32 %72, %241
  %245 = select i1 %243, i32 %244, i32 %242
  %246 = icmp slt i32 %245, 1
  br i1 %246, label %247, label %463

247:                                              ; preds = %237, %205
  %248 = phi ptr [ %208, %205 ], [ %213, %237 ]
  %249 = phi i1 [ %207, %205 ], [ %214, %237 ]
  %250 = phi i8 [ %209, %205 ], [ %215, %237 ]
  %251 = phi i32 [ 0, %205 ], [ %240, %237 ]
  %252 = phi i32 [ %121, %205 ], [ %217, %237 ]
  %253 = phi i32 [ 0, %205 ], [ %239, %237 ]
  %254 = phi i32 [ %51, %205 ], [ %219, %237 ]
  %255 = phi i32 [ %26, %205 ], [ %220, %237 ]
  %256 = phi ptr [ null, %205 ], [ %221, %237 ]
  %257 = phi i32 [ %8, %205 ], [ %222, %237 ]
  %258 = phi i32 [ %7, %205 ], [ %238, %237 ]
  %259 = icmp ne ptr %256, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 5
  %262 = load i32, ptr %261, align 8
  %263 = sub i32 %262, %72
  br label %264

264:                                              ; preds = %260, %247
  %265 = phi i32 [ %263, %260 ], [ 0, %247 ]
  %266 = add i32 %265, %258
  %267 = icmp ugt i32 %266, %70
  %268 = select i1 %267, i32 %71, i32 %266
  %269 = add i32 %268, %69
  %270 = add nuw nsw i32 %60, 31
  %271 = add nsw i32 %270, %255
  %272 = icmp eq i32 %268, %266
  br i1 %272, label %273, label %278

273:                                              ; preds = %264
  %274 = getelementptr inbounds %struct.dst_entry, ptr %15, i32 0, i32 10
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = add nsw i32 %271, %276
  br label %278

278:                                              ; preds = %273, %264
  %279 = phi i32 [ %277, %273 ], [ %271, %264 ]
  %280 = and i32 %9, 32768
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %278
  %283 = load ptr, ptr %15, align 4
  %284 = getelementptr inbounds %struct.net_device, ptr %283, i32 0, i32 23
  %285 = load i64, ptr %284, align 16
  %286 = and i64 %285, 1
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %301, label %288

288:                                              ; preds = %282, %278
  br i1 %249, label %298, label %289

289:                                              ; preds = %288
  %290 = add i32 %279, %269
  %291 = icmp ult i32 %290, 16128
  br i1 %291, label %301, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %15, align 4
  %294 = getelementptr inbounds %struct.net_device, ptr %293, i32 0, i32 23
  %295 = load i64, ptr %294, align 16
  %296 = and i64 %295, 1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %292, %288
  %299 = call i32 @llvm.smin.i32(i32 %269, i32 144)
  %300 = sub i32 %299, %269
  br label %301

301:                                              ; preds = %298, %292, %289, %282
  %302 = phi i32 [ %299, %298 ], [ %34, %282 ], [ %269, %292 ], [ %269, %289 ]
  %303 = phi i32 [ %300, %298 ], [ 0, %282 ], [ 0, %292 ], [ 0, %289 ]
  %304 = add i32 %302, %279
  %305 = icmp eq i32 %257, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %301
  %307 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %308 = load volatile i32, ptr %307, align 4
  %309 = add i32 %308, %253
  %310 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  %311 = load i32, ptr %310, align 8
  %312 = shl i32 %311, 1
  %313 = icmp ugt i32 %309, %312
  br i1 %313, label %319, label %314

314:                                              ; preds = %306
  %315 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %316 = load i32, ptr %315, align 8
  %317 = call ptr @__alloc_skb(i32 noundef %304, i32 noundef %316, i32 noundef 0, i32 noundef -1) #13
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %324, !prof !11

319:                                              ; preds = %314, %306
  store i32 -105, ptr %11, align 4
  br label %639

320:                                              ; preds = %301
  %321 = and i32 %9, 64
  %322 = call ptr @sock_alloc_send_skb(ptr noundef %0, i32 noundef %304, i32 noundef %321, ptr noundef nonnull %11) #13
  %323 = icmp eq ptr %322, null
  br i1 %323, label %639, label %324

324:                                              ; preds = %320, %314
  %325 = phi ptr [ %322, %320 ], [ %317, %314 ]
  %326 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 13
  %327 = trunc i32 %252 to i16
  %328 = load i16, ptr %326, align 8
  %329 = shl i16 %327, 5
  %330 = and i16 %329, 96
  %331 = and i16 %328, -97
  %332 = or i16 %331, %330
  store i16 %332, ptr %326, align 8
  %333 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %333, align 4
  %334 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 17
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr i8, ptr %335, i32 %61
  store ptr %336, ptr %334, align 4
  %337 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 14
  %338 = load ptr, ptr %337, align 8
  %339 = getelementptr i8, ptr %338, i32 %61
  store ptr %339, ptr %337, align 8
  %340 = add i32 %269, %255
  %341 = add i32 %340, %303
  %342 = call ptr @skb_put(ptr noundef nonnull %325, i32 noundef %341) #13
  %343 = load ptr, ptr %334, align 4
  %344 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 16
  %345 = load ptr, ptr %344, align 8
  %346 = ptrtoint ptr %343 to i32
  %347 = ptrtoint ptr %345 to i32
  %348 = sub i32 %346, %347
  %349 = trunc i32 %348 to i16
  %350 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 13, i32 0, i32 18
  %351 = trunc i32 %255 to i16
  %352 = add i16 %349, %351
  store i16 %352, ptr %350, align 4
  %353 = trunc i32 %69 to i16
  %354 = add i16 %352, %353
  %355 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 13, i32 0, i32 17
  store i16 %354, ptr %355, align 2
  %356 = add nsw i32 %255, %69
  %357 = getelementptr i8, ptr %342, i32 %356
  %358 = icmp eq i32 %265, 0
  br i1 %358, label %386, label %359

359:                                              ; preds = %324
  %360 = getelementptr i8, ptr %357, i32 %257
  %361 = call i32 @skb_copy_and_csum_bits(ptr noundef %256, i32 noundef %72, ptr noundef %360, i32 noundef %265) #13
  store i32 %361, ptr %333, align 4
  %362 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 13, i32 0, i32 4
  %363 = load i32, ptr %362, align 4
  %364 = xor i32 %361, -1
  %365 = add i32 %363, %364
  %366 = icmp ult i32 %365, %364
  %367 = zext i1 %366 to i32
  %368 = add i32 %365, %367
  store i32 %368, ptr %362, align 4
  %369 = getelementptr i8, ptr %357, i32 %265
  %370 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 5
  %371 = load i32, ptr %370, align 8
  %372 = icmp ugt i32 %371, %72
  br i1 %372, label %373, label %386

373:                                              ; preds = %359
  %374 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 6
  %375 = load i32, ptr %374, align 4
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %373
  store i32 %72, ptr %370, align 8
  %378 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 17
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr i8, ptr %379, i32 %72
  %381 = getelementptr inbounds %struct.sk_buff, ptr %256, i32 0, i32 14
  store ptr %380, ptr %381, align 8
  br label %386

382:                                              ; preds = %373
  %383 = call i32 @___pskb_trim(ptr noundef %256, i32 noundef %72) #13
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %386, label %385, !prof !16

385:                                              ; preds = %382
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

386:                                              ; preds = %382, %377, %359, %324
  %387 = phi ptr [ %357, %324 ], [ %369, %359 ], [ %369, %377 ], [ %369, %382 ]
  %388 = add i32 %265, %257
  %389 = sub i32 %268, %388
  %390 = add i32 %389, %303
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %397

392:                                              ; preds = %386
  %393 = getelementptr i8, ptr %387, i32 %257
  %394 = call i32 %5(ptr noundef %6, ptr noundef %393, i32 noundef %251, i32 noundef %390, i32 noundef %265, ptr noundef nonnull %325) #13
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  store i32 -14, ptr %11, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %325, i32 noundef 0) #13
  br label %639

397:                                              ; preds = %392, %386
  %398 = add i32 %390, %251
  %399 = add i32 %257, %390
  %400 = sub i32 %258, %399
  %401 = load i8, ptr %36, align 8
  %402 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 15
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.skb_shared_info, ptr %403, i32 0, i32 3
  store i8 %401, ptr %404, align 1
  store i8 0, ptr %36, align 8
  %405 = load ptr, ptr %402, align 4
  %406 = getelementptr inbounds %struct.skb_shared_info, ptr %405, i32 0, i32 9
  store i32 %254, ptr %406, align 4
  %407 = icmp eq ptr %248, null
  br i1 %407, label %438, label %408

408:                                              ; preds = %397
  %409 = load ptr, ptr %402, align 4
  %410 = load i8, ptr %409, align 8
  %411 = and i8 %410, 1
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %408
  %414 = getelementptr inbounds %struct.skb_shared_info, ptr %409, i32 0, i32 11
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %438

417:                                              ; preds = %413, %408
  %418 = icmp eq i8 %250, 0
  br i1 %418, label %419, label %430, !prof !16

419:                                              ; preds = %417
  %420 = getelementptr inbounds %struct.ubuf_info, ptr %248, i32 0, i32 2
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %420) #13, !srcloc !20
  %421 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %420, ptr %420, i32 1, ptr elementtype(i32) %420) #13, !srcloc !23
  %422 = extractvalue { i32, i32, i32 } %421, 0
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %428, label %424, !prof !11

424:                                              ; preds = %419
  %425 = add i32 %422, 1
  %426 = or i32 %425, %422
  %427 = icmp sgt i32 %426, -1
  br i1 %427, label %430, label %428, !prof !16

428:                                              ; preds = %424, %419
  %429 = phi i32 [ 2, %419 ], [ 1, %424 ]
  call void @refcount_warn_saturate(ptr noundef %420, i32 noundef %429) #13
  br label %430

430:                                              ; preds = %428, %424, %417
  %431 = load ptr, ptr %402, align 4
  %432 = getelementptr inbounds %struct.skb_shared_info, ptr %431, i32 0, i32 11
  store ptr %248, ptr %432, align 4
  %433 = getelementptr inbounds %struct.ubuf_info, ptr %248, i32 0, i32 3
  %434 = load i8, ptr %433, align 4
  %435 = load ptr, ptr %402, align 4
  %436 = load i8, ptr %435, align 8
  %437 = or i8 %436, %434
  store i8 %437, ptr %435, align 8
  br label %438

438:                                              ; preds = %430, %413, %397
  %439 = phi i8 [ 0, %430 ], [ %250, %413 ], [ %250, %397 ]
  %440 = and i32 %9, 2048
  %441 = icmp eq i32 %440, 0
  %442 = select i1 %441, i1 true, i1 %259
  br i1 %442, label %447, label %443

443:                                              ; preds = %438
  %444 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 13, i32 0, i32 3
  %445 = load i16, ptr %444, align 2
  %446 = or i16 %445, 32
  store i16 %446, ptr %444, align 2
  br label %447

447:                                              ; preds = %443, %438
  %448 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 4, i32 0, i32 1
  %449 = load ptr, ptr %448, align 4
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %456

451:                                              ; preds = %447
  store ptr @sock_wfree, ptr %448, align 4
  %452 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 1
  store ptr %0, ptr %452, align 4
  %453 = getelementptr inbounds %struct.sk_buff, ptr %325, i32 0, i32 18
  %454 = load i32, ptr %453, align 8
  %455 = add i32 %454, %253
  br label %456

456:                                              ; preds = %451, %447
  %457 = phi i32 [ %253, %447 ], [ %455, %451 ]
  %458 = load ptr, ptr %16, align 4
  store volatile ptr %2, ptr %325, align 8
  %459 = getelementptr inbounds %struct.anon.76, ptr %325, i32 0, i32 1
  store volatile ptr %458, ptr %459, align 4
  store volatile ptr %325, ptr %16, align 4
  store volatile ptr %325, ptr %458, align 4
  %460 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %461 = load i32, ptr %460, align 4
  %462 = add i32 %461, 1
  store volatile i32 %462, ptr %460, align 4
  br label %212

463:                                              ; preds = %237
  %464 = call i32 @llvm.umin.i32(i32 %245, i32 %238)
  %465 = load ptr, ptr %15, align 4
  %466 = getelementptr inbounds %struct.net_device, ptr %465, i32 0, i32 23
  %467 = load i64, ptr %466, align 16
  %468 = and i64 %467, 1
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %495

470:                                              ; preds = %463
  %471 = load i32, ptr %227, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %479

473:                                              ; preds = %470
  %474 = load ptr, ptr %228, align 4
  %475 = load ptr, ptr %229, align 8
  %476 = ptrtoint ptr %474 to i32
  %477 = ptrtoint ptr %475 to i32
  %478 = sub i32 %476, %477
  br label %479

479:                                              ; preds = %473, %470
  %480 = phi i32 [ %478, %473 ], [ 0, %470 ]
  %481 = icmp slt i32 %480, %464
  br i1 %481, label %495, label %482

482:                                              ; preds = %479
  %483 = call ptr @skb_put(ptr noundef %221, i32 noundef %464) #13
  %484 = call i32 %5(ptr noundef %6, ptr noundef %483, i32 noundef %240, i32 noundef %464, i32 noundef %241, ptr noundef %221) #13
  %485 = icmp slt i32 %484, 0
  br i1 %485, label %486, label %618

486:                                              ; preds = %482
  %487 = load i32, ptr %227, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %490, label %489, !prof !16

489:                                              ; preds = %486
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2789, i32 noundef 9, ptr noundef null) #13
  br label %494

490:                                              ; preds = %486
  store i32 %241, ptr %226, align 8
  %491 = getelementptr inbounds %struct.sk_buff, ptr %221, i32 0, i32 17
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr i8, ptr %492, i32 %241
  store ptr %493, ptr %229, align 8
  br label %494

494:                                              ; preds = %490, %489
  store i32 -14, ptr %11, align 4
  br label %639

495:                                              ; preds = %479, %463
  br i1 %230, label %500, label %496

496:                                              ; preds = %495
  %497 = load i8, ptr %231, align 2
  %498 = and i8 %497, 1
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %500, label %615

500:                                              ; preds = %496, %495
  %501 = load ptr, ptr %228, align 4
  %502 = getelementptr inbounds %struct.skb_shared_info, ptr %501, i32 0, i32 2
  %503 = load i8, ptr %502, align 2
  %504 = zext i8 %503 to i32
  store i32 -12, ptr %11, align 4
  %505 = call zeroext i1 @sk_page_frag_refill(ptr noundef %0, ptr noundef %4) #13
  br i1 %505, label %506, label %639

506:                                              ; preds = %500
  %507 = load ptr, ptr %4, align 4
  %508 = load i16, ptr %232, align 4
  %509 = zext i16 %508 to i32
  br i1 %233, label %519, label %510

510:                                              ; preds = %506
  %511 = load ptr, ptr %228, align 4
  %512 = load i8, ptr %511, align 8
  %513 = and i8 %512, 1
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %519, label %515

515:                                              ; preds = %510
  %516 = getelementptr inbounds %struct.skb_shared_info, ptr %511, i32 0, i32 11
  %517 = load ptr, ptr %516, align 4
  %518 = icmp ne ptr %517, null
  br label %519

519:                                              ; preds = %515, %510, %506
  %520 = phi i1 [ %518, %515 ], [ false, %510 ], [ false, %506 ]
  %521 = icmp eq i8 %503, 0
  %522 = or i1 %521, %520
  br i1 %522, label %536, label %523

523:                                              ; preds = %519
  %524 = load ptr, ptr %228, align 4
  %525 = add nsw i32 %504, -1
  %526 = getelementptr %struct.skb_shared_info, ptr %524, i32 0, i32 12, i32 %525
  %527 = load ptr, ptr %526, align 4
  %528 = icmp eq ptr %527, %507
  br i1 %528, label %529, label %536

529:                                              ; preds = %523
  %530 = getelementptr %struct.skb_shared_info, ptr %524, i32 0, i32 12, i32 %525, i32 2
  %531 = load i32, ptr %530, align 4
  %532 = getelementptr %struct.skb_shared_info, ptr %524, i32 0, i32 12, i32 %525, i32 1
  %533 = load i32, ptr %532, align 4
  %534 = add i32 %533, %531
  %535 = icmp eq i32 %534, %509
  br i1 %535, label %584, label %536

536:                                              ; preds = %529, %523, %519
  store i32 -90, ptr %11, align 4
  %537 = icmp eq i8 %503, 17
  br i1 %537, label %639, label %538

538:                                              ; preds = %536
  %539 = load ptr, ptr %228, align 4
  %540 = getelementptr %struct.skb_shared_info, ptr %539, i32 0, i32 12, i32 %504
  store ptr %507, ptr %540, align 4
  %541 = getelementptr %struct.skb_shared_info, ptr %539, i32 0, i32 12, i32 %504, i32 2
  store i32 %509, ptr %541, align 4
  %542 = getelementptr %struct.skb_shared_info, ptr %539, i32 0, i32 12, i32 %504, i32 1
  store i32 0, ptr %542, align 4
  %543 = getelementptr inbounds %struct.page, ptr %507, i32 0, i32 1
  %544 = load volatile i32, ptr %543, align 4
  %545 = and i32 %544, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %549, label %547, !prof !16

547:                                              ; preds = %538
  %548 = add i32 %544, -1
  br label %551

549:                                              ; preds = %538
  %550 = ptrtoint ptr %507 to i32
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi i32 [ %548, %547 ], [ %550, %549 ]
  %553 = inttoptr i32 %552 to ptr
  %554 = getelementptr inbounds %struct.page, ptr %553, i32 0, i32 1
  %555 = load ptr, ptr %554, align 4
  %556 = ptrtoint ptr %555 to i32
  %557 = and i32 %556, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %562, label %559

559:                                              ; preds = %551
  %560 = load i8, ptr %234, align 2
  %561 = or i8 %560, 64
  store i8 %561, ptr %234, align 2
  br label %562

562:                                              ; preds = %559, %551
  %563 = add nuw nsw i32 %504, 1
  %564 = trunc i32 %563 to i8
  %565 = load ptr, ptr %228, align 4
  %566 = getelementptr inbounds %struct.skb_shared_info, ptr %565, i32 0, i32 2
  store i8 %564, ptr %566, align 2
  %567 = load ptr, ptr %4, align 4
  %568 = getelementptr inbounds %struct.page, ptr %567, i32 0, i32 1
  %569 = load volatile i32, ptr %568, align 4
  %570 = and i32 %569, 1
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572, !prof !16

572:                                              ; preds = %562
  %573 = add i32 %569, -1
  br label %576

574:                                              ; preds = %562
  %575 = ptrtoint ptr %567 to i32
  br label %576

576:                                              ; preds = %574, %572
  %577 = phi i32 [ %573, %572 ], [ %575, %574 ]
  %578 = inttoptr i32 %577 to ptr
  %579 = getelementptr inbounds %struct.page, ptr %578, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %579) #13, !srcloc !20
  %580 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %579, ptr %579, i32 1, ptr elementtype(i32) %579) #13, !srcloc !32
  %581 = load i16, ptr %232, align 4
  %582 = load ptr, ptr %4, align 4
  %583 = zext i16 %581 to i32
  br label %584

584:                                              ; preds = %576, %529
  %585 = phi i32 [ %583, %576 ], [ %509, %529 ]
  %586 = phi ptr [ %582, %576 ], [ %507, %529 ]
  %587 = phi i32 [ %563, %576 ], [ %504, %529 ]
  %588 = load i16, ptr %235, align 2
  %589 = zext i16 %588 to i32
  %590 = sub nsw i32 %589, %585
  %591 = call i32 @llvm.smin.i32(i32 %464, i32 %590)
  %592 = call ptr @page_address(ptr noundef %586) #13
  %593 = load i16, ptr %232, align 4
  %594 = zext i16 %593 to i32
  %595 = getelementptr i8, ptr %592, i32 %594
  %596 = load i32, ptr %226, align 8
  %597 = call i32 %5(ptr noundef %6, ptr noundef %595, i32 noundef %240, i32 noundef %591, i32 noundef %596, ptr noundef %221) #13
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %638, label %599

599:                                              ; preds = %584
  %600 = load i16, ptr %232, align 4
  %601 = trunc i32 %591 to i16
  %602 = add i16 %600, %601
  store i16 %602, ptr %232, align 4
  %603 = load ptr, ptr %228, align 4
  %604 = add nsw i32 %587, -1
  %605 = getelementptr %struct.skb_shared_info, ptr %603, i32 0, i32 12, i32 %604, i32 1
  %606 = load i32, ptr %605, align 4
  %607 = add i32 %606, %591
  store i32 %607, ptr %605, align 4
  %608 = load i32, ptr %226, align 8
  %609 = add i32 %608, %591
  store i32 %609, ptr %226, align 8
  %610 = load i32, ptr %227, align 4
  %611 = add i32 %610, %591
  store i32 %611, ptr %227, align 4
  %612 = load i32, ptr %236, align 8
  %613 = add i32 %612, %591
  store i32 %613, ptr %236, align 8
  %614 = add i32 %591, %239
  br label %618

615:                                              ; preds = %496
  %616 = call i32 @skb_zerocopy_iter_dgram(ptr noundef %221, ptr noundef %6, i32 noundef %464) #13
  store i32 %616, ptr %11, align 4
  %617 = icmp slt i32 %616, 0
  br i1 %617, label %645, label %618

618:                                              ; preds = %615, %599, %482
  %619 = phi i32 [ %239, %615 ], [ %614, %599 ], [ %239, %482 ]
  %620 = phi i32 [ %464, %615 ], [ %591, %599 ], [ %464, %482 ]
  %621 = add i32 %620, %240
  %622 = sub i32 %238, %620
  %623 = icmp sgt i32 %622, 0
  br i1 %623, label %237, label %624

624:                                              ; preds = %618, %212
  %625 = phi i32 [ %218, %212 ], [ %619, %618 ]
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %692, label %627

627:                                              ; preds = %624
  %628 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %628) #13, !srcloc !20
  %629 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %628, ptr %628, i32 %625, ptr elementtype(i32) %628) #13, !srcloc !23
  %630 = extractvalue { i32, i32, i32 } %629, 0
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %636, label %632, !prof !11

632:                                              ; preds = %627
  %633 = add i32 %630, %625
  %634 = or i32 %633, %630
  %635 = icmp sgt i32 %634, -1
  br i1 %635, label %692, label %636, !prof !16

636:                                              ; preds = %632, %627
  %637 = phi i32 [ 2, %627 ], [ 1, %632 ]
  call void @refcount_warn_saturate(ptr noundef %628, i32 noundef %637) #13
  br label %692

638:                                              ; preds = %584
  store i32 -14, ptr %11, align 4
  br label %639

639:                                              ; preds = %638, %536, %500, %494, %396, %320, %319
  %640 = phi ptr [ %248, %320 ], [ %248, %396 ], [ %213, %638 ], [ %213, %494 ], [ %248, %319 ], [ %213, %500 ], [ %213, %536 ]
  %641 = phi i8 [ %250, %320 ], [ %250, %396 ], [ %215, %638 ], [ %215, %494 ], [ %250, %319 ], [ %215, %500 ], [ %215, %536 ]
  %642 = phi i32 [ %253, %320 ], [ %253, %396 ], [ %239, %638 ], [ %239, %494 ], [ %253, %319 ], [ %239, %500 ], [ %239, %536 ]
  %643 = phi i32 [ %258, %320 ], [ %258, %396 ], [ %238, %638 ], [ %238, %494 ], [ %258, %319 ], [ %238, %500 ], [ %238, %536 ]
  %644 = icmp eq ptr %640, null
  br i1 %644, label %656, label %645

645:                                              ; preds = %639, %615
  %646 = phi ptr [ %640, %639 ], [ %213, %615 ]
  %647 = phi i8 [ %641, %639 ], [ %215, %615 ]
  %648 = phi i32 [ %643, %639 ], [ %238, %615 ]
  %649 = phi i32 [ %642, %639 ], [ %239, %615 ]
  %650 = icmp ne i8 %647, 0
  %651 = load ptr, ptr %646, align 4
  %652 = icmp eq ptr %651, @msg_zerocopy_callback
  br i1 %652, label %653, label %654

653:                                              ; preds = %645
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %646, i1 noundef zeroext %650) #13
  br label %656

654:                                              ; preds = %645
  br i1 %650, label %655, label %656

655:                                              ; preds = %654
  call void %651(ptr noundef null, ptr noundef nonnull %646, i1 noundef zeroext true) #13
  br label %656

656:                                              ; preds = %655, %654, %653, %639
  %657 = phi i32 [ %643, %639 ], [ %648, %653 ], [ %648, %654 ], [ %648, %655 ]
  %658 = phi i32 [ %642, %639 ], [ %649, %653 ], [ %649, %654 ], [ %649, %655 ]
  %659 = load i32, ptr %79, align 8
  %660 = sub i32 %659, %657
  store i32 %660, ptr %79, align 8
  %661 = tail call ptr @llvm.thread.pointer() #13
  %662 = getelementptr inbounds %struct.thread_info, ptr %661, i32 0, i32 1
  %663 = load volatile i32, ptr %662, align 4
  %664 = add i32 %663, 512
  store volatile i32 %664, ptr %662, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %665 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %666 = ptrtoint ptr %665 to i32
  %667 = call i32 @llvm.read_register.i32(metadata !0) #13
  %668 = inttoptr i32 %667 to ptr
  %669 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %668) #10, !srcloc !13
  %670 = add i32 %669, %666
  %671 = inttoptr i32 %670 to ptr
  %672 = getelementptr inbounds %struct.ipstats_mib, ptr %671, i32 0, i32 1
  %673 = load i32, ptr %672, align 4
  %674 = add i32 %673, 1
  store i32 %674, ptr %672, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %675 = getelementptr [37 x i64], ptr %671, i32 0, i32 14
  %676 = load i64, ptr %675, align 8
  %677 = add i64 %676, 1
  store i64 %677, ptr %675, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %678 = load i32, ptr %672, align 4
  %679 = add i32 %678, 1
  store i32 %679, ptr %672, align 4
  call fastcc void @local_bh_enable()
  %680 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %680) #13, !srcloc !20
  %681 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %680, ptr %680, i32 %658, ptr elementtype(i32) %680) #13, !srcloc !23
  %682 = extractvalue { i32, i32, i32 } %681, 0
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %688, label %684, !prof !11

684:                                              ; preds = %656
  %685 = add i32 %682, %658
  %686 = or i32 %685, %682
  %687 = icmp sgt i32 %686, -1
  br i1 %687, label %690, label %688, !prof !16

688:                                              ; preds = %684, %656
  %689 = phi i32 [ 2, %656 ], [ 1, %684 ]
  call void @refcount_warn_saturate(ptr noundef %680, i32 noundef %689) #13
  br label %690

690:                                              ; preds = %688, %684
  %691 = load i32, ptr %11, align 4
  br label %692

692:                                              ; preds = %690, %636, %632, %624, %145, %141, %93
  %693 = phi i32 [ -90, %93 ], [ %691, %690 ], [ -105, %141 ], [ 0, %624 ], [ -105, %145 ], [ 0, %632 ], [ 0, %636 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  ret i32 %693
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_append_page(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 12
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 8
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %268

11:                                               ; preds = %6
  %12 = and i32 %5, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %268

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %268, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %20 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %19, align 8
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi ptr [ %27, %25 ], [ null, %18 ]
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 23
  %32 = load i64, ptr %31, align 16
  %33 = and i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %268, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 19
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 21
  %40 = load i16, ptr %39, align 8
  %41 = zext i16 %40 to i32
  %42 = add nuw nsw i32 %41, %38
  %43 = and i32 %42, 131056
  %44 = add nuw nsw i32 %43, 16
  %45 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 10
  %46 = load i16, ptr %45, align 2
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %35
  %52 = phi i32 [ %50, %48 ], [ 65535, %35 ]
  %53 = icmp eq ptr %29, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ip_options, ptr %29, i32 0, i32 2
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %57, 20
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i32 [ %58, %54 ], [ 20, %51 ]
  %61 = sub i32 %52, %60
  %62 = and i32 %61, -8
  %63 = add i32 %62, %60
  %64 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %65 = load i8, ptr %64, align 1
  %66 = icmp ult i8 %65, 2
  %67 = icmp eq i8 %65, 5
  %68 = or i1 %66, %67
  %69 = select i1 %68, i32 65535, i32 %52
  %70 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 4
  %71 = load i32, ptr %70, align 8
  %72 = add i32 %71, %4
  %73 = sub i32 %69, %60
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %59
  %76 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 2
  %79 = load i16, ptr %78, align 4
  br i1 %53, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.ip_options, ptr %29, i32 0, i32 2
  %82 = load i8, ptr %81, align 4
  %83 = zext i8 %82 to i32
  br label %84

84:                                               ; preds = %80, %75
  %85 = phi i32 [ %83, %80 ], [ 0, %75 ]
  %86 = sub i32 %52, %85
  tail call void @ip_local_error(ptr noundef %0, i32 noundef 90, i32 noundef %77, i16 noundef zeroext %79, i32 noundef %86) #13
  br label %268

87:                                               ; preds = %59
  %88 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %89 = load volatile ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %15
  %91 = icmp eq ptr %89, null
  %92 = or i1 %90, %91
  br i1 %92, label %268, label %93

93:                                               ; preds = %87
  store i32 %72, ptr %70, align 8
  %94 = icmp eq i32 %4, 0
  br i1 %94, label %268, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 23
  %97 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %98 = trunc i32 %60 to i16
  %99 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  br label %100

100:                                              ; preds = %173, %95
  %101 = phi i32 [ %3, %95 ], [ %110, %173 ]
  %102 = phi i32 [ %4, %95 ], [ %111, %173 ]
  %103 = phi ptr [ %89, %95 ], [ %124, %173 ]
  %104 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 13
  %106 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 13, i32 0, i32 4
  %107 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 6
  %108 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 18
  br label %109

109:                                              ; preds = %241, %100
  %110 = phi i32 [ %101, %100 ], [ %242, %241 ]
  %111 = phi i32 [ %102, %100 ], [ %243, %241 ]
  %112 = load i32, ptr %104, align 8
  %113 = sub i32 %52, %112
  %114 = icmp ult i32 %113, %111
  %115 = sub i32 %63, %112
  %116 = select i1 %114, i32 %115, i32 %113
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %178

118:                                              ; preds = %109
  %119 = sub i32 %112, %63
  %120 = add i32 %119, %60
  %121 = add i32 %120, 15
  %122 = add i32 %121, %44
  %123 = load i32, ptr %97, align 8
  %124 = tail call ptr @sock_wmalloc(ptr noundef %0, i32 noundef %122, i32 noundef 1, i32 noundef %123) #13
  %125 = icmp eq ptr %124, null
  br i1 %125, label %245, label %126, !prof !11

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 13
  %128 = load i16, ptr %127, align 8
  %129 = and i16 %128, -97
  store i16 %129, ptr %127, align 8
  %130 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 13, i32 0, i32 4
  store i32 0, ptr %130, align 4
  %131 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 17
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 %44
  store ptr %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 14
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr i8, ptr %135, i32 %44
  store ptr %136, ptr %134, align 8
  %137 = tail call ptr @skb_put(ptr noundef nonnull %124, i32 noundef %120) #13
  %138 = load ptr, ptr %131, align 4
  %139 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 16
  %140 = load ptr, ptr %139, align 8
  %141 = ptrtoint ptr %138 to i32
  %142 = ptrtoint ptr %140 to i32
  %143 = sub i32 %141, %142
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 13, i32 0, i32 18
  store i16 %144, ptr %145, align 4
  %146 = add i16 %144, %98
  %147 = getelementptr inbounds %struct.sk_buff, ptr %124, i32 0, i32 13, i32 0, i32 17
  store i16 %146, ptr %147, align 2
  %148 = icmp eq i32 %112, %63
  br i1 %148, label %173, label %149

149:                                              ; preds = %126
  %150 = zext i16 %146 to i32
  %151 = getelementptr i8, ptr %140, i32 %150
  %152 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %103, i32 noundef %63, ptr noundef %151, i32 noundef %119) #13
  store i32 %152, ptr %130, align 4
  %153 = load i32, ptr %106, align 4
  %154 = xor i32 %152, -1
  %155 = add i32 %153, %154
  %156 = icmp ult i32 %155, %154
  %157 = zext i1 %156 to i32
  %158 = add i32 %155, %157
  store i32 %158, ptr %106, align 4
  %159 = load i32, ptr %104, align 8
  %160 = icmp ugt i32 %159, %63
  br i1 %160, label %161, label %173

161:                                              ; preds = %149
  %162 = load i32, ptr %107, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  store i32 %63, ptr %104, align 8
  %165 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 17
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 %63
  %168 = getelementptr inbounds %struct.sk_buff, ptr %103, i32 0, i32 14
  store ptr %167, ptr %168, align 8
  br label %173

169:                                              ; preds = %161
  %170 = tail call i32 @___pskb_trim(ptr noundef %103, i32 noundef %63) #13
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172, !prof !16

172:                                              ; preds = %169
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

173:                                              ; preds = %169, %164, %149, %126
  %174 = load ptr, ptr %88, align 4
  store volatile ptr %15, ptr %124, align 8
  %175 = getelementptr inbounds %struct.anon.76, ptr %124, i32 0, i32 1
  store volatile ptr %174, ptr %175, align 4
  store volatile ptr %124, ptr %88, align 4
  store volatile ptr %124, ptr %174, align 4
  %176 = load i32, ptr %99, align 4
  %177 = add i32 %176, 1
  store volatile i32 %177, ptr %99, align 4
  br label %100

178:                                              ; preds = %109
  %179 = tail call i32 @llvm.umin.i32(i32 %116, i32 %111)
  %180 = tail call i32 @skb_append_pagefrags(ptr noundef %103, ptr noundef %2, i32 noundef %110, i32 noundef %179) #13
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %245

182:                                              ; preds = %178
  %183 = load i16, ptr %105, align 8
  %184 = and i16 %183, 96
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %182
  %187 = load i32, ptr %104, align 8
  br label %225

188:                                              ; preds = %182
  %189 = load i32, ptr %2, align 4
  %190 = lshr i32 %189, 30
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %199, label %192

192:                                              ; preds = %188
  %193 = icmp ne i32 %190, 3
  %194 = load i32, ptr @movable_zone, align 4
  %195 = icmp ne i32 %194, 2
  %196 = select i1 %193, i1 true, i1 %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = tail call ptr @page_address(ptr noundef %2) #13
  br label %201

199:                                              ; preds = %192, %188
  %200 = tail call ptr @kmap_high(ptr noundef %2) #13
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi ptr [ %200, %199 ], [ %198, %197 ]
  %203 = getelementptr i8, ptr %202, i32 %110
  %204 = tail call i32 @csum_partial(ptr noundef %203, i32 noundef %179, i32 noundef 0) #13
  %205 = load i32, ptr %2, align 4
  %206 = lshr i32 %205, 30
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %213, label %208

208:                                              ; preds = %201
  %209 = icmp ne i32 %206, 3
  %210 = load i32, ptr @movable_zone, align 4
  %211 = icmp ne i32 %210, 2
  %212 = select i1 %209, i1 true, i1 %211
  br i1 %212, label %214, label %213

213:                                              ; preds = %208, %201
  tail call void @kunmap_high(ptr noundef %2) #13
  br label %214

214:                                              ; preds = %213, %208
  %215 = load i32, ptr %106, align 4
  %216 = load i32, ptr %104, align 8
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  %219 = tail call i32 @llvm.fshl.i32(i32 %204, i32 %204, i32 24) #13
  %220 = select i1 %218, i32 %204, i32 %219
  %221 = add i32 %220, %215
  %222 = icmp ult i32 %221, %220
  %223 = zext i1 %222 to i32
  %224 = add i32 %221, %223
  store i32 %224, ptr %106, align 4
  br label %225

225:                                              ; preds = %214, %186
  %226 = phi i32 [ %187, %186 ], [ %216, %214 ]
  %227 = add i32 %226, %179
  store i32 %227, ptr %104, align 8
  %228 = load i32, ptr %107, align 4
  %229 = add i32 %228, %179
  store i32 %229, ptr %107, align 4
  %230 = load i32, ptr %108, align 8
  %231 = add i32 %230, %179
  store i32 %231, ptr %108, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #13, !srcloc !20
  %232 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 %179, ptr elementtype(i32) %96) #13, !srcloc !23
  %233 = extractvalue { i32, i32, i32 } %232, 0
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235, !prof !11

235:                                              ; preds = %225
  %236 = add i32 %233, %179
  %237 = or i32 %236, %233
  %238 = icmp sgt i32 %237, -1
  br i1 %238, label %241, label %239, !prof !16

239:                                              ; preds = %235, %225
  %240 = phi i32 [ 2, %225 ], [ 1, %235 ]
  tail call void @refcount_warn_saturate(ptr noundef %96, i32 noundef %240) #13
  br label %241

241:                                              ; preds = %239, %235
  %242 = add i32 %179, %110
  %243 = sub i32 %111, %179
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %268, label %109

245:                                              ; preds = %178, %118
  %246 = phi i32 [ -90, %178 ], [ -105, %118 ]
  %247 = load i32, ptr %70, align 8
  %248 = sub i32 %247, %111
  store i32 %248, ptr %70, align 8
  %249 = tail call ptr @llvm.thread.pointer() #13
  %250 = getelementptr inbounds %struct.thread_info, ptr %249, i32 0, i32 1
  %251 = load volatile i32, ptr %250, align 4
  %252 = add i32 %251, 512
  store volatile i32 %252, ptr %250, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %253 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %254 = ptrtoint ptr %253 to i32
  %255 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %256 = inttoptr i32 %255 to ptr
  %257 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %256) #10, !srcloc !13
  %258 = add i32 %257, %254
  %259 = inttoptr i32 %258 to ptr
  %260 = getelementptr inbounds %struct.ipstats_mib, ptr %259, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = add i32 %261, 1
  store i32 %262, ptr %260, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %263 = getelementptr [37 x i64], ptr %259, i32 0, i32 14
  %264 = load i64, ptr %263, align 8
  %265 = add i64 %264, 1
  store i64 %265, ptr %263, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %266 = load i32, ptr %260, align 4
  %267 = add i32 %266, 1
  store i32 %267, ptr %260, align 4
  tail call fastcc void @local_bh_enable()
  br label %268

268:                                              ; preds = %245, %241, %93, %87, %84, %28, %14, %11, %6
  %269 = phi i32 [ -90, %84 ], [ %246, %245 ], [ -1, %6 ], [ 0, %11 ], [ -22, %14 ], [ -95, %28 ], [ -22, %87 ], [ 0, %93 ], [ 0, %241 ]
  ret i32 %269
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_local_error(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_append_pagefrags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__ip_make_skb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, %2
  %9 = select i1 %8, ptr null, ptr %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %290, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store volatile i32 %14, ptr %12, align 4
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds %struct.anon.76, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr null, ptr %16, align 4
  store ptr null, ptr %9, align 8
  %18 = getelementptr inbounds %struct.anon.76, ptr %15, i32 0, i32 1
  store volatile ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 16
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %25, i32 %28
  %30 = icmp ult ptr %23, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %11
  %32 = ptrtoint ptr %29 to i32
  %33 = ptrtoint ptr %23 to i32
  %34 = sub i32 %32, %33
  %35 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 %36, %34
  store i32 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !33
  unreachable

42:                                               ; preds = %31
  %43 = getelementptr i8, ptr %23, i32 %34
  store ptr %43, ptr %22, align 4
  br label %44

44:                                               ; preds = %42, %11
  %45 = load ptr, ptr %2, align 4
  %46 = icmp eq ptr %45, %2
  %47 = icmp eq ptr %45, null
  %48 = or i1 %46, %47
  br i1 %48, label %95, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 17
  %51 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %52 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %53 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 18
  br label %54

54:                                               ; preds = %75, %49
  %55 = phi ptr [ %45, %49 ], [ %91, %75 ]
  %56 = phi ptr [ %21, %49 ], [ %55, %75 ]
  %57 = load i32, ptr %12, align 4
  %58 = add i32 %57, -1
  store volatile i32 %58, ptr %12, align 4
  %59 = load ptr, ptr %55, align 8
  %60 = getelementptr inbounds %struct.anon.76, ptr %55, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  store ptr null, ptr %60, align 4
  store ptr null, ptr %55, align 8
  %62 = getelementptr inbounds %struct.anon.76, ptr %59, i32 0, i32 1
  store volatile ptr %61, ptr %62, align 4
  store volatile ptr %59, ptr %61, align 8
  %63 = load i16, ptr %50, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, ptr %26, align 4
  %66 = zext i16 %65 to i32
  %67 = sub nsw i32 %64, %66
  %68 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = sub i32 %69, %67
  store i32 %70, ptr %68, align 8
  %71 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %75, !prof !11

74:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #13, !srcloc !33
  unreachable

75:                                               ; preds = %54
  %76 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %67
  store ptr %78, ptr %76, align 4
  store ptr %55, ptr %56, align 4
  %79 = load i32, ptr %68, align 8
  %80 = load i32, ptr %51, align 8
  %81 = add i32 %80, %79
  store i32 %81, ptr %51, align 8
  %82 = load i32, ptr %68, align 8
  %83 = load i32, ptr %52, align 4
  %84 = add i32 %83, %82
  store i32 %84, ptr %52, align 4
  %85 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 18
  %86 = load i32, ptr %85, align 8
  %87 = load i32, ptr %53, align 8
  %88 = add i32 %87, %86
  store i32 %88, ptr %53, align 8
  %89 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 4, i32 0, i32 1
  store ptr null, ptr %89, align 4
  %90 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 1
  store ptr null, ptr %90, align 4
  %91 = load ptr, ptr %2, align 4
  %92 = icmp eq ptr %91, %2
  %93 = icmp eq ptr %91, null
  %94 = or i1 %92, %93
  br i1 %94, label %95, label %54

95:                                               ; preds = %75, %44
  %96 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 11
  %97 = load i8, ptr %96, align 1
  %98 = icmp ult i8 %97, 2
  %99 = icmp eq i8 %97, 5
  %100 = or i1 %98, %99
  %101 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13
  %102 = load i16, ptr %101, align 8
  %103 = select i1 %100, i16 8, i16 0
  %104 = and i16 %102, -9
  %105 = or i16 %103, %104
  store i16 %105, ptr %101, align 8
  %106 = load i8, ptr %96, align 1
  %107 = and i8 %106, -2
  %108 = icmp eq i8 %107, 2
  br i1 %108, label %133, label %109

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 5
  %111 = load i32, ptr %110, align 8
  %112 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dst_ops, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 %115(ptr noundef %6) #13
  %117 = icmp ugt i32 %111, %116
  br i1 %117, label %134, label %118

118:                                              ; preds = %109
  %119 = load volatile i8, ptr %96, align 1
  switch i8 %119, label %134 [
    i8 2, label %133
    i8 1, label %120
  ]

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 9
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, -4
  %129 = inttoptr i32 %128 to ptr
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125, %118, %95
  br label %134

134:                                              ; preds = %133, %125, %120, %118, %109
  %135 = phi i16 [ 64, %133 ], [ 0, %125 ], [ 0, %109 ], [ 0, %120 ], [ 0, %118 ]
  %136 = load i32, ptr %3, align 8
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 2
  %141 = load ptr, ptr %140, align 8
  br label %142

142:                                              ; preds = %139, %134
  %143 = phi ptr [ %141, %139 ], [ null, %134 ]
  %144 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 7
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 3
  %149 = load i16, ptr %148, align 4
  %150 = icmp eq i16 %149, 5
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 10
  %153 = load i8, ptr %152, align 2
  br label %173

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 3
  %156 = load i16, ptr %155, align 8
  %157 = zext i16 %156 to i32
  %158 = icmp slt i16 %156, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, -4
  %163 = inttoptr i32 %162 to ptr
  %164 = getelementptr i32, ptr %163, i32 9
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 0
  %167 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 31), align 2
  %168 = zext i8 %167 to i32
  %169 = select i1 %166, i32 %168, i32 %165
  br label %170

170:                                              ; preds = %159, %154
  %171 = phi i32 [ %169, %159 ], [ %157, %154 ]
  %172 = trunc i32 %171 to i8
  br label %173

173:                                              ; preds = %170, %151, %142
  %174 = phi i8 [ %153, %151 ], [ %172, %170 ], [ %145, %142 ]
  %175 = load ptr, ptr %24, align 8
  %176 = load i16, ptr %26, align 4
  %177 = zext i16 %176 to i32
  %178 = getelementptr i8, ptr %175, i32 %177
  store i8 69, ptr %178, align 4
  %179 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 8
  %180 = load i16, ptr %179, align 2
  %181 = icmp eq i16 %180, -1
  br i1 %181, label %184, label %182

182:                                              ; preds = %173
  %183 = trunc i16 %180 to i8
  br label %187

184:                                              ; preds = %173
  %185 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  %186 = load i8, ptr %185, align 4
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi i8 [ %183, %182 ], [ %186, %184 ]
  %189 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 1
  store i8 %188, ptr %189, align 1
  %190 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 4
  store i16 %135, ptr %190, align 2
  %191 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 5
  store i8 %174, ptr %191, align 4
  %192 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  %193 = load i16, ptr %192, align 4
  %194 = trunc i16 %193 to i8
  %195 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 6
  store i8 %194, ptr %195, align 1
  %196 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %197 = load i32, ptr %196, align 8
  %198 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 8
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr inbounds %struct.iphdr, ptr %178, i32 0, i32 9
  store i32 %200, ptr %201, align 4
  %202 = load ptr, ptr %24, align 8
  %203 = load i16, ptr %26, align 4
  %204 = zext i16 %203 to i32
  %205 = getelementptr i8, ptr %202, i32 %204
  %206 = icmp eq ptr %0, null
  br i1 %206, label %217, label %207

207:                                              ; preds = %187
  %208 = load i32, ptr %0, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 7
  %212 = load i16, ptr %211, align 2
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #13
  %214 = getelementptr inbounds %struct.iphdr, ptr %205, i32 0, i32 3
  store i16 %213, ptr %214, align 4
  %215 = load i16, ptr %211, align 2
  %216 = add i16 %215, 1
  store i16 %216, ptr %211, align 2
  br label %229

217:                                              ; preds = %207, %187
  %218 = getelementptr inbounds %struct.iphdr, ptr %205, i32 0, i32 4
  %219 = load i16, ptr %218, align 2
  %220 = and i16 %219, 64
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %217
  %223 = load i16, ptr %101, align 8
  %224 = and i16 %223, 8
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.iphdr, ptr %205, i32 0, i32 3
  store i16 0, ptr %227, align 4
  br label %229

228:                                              ; preds = %222, %217
  tail call void @__ip_select_ident(ptr noundef nonnull @init_net, ptr noundef %205, i32 noundef 1) #13
  br label %229

229:                                              ; preds = %228, %226, %210
  %230 = icmp eq ptr %143, null
  br i1 %230, label %242, label %231

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.ip_options, ptr %143, i32 0, i32 2
  %233 = load i8, ptr %232, align 4
  %234 = lshr i8 %233, 2
  %235 = load i8, ptr %178, align 4
  %236 = add i8 %235, %234
  %237 = and i8 %236, 15
  %238 = and i8 %235, -16
  %239 = or i8 %237, %238
  store i8 %239, ptr %178, align 4
  %240 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 1
  %241 = load i32, ptr %240, align 4
  tail call void @ip_options_build(ptr noundef %9, ptr noundef nonnull %143, i32 noundef %241, ptr noundef %6, i32 noundef 0) #13
  br label %242

242:                                              ; preds = %231, %229
  %243 = load i16, ptr %179, align 2
  %244 = icmp eq i16 %243, -1
  br i1 %244, label %249, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 9
  %247 = load i8, ptr %246, align 4
  %248 = zext i8 %247 to i32
  br label %252

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 33
  %251 = load i32, ptr %250, align 4
  br label %252

252:                                              ; preds = %249, %245
  %253 = phi i32 [ %248, %245 ], [ %251, %249 ]
  %254 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 5
  store i32 %253, ptr %254, align 8
  %255 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 12
  %256 = load i32, ptr %255, align 8
  %257 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 11
  store i32 %256, ptr %257, align 4
  %258 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 11
  %259 = load i64, ptr %258, align 8
  %260 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 2
  store i64 %259, ptr %260, align 8
  store ptr null, ptr %5, align 4
  %261 = icmp ne ptr %6, null
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 3
  %264 = load i16, ptr %263, align 2
  %265 = lshr i16 %264, 14
  %266 = trunc i16 %265 to i8
  %267 = and i8 %266, 1
  %268 = or i8 %267, %262
  %269 = zext i8 %268 to i16
  %270 = shl nuw nsw i16 %269, 14
  %271 = and i16 %264, -16385
  %272 = or i16 %270, %271
  store i16 %272, ptr %263, align 2
  %273 = ptrtoint ptr %6 to i32
  %274 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 4
  store i32 %273, ptr %274, align 8
  %275 = load i8, ptr %195, align 1
  %276 = icmp eq i8 %275, 1
  br i1 %276, label %277, label %284

277:                                              ; preds = %252
  %278 = load ptr, ptr %24, align 8
  %279 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 13, i32 0, i32 17
  %280 = load i16, ptr %279, align 2
  %281 = zext i16 %280 to i32
  %282 = getelementptr i8, ptr %278, i32 %281
  %283 = load i8, ptr %282, align 4
  tail call void @icmp_out_count(ptr noundef nonnull @init_net, i8 noundef zeroext %283) #13
  br label %284

284:                                              ; preds = %277, %252
  %285 = load i32, ptr %3, align 8
  %286 = and i32 %285, -2
  store i32 %286, ptr %3, align 8
  %287 = getelementptr inbounds %struct.inet_cork, ptr %3, i32 0, i32 2
  %288 = load ptr, ptr %287, align 8
  tail call void @kfree(ptr noundef %288) #13
  store ptr null, ptr %287, align 8
  %289 = load ptr, ptr %5, align 4
  tail call void @dst_release(ptr noundef %289) #13
  store ptr null, ptr %5, align 4
  br label %290

290:                                              ; preds = %284, %4
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_out_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_send_skb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = trunc i32 %12 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #13
  %15 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 2
  store i16 %14, ptr %15, align 2
  %16 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 7
  store i16 0, ptr %16, align 2
  %17 = load i8, ptr %10, align 4
  %18 = and i8 %17, 15
  %19 = zext i8 %18 to i32
  %20 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %10, i32 %19) #13, !srcloc !9
  %21 = extractvalue { i32, ptr, i32, i32 } %20, 0
  %22 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %21) #14, !srcloc !10
  %23 = xor i32 %22, -1
  %24 = lshr i32 %23, 16
  %25 = trunc i32 %24 to i16
  store i16 %25, ptr %16, align 2
  %26 = icmp eq ptr %1, null
  br i1 %26, label %59, label %27, !prof !11

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, -2
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.dst_entry, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1) #13
  switch i32 %35, label %36 [
    i32 0, label %59
    i32 2, label %59
  ]

36:                                               ; preds = %27
  %37 = icmp sgt i32 %35, 0
  %38 = select i1 %37, i32 -105, i32 %35
  %39 = tail call ptr @llvm.thread.pointer() #13
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = add i32 %41, 512
  store volatile i32 %42, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %43 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %44 = load ptr, ptr %43, align 8
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #10, !srcloc !13
  %49 = add i32 %48, %45
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.ipstats_mib, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %54 = getelementptr [37 x i64], ptr %50, i32 0, i32 14
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, ptr %54, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %57 = load i32, ptr %51, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %51, align 4
  tail call fastcc void @local_bh_enable()
  br label %59

59:                                               ; preds = %36, %27, %27, %2
  %60 = phi i32 [ %38, %36 ], [ 0, %27 ], [ 0, %2 ], [ 0, %27 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_push_pending_frames(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %4 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %5 = tail call ptr @__ip_make_skb(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @ip_send_skb(ptr noundef nonnull @init_net, ptr noundef nonnull %5)
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_flush_pending_frames(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %3 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %2
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %4, %8 ], [ %18, %10 ]
  %12 = load i32, ptr %9, align 4
  %13 = add i32 %12, -1
  store volatile i32 %13, ptr %9, align 4
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.anon.76, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  store ptr null, ptr %15, align 4
  store ptr null, ptr %11, align 8
  %17 = getelementptr inbounds %struct.anon.76, ptr %14, i32 0, i32 1
  store volatile ptr %16, ptr %17, align 4
  store volatile ptr %14, ptr %16, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %11, i32 noundef 0) #13
  %18 = load volatile ptr, ptr %3, align 4
  %19 = icmp eq ptr %18, %2
  %20 = icmp eq ptr %18, null
  %21 = or i1 %19, %20
  br i1 %21, label %22, label %10

22:                                               ; preds = %10, %1
  %23 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, -2
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  tail call void @kfree(ptr noundef %27) #13
  store ptr null, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void @dst_release(ptr noundef %29) #13
  store ptr null, ptr %28, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_make_skb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr nocapture noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca %struct.sk_buff_head, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #13
  %12 = getelementptr inbounds i8, ptr %11, i32 12
  store i32 0, ptr %12, align 4, !annotation !26
  %13 = and i32 %9, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  store ptr %11, ptr %11, align 4
  %16 = getelementptr inbounds %struct.anon.83, ptr %11, i32 0, i32 1
  store ptr %11, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sk_buff_head, ptr %11, i32 0, i32 1
  store i32 0, ptr %17, align 4
  store i32 0, ptr %8, align 8
  %18 = getelementptr inbounds %struct.inet_cork, ptr %8, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inet_cork, ptr %8, i32 0, i32 2
  store ptr null, ptr %19, align 8
  %20 = call fastcc i32 @ip_setup_cork(ptr noundef %0, ptr noundef %8, ptr noundef %6, ptr noundef %7)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = inttoptr i32 %20 to ptr
  br label %55

24:                                               ; preds = %15
  %25 = tail call ptr @llvm.thread.pointer() #13
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 139
  %27 = call fastcc i32 @__ip_append_data(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %8, ptr noundef %26, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %9)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = load volatile ptr, ptr %16, align 4
  %31 = icmp eq ptr %30, %11
  %32 = icmp eq ptr %30, null
  %33 = or i1 %31, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %42, %34 ], [ %30, %29 ]
  %36 = load i32, ptr %17, align 4
  %37 = add i32 %36, -1
  store volatile i32 %37, ptr %17, align 4
  %38 = load ptr, ptr %35, align 8
  %39 = getelementptr inbounds %struct.anon.76, ptr %35, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr null, ptr %39, align 4
  store ptr null, ptr %35, align 8
  %41 = getelementptr inbounds %struct.anon.76, ptr %38, i32 0, i32 1
  store volatile ptr %40, ptr %41, align 4
  store volatile ptr %38, ptr %40, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %35, i32 noundef 0) #13
  %42 = load volatile ptr, ptr %16, align 4
  %43 = icmp eq ptr %42, %11
  %44 = icmp eq ptr %42, null
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %34

46:                                               ; preds = %34, %29
  %47 = load i32, ptr %8, align 8
  %48 = and i32 %47, -2
  store i32 %48, ptr %8, align 8
  %49 = load ptr, ptr %19, align 8
  call void @kfree(ptr noundef %49) #13
  store ptr null, ptr %19, align 8
  %50 = getelementptr inbounds %struct.inet_cork, ptr %8, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  call void @dst_release(ptr noundef %51) #13
  store ptr null, ptr %50, align 4
  %52 = inttoptr i32 %27 to ptr
  br label %55

53:                                               ; preds = %24
  %54 = call ptr @__ip_make_skb(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef %8)
  br label %55

55:                                               ; preds = %53, %46, %22, %10
  %56 = phi ptr [ %23, %22 ], [ %52, %46 ], [ %54, %53 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #13
  ret ptr %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_send_unicast_reply(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.ip_options_data, align 4
  %10 = alloca %struct.ipcm_cookie, align 8
  %11 = alloca %struct.flowi4, align 8
  %12 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #13
  %13 = getelementptr inbounds i8, ptr %11, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %13, i8 0, i32 24, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  %14 = getelementptr inbounds %struct.ip_options_rcu, ptr %9, i32 0, i32 1
  %15 = call i32 @__ip_options_echo(ptr noundef nonnull @init_net, ptr noundef %14, ptr noundef %1, ptr noundef %2) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %168

17:                                               ; preds = %8
  %18 = getelementptr inbounds i8, ptr %10, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(30) %18, i8 0, i32 22, i1 false) #13
  %19 = getelementptr inbounds i8, ptr %10, i32 30
  store i16 -1, ptr %19, align 2
  %20 = getelementptr inbounds i8, ptr %10, i32 32
  store i64 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ipcm_cookie, ptr %10, i32 0, i32 1
  store i32 %3, ptr %21, align 8
  store i64 %7, ptr %10, align 8
  %22 = getelementptr inbounds %struct.ip_options_rcu, ptr %9, i32 0, i32 1, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ipcm_cookie, ptr %10, i32 0, i32 3
  store ptr %9, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ip_options_rcu, ptr %9, i32 0, i32 1, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = load i32, ptr %14, align 4
  %31 = select i1 %29, i32 %3, i32 %30
  br label %32

32:                                               ; preds = %25, %17
  %33 = phi i32 [ %3, %17 ], [ %31, %25 ]
  %34 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 42), align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 34
  %44 = load i32, ptr %43, align 8
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ %40, %38 ]
  %47 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 30
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %53 = load i16, ptr %52, align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %51, i32 %54
  %56 = getelementptr inbounds %struct.iphdr, ptr %55, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %63 = load i16, ptr %62, align 2
  %64 = zext i16 %63 to i32
  %65 = getelementptr i8, ptr %51, i32 %64
  %66 = load i16, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tcphdr, ptr %65, i32 0, i32 1
  %68 = load i16, ptr %67, align 2
  %69 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  store i32 %35, ptr %11, align 8
  %71 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 1
  store i32 1, ptr %71, align 4
  %72 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 2
  store i32 %46, ptr %72, align 8
  %73 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 3
  store i8 %49, ptr %73, align 4
  %74 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 4
  store i8 0, ptr %74, align 1
  %75 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 5
  store i8 %57, ptr %75, align 2
  %76 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 6
  store i8 %61, ptr %76, align 1
  %77 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 7
  store i32 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 9
  store i64 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 8
  store i32 %70, ptr %79, align 4
  %80 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 2
  store i32 %33, ptr %80, align 4
  %81 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 1
  store i32 %4, ptr %81, align 8
  %82 = getelementptr inbounds %struct.flowi4, ptr %11, i32 0, i32 3
  store i16 %66, ptr %82, align 8
  %83 = getelementptr inbounds %struct.anon.133, ptr %82, i32 0, i32 1
  store i16 %68, ptr %83, align 2
  %84 = getelementptr inbounds %struct.flowi_common, ptr %11, i32 0, i32 10
  store i32 0, ptr %84, align 8
  %85 = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %11, ptr noundef null) #13
  store ptr %85, ptr %12, align 4
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %168, label %87

87:                                               ; preds = %45
  %88 = load i8, ptr %47, align 4
  %89 = and i8 %88, -4
  %90 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 8
  store i8 %89, ptr %90, align 4
  %91 = load ptr, ptr %50, align 8
  %92 = load i16, ptr %52, align 4
  %93 = zext i16 %92 to i32
  %94 = getelementptr i8, ptr %91, i32 %93
  %95 = getelementptr inbounds %struct.iphdr, ptr %94, i32 0, i32 6
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i16
  %98 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 46
  store i16 %97, ptr %98, align 4
  %99 = load i32, ptr %34, align 4
  %100 = getelementptr inbounds %struct.sock_common, ptr %0, i32 0, i32 6
  store i32 %99, ptr %100, align 4
  %101 = load i32, ptr @sysctl_wmem_default, align 4
  %102 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 21
  store i32 %101, ptr %102, align 8
  %103 = load i32, ptr %72, align 8
  %104 = getelementptr inbounds %struct.sockcm_cookie, ptr %10, i32 0, i32 1
  store i32 %103, ptr %104, align 8
  %105 = load ptr, ptr %5, align 4
  %106 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 26
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %109, label %113

109:                                              ; preds = %87
  %110 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %111 = call fastcc i32 @ip_setup_cork(ptr noundef %0, ptr noundef %110, ptr noundef nonnull %10, ptr noundef nonnull %12) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109, %87
  %114 = getelementptr inbounds %struct.inet_sock, ptr %0, i32 0, i32 19
  %115 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 41
  %116 = load i32, ptr %115, align 8
  %117 = and i32 %116, 132224
  %118 = icmp eq i32 %117, 1152
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = tail call ptr @llvm.thread.pointer() #13
  %121 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 139
  br label %124

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.sock, ptr %0, i32 0, i32 37
  br label %124

124:                                              ; preds = %122, %119
  %125 = phi ptr [ %121, %119 ], [ %123, %122 ]
  %126 = call fastcc i32 @__ip_append_data(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %106, ptr noundef %114, ptr noundef %125, ptr noundef nonnull @ip_reply_glue_bits, ptr noundef %105, i32 noundef %6, i32 noundef 0, i32 noundef 64) #13
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128, !prof !16

128:                                              ; preds = %124, %109
  call void @ip_flush_pending_frames(ptr noundef %0)
  br label %166

129:                                              ; preds = %124
  %130 = load ptr, ptr %106, align 4
  %131 = icmp eq ptr %130, %106
  %132 = icmp eq ptr %130, null
  %133 = or i1 %131, %132
  br i1 %133, label %166, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 13, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.ip_reply_arg, ptr %5, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, %140
  %144 = icmp ult i32 %143, %142
  %145 = zext i1 %144 to i32
  %146 = add i32 %143, %145
  %147 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %146) #14, !srcloc !10
  %148 = xor i32 %147, -1
  %149 = lshr i32 %148, 16
  %150 = trunc i32 %149 to i16
  %151 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 16
  %152 = load ptr, ptr %151, align 8
  %153 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 13, i32 0, i32 17
  %154 = load i16, ptr %153, align 2
  %155 = zext i16 %154 to i32
  %156 = getelementptr i8, ptr %152, i32 %155
  %157 = getelementptr i16, ptr %156, i32 %136
  store i16 %150, ptr %157, align 2
  br label %158

158:                                              ; preds = %138, %134
  %159 = getelementptr inbounds %struct.sk_buff, ptr %130, i32 0, i32 13
  %160 = load i16, ptr %159, align 8
  %161 = and i16 %160, -97
  store i16 %161, ptr %159, align 8
  %162 = call ptr @__ip_make_skb(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %106, ptr noundef %114) #13
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %158
  %165 = call i32 @ip_send_skb(ptr noundef nonnull @init_net, ptr noundef nonnull %162) #13
  br label %166

166:                                              ; preds = %164, %158, %129, %128
  %167 = load ptr, ptr %12, align 4
  call void @dst_release(ptr noundef %167) #13
  br label %168

168:                                              ; preds = %166, %45, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_reply_glue_bits(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5) #0 {
  %7 = getelementptr i8, ptr %0, i32 %2
  %8 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %7, ptr noundef %1, i32 noundef %3) #13
  %9 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 13, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %4, 1
  %12 = icmp eq i32 %11, 0
  %13 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 24) #13
  %14 = select i1 %12, i32 %8, i32 %13
  %15 = add i32 %14, %10
  %16 = icmp ult i32 %15, %14
  %17 = zext i1 %16 to i32
  %18 = add i32 %15, %17
  store i32 %18, ptr %9, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ip_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @ip_rt_init() #13
  tail call void @inet_initpeers() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rt_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inet_initpeers() local_unnamed_addr #9 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt_dst_clone(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_loopback_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 4
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = tail call i32 @ip_do_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ip_finish_output2)
  br label %54

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22, !prof !11

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 22
  %24 = load i16, ptr %23, align 2
  %25 = icmp ne i16 %24, 0
  %26 = zext i16 %24 to i32
  %27 = icmp ugt i32 %26, %3
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %52, !prof !34

29:                                               ; preds = %22, %17
  %30 = tail call ptr @llvm.thread.pointer() #13
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = add i32 %32, 512
  store volatile i32 %33, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %34 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %35 = load ptr, ptr %34, align 8
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #10, !srcloc !13
  %40 = add i32 %39, %36
  %41 = inttoptr i32 %40 to ptr
  %42 = getelementptr inbounds %struct.ipstats_mib, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %45 = getelementptr [37 x i64], ptr %41, i32 0, i32 21
  %46 = load i64, ptr %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, ptr %45, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  %48 = load i32, ptr %42, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %42, align 4
  tail call fastcc void @local_bh_enable()
  %50 = tail call i32 @llvm.bswap.i32(i32 %3)
  %51 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %2, i32 noundef 3, i32 noundef 4, i32 noundef %50, ptr noundef %51) #13
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #13
  br label %54

52:                                               ; preds = %22
  %53 = tail call i32 @ip_do_fragment(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ip_finish_output2)
  br label %54

54:                                               ; preds = %52, %29, %15
  %55 = phi i32 [ %16, %15 ], [ -90, %29 ], [ %53, %52 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_finish_output2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, -2
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 19
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 21
  %14 = load i16, ptr %13, align 8
  %15 = zext i16 %14 to i32
  %16 = add nuw nsw i32 %15, %12
  %17 = and i32 %16, 131056
  %18 = add nuw nsw i32 %17, 16
  %19 = getelementptr inbounds %struct.rtable, ptr %8, i32 0, i32 3
  %20 = load i16, ptr %19, align 4
  switch i16 %20, label %75 [
    i16 5, label %21
    i16 3, label %46
  ]

21:                                               ; preds = %3
  %22 = tail call ptr @llvm.thread.pointer() #13
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = add i32 %24, 512
  store volatile i32 %25, ptr %23, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %26 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #10, !srcloc !13
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.ipstats_mib, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %37 = getelementptr [37 x i64], ptr %33, i32 0, i32 24
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, ptr %37, align 8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = zext i32 %41 to i64
  %43 = getelementptr [37 x i64], ptr %33, i32 0, i32 28
  %44 = load i64, ptr %43, align 8
  %45 = add i64 %44, %42
  store i64 %45, ptr %43, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %71

46:                                               ; preds = %3
  %47 = tail call ptr @llvm.thread.pointer() #13
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = add i32 %49, 512
  store volatile i32 %50, ptr %48, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %51 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 30
  %52 = load ptr, ptr %51, align 8
  %53 = ptrtoint ptr %52 to i32
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #10, !srcloc !13
  %57 = add i32 %56, %53
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.ipstats_mib, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !14
  %62 = getelementptr [37 x i64], ptr %58, i32 0, i32 26
  %63 = load i64, ptr %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8
  %65 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %66 = load i32, ptr %65, align 8
  %67 = zext i32 %66 to i64
  %68 = getelementptr [37 x i64], ptr %58, i32 0, i32 30
  %69 = load i64, ptr %68, align 8
  %70 = add i64 %69, %67
  store i64 %70, ptr %68, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !15
  br label %71

71:                                               ; preds = %46, %21
  %72 = phi ptr [ %59, %46 ], [ %34, %21 ]
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  tail call fastcc void @local_bh_enable()
  br label %75

75:                                               ; preds = %71, %3
  %76 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %79 = load ptr, ptr %78, align 8
  %80 = ptrtoint ptr %77 to i32
  %81 = ptrtoint ptr %79 to i32
  %82 = sub i32 %80, %81
  %83 = icmp ult i32 %82, %18
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 44
  %86 = load ptr, ptr %85, align 16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88, !prof !16

88:                                               ; preds = %84
  %89 = tail call ptr @skb_expand_head(ptr noundef %2, i32 noundef %18) #13
  %90 = icmp eq ptr %89, null
  br i1 %90, label %257, label %91

91:                                               ; preds = %88, %84, %75
  %92 = phi ptr [ %89, %88 ], [ %2, %84 ], [ %2, %75 ]
  %93 = tail call ptr @llvm.thread.pointer() #13
  %94 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %95 = load volatile i32, ptr %94, align 4
  %96 = add i32 %95, 512
  store volatile i32 %96, ptr %94, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr inbounds %struct.rtable, ptr %8, i32 0, i32 7
  %99 = load i8, ptr %98, align 4
  switch i8 %99, label %141 [
    i8 2, label %100
    i8 10, label %138
  ], !prof !35

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.rtable, ptr %8, i32 0, i32 8
  %102 = load i32, ptr %101, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 %102, ptr %4, align 4
  %103 = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 14
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 24
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 %102, i32 0
  %108 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %109 = getelementptr inbounds %struct.neigh_hash_table, ptr %108, i32 0, i32 2
  %110 = ptrtoint ptr %97 to i32
  %111 = xor i32 %107, %110
  %112 = load i32, ptr %109, align 4
  %113 = mul i32 %111, %112
  %114 = getelementptr inbounds %struct.neigh_hash_table, ptr %108, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = sub i32 32, %115
  %117 = lshr i32 %113, %116
  %118 = load ptr, ptr %108, align 4
  %119 = getelementptr ptr, ptr %118, i32 %117
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %134, label %122

122:                                              ; preds = %131, %100
  %123 = phi ptr [ %132, %131 ], [ %120, %100 ]
  %124 = getelementptr inbounds %struct.neighbour, ptr %123, i32 0, i32 26
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %97
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.neighbour, ptr %123, i32 0, i32 28
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, %107
  br i1 %130, label %136, label %131

131:                                              ; preds = %127, %122
  %132 = load volatile ptr, ptr %123, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %122

134:                                              ; preds = %131, %100
  %135 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %4, ptr noundef %97, i1 noundef zeroext false) #13
  br label %136

136:                                              ; preds = %134, %127
  %137 = phi ptr [ %135, %134 ], [ %123, %127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %151

138:                                              ; preds = %91
  %139 = getelementptr inbounds %struct.rtable, ptr %8, i32 0, i32 8
  %140 = tail call fastcc ptr @ip_neigh_gw6(ptr noundef %97, ptr noundef %139) #13
  br label %151

141:                                              ; preds = %91
  %142 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 16
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 13, i32 0, i32 18
  %145 = load i16, ptr %144, align 4
  %146 = zext i16 %145 to i32
  %147 = getelementptr i8, ptr %143, i32 %146
  %148 = getelementptr inbounds %struct.iphdr, ptr %147, i32 0, i32 9
  %149 = load i32, ptr %148, align 4
  %150 = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %97, i32 noundef %149) #13
  br label %151

151:                                              ; preds = %141, %138, %136
  %152 = phi i1 [ true, %136 ], [ false, %138 ], [ true, %141 ]
  %153 = phi ptr [ %137, %136 ], [ %140, %138 ], [ %150, %141 ]
  %154 = icmp ugt ptr %153, inttoptr (i32 -4096 to ptr)
  br i1 %154, label %256, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 13, i32 0, i32 3
  %157 = load i16, ptr %156, align 2
  %158 = and i16 %157, 32
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.sock, ptr %162, i32 0, i32 29
  %166 = load volatile i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  store volatile i32 0, ptr %165, align 4
  br label %169

169:                                              ; preds = %168, %164, %160
  %170 = icmp eq ptr %153, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %169
  %172 = load volatile i32, ptr @jiffies, align 64
  %173 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 3
  %174 = load volatile i32, ptr %173, align 4
  %175 = icmp eq i32 %174, %172
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  store volatile i32 %172, ptr %173, align 4
  br label %177

177:                                              ; preds = %176, %171, %169, %155
  %178 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 20
  br i1 %152, label %179, label %250

179:                                              ; preds = %177
  %180 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 12
  %181 = load volatile i8, ptr %180, align 4
  %182 = and i8 %181, -62
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %250, label %184

184:                                              ; preds = %179
  %185 = load volatile i32, ptr %178, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %250, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 20, i32 1
  %189 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 17
  %190 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 16
  %191 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 20, i32 2
  br label %192

192:                                              ; preds = %225, %187
  %193 = load volatile i32, ptr %188, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %196, %192
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !36
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !37
  %197 = load volatile i32, ptr %188, align 4
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %196

200:                                              ; preds = %196, %192
  %201 = phi i32 [ %193, %192 ], [ %197, %196 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  %202 = load volatile i32, ptr %178, align 4
  %203 = icmp ult i32 %202, 17
  br i1 %203, label %204, label %213, !prof !16

204:                                              ; preds = %200
  %205 = load ptr, ptr %189, align 4
  %206 = load ptr, ptr %190, align 8
  %207 = ptrtoint ptr %205 to i32
  %208 = ptrtoint ptr %206 to i32
  %209 = sub i32 %207, %208
  %210 = icmp ugt i32 %209, 15
  br i1 %210, label %211, label %225, !prof !16

211:                                              ; preds = %204
  %212 = getelementptr i8, ptr %205, i32 -16
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %212, ptr noundef align 4 dereferenceable(16) %191, i32 16, i1 false) #13
  br label %225

213:                                              ; preds = %200
  %214 = add i32 %202, 15
  %215 = and i32 %214, -16
  %216 = load ptr, ptr %189, align 4
  %217 = load ptr, ptr %190, align 8
  %218 = ptrtoint ptr %216 to i32
  %219 = ptrtoint ptr %217 to i32
  %220 = sub i32 %218, %219
  %221 = icmp ult i32 %220, %215
  br i1 %221, label %225, label %222, !prof !11

222:                                              ; preds = %213
  %223 = sub i32 0, %215
  %224 = getelementptr i8, ptr %216, i32 %223
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %224, ptr align 4 %191, i32 %215, i1 false) #13
  br label %225

225:                                              ; preds = %222, %213, %211, %204
  %226 = phi i32 [ 16, %211 ], [ 16, %204 ], [ %215, %222 ], [ %215, %213 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  %227 = load volatile i32, ptr %188, align 4
  %228 = icmp eq i32 %227, %201
  br i1 %228, label %229, label %192

229:                                              ; preds = %225
  %230 = load ptr, ptr %189, align 4
  %231 = load ptr, ptr %190, align 8
  %232 = ptrtoint ptr %230 to i32
  %233 = ptrtoint ptr %231 to i32
  %234 = sub i32 %232, %233
  %235 = icmp ult i32 %234, %226
  %236 = load i1, ptr @neigh_hh_output.__already_done, align 1
  %237 = xor i1 %236, true
  %238 = select i1 %235, i1 %237, i1 false
  br i1 %238, label %239, label %240, !prof !11

239:                                              ; preds = %229
  store i1 true, ptr @neigh_hh_output.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 9, ptr noundef null) #13
  br label %240

240:                                              ; preds = %239, %229
  br i1 %235, label %241, label %242

241:                                              ; preds = %240
  call void @kfree_skb_reason(ptr noundef %92, i32 noundef 0) #13
  br label %254

242:                                              ; preds = %240
  %243 = load ptr, ptr %189, align 4
  %244 = sub i32 0, %202
  %245 = getelementptr i8, ptr %243, i32 %244
  store ptr %245, ptr %189, align 4
  %246 = getelementptr inbounds %struct.sk_buff, ptr %92, i32 0, i32 5
  %247 = load i32, ptr %246, align 8
  %248 = add i32 %247, %202
  store i32 %248, ptr %246, align 8
  %249 = call i32 @dev_queue_xmit(ptr noundef %92) #13
  br label %254

250:                                              ; preds = %184, %179, %177
  %251 = getelementptr inbounds %struct.neighbour, ptr %153, i32 0, i32 21
  %252 = load ptr, ptr %251, align 4
  %253 = call i32 %252(ptr noundef %153, ptr noundef %92) #13
  br label %254

254:                                              ; preds = %250, %242, %241
  %255 = phi i32 [ %253, %250 ], [ 1, %241 ], [ %249, %242 ]
  call fastcc void @local_bh_enable() #13
  br label %257

256:                                              ; preds = %151
  call fastcc void @local_bh_enable() #13
  call void @kfree_skb_reason(ptr noundef %92, i32 noundef 0) #13
  br label %257

257:                                              ; preds = %256, %254, %88
  %258 = phi i32 [ -22, %256 ], [ %255, %254 ], [ -12, %88 ]
  ret i32 %258
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw4(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 24
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %1, i32 0
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %10 = getelementptr inbounds %struct.neigh_hash_table, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %0 to i32
  %12 = xor i32 %8, %11
  %13 = load i32, ptr %10, align 4
  %14 = mul i32 %12, %13
  %15 = getelementptr inbounds %struct.neigh_hash_table, ptr %9, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 32, %16
  %18 = lshr i32 %14, %17
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr ptr, ptr %19, i32 %18
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %32, %2
  %24 = phi ptr [ %33, %32 ], [ %21, %2 ]
  %25 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.neighbour, ptr %24, i32 0, i32 28
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, %8
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %23
  %33 = load volatile ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %23

35:                                               ; preds = %32, %2
  %36 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext false) #13
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %36, %35 ], [ %24, %28 ]
  ret ptr %38
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw6(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr @ipv6_stub, align 4
  %4 = getelementptr inbounds %struct.ipv6_stub, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.neigh_table, ptr %5, i32 0, i32 31
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.neigh_hash_table, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %0 to i32
  %11 = xor i32 %9, %10
  %12 = load i32, ptr %8, align 4
  %13 = mul i32 %11, %12
  %14 = getelementptr i32, ptr %1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.neigh_hash_table, ptr %7, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %15
  %19 = add i32 %18, %13
  %20 = getelementptr i32, ptr %1, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.neigh_hash_table, ptr %7, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %21
  %25 = add i32 %19, %24
  %26 = getelementptr i32, ptr %1, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr %struct.neigh_hash_table, ptr %7, i32 0, i32 2, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %27
  %31 = add i32 %25, %30
  %32 = getelementptr inbounds %struct.neigh_hash_table, ptr %7, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 32, %33
  %35 = lshr i32 %31, %34
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr ptr, ptr %36, i32 %35
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %62, %2
  %41 = phi ptr [ %63, %62 ], [ %38, %2 ]
  %42 = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 26
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.neighbour, ptr %41, i32 0, i32 28
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %9
  %49 = getelementptr %struct.neighbour, ptr %41, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %15
  %52 = or i32 %51, %48
  %53 = getelementptr %struct.neighbour, ptr %41, i32 1, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %54, %21
  %56 = or i32 %52, %55
  %57 = getelementptr %struct.neighbour, ptr %41, i32 1, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %58, %27
  %60 = or i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %45, %40
  %63 = load volatile ptr, ptr %41, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %40

65:                                               ; preds = %62, %2
  %66 = tail call ptr @__neigh_create(ptr noundef %5, ptr noundef %1, ptr noundef %0, i1 noundef zeroext false) #13
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi ptr [ %66, %65 ], [ %41, %45 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_iter_dgram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_callback(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

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
!9 = !{i64 5555509, i64 5555548, i64 5555574, i64 5555598, i64 5555623, i64 5555649, i64 5555674, i64 5555700, i64 5555727, i64 5555753, i64 5555792, i64 5555836, i64 5555867, i64 5555892}
!10 = !{i64 5555126}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148808566}
!13 = !{i64 618914}
!14 = !{i64 2149640547}
!15 = !{i64 2149640848}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2148994986}
!18 = !{i64 2148995203}
!19 = !{i64 2148147397}
!20 = !{i64 583062, i64 2148084628, i64 2148084654, i64 2148084701, i64 2148084723, i64 2148084751, i64 2148084771}
!21 = !{i64 569631, i64 569656, i64 569678, i64 569694, i64 569706, i64 569726, i64 569750, i64 569766, i64 569778}
!22 = !{i64 2148147523}
!23 = !{i64 2148149348, i64 2148149380, i64 2148149409, i64 2148149443, i64 2148149474, i64 2148149497}
!24 = !{i64 2156754077, i64 2156754562, i64 2156754114, i64 2156754170, i64 2156754204, i64 2156754228, i64 2156754269, i64 2156754290, i64 2156754318, i64 2156754352}
!25 = !{i8 0, i8 2}
!26 = !{!"auto-init"}
!27 = !{i64 2156757364, i64 2156757849, i64 2156757401, i64 2156757457, i64 2156757491, i64 2156757515, i64 2156757556, i64 2156757577, i64 2156757605, i64 2156757639}
!28 = !{i64 2148245736}
!29 = !{i64 2148148574, i64 2148148606, i64 2148148635, i64 2148148669, i64 2148148700, i64 2148148723}
!30 = !{i64 2148245939}
!31 = !{i64 2153485884, i64 2153486372, i64 2153485921, i64 2153485977, i64 2153486011, i64 2153486035, i64 2153486076, i64 2153486097, i64 2153486125, i64 2153486159}
!32 = !{i64 2148147890, i64 2148147916, i64 2148147945, i64 2148147979, i64 2148148010, i64 2148148033}
!33 = !{i64 2153474072, i64 2153474560, i64 2153474109, i64 2153474165, i64 2153474199, i64 2153474223, i64 2153474264, i64 2153474285, i64 2153474313, i64 2153474347}
!34 = !{!"branch_weights", i32 1, i32 4001}
!35 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!36 = !{i64 2149649616}
!37 = !{i64 2149649458}
!38 = !{i64 2149649760}
!39 = !{i64 2149640248}
