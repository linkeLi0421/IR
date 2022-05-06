; ModuleID = '/llk/IR/net/ipv4/route.c_pt.bc'
source_filename = "../net/ipv4/route.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_tos2prio:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_tos2prio\22\09\09\09\09\09"
module asm "__kstrtabns_ip_tos2prio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_idents_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_idents_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_ip_idents_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_select_ident\22\09\09\09\09\09"
module asm "__kstrtabns___ip_select_ident:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv4_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv4_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_ipv4_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv4_sk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv4_sk_update_pmtu\22\09\09\09\09\09"
module asm "__kstrtabns_ipv4_sk_update_pmtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv4_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv4_redirect\22\09\09\09\09\09"
module asm "__kstrtabns_ipv4_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipv4_sk_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22ipv4_sk_redirect\22\09\09\09\09\09"
module asm "__kstrtabns_ipv4_sk_redirect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_dst_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_rt_dst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rt_dst_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22rt_dst_clone\22\09\09\09\09\09"
module asm "__kstrtabns_rt_dst_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_route_input_noref:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_route_input_noref\22\09\09\09\09\09"
module asm "__kstrtabns_ip_route_input_noref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_route_output_key_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_route_output_key_hash\22\09\09\09\09\09"
module asm "__kstrtabns_ip_route_output_key_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_route_output_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_route_output_flow\22\09\09\09\09\09"
module asm "__kstrtabns_ip_route_output_flow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_route_output_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_route_output_tunnel\22\09\09\09\09\09"
module asm "__kstrtabns_ip_route_output_tunnel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uncached_list = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [32 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [40 x i8], %struct.netns_ipv4, %struct.netns_ipv6, ptr, %struct.netns_bpf, [28 x i8], %struct.netns_xfrm, i64, %struct.netns_can, ptr, ptr, [32 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.183, ptr, [60 x i8] }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.183 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [36 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex, [28 x i8] }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, %struct.netdevice_tracker, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type {}
%struct.netdevice_tracker = type {}
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sk_buff_head = type { %union.anon.82, i32, %struct.spinlock }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr }
%struct.dst_metrics = type { [17 x i32], %struct.refcount_struct }
%struct.rt_cache_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.fib_prop = type { i32, i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.inetpeer_addr = type { %union.anon.191, i16 }
%union.anon.191 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.132 }
%union.anon.132 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon.75, %union.anon.154, %union.anon.155, [48 x i8], %union.anon.156, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.158, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { ptr, ptr, %union.anon.77 }
%union.anon.77 = type { ptr }
%union.anon.154 = type { ptr }
%union.anon.155 = type { i64 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, ptr }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.160, i32, i32, i32, i16, i16, %union.anon.162, %union.anon.163, %union.anon.164, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.160 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.78, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.78 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.153 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_device = type { ptr, %struct.netdevice_tracker, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.144, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, %struct.netdevice_tracker }
%union.anon.144 = type { %struct.in6_addr }
%struct.inet_peer = type { %struct.rb_node, %struct.inetpeer_addr, [17 x i32], i32, i32, i32, %union.anon.192, i32, %struct.refcount_struct }
%union.anon.192 = type { %struct.callback_head }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.140 = type { i16, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.177, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.178, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.179, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, %struct.netns_tracker }
%struct.sock_common = type { %union.anon.12, %union.anon.14, %union.anon.15, i16, i8, i8, i32, %union.anon.17, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.173, [0 x i32], %union.anon.174, i16, i16, %union.anon.175, %struct.refcount_struct, [0 x i32], %union.anon.176 }
%union.anon.12 = type { i64 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.hlist_node }
%union.anon.175 = type { i32 }
%union.anon.176 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head }
%struct.anon.177 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type {}
%struct.netns_tracker = type {}
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.139 }
%union.anon.139 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.xfrm_dst = type { %union.anon.200, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.200 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.201 }
%union.anon.201 = type { i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [4 x i8], [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, %struct.netdevice_tracker, [0 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [24 x i32] }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32 }
%struct.fib_nh_common = type { ptr, %struct.netdevice_tracker, i32, i8, i8, i8, i8, ptr, %union.anon.136, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.136 = type { %struct.in6_addr }
%struct.fib_nh_exception = type { ptr, i32, i32, i32, i8, i32, i32, ptr, ptr, i32, %struct.callback_head }
%struct.fnhe_hash_bucket = type { ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.210 }
%union.anon.210 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.194, i16, i8, i8, i32, i16, i16 }
%union.anon.194 = type { %struct.anon.196 }
%struct.anon.196 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.86 }
%union.anon.86 = type { [6 x i32], [24 x i8] }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.134 }
%union.anon.134 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.145, %struct.list_head, ptr }
%union.anon.145 = type { %struct.anon.147 }
%struct.anon.147 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.135 }
%union.anon.135 = type { %struct.fib_nh }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.fib_rt_info = type { ptr, i32, i32, i32, i8, i8, i8 }
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
%struct.sched_statistics = type {}
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
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.40 = type { %struct.callback_head }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }
%struct.fib_alias = type { %struct.hlist_node, ptr, i8, i8, i8, i8, i32, i16, i8, i8, i8, %struct.callback_head }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@ip_tos2prio = dso_local constant [16 x i8] c"\00\00\00\00\02\02\02\02\06\06\06\06\04\04\04\04", align 1
@__kstrtab_ip_tos2prio = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_tos2prio = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_tos2prio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_tos2prio to i32), ptr @__kstrtab_ip_tos2prio, ptr @__kstrtabns_ip_tos2prio }, section "___ksymtab+ip_tos2prio", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@ip_idents_mask = internal global i32 0, section ".data..read_mostly", align 4
@ip_tstamps = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@ip_idents = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_ip_idents_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_idents_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_idents_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_idents_reserve to i32), ptr @__kstrtab_ip_idents_reserve, ptr @__kstrtabns_ip_idents_reserve }, section "___ksymtab+ip_idents_reserve", align 4
@__kstrtab___ip_select_ident = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_select_ident = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_select_ident = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_select_ident to i32), ptr @__kstrtab___ip_select_ident, ptr @__kstrtabns___ip_select_ident }, section "___ksymtab+__ip_select_ident", align 4
@ip_rt_redirect_silence = internal global i32 2048, section ".data..read_mostly", align 4
@ip_rt_redirect_number = internal global i32 9, section ".data..read_mostly", align 4
@ip_rt_redirect_load = internal global i32 2, section ".data..read_mostly", align 4
@__kstrtab_ipv4_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv4_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv4_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv4_update_pmtu to i32), ptr @__kstrtab_ipv4_update_pmtu, ptr @__kstrtabns_ipv4_update_pmtu }, section "___ksymtab_gpl+ipv4_update_pmtu", align 4
@__kstrtab_ipv4_sk_update_pmtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv4_sk_update_pmtu = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv4_sk_update_pmtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv4_sk_update_pmtu to i32), ptr @__kstrtab_ipv4_sk_update_pmtu, ptr @__kstrtabns_ipv4_sk_update_pmtu }, section "___ksymtab_gpl+ipv4_sk_update_pmtu", align 4
@__kstrtab_ipv4_redirect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv4_redirect = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv4_redirect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv4_redirect to i32), ptr @__kstrtab_ipv4_redirect, ptr @__kstrtabns_ipv4_redirect }, section "___ksymtab_gpl+ipv4_redirect", align 4
@__kstrtab_ipv4_sk_redirect = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipv4_sk_redirect = external dso_local constant [0 x i8], align 1
@__ksymtab_ipv4_sk_redirect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipv4_sk_redirect to i32), ptr @__kstrtab_ipv4_sk_redirect, ptr @__kstrtabns_ipv4_sk_redirect }, section "___ksymtab_gpl+ipv4_sk_redirect", align 4
@rt_uncached_list = internal global %struct.uncached_list zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@blackhole_netdev = external dso_local local_unnamed_addr global ptr, align 4
@ipv4_dst_ops = internal global %struct.dst_ops { i16 2, i32 0, ptr null, ptr @ipv4_dst_check, ptr @ipv4_default_advmss, ptr @ipv4_mtu, ptr @ipv4_cow_metrics, ptr @ipv4_dst_destroy, ptr null, ptr @ipv4_negative_advice, ptr @ipv4_link_failure, ptr @ip_rt_update_pmtu, ptr @ip_do_redirect, ptr @__ip_local_out, ptr @ipv4_neigh_lookup, ptr @ipv4_confirm_neigh, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [32 x i8] undef }, align 64
@__kstrtab_rt_dst_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_dst_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_dst_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_dst_alloc to i32), ptr @__kstrtab_rt_dst_alloc, ptr @__kstrtabns_rt_dst_alloc }, section "___ksymtab+rt_dst_alloc", align 4
@__kstrtab_rt_dst_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_rt_dst_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_rt_dst_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rt_dst_clone to i32), ptr @__kstrtab_rt_dst_clone, ptr @__kstrtabns_rt_dst_clone }, section "___ksymtab+rt_dst_clone", align 4
@__kstrtab_ip_route_input_noref = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_route_input_noref = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_route_input_noref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_route_input_noref to i32), ptr @__kstrtab_ip_route_input_noref, ptr @__kstrtabns_ip_route_input_noref }, section "___ksymtab+ip_route_input_noref", align 4
@__kstrtab_ip_route_output_key_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_route_output_key_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_route_output_key_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_route_output_key_hash to i32), ptr @__kstrtab_ip_route_output_key_hash, ptr @__kstrtabns_ip_route_output_key_hash }, section "___ksymtab_gpl+ip_route_output_key_hash", align 4
@ipv4_dst_blackhole_ops = internal global %struct.dst_ops { i16 2, i32 0, ptr null, ptr @dst_blackhole_check, ptr @ipv4_default_advmss, ptr @dst_blackhole_mtu, ptr @dst_blackhole_cow_metrics, ptr null, ptr null, ptr null, ptr null, ptr @dst_blackhole_update_pmtu, ptr @dst_blackhole_redirect, ptr null, ptr @ipv4_neigh_lookup, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [32 x i8] undef }, align 64
@__kstrtab_ip_route_output_flow = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_route_output_flow = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_route_output_flow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_route_output_flow to i32), ptr @__kstrtab_ip_route_output_flow, ptr @__kstrtabns_ip_route_output_flow }, section "___ksymtab_gpl+ip_route_output_flow", align 4
@__kstrtab_ip_route_output_tunnel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_route_output_tunnel = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_route_output_tunnel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_route_output_tunnel to i32), ptr @__kstrtab_ip_route_output_tunnel, ptr @__kstrtabns_ip_route_output_tunnel }, section "___ksymtab_gpl+ip_route_output_tunnel", align 4
@.str = private unnamed_addr constant [10 x i8] c"IP idents\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ip_dst_cache\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"IP: failed to allocate ipv4_dst_ops counter\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"IP: failed to allocate ipv4_dst_blackhole_ops counter\0A\00", align 1
@ip_rt_max_size = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\013IPv4: Unable to create route proc files\0A\00", align 1
@sysctl_route_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sysctl_route_net_init, ptr null, ptr @sysctl_route_net_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@ip_rt_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netns_ip_rt_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@rt_genid_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @rt_genid_init, ptr null, ptr null, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@ipv4_inetpeer_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ipv4_inetpeer_init, ptr null, ptr @ipv4_inetpeer_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@init_net = external dso_local global %struct.net, align 64
@.str.5 = private unnamed_addr constant [15 x i8] c"net/ipv4/route\00", align 1
@ipv4_route_table = internal global [14 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.22, ptr getelementptr (i8, ptr @ipv4_dst_ops, i64 4), i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr @ip_rt_max_size, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr @ip_rt_gc_min_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr @ip_rt_gc_min_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_ms_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr @ip_rt_gc_timeout, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr @ip_rt_gc_interval, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr @ip_rt_redirect_load, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @ip_rt_redirect_number, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr @ip_rt_redirect_silence, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr @ip_rt_error_cost, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.32, ptr @ip_rt_error_burst, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.33, ptr @ip_rt_gc_elasticity, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.34, ptr @ip_rt_min_advmss, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"include/net/dst.h\00", align 1
@fnhe_lock = internal global %struct.spinlock zeroinitializer, align 4
@fnhe_hashfun.fnhe_hash_key = internal global %struct.siphash_key_t zeroinitializer, align 16
@fnhe_hashfun.___done = internal global i8 0, section ".data.once", align 1
@fnhe_hashfun.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@ip_rt_gc_timeout = internal global i32 30000, section ".data..read_mostly", align 4
@ip_rt_min_advmss = internal global i32 256, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"net/ipv4/route.c\00", align 1
@dst_default_metrics = external dso_local constant %struct.dst_metrics, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@rt_cache_stat = internal global %struct.rt_cache_stat zeroinitializer, section ".data..percpu", align 4
@.str.9 = private unnamed_addr constant [54 x i8] c"\012IPv4: Bug in ip_route_input_slow(). Please report.\0A\00", align 1
@ip_rt_error_burst = internal global i32 500, section ".data..read_mostly", align 4
@ip_rt_error_cost = internal global i32 100, section ".data..read_mostly", align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1
@dst_entries_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@ip_rt_proc_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ip_rt_do_proc_init, ptr null, ptr @ip_rt_do_proc_exit, ptr null, ptr null, i32 0 }, section ".init.data", align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"rt_cache\00", align 1
@rt_cache_seq_ops = internal constant %struct.seq_operations { ptr @rt_cache_seq_start, ptr @rt_cache_seq_stop, ptr @rt_cache_seq_next, ptr @rt_cache_seq_show }, align 4
@rt_cpu_seq_ops = internal constant %struct.seq_operations { ptr @rt_cpu_seq_start, ptr @rt_cpu_seq_stop, ptr @rt_cpu_seq_next, ptr @rt_cpu_seq_show }, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"%-127s\0A\00", align 1
@.str.13 = private unnamed_addr constant [102 x i8] c"Iface\09Destination\09Gateway \09Flags\09\09RefCnt\09Use\09Metric\09Source\09\09MTU\09Window\09IRTT\09TOS\09HHRef\09HHUptod\09SpecDst\00", align 1
@.str.14 = private unnamed_addr constant [209 x i8] c"entries  in_hit   in_slow_tot in_slow_mc in_no_route in_brd   in_martian_dst in_martian_src out_hit  out_slow_tot out_slow_mc gc_total gc_ignored gc_goal_miss gc_dst_overflow in_hlist_search out_hlist_search\0A\00", align 1
@.str.15 = private unnamed_addr constant [133 x i8] c"%08x %08x %08x    %08x   %08x    %08x %08x       %08x       %08x %08x     %08x    %08x %08x   %08x     %08x        %08x        %08x\0A\00", align 1
@fib_props = external dso_local local_unnamed_addr constant [12 x %struct.fib_prop], align 4
@inet_rtm_valid_getroute_req.__msg = internal constant [43 x i8] c"ipv4: Invalid header for route get request\00", align 1
@rtm_ipv4_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@inet_rtm_valid_getroute_req.__msg.16 = internal constant [53 x i8] c"ipv4: Invalid values in header for route get request\00", align 1
@inet_rtm_valid_getroute_req.__msg.17 = internal constant [50 x i8] c"ipv4: Unsupported rtm_flags for route get request\00", align 1
@inet_rtm_valid_getroute_req.__msg.18 = internal constant [54 x i8] c"ipv4: rtm_src_len and rtm_dst_len must be 32 for IPv4\00", align 1
@inet_rtm_valid_getroute_req.__msg.19 = internal constant [49 x i8] c"ipv4: Unsupported attribute in route get request\00", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ipv4_route_netns_table = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @ipv4_route_flush_procname, ptr null, i32 4, i16 128, ptr null, ptr @ipv4_sysctl_rtcache_flush, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 556), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @ip_min_valid_pmtu, ptr null }, %struct.ctl_table { ptr @.str.21, ptr getelementptr (i8, ptr @init_net, i64 560), i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@ipv4_route_flush_procname = internal constant [6 x i8] c"flush\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"min_pmtu\00", align 1
@ip_min_valid_pmtu = internal global i32 68, section ".data..read_mostly", align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"mtu_expires\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"gc_thresh\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"max_size\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"gc_min_interval\00", align 1
@ip_rt_gc_min_interval = internal global i32 50, section ".data..read_mostly", align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"gc_min_interval_ms\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"gc_timeout\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"gc_interval\00", align 1
@ip_rt_gc_interval = internal global i32 6000, section ".data..read_mostly", align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"redirect_load\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"redirect_number\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"redirect_silence\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"error_cost\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"error_burst\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"gc_elasticity\00", align 1
@ip_rt_gc_elasticity = internal global i32 8, section ".data..read_mostly", align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"min_adv_mss\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab___ip_select_ident, ptr @__ksymtab_ip_idents_reserve, ptr @__ksymtab_ip_route_input_noref, ptr @__ksymtab_ip_route_output_flow, ptr @__ksymtab_ip_route_output_key_hash, ptr @__ksymtab_ip_route_output_tunnel, ptr @__ksymtab_ip_tos2prio, ptr @__ksymtab_ipv4_redirect, ptr @__ksymtab_ipv4_sk_redirect, ptr @__ksymtab_ipv4_sk_update_pmtu, ptr @__ksymtab_ipv4_update_pmtu, ptr @__ksymtab_rt_dst_alloc, ptr @__ksymtab_rt_dst_clone], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_cache_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 122
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_idents_reserve(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = load i32, ptr @ip_idents_mask, align 4
  %5 = and i32 %4, %0
  %6 = load ptr, ptr @ip_tstamps, align 4
  %7 = getelementptr i32, ptr %6, i32 %5
  %8 = load ptr, ptr @ip_idents, align 4
  %9 = load volatile i32, ptr %7, align 4
  %10 = icmp eq i32 %3, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #22, !srcloc !9
  br label %12

12:                                               ; preds = %12, %11
  %13 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %7, i32 %9, i32 %3) #22, !srcloc !12
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !13
  %18 = icmp eq i32 %17, %9
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = sub i32 %3, %9
  %21 = tail call i32 @prandom_u32() #22
  %22 = zext i32 %21 to i64
  %23 = zext i32 %20 to i64
  %24 = mul nuw i64 %22, %23
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %19, %16, %2
  %28 = phi i32 [ %26, %19 ], [ 0, %16 ], [ 0, %2 ]
  %29 = getelementptr %struct.atomic_t, ptr %8, i32 %5
  %30 = add i32 %28, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #22, !srcloc !9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %30, ptr elementtype(i32) %29) #22, !srcloc !15
  %32 = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !16
  %33 = sub i32 %32, %1
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ip_select_ident(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 123
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr %struct.net, ptr %0, i32 0, i32 35, i32 123, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = or i64 %7, %5
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11, !prof !17

10:                                               ; preds = %3
  tail call void @get_random_bytes(ptr noundef %4, i32 noundef 16) #22
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 6
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = tail call i64 @siphash_3u32(i32 noundef %13, i32 noundef %15, i32 noundef %18, ptr noundef %4) #22
  %20 = trunc i64 %19 to i32
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = load i32, ptr @ip_idents_mask, align 4
  %23 = and i32 %22, %20
  %24 = load ptr, ptr @ip_tstamps, align 4
  %25 = getelementptr i32, ptr %24, i32 %23
  %26 = load ptr, ptr @ip_idents, align 4
  %27 = load volatile i32, ptr %25, align 4
  %28 = icmp eq i32 %21, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #22, !srcloc !9
  br label %30

30:                                               ; preds = %30, %29
  %31 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %25, i32 %27, i32 %21) #22, !srcloc !12
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !13
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = sub i32 %21, %27
  %39 = tail call i32 @prandom_u32() #22
  %40 = zext i32 %39 to i64
  %41 = zext i32 %38 to i64
  %42 = mul nuw i64 %40, %41
  %43 = lshr i64 %42, 32
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %37, %34, %11
  %46 = phi i32 [ %44, %37 ], [ 0, %34 ], [ 0, %11 ]
  %47 = getelementptr %struct.atomic_t, ptr %26, i32 %23
  %48 = add i32 %46, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #22, !srcloc !9
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 %48, ptr elementtype(i32) %47) #22, !srcloc !15
  %50 = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !16
  %51 = sub i32 %50, %2
  %52 = trunc i32 %51 to i16
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 3
  store i16 %53, ptr %54, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_3u32(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_rt_send_redirect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.inetpeer_addr, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 68
  %9 = load volatile ptr, ptr %8, align 16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %13 = getelementptr %struct.ipv4_devconf, ptr %12, i32 0, i32 1, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr %struct.in_device, ptr %9, i32 0, i32 21, i32 1, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %96

21:                                               ; preds = %16, %11
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 16), align 16
  %23 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %26 = load i16, ptr %25, align 4
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %24, i32 %27
  %29 = getelementptr inbounds %struct.iphdr, ptr %28, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #22
  %31 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %31, i8 0, i32 12, i1 false) #22, !annotation !20
  store i32 %30, ptr %2, align 4
  %32 = getelementptr inbounds %struct.ipv4_addr_key, ptr %2, i32 0, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.inetpeer_addr, ptr %2, i32 0, i32 1
  store i16 2, ptr %33, align 4
  %34 = call ptr @inet_getpeer(ptr noundef %22, ptr noundef nonnull %2, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %21
  %37 = load ptr, ptr %23, align 8
  %38 = load i16, ptr %25, align 4
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %37, i32 %39
  %41 = getelementptr inbounds %struct.iphdr, ptr %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 7
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 2
  %45 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 8
  %46 = select i1 %44, ptr %45, ptr %41
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef %47, ptr noundef %48) #22
  br label %96

49:                                               ; preds = %21
  %50 = getelementptr inbounds %struct.inet_peer, ptr %34, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr @ip_rt_redirect_silence, align 4
  %53 = add i32 %52, %51
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = sub i32 %53, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.inet_peer, ptr %34, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = load i32, ptr @ip_rt_redirect_number, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %69, label %67

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.inet_peer, ptr %34, i32 0, i32 3
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.inet_peer, ptr %34, i32 0, i32 4
  store i32 0, ptr %64, align 4
  %65 = load i32, ptr @ip_rt_redirect_number, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62, %57
  %68 = load volatile i32, ptr @jiffies, align 64
  store i32 %68, ptr %50, align 4
  br label %95

69:                                               ; preds = %57
  %70 = icmp eq i32 %59, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr @ip_rt_redirect_load, align 4
  %73 = shl i32 %72, %59
  %74 = add i32 %73, %51
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = sub i32 %74, %75
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %71, %69, %62
  %79 = getelementptr inbounds %struct.inet_peer, ptr %34, i32 0, i32 4
  %80 = load ptr, ptr %23, align 8
  %81 = load i16, ptr %25, align 4
  %82 = zext i16 %81 to i32
  %83 = getelementptr i8, ptr %80, i32 %82
  %84 = getelementptr inbounds %struct.iphdr, ptr %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 7
  %86 = load i8, ptr %85, align 4
  %87 = icmp eq i8 %86, 2
  %88 = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 8
  %89 = select i1 %87, ptr %88, ptr %84
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef %0, i32 noundef 5, i32 noundef 1, i32 noundef %90, ptr noundef %91) #22
  %92 = load volatile i32, ptr @jiffies, align 64
  store i32 %92, ptr %50, align 4
  %93 = load i32, ptr %79, align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr %79, align 4
  br label %95

95:                                               ; preds = %78, %71, %67
  call void @inet_putpeer(ptr noundef nonnull %34) #22
  br label %96

96:                                               ; preds = %95, %36, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv4_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = alloca %struct.fib_result, align 4
  %7 = alloca %struct.flowi4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  %10 = getelementptr inbounds i8, ptr %7, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i32 24, i1 false), !annotation !20
  %11 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 42
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i32 [ %16, %14 ], [ 0, %5 ]
  %19 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.iphdr, ptr %9, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  store i32 %3, ptr %7, align 8
  %25 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 2
  store i32 %18, ptr %26, align 8
  %27 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 3
  %28 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 4
  %29 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 5
  store i8 %4, ptr %29, align 2
  %30 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 6
  %31 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %30, i8 0, i64 17, i1 false)
  store i32 %22, ptr %31, align 4
  %32 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 1
  store i32 %24, ptr %32, align 8
  %33 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 3
  %34 = getelementptr inbounds %struct.anon.140, ptr %33, i32 0, i32 1
  store i16 0, ptr %34, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %25, align 4
  %35 = and i8 %20, 28
  store i8 %35, ptr %27, align 4
  store i8 0, ptr %28, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %36 = call ptr @ip_route_output_key_hash_rcu(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #22
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %39, label %38

38:                                               ; preds = %17
  call fastcc void @__ip_rt_update_pmtu(ptr noundef %36, ptr noundef nonnull %7, i32 noundef %2)
  call void @dst_release(ptr noundef %36) #22
  br label %39

39:                                               ; preds = %38, %17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ip_rt_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !20
  %5 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -4
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74

17:                                               ; preds = %9
  %18 = icmp ult i32 %6, 2
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = lshr i32 %6, 1
  %21 = load volatile i32, ptr @jiffies, align 64
  %22 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %19, %17
  %27 = getelementptr i32, ptr %13, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 20
  %33 = load volatile i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %26, %19
  %35 = phi i32 [ %20, %19 ], [ %28, %26 ], [ %33, %30 ]
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 65535) #22
  %37 = icmp ult i32 %36, %2
  br i1 %37, label %74, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 26), align 4
  %40 = icmp ugt i32 %39, %2
  %41 = tail call i32 @llvm.umin.i32(i32 %36, i32 %39)
  %42 = select i1 %40, i32 %41, i32 %2
  %43 = lshr i32 %6, 1
  %44 = icmp ne i32 %43, %42
  %45 = or i1 %40, %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 27), align 16
  %51 = sdiv i32 %50, 2
  %52 = sub i32 %47, %49
  %53 = add i32 %52, %51
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %74, label %55

55:                                               ; preds = %46, %38
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %56 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = call i32 @fib_table_lookup(ptr noundef nonnull %57, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 1) #22
  %61 = icmp eq i32 %60, -11
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %55
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %73

63:                                               ; preds = %59
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %64 = icmp eq i32 %60, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  call void @fib_select_path(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef %1, ptr noundef null) #22
  %66 = getelementptr inbounds %struct.fib_result, ptr %4, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = load i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 27), align 16
  %72 = add i32 %71, %70
  call fastcc void @update_or_create_fnhe(ptr noundef %67, i32 noundef %69, i32 noundef 0, i32 noundef %42, i1 noundef zeroext %40, i32 noundef %72)
  br label %73

73:                                               ; preds = %65, %63, %62
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %74

74:                                               ; preds = %73, %46, %34, %9, %3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv4_sk_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.fib_result, align 4
  %5 = alloca %struct.fib_result, align 4
  %6 = alloca %struct.fib_result, align 4
  %7 = alloca %struct.flowi4, align 8
  %8 = alloca %struct.flowi4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false), !annotation !20
  %11 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 11
  %13 = load i8, ptr %12, align 1
  %14 = add i8 %13, -6
  %15 = icmp ult i8 %14, -2
  br i1 %15, label %16, label %242

16:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %17 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 19
  %18 = load volatile ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dst_entry, ptr %18, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #22, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 1, ptr elementtype(i32) %21) #22, !srcloc !22
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  br label %26

26:                                               ; preds = %25, %20, %16
  %27 = phi ptr [ null, %16 ], [ null, %20 ], [ %18, %25 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 4, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = icmp ne ptr %27, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %104, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false) #22, !annotation !20
  %35 = icmp eq ptr %1, null
  br i1 %35, label %62, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 30
  %44 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %45 = load volatile i32, ptr %44, align 4
  %46 = lshr i32 %45, 13
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = or i8 %48, %43
  %50 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 8
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %56 = load i16, ptr %55, align 4
  %57 = trunc i16 %56 to i8
  br label %58

58:                                               ; preds = %54, %36
  %59 = phi i8 [ -1, %36 ], [ %57, %54 ]
  %60 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %58, %33
  %63 = phi i32 [ %38, %58 ], [ 0, %33 ]
  %64 = phi i8 [ %49, %58 ], [ 0, %33 ]
  %65 = phi i8 [ %59, %58 ], [ 0, %33 ]
  %66 = phi i32 [ %40, %58 ], [ 0, %33 ]
  %67 = phi i32 [ %61, %58 ], [ 0, %33 ]
  %68 = getelementptr inbounds %struct.iphdr, ptr %34, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.iphdr, ptr %34, i32 0, i32 8
  %71 = load i32, ptr %70, align 4
  store i32 %63, ptr %7, align 8
  %72 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 1
  %73 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 2
  store i32 %66, ptr %73, align 8
  %74 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 3
  %75 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 4
  %76 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 5
  store i8 %65, ptr %76, align 2
  %77 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 6
  store i8 0, ptr %77, align 1
  %78 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 7
  store i32 0, ptr %78, align 8
  %79 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 9
  store i64 0, ptr %79, align 8
  %80 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 8
  store i32 %67, ptr %80, align 4
  %81 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 2
  store i32 %69, ptr %81, align 4
  %82 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 1
  store i32 %71, ptr %82, align 8
  %83 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 3
  store i16 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.anon.140, ptr %83, i32 0, i32 1
  store i16 0, ptr %84, align 2
  %85 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 10
  store i32 0, ptr %85, align 8
  %86 = icmp eq i32 %66, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %62
  %88 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 42), align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %92, %90 ], [ 0, %87 ]
  store i32 %94, ptr %73, align 8
  br label %95

95:                                               ; preds = %93, %62
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %72, align 4
  %96 = and i8 %64, 28
  store i8 %96, ptr %74, align 4
  %97 = and i8 %64, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, i8 0, i8 -3
  store i8 %99, ptr %75, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %100 = call ptr @ip_route_output_key_hash_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #22
  %101 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %101, label %103, label %102

102:                                              ; preds = %95
  call fastcc void @__ip_rt_update_pmtu(ptr noundef %100, ptr noundef nonnull %7, i32 noundef %2) #22
  call void @dst_release(ptr noundef %100) #22
  br label %103

103:                                              ; preds = %102, %95
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  br label %242

104:                                              ; preds = %26
  %105 = icmp eq ptr %1, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %110 = load i32, ptr %109, align 8
  %111 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %112 = load i8, ptr %111, align 4
  %113 = and i8 %112, 30
  %114 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %115 = load volatile i32, ptr %114, align 4
  %116 = lshr i32 %115, 13
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = or i8 %118, %113
  %120 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %121 = load i16, ptr %120, align 8
  %122 = and i16 %121, 8
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %126 = load i16, ptr %125, align 4
  %127 = trunc i16 %126 to i8
  br label %128

128:                                              ; preds = %124, %106
  %129 = phi i8 [ -1, %106 ], [ %127, %124 ]
  %130 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %128, %104
  %133 = phi i32 [ %108, %128 ], [ 0, %104 ]
  %134 = phi i8 [ %119, %128 ], [ 0, %104 ]
  %135 = phi i8 [ %129, %128 ], [ 0, %104 ]
  %136 = phi i32 [ %110, %128 ], [ 0, %104 ]
  %137 = phi i32 [ %131, %128 ], [ 0, %104 ]
  %138 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 9
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr inbounds %struct.iphdr, ptr %10, i32 0, i32 8
  %141 = load i32, ptr %140, align 4
  store i32 %133, ptr %8, align 8
  %142 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 1
  store i32 1, ptr %142, align 4
  %143 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 2
  store i32 %136, ptr %143, align 8
  %144 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 3
  store i8 %134, ptr %144, align 4
  %145 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 4
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 5
  store i8 %135, ptr %146, align 2
  %147 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 6
  store i8 0, ptr %147, align 1
  %148 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 7
  store i32 0, ptr %148, align 8
  %149 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 9
  store i64 0, ptr %149, align 8
  %150 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 8
  store i32 %137, ptr %150, align 4
  %151 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 2
  store i32 %139, ptr %151, align 4
  %152 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 1
  store i32 %141, ptr %152, align 8
  %153 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 3
  store i16 0, ptr %153, align 8
  %154 = getelementptr inbounds %struct.anon.140, ptr %153, i32 0, i32 1
  store i16 0, ptr %154, align 2
  %155 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 10
  store i32 0, ptr %155, align 8
  %156 = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 8
  %157 = load i16, ptr %156, align 2
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %184, label %159

159:                                              ; preds = %132
  %160 = getelementptr inbounds %struct.dst_entry, ptr %27, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.dst_ops, ptr %161, i32 0, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = tail call ptr %163(ptr noundef nonnull %27, i32 noundef 0) #22
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %142, align 4
  %167 = and i8 %134, 28
  store i8 %167, ptr %144, align 4
  %168 = and i8 %134, 1
  %169 = icmp eq i8 %168, 0
  %170 = select i1 %169, i8 0, i8 -3
  store i8 %170, ptr %145, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %171 = call ptr @ip_route_output_key_hash_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #22
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  %173 = load i8, ptr %146, align 2
  %174 = icmp eq i8 %173, 0
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %181, label %176

176:                                              ; preds = %166
  %177 = load ptr, ptr %171, align 4
  %178 = getelementptr inbounds %struct.net_device, ptr %177, i32 0, i32 17
  %179 = load i32, ptr %178, align 4
  store i32 %179, ptr %8, align 8
  %180 = call ptr @xfrm_lookup_route(ptr noundef nonnull @init_net, ptr noundef %171, ptr noundef nonnull %8, ptr noundef %1, i32 noundef 0) #22
  br label %181

181:                                              ; preds = %176, %166
  %182 = phi ptr [ %171, %166 ], [ %180, %176 ]
  %183 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %242, label %184

184:                                              ; preds = %181, %159, %132
  %185 = phi ptr [ %27, %159 ], [ %27, %132 ], [ %182, %181 ]
  %186 = phi i1 [ false, %159 ], [ false, %132 ], [ true, %181 ]
  %187 = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 7
  %192 = load i16, ptr %191, align 4
  %193 = and i16 %192, 64
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %190, %184
  %196 = getelementptr inbounds %struct.xfrm_dst, ptr %185, i32 0, i32 3
  %197 = load ptr, ptr %196, align 4
  br label %198

198:                                              ; preds = %195, %190
  %199 = phi ptr [ %197, %195 ], [ %185, %190 ]
  call fastcc void @__ip_rt_update_pmtu(ptr noundef %199, ptr noundef nonnull %8, i32 noundef %2)
  %200 = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 8
  %201 = load i16, ptr %200, align 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.dst_entry, ptr %185, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.dst_ops, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 4
  %208 = call ptr %207(ptr noundef %185, i32 noundef 0) #22
  br label %209

209:                                              ; preds = %203, %198
  %210 = phi ptr [ %208, %203 ], [ %185, %198 ]
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %233

212:                                              ; preds = %209
  br i1 %186, label %213, label %214

213:                                              ; preds = %212
  call void @dst_release(ptr noundef %185) #22
  br label %214

214:                                              ; preds = %213, %212
  %215 = load i8, ptr %144, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %142, align 4
  %216 = and i8 %215, 28
  store i8 %216, ptr %144, align 4
  %217 = and i8 %215, 1
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %218, i8 0, i8 -3
  store i8 %219, ptr %145, align 1
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %220 = call ptr @ip_route_output_key_hash_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  %221 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  %222 = load i8, ptr %146, align 2
  %223 = icmp eq i8 %222, 0
  %224 = select i1 %221, i1 true, i1 %223
  br i1 %224, label %230, label %225

225:                                              ; preds = %214
  %226 = load ptr, ptr %220, align 4
  %227 = getelementptr inbounds %struct.net_device, ptr %226, i32 0, i32 17
  %228 = load i32, ptr %227, align 4
  store i32 %228, ptr %8, align 8
  %229 = call ptr @xfrm_lookup_route(ptr noundef nonnull @init_net, ptr noundef %220, ptr noundef nonnull %8, ptr noundef %1, i32 noundef 0) #22
  br label %230

230:                                              ; preds = %225, %214
  %231 = phi ptr [ %220, %214 ], [ %229, %225 ]
  %232 = icmp ugt ptr %231, inttoptr (i32 -4096 to ptr)
  br i1 %232, label %242, label %234

233:                                              ; preds = %209
  br i1 %186, label %234, label %242

234:                                              ; preds = %233, %230
  %235 = phi ptr [ %185, %233 ], [ %231, %230 ]
  %236 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 16
  store i16 -1, ptr %236, align 4
  %237 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 29
  store i32 0, ptr %237, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !24
  %238 = ptrtoint ptr %235 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #22, !srcloc !9
  %239 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %238, ptr %17) #22, !srcloc !25
  %240 = extractvalue { i32, i32 } %239, 0
  %241 = inttoptr i32 %240 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !26
  call void @dst_release(ptr noundef %241) #22
  br label %242

242:                                              ; preds = %234, %233, %230, %181, %103, %3
  %243 = phi ptr [ %27, %234 ], [ %27, %233 ], [ %27, %230 ], [ %27, %181 ], [ %27, %103 ], [ null, %3 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !27
  %244 = load i16, ptr %11, align 4
  %245 = add i16 %244, 1
  store i16 %245, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !28
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !30
  call void @dst_release(ptr noundef %243) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_route_output_flow(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fib_result, align 4
  %5 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false) #22
  %7 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = and i8 %6, 28
  store i8 %8, ptr %5, align 4
  %9 = and i8 %6, 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 0, i8 -3
  %12 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  store i8 %11, ptr %12, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %13 = call ptr @ip_route_output_key_hash_rcu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %1, align 8
  %23 = call ptr @xfrm_lookup_route(ptr noundef %0, ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef 0) #22
  br label %24

24:                                               ; preds = %19, %15, %3
  %25 = phi ptr [ %13, %3 ], [ %23, %19 ], [ %13, %15 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv4_redirect(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca %struct.fib_result, align 4
  %6 = alloca %struct.flowi4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  %9 = getelementptr inbounds i8, ptr %6, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i32 24, i1 false), !annotation !20
  %10 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iphdr, ptr %8, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  store i32 %2, ptr %6, align 8
  %16 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 4
  %20 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %3, ptr %20, align 2
  %21 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 6
  %22 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(17) %21, i8 0, i64 17, i1 false)
  store i32 %13, ptr %22, align 4
  %23 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %15, ptr %23, align 8
  %24 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 3
  %25 = getelementptr inbounds %struct.anon.140, ptr %24, i32 0, i32 1
  store i16 0, ptr %25, align 2
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %16, align 4
  %26 = and i8 %11, 28
  store i8 %26, ptr %18, align 4
  store i8 0, ptr %19, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %27 = call ptr @ip_route_output_key_hash_rcu(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #22
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  call fastcc void @__ip_do_redirect(ptr noundef %27, ptr noundef %0, ptr noundef nonnull %6, i1 noundef zeroext false)
  call void @dst_release(ptr noundef %27) #22
  br label %30

30:                                               ; preds = %29, %4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ip_do_redirect(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 17
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = getelementptr inbounds %struct.icmphdr, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %8, i32 %17
  %19 = getelementptr inbounds %struct.iphdr, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !20
  %23 = getelementptr inbounds %struct.icmphdr, ptr %12, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %125

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %125

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %20
  br i1 %34, label %35, label %125

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 68
  %37 = load volatile ptr, ptr %36, align 16
  %38 = icmp eq ptr %37, null
  %39 = icmp eq i32 %14, %20
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %125, label %41

41:                                               ; preds = %35
  %42 = getelementptr %struct.in_device, ptr %37, i32 0, i32 21, i32 1, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %46 = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %44, label %54, label %49

49:                                               ; preds = %41
  br i1 %48, label %125, label %50

50:                                               ; preds = %49
  %51 = getelementptr %struct.in_device, ptr %37, i32 0, i32 21, i32 1, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %125, label %59

54:                                               ; preds = %41
  br i1 %48, label %55, label %59

55:                                               ; preds = %54
  %56 = getelementptr %struct.in_device, ptr %37, i32 0, i32 21, i32 1, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %125, label %59

59:                                               ; preds = %55, %54, %50
  %60 = and i32 %14, 240
  %61 = icmp eq i32 %60, 224
  %62 = add i32 %14, 1
  %63 = icmp ult i32 %62, 2
  %64 = or i1 %63, %61
  br i1 %64, label %125, label %65

65:                                               ; preds = %59
  %66 = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = getelementptr %struct.in_device, ptr %37, i32 0, i32 21, i32 1, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = tail call i32 @inet_addr_onlink(ptr noundef nonnull %37, i32 noundef %14, i32 noundef %20) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %125, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %78 = getelementptr %struct.ipv4_devconf, ptr %77, i32 0, i32 1, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr %struct.in_device, ptr %37, i32 0, i32 21, i32 1, i32 4
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81, %76
  %86 = tail call i32 @ip_fib_check_default(i32 noundef %14, ptr noundef %22) #22
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %125

88:                                               ; preds = %69, %65
  %89 = tail call i32 @inet_addr_type(ptr noundef nonnull @init_net, i32 noundef %14) #22
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %125

91:                                               ; preds = %88, %85, %81
  %92 = load ptr, ptr %0, align 4
  %93 = tail call fastcc ptr @__ipv4_neigh_lookup(ptr noundef %92, i32 noundef %14)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load ptr, ptr %0, align 4
  %97 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %5, ptr noundef %96, i1 noundef zeroext true) #22
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi ptr [ %93, %91 ], [ %97, %95 ]
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %125, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.neighbour, ptr %99, i32 0, i32 12
  %103 = load i8, ptr %102, align 4
  %104 = and i8 %103, -34
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  call fastcc void @neigh_event_send(ptr noundef %99)
  br label %124

107:                                              ; preds = %101
  %108 = call fastcc i32 @fib_lookup(ptr noundef nonnull @init_net, ptr noundef %2, ptr noundef nonnull %6)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  call void @fib_select_path(ptr noundef nonnull @init_net, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1) #22
  %111 = getelementptr inbounds %struct.fib_result, ptr %6, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.flowi4, ptr %2, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = load i32, ptr %5, align 4
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = load i32, ptr @ip_rt_gc_timeout, align 4
  %118 = add i32 %117, %116
  call fastcc void @update_or_create_fnhe(ptr noundef %112, i32 noundef %114, i32 noundef %115, i32 noundef 0, i1 noundef zeroext false, i32 noundef %118)
  br label %119

119:                                              ; preds = %110, %107
  br i1 %3, label %120, label %122

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  store i16 -2, ptr %121, align 2
  br label %122

122:                                              ; preds = %120, %119
  %123 = call i32 @call_netevent_notifiers(i32 noundef 1, ptr noundef %99) #22
  br label %124

124:                                              ; preds = %122, %106
  call fastcc void @neigh_release(ptr noundef %99)
  br label %125

125:                                              ; preds = %124, %98, %88, %85, %73, %59, %55, %50, %49, %35, %31, %27, %4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipv4_sk_redirect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.fib_result, align 4
  %4 = alloca %struct.flowi4, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %7 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 24, i1 false), !annotation !20
  %8 = icmp eq ptr %1, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 30
  %17 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %18 = load volatile i32, ptr %17, align 4
  %19 = lshr i32 %18, 13
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = or i8 %21, %16
  %23 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %29 = load i16, ptr %28, align 4
  %30 = trunc i16 %29 to i8
  br label %31

31:                                               ; preds = %27, %9
  %32 = phi i8 [ -1, %9 ], [ %30, %27 ]
  %33 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %2
  %36 = phi i32 [ %11, %31 ], [ 0, %2 ]
  %37 = phi i8 [ %22, %31 ], [ 0, %2 ]
  %38 = phi i8 [ %32, %31 ], [ 0, %2 ]
  %39 = phi i32 [ %13, %31 ], [ 0, %2 ]
  %40 = phi i32 [ %34, %31 ], [ 0, %2 ]
  %41 = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.iphdr, ptr %6, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  store i32 %36, ptr %4, align 8
  %45 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %39, ptr %46, align 8
  %47 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  %48 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 4
  %49 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 %38, ptr %49, align 2
  %50 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 6
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 7
  store i32 0, ptr %51, align 8
  %52 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 9
  store i64 0, ptr %52, align 8
  %53 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  store i32 %40, ptr %53, align 4
  %54 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %42, ptr %54, align 4
  %55 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  store i32 %44, ptr %55, align 8
  %56 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 3
  store i16 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.anon.140, ptr %56, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 10
  store i32 0, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i32 28, i1 false) #22
  store i32 1, ptr %45, align 4
  %59 = and i8 %37, 28
  store i8 %59, ptr %47, align 4
  %60 = and i8 %37, 1
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, i8 0, i8 -3
  store i8 %62, ptr %48, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %63 = call ptr @ip_route_output_key_hash_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #22
  %64 = icmp ugt ptr %63, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %66, label %65

65:                                               ; preds = %35
  call fastcc void @__ip_do_redirect(ptr noundef %63, ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false)
  call void @dst_release(ptr noundef %63) #22
  br label %66

66:                                               ; preds = %65, %35
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_rt_get_source(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.fib_result, align 4
  %5 = alloca %struct.flowi4, align 8
  %6 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 4
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  br label %70

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false), !annotation !20
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 %23
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #22
  %25 = getelementptr inbounds i8, ptr %5, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %25, i8 0, i32 24, i1 false), !annotation !20
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %5, align 8
  %29 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 1
  %30 = getelementptr inbounds %struct.anon.76, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %29, align 4
  %34 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 2
  %35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %34, align 8
  %37 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 3
  %38 = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 30
  store i8 %40, ptr %37, align 4
  %41 = getelementptr inbounds %struct.flowi_common, ptr %5, i32 0, i32 4
  %42 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(23) %41, i8 0, i64 23, i1 false)
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %42, align 8
  %45 = getelementptr inbounds %struct.flowi4, ptr %5, i32 0, i32 2
  %46 = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  store i32 %47, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %48 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %18
  %52 = call i32 @fib_table_lookup(ptr noundef nonnull %49, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 1) #22
  %53 = icmp eq i32 %52, -11
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %18
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %59

55:                                               ; preds = %51
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %56 = icmp eq i32 %52, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 @fib_result_prefsrc(ptr noundef nonnull @init_net, ptr noundef nonnull %4) #22
  br label %68

59:                                               ; preds = %55, %54
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 7
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 2
  %64 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 8
  %65 = select i1 %63, ptr %64, ptr %46
  %66 = load i32, ptr %65, align 4
  %67 = call i32 @inet_select_addr(ptr noundef %60, i32 noundef %66, i32 noundef 0) #22
  br label %68

68:                                               ; preds = %59, %57
  %69 = phi i32 [ %58, %57 ], [ %67, %59 ]
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  br label %70

70:                                               ; preds = %68, %9
  %71 = phi i32 [ %17, %9 ], [ %69, %68 ]
  store i32 %71, ptr %0, align 1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fib_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %5 = load ptr, ptr %4, align 64
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @fib_table_lookup(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i32 noundef 1) #22
  %10 = icmp eq i32 %9, -11
  %11 = select i1 %10, i32 -101, i32 %9
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ -101, %3 ], [ %11, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_result_prefsrc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mtu_from_fib_result(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.fib_result, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fib_result, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 33), align 4
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.fib_info, ptr %7, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, ptr %11, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12, %2
  %17 = getelementptr [17 x i32], ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37, !prof !31

20:                                               ; preds = %16, %12
  %21 = tail call fastcc ptr @find_exception(ptr noundef %4, i32 noundef %1)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.fib_nh_exception, ptr %21, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.fib_nh_exception, ptr %21, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !31

33:                                               ; preds = %29, %23, %20
  %34 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %35 = load volatile i32, ptr %34, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 65535)
  br label %37

37:                                               ; preds = %33, %29, %16
  %38 = phi i32 [ %36, %33 ], [ %31, %29 ], [ %18, %16 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_exception(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 13
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %82, label %8

8:                                                ; preds = %2
  %9 = load volatile i32, ptr @fnhe_hashfun.___once_key, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15, !prof !17

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !20
  %12 = call zeroext i1 @__do_once_start(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull %4) #22
  br i1 %12, label %13, label %14, !prof !17

13:                                               ; preds = %11
  call void @get_random_bytes(ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key, i32 noundef 16) #22
  call void @__do_once_done(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull @fnhe_hashfun.___once_key, ptr noundef nonnull %4, ptr noundef null) #22
  br label %14

14:                                               ; preds = %13, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %15

15:                                               ; preds = %14, %8
  %16 = call i64 @siphash_1u32(i32 noundef %1, ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key) #22
  %17 = trunc i64 %16 to i32
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %20 = mul i32 %19, 1640531527
  %21 = xor i32 %20, %17
  %22 = mul i32 %21, 1640531527
  %23 = lshr i32 %22, 21
  %24 = getelementptr %struct.fnhe_hash_bucket, ptr %6, i32 %23
  br label %25

25:                                               ; preds = %29, %15
  %26 = phi ptr [ %24, %15 ], [ %27, %29 ]
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %82, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fib_nh_exception, ptr %27, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %25

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fib_nh_exception, ptr %27, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %33
  %38 = load volatile i32, ptr @jiffies, align 64
  %39 = sub i32 %35, %38
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %82

41:                                               ; preds = %37
  %42 = load volatile i32, ptr @fnhe_hashfun.___once_key, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48, !prof !17

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !20
  %45 = call zeroext i1 @__do_once_start(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull %3) #22
  br i1 %45, label %46, label %47, !prof !17

46:                                               ; preds = %44
  call void @get_random_bytes(ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key, i32 noundef 16) #22
  call void @__do_once_done(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull @fnhe_hashfun.___once_key, ptr noundef nonnull %3, ptr noundef null) #22
  br label %47

47:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %48

48:                                               ; preds = %47, %41
  %49 = call i64 @siphash_1u32(i32 noundef %1, ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key) #22
  %50 = trunc i64 %49 to i32
  %51 = lshr i64 %49, 32
  %52 = trunc i64 %51 to i32
  %53 = mul i32 %52, 1640531527
  %54 = xor i32 %53, %50
  %55 = mul i32 %54, 1640531527
  %56 = lshr i32 %55, 21
  call void @_raw_spin_lock_bh(ptr noundef nonnull @fnhe_lock) #22
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr %struct.fnhe_hash_bucket, ptr %57, i32 %56
  br label %59

59:                                               ; preds = %63, %48
  %60 = phi ptr [ %58, %48 ], [ %61, %63 ]
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.fib_nh_exception, ptr %61, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, %1
  br i1 %66, label %67, label %59

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.fib_nh_exception, ptr %61, i32 0, i32 2
  %69 = load ptr, ptr %61, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  store volatile ptr %69, ptr %60, align 4
  store i32 0, ptr %68, align 4
  %70 = getelementptr inbounds %struct.fib_nh_exception, ptr %61, i32 0, i32 7
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  store volatile ptr null, ptr %70, align 4
  call void @dst_dev_put(ptr noundef nonnull %71) #22
  call void @dst_release(ptr noundef nonnull %71) #22
  br label %74

74:                                               ; preds = %73, %67
  %75 = getelementptr inbounds %struct.fib_nh_exception, ptr %61, i32 0, i32 8
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store volatile ptr null, ptr %75, align 4
  call void @dst_dev_put(ptr noundef nonnull %76) #22
  call void @dst_release(ptr noundef nonnull %76) #22
  br label %79

79:                                               ; preds = %78, %74
  %80 = getelementptr inbounds %struct.fib_nh_exception, ptr %61, i32 0, i32 10
  call void @kvfree_call_rcu(ptr noundef %80, ptr noundef nonnull inttoptr (i32 40 to ptr)) #22
  br label %81

81:                                               ; preds = %79, %59
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @fnhe_lock) #22
  br label %82

82:                                               ; preds = %81, %37, %33, %25, %2
  %83 = phi ptr [ null, %2 ], [ %27, %37 ], [ %27, %33 ], [ null, %81 ], [ null, %25 ]
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_add_uncached_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #14, !srcloc !33
  %5 = add i32 %4, ptrtoint (ptr @rt_uncached_list to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 11
  store ptr %6, ptr %7, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %6) #22
  %8 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10
  %9 = getelementptr inbounds %struct.uncached_list, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.uncached_list, ptr %6, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %8, ptr %10, align 4
  store ptr %9, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_del_uncached_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %7) #22
  %8 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %7) #22
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_flush_dev(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %57

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 99
  br label %8

8:                                                ; preds = %53, %5
  %9 = phi i32 [ %2, %5 ], [ %54, %53 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @rt_uncached_list to i32)
  %13 = inttoptr i32 %12 to ptr
  tail call void @_raw_spin_lock_bh(ptr noundef %13) #22
  %14 = getelementptr inbounds %struct.uncached_list, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %53, label %17

17:                                               ; preds = %50, %8
  %18 = phi ptr [ %51, %50 ], [ %15, %8 ]
  %19 = getelementptr i8, ptr %18, i32 -108
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load ptr, ptr @blackhole_netdev, align 4
  store ptr %23, ptr %19, align 4
  %24 = load ptr, ptr @blackhole_netdev, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !34
  %28 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 99
  %29 = load ptr, ptr %28, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #14, !srcloc !33
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #22, !srcloc !35
  br label %38

38:                                               ; preds = %26, %22
  br i1 %6, label %50, label %39

39:                                               ; preds = %38
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !34
  %41 = load ptr, ptr %7, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #14, !srcloc !33
  %46 = add i32 %45, %42
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %47, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #22, !srcloc !35
  br label %50

50:                                               ; preds = %39, %38, %17
  %51 = load ptr, ptr %18, align 4
  %52 = icmp eq ptr %51, %14
  br i1 %52, label %53, label %17

53:                                               ; preds = %50, %8
  tail call void @_raw_spin_unlock_bh(ptr noundef %13) #22
  %54 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #23
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %8, label %57

57:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rt_dst_alloc(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = select i1 %3, i16 4, i16 0
  %7 = select i1 %4, i16 2, i16 0
  %8 = or i16 %7, %6
  %9 = tail call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %0, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %8) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %5
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %13 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 2
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 3
  store i16 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 4
  %17 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 9
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 8
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(7) %16, i8 0, i64 7, i1 false)
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rtable, ptr %9, i32 0, i32 10, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 6
  store ptr @ip_output, ptr %21, align 4
  %22 = icmp sgt i32 %1, -1
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.dst_entry, ptr %9, i32 0, i32 5
  store ptr @ip_local_deliver, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %11, %5
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_output(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_deliver(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rt_dst_clone(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 7
  %4 = load i16, ptr %3, align 4
  %5 = tail call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %0, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %4) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %2
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %9 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 3
  store i16 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 4
  %17 = load i8, ptr %16, align 2
  %18 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 4
  store i8 %17, ptr %18, align 2
  %19 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 6
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 9
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, -2
  %25 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = or i32 %27, %24
  store i32 %28, ptr %25, align 4
  %29 = load i32, ptr %22, align 4
  %30 = and i32 %29, 1
  %31 = or i32 %30, %24
  store i32 %31, ptr %25, align 4
  %32 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 7
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 7
  store i8 %33, ptr %34, align 4
  %35 = load i8, ptr %32, align 4
  switch i8 %35, label %43 [
    i8 2, label %36
    i8 10, label %40
  ]

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  store i32 %38, ptr %39, align 4
  br label %43

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %42 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %41, ptr noundef align 4 dereferenceable(16) %42, i32 16, i1 false)
  br label %43

43:                                               ; preds = %40, %36, %7
  %44 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 10
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 10, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 5
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 15
  %53 = load i16, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 15
  store i16 %53, ptr %54, align 4
  %55 = load volatile i32, ptr @jiffies, align 64
  %56 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 12
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  store ptr %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %43, %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_mc_validate_source(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq ptr %5, null
  %9 = and i32 %2, 240
  %10 = icmp eq i32 %9, 224
  %11 = or i1 %10, %8
  %12 = icmp eq i32 %2, -1
  %13 = or i1 %12, %11
  br i1 %13, label %49, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %16 = load i16, ptr %15, align 8
  %17 = icmp eq i16 %16, 8
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = and i32 %2, 255
  %20 = icmp eq i32 %19, 127
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %23 = getelementptr %struct.ipv4_devconf, ptr %22, i32 0, i32 1, i32 25
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr %struct.in_device, ptr %5, i32 0, i32 21, i32 1, i32 25
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %45

30:                                               ; preds = %18
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = and i32 %1, 16777215
  %34 = icmp eq i32 %33, 224
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  %41 = getelementptr i8, ptr %37, i32 %40
  %42 = getelementptr inbounds %struct.iphdr, ptr %41, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 2
  br i1 %44, label %48, label %49

45:                                               ; preds = %30, %26, %21
  %46 = tail call i32 @fib_validate_source(ptr noundef %0, i32 noundef %2, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6) #22
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %35, %32
  br label %49

49:                                               ; preds = %48, %45, %35, %26, %14, %7
  %50 = phi i32 [ 0, %48 ], [ -22, %7 ], [ -22, %14 ], [ -22, %26 ], [ -22, %35 ], [ %46, %45 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_validate_source(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_route_use_hint(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %9 = load volatile ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, -2
  %13 = inttoptr i32 %12 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4
  %14 = and i32 %2, 240
  %15 = icmp eq i32 %14, 224
  %16 = add i32 %2, 1
  %17 = icmp ult i32 %16, 2
  %18 = or i1 %17, %15
  br i1 %18, label %69, label %19

19:                                               ; preds = %6
  %20 = and i32 %2, 255
  %21 = icmp eq i32 %20, 127
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %24 = getelementptr %struct.ipv4_devconf, ptr %23, i32 0, i32 1, i32 25
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr %struct.in_device, ptr %9, i32 0, i32 21, i32 1, i32 25
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %27, %22, %19
  %32 = getelementptr inbounds %struct.rtable, ptr %13, i32 0, i32 3
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = and i8 %3, 28
  %37 = call i32 @fib_validate_source(ptr noundef %0, i32 noundef %2, i32 noundef %1, i8 noundef zeroext %36, i32 noundef 0, ptr noundef %4, ptr noundef %9, ptr noundef nonnull %7) #22
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %69, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %10, align 8
  br label %41

41:                                               ; preds = %39, %31
  %42 = phi i32 [ %40, %39 ], [ %11, %31 ]
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %46 = load i16, ptr %45, align 2
  %47 = lshr i16 %46, 14
  %48 = trunc i16 %47 to i8
  %49 = and i8 %48, 1
  %50 = or i8 %49, %44
  %51 = zext i8 %50 to i16
  %52 = shl nuw nsw i16 %51, 14
  %53 = and i16 %46, -16385
  %54 = or i16 %52, %53
  store i16 %54, ptr %45, align 2
  %55 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %42, ptr %55, align 8
  %56 = and i32 %42, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %41
  %59 = and i32 %42, -2
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = inttoptr i32 %59 to ptr
  %63 = getelementptr inbounds %struct.dst_entry, ptr %62, i32 0, i32 18
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #22, !srcloc !9
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 0, i32 1, ptr elementtype(i32) %63) #22, !srcloc !22
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  br label %78

68:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 231, i32 noundef 9, ptr noundef null) #22
  br label %78

69:                                               ; preds = %35, %27, %6
  %70 = phi i32 [ -22, %6 ], [ %37, %35 ], [ -22, %27 ]
  %71 = call i32 @llvm.read_register.i32(metadata !0) #22
  %72 = inttoptr i32 %71 to ptr
  %73 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #14, !srcloc !33
  %74 = add i32 %73, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 5) to i32)
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %69, %68, %67, %58, %41
  %79 = phi i32 [ %70, %69 ], [ 0, %41 ], [ 0, %58 ], [ 0, %67 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_route_input_noref(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
  %6 = alloca %struct.fib_result, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false), !annotation !20
  %7 = and i8 %3, 28
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %8 = call i32 @ip_route_input_rcu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %7, ptr noundef %4, ptr noundef nonnull %6)
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #22
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ip_route_input_rcu(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flowi4, align 8
  %9 = alloca i32, align 4
  %10 = and i32 %1, 240
  %11 = icmp eq i32 %10, 224
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 68
  %13 = load volatile ptr, ptr %12, align 16
  br i1 %11, label %14, label %128

14:                                               ; preds = %6
  %15 = icmp eq ptr %13, null
  br i1 %15, label %413, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = getelementptr inbounds %struct.iphdr, ptr %22, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = tail call i32 @ip_check_mc_rcu(ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %24) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 15
  %29 = load i64, ptr %28, align 16
  %30 = and i64 %29, 2097152
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %413, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 68
  %36 = load volatile ptr, ptr %35, align 16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %413, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr %17, align 8
  %40 = load i16, ptr %19, align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = getelementptr inbounds %struct.iphdr, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = tail call i32 @ip_check_mc_rcu(ptr noundef nonnull %36, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %44) #22
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %413, label %47

47:                                               ; preds = %38, %16
  %48 = load volatile ptr, ptr %12, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4
  %49 = icmp eq ptr %48, null
  %50 = and i32 %2, 240
  %51 = icmp eq i32 %50, 224
  %52 = or i1 %51, %49
  %53 = icmp eq i32 %2, -1
  %54 = or i1 %53, %52
  br i1 %54, label %126, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %57 = load i16, ptr %56, align 8
  %58 = icmp eq i16 %57, 8
  br i1 %58, label %59, label %126

59:                                               ; preds = %55
  %60 = and i32 %2, 255
  %61 = icmp eq i32 %60, 127
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %64 = getelementptr %struct.ipv4_devconf, ptr %63, i32 0, i32 1, i32 25
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = getelementptr %struct.in_device, ptr %48, i32 0, i32 21, i32 1, i32 25
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %126, label %84

71:                                               ; preds = %59
  %72 = icmp eq i32 %2, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %71
  %74 = and i32 %1, 16777215
  %75 = icmp eq i32 %74, 224
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %17, align 8
  %78 = load i16, ptr %19, align 4
  %79 = zext i16 %78 to i32
  %80 = getelementptr i8, ptr %77, i32 %79
  %81 = getelementptr inbounds %struct.iphdr, ptr %80, i32 0, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 2
  br i1 %83, label %87, label %126

84:                                               ; preds = %71, %67, %62
  %85 = call i32 @fib_validate_source(ptr noundef %0, i32 noundef %2, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %48, ptr noundef nonnull %9) #22
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %126, label %87

87:                                               ; preds = %84, %76, %73
  %88 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %89 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %90 = getelementptr %struct.ipv4_devconf, ptr %89, i32 0, i32 1, i32 15
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = getelementptr %struct.in_device, ptr %48, i32 0, i32 21, i32 1, i32 15
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93, %87
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i16 [ 4, %97 ], [ 0, %93 ]
  %100 = call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %88, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %99) #22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %126, label %102

102:                                              ; preds = %98
  %103 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %104 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 1
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 2
  store i32 -1610612736, ptr %105, align 4
  %106 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 3
  store i16 5, ptr %106, align 4
  %107 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 4
  %108 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 9
  store i32 0, ptr %108, align 4
  %109 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 8
  store i32 0, ptr %109, align 4
  %110 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(7) %107, i8 0, i64 7, i1 false) #22
  store volatile ptr %110, ptr %110, align 4
  %111 = getelementptr inbounds %struct.rtable, ptr %100, i32 0, i32 10, i32 1
  store ptr %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dst_entry, ptr %100, i32 0, i32 6
  %113 = getelementptr inbounds %struct.dst_entry, ptr %100, i32 0, i32 5
  store ptr @ip_local_deliver, ptr %113, align 4
  store ptr @ip_rt_bug, ptr %112, align 4
  store i8 1, ptr %107, align 2
  %114 = call i32 @llvm.read_register.i32(metadata !0) #22
  %115 = inttoptr i32 %114 to ptr
  %116 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %115) #14, !srcloc !33
  %117 = add i32 %116, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 1) to i32)
  %118 = inttoptr i32 %117 to ptr
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  store i32 %120, ptr %118, align 4
  %121 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %122 = load i16, ptr %121, align 2
  %123 = or i16 %122, 16384
  store i16 %123, ptr %121, align 2
  %124 = ptrtoint ptr %100 to i32
  %125 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %124, ptr %125, align 8
  br label %126

126:                                              ; preds = %102, %98, %84, %76, %67, %55, %47
  %127 = phi i32 [ 0, %102 ], [ %85, %84 ], [ -22, %76 ], [ -22, %67 ], [ -22, %55 ], [ -22, %47 ], [ -105, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  br label %413

128:                                              ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false) #22, !annotation !20
  %129 = icmp eq ptr %13, null
  br i1 %129, label %411, label %130

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, -2
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %166, label %135

135:                                              ; preds = %130
  %136 = inttoptr i32 %133 to ptr
  %137 = getelementptr inbounds %struct.dst_entry, ptr %136, i32 0, i32 7
  %138 = load i16, ptr %137, align 4
  %139 = and i16 %138, 128
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.metadata_dst, ptr %136, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.metadata_dst, ptr %136, i32 0, i32 2
  br label %155

147:                                              ; preds = %141, %135
  %148 = getelementptr inbounds %struct.dst_entry, ptr %136, i32 0, i32 13
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %168, label %151

151:                                              ; preds = %147
  %152 = load i16, ptr %149, align 4
  switch i16 %152, label %168 [
    i16 2, label %153
    i16 4, label %153
  ]

153:                                              ; preds = %151, %151
  %154 = getelementptr inbounds %struct.lwtunnel_state, ptr %149, i32 0, i32 7
  br label %155

155:                                              ; preds = %153, %145
  %156 = phi ptr [ %146, %145 ], [ %154, %153 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ip_tunnel_info, ptr %156, i32 0, i32 3
  %160 = load i8, ptr %159, align 1
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load i64, ptr %156, align 8
  %165 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 9
  store i64 %164, ptr %165, align 8
  br label %168

166:                                              ; preds = %130
  %167 = icmp eq i32 %132, 0
  br i1 %167, label %173, label %172

168:                                              ; preds = %163, %158, %155, %151, %147
  %169 = and i32 %132, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  tail call void @dst_release(ptr noundef nonnull %136) #22
  br label %172

172:                                              ; preds = %171, %168, %166
  store i32 0, ptr %131, align 8
  br label %173

173:                                              ; preds = %172, %166
  %174 = and i32 %2, 240
  %175 = icmp eq i32 %174, 224
  %176 = icmp eq i32 %2, -1
  %177 = or i1 %176, %175
  br i1 %177, label %402, label %178

178:                                              ; preds = %173
  %179 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  store ptr null, ptr %179, align 4
  %180 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 8
  store ptr null, ptr %180, align 4
  %181 = icmp eq i32 %1, -1
  %182 = or i32 %2, %1
  %183 = icmp eq i32 %182, 0
  %184 = or i1 %181, %183
  br i1 %184, label %271, label %185

185:                                              ; preds = %178
  %186 = icmp eq i32 %2, 0
  br i1 %186, label %402, label %187

187:                                              ; preds = %185
  %188 = icmp eq i32 %1, 0
  br i1 %188, label %394, label %189

189:                                              ; preds = %187
  %190 = and i32 %1, 255
  %191 = icmp eq i32 %190, 127
  br i1 %191, label %192, label %201

192:                                              ; preds = %189
  %193 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %194 = getelementptr %struct.ipv4_devconf, ptr %193, i32 0, i32 1, i32 25
  %195 = load i32, ptr %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %192
  %198 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 25
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %394, label %213

201:                                              ; preds = %189
  %202 = and i32 %2, 255
  %203 = icmp eq i32 %202, 127
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %206 = getelementptr %struct.ipv4_devconf, ptr %205, i32 0, i32 1, i32 25
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 25
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %402, label %213

213:                                              ; preds = %209, %204, %201, %197, %192
  store i32 0, ptr %8, align 8
  %214 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 17
  %215 = load i32, ptr %214, align 4
  %216 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 1
  store i32 %215, ptr %216, align 4
  %217 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %218 = load i32, ptr %217, align 4
  %219 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 2
  store i32 %218, ptr %219, align 8
  %220 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 3
  store i8 %3, ptr %220, align 4
  %221 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 4
  store i8 0, ptr %221, align 1
  %222 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 6
  store i8 0, ptr %222, align 1
  %223 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 2
  store i32 %1, ptr %223, align 4
  %224 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 1
  store i32 %2, ptr %224, align 8
  %225 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 8
  store i32 0, ptr %225, align 4
  %226 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 10
  store i32 0, ptr %226, align 8
  %227 = getelementptr inbounds %struct.flowi_common, ptr %8, i32 0, i32 5
  store i8 0, ptr %227, align 2
  %228 = getelementptr inbounds %struct.flowi4, ptr %8, i32 0, i32 3
  %229 = getelementptr inbounds %struct.anon.140, ptr %228, i32 0, i32 1
  store i16 0, ptr %229, align 2
  store i16 0, ptr %228, align 8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %230 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 12), align 64
  %231 = load volatile ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %213
  %234 = call i32 @fib_table_lookup(ptr noundef nonnull %231, ptr noundef nonnull %8, ptr noundef %5, i32 noundef 1) #22
  %235 = icmp eq i32 %234, -11
  br i1 %235, label %236, label %237

236:                                              ; preds = %233, %213
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %239

237:                                              ; preds = %233
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %238 = icmp eq i32 %234, 0
  br i1 %238, label %245, label %239

239:                                              ; preds = %237, %236
  %240 = phi i32 [ -101, %236 ], [ %234, %237 ]
  %241 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 0
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %242, 0
  %244 = select i1 %243, i32 -113, i32 %240
  br label %384

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %247 = load i8, ptr %246, align 2
  switch i8 %247, label %262 [
    i8 3, label %248
    i8 2, label %259
  ]

248:                                              ; preds = %245
  %249 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %250 = getelementptr %struct.ipv4_devconf, ptr %249, i32 0, i32 1, i32 31
  %251 = load i32, ptr %250, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %248
  %254 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 31
  %255 = load i32, ptr %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %253, %248
  %258 = zext i1 %252 to i32
  br label %271

259:                                              ; preds = %245
  %260 = call i32 @fib_validate_source(ptr noundef %0, i32 noundef %2, i32 noundef %1, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %7) #22
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %402, label %292

262:                                              ; preds = %245
  %263 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 0
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %384, label %266

266:                                              ; preds = %262
  %267 = icmp eq i8 %247, 1
  br i1 %267, label %268, label %394

268:                                              ; preds = %266, %253
  %269 = zext i8 %3 to i32
  %270 = call fastcc i32 @ip_mkroute_input(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %13, i32 noundef %1, i32 noundef %2, i32 noundef %269) #22
  br label %411

271:                                              ; preds = %257, %178
  %272 = phi i32 [ 1, %178 ], [ %258, %257 ]
  %273 = phi i32 [ -22, %178 ], [ 0, %257 ]
  %274 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %275 = load i16, ptr %274, align 8
  %276 = icmp eq i16 %275, 8
  br i1 %276, label %277, label %411

277:                                              ; preds = %271
  %278 = icmp eq i32 %2, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %277
  %280 = call i32 @fib_validate_source(ptr noundef %0, i32 noundef %2, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %7) #22
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %402, label %282

282:                                              ; preds = %279, %277
  %283 = phi i32 [ %273, %277 ], [ %280, %279 ]
  %284 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  store i8 3, ptr %284, align 2
  %285 = call i32 @llvm.read_register.i32(metadata !0) #22
  %286 = inttoptr i32 %285 to ptr
  %287 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %286) #14, !srcloc !33
  %288 = add i32 %287, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 3) to i32)
  %289 = inttoptr i32 %288 to ptr
  %290 = load i32, ptr %289, align 4
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 4
  br label %292

292:                                              ; preds = %384, %282, %259
  %293 = phi i32 [ %272, %282 ], [ 1, %384 ], [ 1, %259 ]
  %294 = phi i32 [ -1879048192, %282 ], [ -2147483648, %384 ], [ -2147483648, %259 ]
  %295 = phi i32 [ %283, %282 ], [ %385, %384 ], [ %260, %259 ]
  %296 = load ptr, ptr %179, align 4
  %297 = icmp ne ptr %296, null
  %298 = load i32, ptr %7, align 4
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %297, i1 %299, i1 false
  %301 = zext i1 %300 to i32
  %302 = and i32 %293, %301
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %325, label %304

304:                                              ; preds = %292
  %305 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 6
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.fib_nh_common, ptr %306, i32 0, i32 12
  %308 = load volatile ptr, ptr %307, align 4
  %309 = icmp eq ptr %308, null
  br i1 %309, label %325, label %310

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.dst_entry, ptr %308, i32 0, i32 8
  %312 = load i16, ptr %311, align 2
  %313 = icmp eq i16 %312, -1
  br i1 %313, label %314, label %325

314:                                              ; preds = %310
  %315 = getelementptr inbounds %struct.rtable, ptr %308, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %325

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %321 = load i16, ptr %320, align 2
  %322 = or i16 %321, 16384
  store i16 %322, ptr %320, align 2
  %323 = ptrtoint ptr %308 to i32
  %324 = or i32 %323, 1
  store i32 %324, ptr %131, align 8
  br label %411

325:                                              ; preds = %314, %310, %304, %292
  %326 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %327 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %328 = load i8, ptr %327, align 2
  %329 = zext i8 %328 to i16
  %330 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %331 = getelementptr %struct.ipv4_devconf, ptr %330, i32 0, i32 1, i32 15
  %332 = load i32, ptr %331, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %325
  %335 = getelementptr %struct.in_device, ptr %13, i32 0, i32 21, i32 1, i32 15
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %334, %325
  br label %339

339:                                              ; preds = %338, %334
  %340 = phi i16 [ 4, %338 ], [ 0, %334 ]
  %341 = call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %326, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %340) #22
  %342 = icmp eq ptr %341, null
  br i1 %342, label %411, label %343

343:                                              ; preds = %339
  %344 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %345 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 1
  store i32 %344, ptr %345, align 4
  %346 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 2
  store i32 %294, ptr %346, align 4
  %347 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 3
  store i16 %329, ptr %347, align 4
  %348 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 4
  %349 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 9
  store i32 0, ptr %349, align 4
  %350 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 8
  store i32 0, ptr %350, align 4
  %351 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(7) %348, i8 0, i64 7, i1 false) #22
  store volatile ptr %351, ptr %351, align 4
  %352 = getelementptr inbounds %struct.rtable, ptr %341, i32 0, i32 10, i32 1
  store ptr %351, ptr %352, align 4
  %353 = getelementptr inbounds %struct.dst_entry, ptr %341, i32 0, i32 6
  %354 = getelementptr inbounds %struct.dst_entry, ptr %341, i32 0, i32 5
  store ptr @ip_local_deliver, ptr %354, align 4
  store ptr @ip_rt_bug, ptr %353, align 4
  store i8 1, ptr %348, align 2
  %355 = call i32 @llvm.read_register.i32(metadata !0) #22
  %356 = inttoptr i32 %355 to ptr
  %357 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %356) #14, !srcloc !33
  %358 = add i32 %357, ptrtoint (ptr @rt_cache_stat to i32)
  %359 = inttoptr i32 %358 to ptr
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 1
  store i32 %361, ptr %359, align 4
  %362 = load i8, ptr %327, align 2
  %363 = icmp eq i8 %362, 7
  br i1 %363, label %364, label %370

364:                                              ; preds = %343
  store ptr @ip_error, ptr %354, align 4
  %365 = trunc i32 %295 to i16
  %366 = sub i16 0, %365
  %367 = getelementptr inbounds %struct.dst_entry, ptr %341, i32 0, i32 15
  store i16 %366, ptr %367, align 4
  %368 = load i32, ptr %346, align 4
  %369 = and i32 %368, 2147483647
  store i32 %369, ptr %346, align 4
  br label %370

370:                                              ; preds = %364, %343
  br i1 %303, label %379, label %371

371:                                              ; preds = %370
  %372 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 6
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.fib_nh_common, ptr %373, i32 0, i32 7
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.dst_entry, ptr %341, i32 0, i32 13
  store ptr %375, ptr %376, align 4
  %377 = call fastcc zeroext i1 @rt_cache_route(ptr noundef %373, ptr noundef nonnull %341) #22
  br i1 %377, label %379, label %378, !prof !31

378:                                              ; preds = %371
  call void @rt_add_uncached_list(ptr noundef nonnull %341) #22
  br label %379

379:                                              ; preds = %378, %371, %370
  %380 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %381 = load i16, ptr %380, align 2
  %382 = or i16 %381, 16384
  store i16 %382, ptr %380, align 2
  %383 = ptrtoint ptr %341 to i32
  store i32 %383, ptr %131, align 8
  br label %411

384:                                              ; preds = %262, %239
  %385 = phi i32 [ %244, %239 ], [ -113, %262 ]
  %386 = call i32 @llvm.read_register.i32(metadata !0) #22
  %387 = inttoptr i32 %386 to ptr
  %388 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %387) #14, !srcloc !33
  %389 = add i32 %388, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 2) to i32)
  %390 = inttoptr i32 %389 to ptr
  %391 = load i32, ptr %390, align 4
  %392 = add i32 %391, 1
  store i32 %392, ptr %390, align 4
  %393 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  store i8 7, ptr %393, align 2
  store ptr null, ptr %179, align 4
  store ptr null, ptr %180, align 4
  br label %292

394:                                              ; preds = %266, %197, %187
  %395 = call i32 @llvm.read_register.i32(metadata !0) #22
  %396 = inttoptr i32 %395 to ptr
  %397 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %396) #14, !srcloc !33
  %398 = add i32 %397, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 4) to i32)
  %399 = inttoptr i32 %398 to ptr
  %400 = load i32, ptr %399, align 4
  %401 = add i32 %400, 1
  store i32 %401, ptr %399, align 4
  br label %411

402:                                              ; preds = %279, %259, %209, %185, %173
  %403 = phi i32 [ -22, %173 ], [ %280, %279 ], [ -22, %185 ], [ %260, %259 ], [ -22, %209 ]
  %404 = call i32 @llvm.read_register.i32(metadata !0) #22
  %405 = inttoptr i32 %404 to ptr
  %406 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %405) #14, !srcloc !33
  %407 = add i32 %406, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 5) to i32)
  %408 = inttoptr i32 %407 to ptr
  %409 = load i32, ptr %408, align 4
  %410 = add i32 %409, 1
  store i32 %410, ptr %408, align 4
  br label %411

411:                                              ; preds = %402, %394, %379, %339, %319, %271, %268, %128
  %412 = phi i32 [ %403, %402 ], [ 0, %319 ], [ 0, %379 ], [ %270, %268 ], [ -22, %128 ], [ -22, %271 ], [ -22, %394 ], [ -105, %339 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  br label %413

413:                                              ; preds = %411, %126, %38, %32, %27, %14
  %414 = phi i32 [ %412, %411 ], [ -22, %14 ], [ %127, %126 ], [ -22, %38 ], [ -22, %27 ], [ -22, %32 ]
  ret i32 %414
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_check_mc_rcu(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_route_output_key_hash(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.fib_result, align 4
  %5 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 3
  %6 = load i8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 28, i1 false)
  %7 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 1
  store i32 1, ptr %7, align 4
  %8 = and i8 %6, 28
  store i8 %8, ptr %5, align 4
  %9 = and i8 %6, 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i8 0, i8 -3
  %12 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  store i8 %11, ptr %12, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %13 = call ptr @ip_route_output_key_hash_rcu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2)
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #22
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_route_output_key_hash_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  %10 = and i32 %7, 240
  %11 = icmp eq i32 %10, 224
  %12 = icmp eq i32 %7, -1
  %13 = or i1 %12, %11
  br i1 %13, label %371, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 240
  %20 = icmp eq i32 %19, 224
  %21 = icmp eq i32 %18, -1
  %22 = or i1 %21, %20
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = tail call ptr @__ip_dev_find(ptr noundef %0, i32 noundef %7, i1 noundef zeroext false) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %371, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %1, align 8
  br label %154

29:                                               ; preds = %16, %14
  %30 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = tail call ptr @__ip_dev_find(ptr noundef %0, i32 noundef %7, i1 noundef zeroext false) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %371, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %1, align 8
  br label %39

39:                                               ; preds = %37, %29, %4
  %40 = phi i32 [ %5, %4 ], [ %38, %37 ], [ %5, %29 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %39
  %43 = tail call ptr @dev_get_by_index_rcu(ptr noundef %0, i32 noundef %40) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %371, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 14
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %371, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 68
  %52 = load volatile ptr, ptr %51, align 16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %371, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 16777215
  %58 = icmp eq i32 %57, 224
  %59 = icmp eq i32 %56, -1
  %60 = or i1 %59, %58
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %54
  %66 = load i32, ptr %6, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %154

68:                                               ; preds = %65
  %69 = tail call i32 @inet_select_addr(ptr noundef nonnull %43, i32 noundef 0, i32 noundef 253) #22
  store i32 %69, ptr %6, align 8
  br label %154

70:                                               ; preds = %61
  %71 = load i32, ptr %6, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = and i32 %56, 240
  %75 = icmp eq i32 %74, 224
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  br label %82

80:                                               ; preds = %73
  %81 = icmp eq i32 %56, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %79, %76 ], [ 254, %80 ]
  %84 = tail call i32 @inet_select_addr(ptr noundef nonnull %43, i32 noundef 0, i32 noundef %83) #22
  store i32 %84, ptr %6, align 8
  br label %85

85:                                               ; preds = %82, %80, %70, %39
  %86 = phi ptr [ %43, %70 ], [ %43, %80 ], [ null, %39 ], [ %43, %82 ]
  %87 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, ptr %6, align 8
  store i32 %91, ptr %87, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 16777343, ptr %6, align 8
  store i32 16777343, ptr %87, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  %96 = load ptr, ptr %95, align 64
  store i32 1, ptr %1, align 8
  %97 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  store i8 2, ptr %97, align 2
  br label %154

98:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %99 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 12
  %100 = load ptr, ptr %99, align 64
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = tail call i32 @fib_table_lookup(ptr noundef nonnull %101, ptr noundef %1, ptr noundef %2, i32 noundef 1) #22
  %105 = icmp eq i32 %104, -11
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %98
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %109

107:                                              ; preds = %103
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %108 = icmp eq i32 %104, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ -101, %106 ], [ %104, %107 ]
  %111 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 7
  store ptr null, ptr %111, align 4
  %112 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 8
  store ptr null, ptr %112, align 4
  %113 = load i32, ptr %1, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i32, ptr %6, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = tail call i32 @inet_select_addr(ptr noundef %86, i32 noundef 0, i32 noundef 253) #22
  store i32 %119, ptr %6, align 8
  br label %120

120:                                              ; preds = %118, %115
  %121 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  store i8 1, ptr %121, align 2
  br label %154

122:                                              ; preds = %109
  %123 = inttoptr i32 %110 to ptr
  br label %371

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  %126 = load i8, ptr %125, align 2
  %127 = icmp eq i8 %126, 2
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load i32, ptr %6, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 7
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.fib_info, ptr %133, i32 0, i32 11
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, ptr %87, align 4
  br label %139

139:                                              ; preds = %137, %131
  %140 = phi i32 [ %138, %137 ], [ %135, %131 ]
  store i32 %140, ptr %6, align 8
  br label %141

141:                                              ; preds = %139, %128
  %142 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %143 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  %144 = load ptr, ptr %143, align 64
  %145 = load ptr, ptr %142, align 4
  %146 = getelementptr inbounds %struct.fib_nh_common, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 17
  %149 = load i32, ptr %148, align 4
  store i32 %149, ptr %1, align 8
  br label %154

150:                                              ; preds = %124
  tail call void @fib_select_path(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %3) #22
  %151 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %152 = load ptr, ptr %151, align 4
  %153 = load ptr, ptr %152, align 4
  br label %154

154:                                              ; preds = %150, %141, %120, %94, %68, %65, %26
  %155 = phi ptr [ %24, %26 ], [ %43, %65 ], [ %43, %68 ], [ %86, %120 ], [ %144, %141 ], [ %153, %150 ], [ %96, %94 ]
  %156 = phi i32 [ 0, %26 ], [ %5, %65 ], [ %5, %68 ], [ %5, %120 ], [ %147, %141 ], [ %5, %150 ], [ %5, %94 ]
  %157 = phi i32 [ 0, %26 ], [ 0, %65 ], [ 0, %68 ], [ 0, %120 ], [ -2147483648, %141 ], [ 0, %150 ], [ -2147483648, %94 ]
  %158 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 7
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 3
  %161 = load i8, ptr %160, align 2
  %162 = zext i8 %161 to i16
  %163 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 68
  %164 = load volatile ptr, ptr %163, align 16
  %165 = icmp eq ptr %164, null
  br i1 %165, label %371, label %166

166:                                              ; preds = %154
  %167 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %168 = getelementptr %struct.ipv4_devconf, ptr %167, i32 0, i32 1, i32 25
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %189, !prof !31

171:                                              ; preds = %166
  %172 = getelementptr %struct.in_device, ptr %164, i32 0, i32 21, i32 1, i32 25
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %189, !prof !31

175:                                              ; preds = %171
  %176 = load i32, ptr %6, align 8
  %177 = and i32 %176, 255
  %178 = icmp eq i32 %177, 127
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 14
  %181 = load i32, ptr %180, align 8
  %182 = and i32 %181, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 15
  %186 = load i64, ptr %185, align 16
  %187 = and i64 %186, 262144
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %371, label %189

189:                                              ; preds = %184, %179, %175, %171, %166
  %190 = getelementptr inbounds %struct.flowi4, ptr %1, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 14
  br label %208

195:                                              ; preds = %189
  %196 = and i32 %191, 240
  %197 = icmp eq i32 %196, 224
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 14
  br label %212

200:                                              ; preds = %195
  %201 = icmp eq i32 %191, 0
  br i1 %201, label %371, label %202

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 14
  %204 = load i32, ptr %203, align 8
  %205 = shl i32 %204, 28
  %206 = and i32 %205, -2147483648
  %207 = or i32 %206, %157
  switch i8 %161, label %232 [
    i8 3, label %208
    i8 5, label %212
  ]

208:                                              ; preds = %202, %193
  %209 = phi i32 [ %157, %193 ], [ %207, %202 ]
  %210 = phi ptr [ %194, %193 ], [ %203, %202 ]
  %211 = or i32 %209, -1879048192
  br label %300

212:                                              ; preds = %202, %198
  %213 = phi i32 [ %157, %198 ], [ %207, %202 ]
  %214 = phi ptr [ %199, %198 ], [ %203, %202 ]
  %215 = or i32 %213, -1610612736
  %216 = load i32, ptr %6, align 8
  %217 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 5
  %218 = load i8, ptr %217, align 2
  %219 = tail call i32 @ip_check_mc_rcu(ptr noundef nonnull %164, i32 noundef %191, i32 noundef %216, i8 noundef zeroext %218) #22
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 536870912, i32 %215
  %222 = icmp eq ptr %159, null
  br i1 %222, label %300, label %223

223:                                              ; preds = %212
  %224 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 1
  %225 = load i8, ptr %224, align 4
  %226 = icmp ult i8 %225, 4
  br i1 %226, label %300, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %229 = load ptr, ptr %228, align 4
  %230 = load i32, ptr %190, align 4
  %231 = tail call fastcc ptr @find_exception(ptr noundef %229, i32 noundef %230) #22
  br i1 %220, label %250, label %300

232:                                              ; preds = %202
  %233 = icmp eq i8 %161, 2
  %234 = icmp ne i32 %156, 0
  %235 = and i1 %234, %233
  %236 = icmp eq ptr %159, null
  br i1 %235, label %237, label %238

237:                                              ; preds = %232
  br i1 %236, label %300, label %243

238:                                              ; preds = %232
  br i1 %236, label %300, label %239

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %241 = load ptr, ptr %240, align 4
  %242 = tail call fastcc ptr @find_exception(ptr noundef %241, i32 noundef %191) #22
  br label %250

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.net_device, ptr %155, i32 0, i32 17
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, %156
  %247 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %248 = load ptr, ptr %247, align 4
  %249 = tail call fastcc ptr @find_exception(ptr noundef %248, i32 noundef %191) #22
  br i1 %246, label %250, label %300

250:                                              ; preds = %243, %239, %227
  %251 = phi ptr [ %231, %227 ], [ %249, %243 ], [ %242, %239 ]
  %252 = phi ptr [ %229, %227 ], [ %248, %243 ], [ %241, %239 ]
  %253 = phi ptr [ %214, %227 ], [ %203, %243 ], [ %203, %239 ]
  %254 = phi i16 [ 5, %227 ], [ 2, %243 ], [ %162, %239 ]
  %255 = phi i32 [ 536870912, %227 ], [ %207, %243 ], [ %207, %239 ]
  %256 = icmp eq ptr %251, null
  br i1 %256, label %259, label %257

257:                                              ; preds = %250
  %258 = getelementptr inbounds %struct.fib_nh_exception, ptr %251, i32 0, i32 8
  br label %281

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.flowi_common, ptr %1, i32 0, i32 6
  %261 = load i8, ptr %260, align 1
  %262 = and i8 %261, 2
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.fib_nh_common, ptr %252, i32 0, i32 5
  %266 = load i8, ptr %265, align 2
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %300, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.fib_nh_common, ptr %252, i32 0, i32 3
  %270 = load i8, ptr %269, align 4
  %271 = icmp eq i8 %270, -3
  br i1 %271, label %272, label %300, !prof !31

272:                                              ; preds = %268, %259
  %273 = getelementptr inbounds %struct.fib_nh_common, ptr %252, i32 0, i32 11
  %274 = load ptr, ptr %273, align 4
  %275 = ptrtoint ptr %274 to i32
  %276 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %277 = inttoptr i32 %276 to ptr
  %278 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %277) #14, !srcloc !33
  %279 = add i32 %278, %275
  %280 = inttoptr i32 %279 to ptr
  br label %281

281:                                              ; preds = %272, %257
  %282 = phi ptr [ %258, %257 ], [ %280, %272 ]
  %283 = load volatile ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %300, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.dst_entry, ptr %283, i32 0, i32 8
  %287 = load i16, ptr %286, align 2
  %288 = icmp eq i16 %287, -1
  br i1 %288, label %289, label %300

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.rtable, ptr %283, i32 0, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.dst_entry, ptr %283, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %295) #22, !srcloc !9
  %296 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %295, ptr %295, i32 0, i32 1, ptr elementtype(i32) %295) #22, !srcloc !22
  %297 = extractvalue { i32, i32, i32 } %296, 0
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %294
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  br label %371

300:                                              ; preds = %294, %289, %285, %281, %268, %264, %243, %238, %237, %227, %223, %212, %208
  %301 = phi i32 [ %207, %237 ], [ %221, %212 ], [ %211, %208 ], [ %221, %223 ], [ %255, %289 ], [ %255, %294 ], [ %215, %227 ], [ %255, %264 ], [ %255, %268 ], [ %207, %243 ], [ %255, %285 ], [ %255, %281 ], [ %207, %238 ]
  %302 = phi ptr [ null, %237 ], [ null, %212 ], [ null, %208 ], [ null, %223 ], [ %159, %289 ], [ %159, %294 ], [ %159, %227 ], [ %159, %264 ], [ %159, %268 ], [ %159, %243 ], [ %159, %285 ], [ %159, %281 ], [ null, %238 ]
  %303 = phi i16 [ 2, %237 ], [ 5, %212 ], [ 3, %208 ], [ 5, %223 ], [ %254, %289 ], [ %254, %294 ], [ 5, %227 ], [ %254, %264 ], [ %254, %268 ], [ 2, %243 ], [ %254, %285 ], [ %254, %281 ], [ %162, %238 ]
  %304 = phi ptr [ %203, %237 ], [ %214, %212 ], [ %210, %208 ], [ %214, %223 ], [ %253, %289 ], [ %253, %294 ], [ %214, %227 ], [ %253, %264 ], [ %253, %268 ], [ %203, %243 ], [ %253, %285 ], [ %253, %281 ], [ %203, %238 ]
  %305 = phi i1 [ false, %237 ], [ false, %212 ], [ false, %208 ], [ false, %223 ], [ true, %289 ], [ true, %294 ], [ false, %227 ], [ false, %264 ], [ false, %268 ], [ false, %243 ], [ true, %285 ], [ true, %281 ], [ false, %238 ]
  %306 = phi ptr [ null, %237 ], [ null, %212 ], [ null, %208 ], [ null, %223 ], [ %251, %289 ], [ %251, %294 ], [ %231, %227 ], [ null, %264 ], [ null, %268 ], [ %249, %243 ], [ %251, %285 ], [ %251, %281 ], [ null, %238 ]
  %307 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %308 = getelementptr %struct.ipv4_devconf, ptr %307, i32 0, i32 1, i32 15
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %300
  %312 = getelementptr %struct.in_device, ptr %164, i32 0, i32 21, i32 1, i32 15
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 0
  %315 = select i1 %314, i16 0, i16 4
  br label %316

316:                                              ; preds = %311, %300
  %317 = phi i16 [ 4, %300 ], [ %315, %311 ]
  %318 = getelementptr %struct.ipv4_devconf, ptr %307, i32 0, i32 1, i32 14
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %316
  %322 = getelementptr %struct.in_device, ptr %164, i32 0, i32 21, i32 1, i32 14
  %323 = load i32, ptr %322, align 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %321, %316
  br label %326

326:                                              ; preds = %325, %321
  %327 = phi i16 [ 2, %325 ], [ 0, %321 ]
  %328 = or i16 %327, %317
  %329 = tail call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %155, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %328) #22
  %330 = icmp eq ptr %329, null
  br i1 %330, label %371, label %331

331:                                              ; preds = %326
  %332 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %333 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 1
  store i32 %332, ptr %333, align 4
  %334 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 2
  store i32 %301, ptr %334, align 4
  %335 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 3
  store i16 %303, ptr %335, align 4
  %336 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 4
  %337 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 9
  store i32 0, ptr %337, align 4
  %338 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 8
  store i32 0, ptr %338, align 4
  %339 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(7) %336, i8 0, i64 7, i1 false) #22
  store volatile ptr %339, ptr %339, align 4
  %340 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 10, i32 1
  store ptr %339, ptr %340, align 4
  %341 = getelementptr inbounds %struct.dst_entry, ptr %329, i32 0, i32 6
  store ptr @ip_output, ptr %341, align 4
  %342 = icmp sgt i32 %301, -1
  br i1 %342, label %345, label %343

343:                                              ; preds = %331
  %344 = getelementptr inbounds %struct.dst_entry, ptr %329, i32 0, i32 5
  store ptr @ip_local_deliver, ptr %344, align 4
  br label %345

345:                                              ; preds = %343, %331
  %346 = getelementptr inbounds %struct.rtable, ptr %329, i32 0, i32 6
  store i32 %156, ptr %346, align 4
  %347 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %348 = inttoptr i32 %347 to ptr
  %349 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %348) #14, !srcloc !33
  %350 = add i32 %349, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 6) to i32)
  %351 = inttoptr i32 %350 to ptr
  %352 = load i32, ptr %351, align 4
  %353 = add i32 %352, 1
  store i32 %353, ptr %351, align 4
  %354 = and i32 %301, 805306368
  %355 = icmp eq i32 %354, 0
  %356 = or i1 %342, %355
  br i1 %356, label %369, label %357

357:                                              ; preds = %345
  %358 = load i32, ptr %304, align 8
  %359 = and i32 %358, 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %357
  store ptr @ip_mc_output, ptr %341, align 4
  %362 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %363 = inttoptr i32 %362 to ptr
  %364 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %363) #14, !srcloc !33
  %365 = add i32 %364, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 7) to i32)
  %366 = inttoptr i32 %365 to ptr
  %367 = load i32, ptr %366, align 4
  %368 = add i32 %367, 1
  store i32 %368, ptr %366, align 4
  br label %369

369:                                              ; preds = %361, %357, %345
  %370 = load i32, ptr %190, align 4
  tail call fastcc void @rt_set_nexthop(ptr noundef nonnull %329, i32 noundef %370, ptr noundef %2, ptr noundef %306, ptr noundef %302, i1 noundef zeroext %305) #22
  br label %371

371:                                              ; preds = %369, %326, %299, %200, %184, %154, %122, %50, %45, %42, %34, %23, %9
  %372 = phi ptr [ inttoptr (i32 -101 to ptr), %23 ], [ %123, %122 ], [ inttoptr (i32 -19 to ptr), %42 ], [ inttoptr (i32 -101 to ptr), %34 ], [ inttoptr (i32 -22 to ptr), %9 ], [ inttoptr (i32 -101 to ptr), %50 ], [ inttoptr (i32 -101 to ptr), %45 ], [ %283, %299 ], [ %329, %369 ], [ inttoptr (i32 -22 to ptr), %154 ], [ inttoptr (i32 -22 to ptr), %184 ], [ inttoptr (i32 -22 to ptr), %200 ], [ inttoptr (i32 -105 to ptr), %326 ]
  ret ptr %372
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_select_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipv4_blackhole_route(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_blackhole_ops, ptr noundef null, i32 noundef 1, i32 noundef 2, i16 noundef zeroext 0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 11
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 5
  store ptr @dst_discard, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 6
  store ptr @dst_discard_out, ptr %8, align 4
  %9 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 64
  store ptr %10, ptr %3, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !34
  %14 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 99
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #14, !srcloc !33
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #22, !srcloc !35
  br label %24

24:                                               ; preds = %12, %5
  %25 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 4
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 4
  store i8 %26, ptr %27, align 2
  %28 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -2
  %34 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = or i32 %36, %33
  store i32 %37, ptr %34, align 4
  %38 = load i32, ptr %31, align 4
  %39 = and i32 %38, 1
  %40 = or i32 %39, %33
  store i32 %40, ptr %34, align 4
  %41 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 122
  %42 = load volatile i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 3
  %48 = load i16, ptr %47, align 4
  %49 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 3
  store i16 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 5
  %51 = load i8, ptr %50, align 1
  %52 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 5
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 7
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 7
  store i8 %54, ptr %55, align 4
  switch i8 %54, label %63 [
    i8 2, label %56
    i8 10, label %60
  ]

56:                                               ; preds = %24
  %57 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 8
  store i32 %58, ptr %59, align 4
  br label %63

60:                                               ; preds = %24
  %61 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 8
  %62 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %61, ptr noundef align 4 dereferenceable(16) %62, i32 16, i1 false)
  br label %63

63:                                               ; preds = %60, %56, %24
  %64 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 10
  store volatile ptr %64, ptr %64, align 4
  %65 = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 10, i32 1
  store ptr %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %2
  %67 = phi ptr [ %3, %63 ], [ inttoptr (i32 -12 to ptr), %2 ]
  tail call void @dst_release(ptr noundef %1) #22
  ret ptr %67
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dst_discard(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @dst_discard_out(ptr noundef nonnull @init_net, ptr noundef %3, ptr noundef %0) #22
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_discard_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup_route(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ip_route_output_tunnel(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = alloca %struct.fib_result, align 4
  %9 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #22
  %10 = getelementptr inbounds %struct.ip_tunnel_info, ptr %4, i32 0, i32 1
  br i1 %6, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call ptr @dst_cache_get_ip4(ptr noundef %10, ptr noundef %3) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %11, %7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i32 56, i1 false)
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 5
  store i8 %5, ptr %18, align 2
  %19 = getelementptr inbounds %struct.ip_tunnel_key, ptr %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.ip_tunnel_key, ptr %4, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.flowi4, ptr %9, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %19, align 8
  %24 = getelementptr inbounds %struct.flowi4, ptr %9, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ip_tunnel_key, ptr %4, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 28, i1 false) #22
  %28 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 1
  store i32 1, ptr %28, align 4
  %29 = and i8 %26, 28
  store i8 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.flowi_common, ptr %9, i32 0, i32 4
  store i8 0, ptr %30, align 1
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %31 = call ptr @ip_route_output_key_hash_rcu(ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #22
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %33 = load i8, ptr %18, align 2
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %14
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 17
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %9, align 8
  %40 = call ptr @xfrm_lookup_route(ptr noundef %2, ptr noundef %31, ptr noundef nonnull %9, ptr noundef null, i32 noundef 0) #22
  br label %41

41:                                               ; preds = %36, %14
  %42 = phi ptr [ %31, %14 ], [ %40, %36 ]
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 4
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @dst_release(ptr noundef %42) #22
  br label %53

48:                                               ; preds = %44
  br i1 %6, label %49, label %51

49:                                               ; preds = %48
  %50 = load i32, ptr %24, align 8
  call void @dst_cache_set_ip4(ptr noundef %10, ptr noundef %42, i32 noundef %50) #22
  br label %51

51:                                               ; preds = %49, %48
  %52 = load i32, ptr %24, align 8
  store i32 %52, ptr %3, align 4
  br label %53

53:                                               ; preds = %51, %47, %41, %11
  %54 = phi ptr [ inttoptr (i32 -40 to ptr), %47 ], [ %42, %51 ], [ %12, %11 ], [ inttoptr (i32 -101 to ptr), %41 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #22
  ret ptr %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_cache_get_ip4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_set_ip4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fib_dump_info_fnhe(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 6), align 8
  %9 = getelementptr inbounds %struct.fib_info, ptr %3, i32 0, i32 18
  %10 = getelementptr inbounds %struct.fib_info, ptr %3, i32 0, i32 15
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %1, i32 0, i32 1
  br label %12

12:                                               ; preds = %125, %7
  %13 = phi i32 [ 0, %7 ], [ %126, %125 ]
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !31

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nexthop, ptr %14, i32 0, i32 9
  %18 = load i8, ptr %17, align 2, !range !36
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nexthop, ptr %14, i32 0, i32 12
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 2
  %24 = load i8, ptr %23, align 2, !range !36
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.nh_group, ptr %22, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi i32 [ %29, %26 ], [ 1, %20 ]
  %32 = icmp ult i32 %13, %31
  br i1 %32, label %38, label %127

33:                                               ; preds = %16
  %34 = icmp eq i32 %13, 0
  br i1 %34, label %53, label %127

35:                                               ; preds = %12
  %36 = load i32, ptr %10, align 4
  %37 = icmp ult i32 %13, %36
  br i1 %37, label %58, label %127

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.nexthop, ptr %14, i32 0, i32 12
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nh_group, ptr %40, i32 0, i32 2
  %42 = load i8, ptr %41, align 2, !range !36
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.nh_group, ptr %40, i32 0, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = zext i16 %46 to i32
  %48 = icmp slt i32 %13, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = getelementptr %struct.nh_group, ptr %40, i32 0, i32 8, i32 %13
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %49, %38, %33
  %54 = phi ptr [ %51, %49 ], [ %14, %38 ], [ %14, %33 ]
  %55 = getelementptr inbounds %struct.nexthop, ptr %54, i32 0, i32 12
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nh_info, ptr %56, i32 0, i32 5
  br label %60

58:                                               ; preds = %35
  %59 = getelementptr %struct.fib_info, ptr %3, i32 0, i32 20, i32 %13
  br label %60

60:                                               ; preds = %58, %53, %49, %44
  %61 = phi ptr [ %59, %58 ], [ %57, %53 ], [ null, %49 ], [ null, %44 ]
  %62 = getelementptr inbounds %struct.fib_nh_common, ptr %61, i32 0, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %125

66:                                               ; preds = %60
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %67 = getelementptr inbounds %struct.fib_nh_common, ptr %61, i32 0, i32 13
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %124, label %70

70:                                               ; preds = %120, %66
  %71 = phi i32 [ %121, %120 ], [ 0, %66 ]
  %72 = getelementptr %struct.fnhe_hash_bucket, ptr %68, i32 %71
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %120, label %75

75:                                               ; preds = %70
  %76 = load i32, ptr %4, align 4
  br label %77

77:                                               ; preds = %115, %75
  %78 = phi i32 [ %117, %115 ], [ %76, %75 ]
  %79 = phi ptr [ %118, %115 ], [ %73, %75 ]
  %80 = icmp slt i32 %78, %5
  br i1 %80, label %115, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.fib_nh_exception, ptr %79, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, %8
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.fib_nh_exception, ptr %79, i32 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = sub i32 %87, %90
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %115, label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.fib_nh_exception, ptr %79, i32 0, i32 7
  %95 = load volatile ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.fib_nh_exception, ptr %79, i32 0, i32 8
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %97, %93
  %102 = phi ptr [ %99, %97 ], [ %95, %93 ]
  %103 = getelementptr inbounds %struct.fib_nh_exception, ptr %79, i32 0, i32 2
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %1, align 4
  %106 = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 3, i32 12
  %107 = load i32, ptr %106, align 4
  %108 = load ptr, ptr %11, align 4
  %109 = getelementptr inbounds %struct.nlmsghdr, ptr %108, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = tail call fastcc i32 @rt_fill_info(i32 noundef %104, i32 noundef 0, ptr noundef nonnull %102, i32 noundef %2, ptr noundef null, ptr noundef %0, i32 noundef %107, i32 noundef %110, i32 noundef %6) #22
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load i32, ptr %4, align 4
  br label %115

115:                                              ; preds = %113, %97, %89, %81, %77
  %116 = phi i32 [ %114, %113 ], [ %78, %77 ], [ %78, %81 ], [ %78, %89 ], [ %78, %97 ]
  %117 = add i32 %116, 1
  store i32 %117, ptr %4, align 4
  %118 = load volatile ptr, ptr %79, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %77

120:                                              ; preds = %115, %70
  %121 = add nuw nsw i32 %71, 1
  %122 = icmp eq i32 %121, 2048
  br i1 %122, label %124, label %70

123:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %127

124:                                              ; preds = %120, %66
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %125

125:                                              ; preds = %124, %60
  %126 = add i32 %13, 1
  br label %12

127:                                              ; preds = %123, %35, %33, %30
  %128 = phi i32 [ %111, %123 ], [ 0, %33 ], [ 0, %30 ], [ 0, %35 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ip_rt_multicast_event(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122)) #22, !srcloc !9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122)) #22, !srcloc !10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ip_rt_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 0, i32 noundef 16, i32 noundef 4, ptr noundef null, ptr noundef nonnull @ip_idents_mask, i32 noundef 2048, i32 noundef 262144) #22
  store ptr %1, ptr @ip_idents, align 4
  %2 = load i32, ptr @ip_idents_mask, align 4
  %3 = shl i32 %2, 2
  %4 = add i32 %3, 4
  tail call void @prandom_bytes(ptr noundef %1, i32 noundef %4) #22
  %5 = load i32, ptr @ip_idents_mask, align 4
  %6 = shl i32 %5, 2
  %7 = add i32 %6, 4
  %8 = getelementptr i8, ptr %1, i32 %7
  store ptr %8, ptr @ip_tstamps, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %12, %0
  %13 = phi i32 [ %20, %12 ], [ %9, %0 ]
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @rt_uncached_list to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.uncached_list, ptr %17, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uncached_list, ptr %17, i32 0, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  store i32 0, ptr %17, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #23
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %12, label %23

23:                                               ; preds = %12, %0
  %24 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 0, i32 noundef 270336, ptr noundef null) #22
  store ptr %24, ptr getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_ops, i32 0, i32 16), align 64
  store ptr %24, ptr getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_blackhole_ops, i32 0, i32 16), align 64
  %25 = tail call i32 @__percpu_counter_init(ptr noundef getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_ops, i32 0, i32 18), i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #22
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #24
  unreachable

28:                                               ; preds = %23
  %29 = tail call i32 @__percpu_counter_init(ptr noundef getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_blackhole_ops, i32 0, i32 18), i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @dst_entries_init.__key) #22
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #24
  unreachable

32:                                               ; preds = %28
  store i32 -1, ptr getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_ops, i32 0, i32 1), align 4
  store i32 2147483647, ptr @ip_rt_max_size, align 4
  tail call void @devinet_init() #22
  tail call void @ip_fib_init() #22
  %33 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_rt_proc_ops) #22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #25
  br label %37

37:                                               ; preds = %35, %32
  tail call void @xfrm_init() #22
  tail call void @xfrm4_init() #22
  tail call void @rtnl_register(i32 noundef 2, i32 noundef 26, ptr noundef nonnull @inet_rtm_getroute, ptr noundef null, i32 noundef 1) #22
  %38 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @sysctl_route_ops) #22
  %39 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip_rt_ops) #22
  %40 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @rt_genid_ops) #22
  %41 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ipv4_inetpeer_ops) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @devinet_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_fib_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm4_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_register(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inet_rtm_getroute(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [31 x ptr], align 4
  %5 = alloca %struct.fib_result, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.flowi4, align 8
  %8 = alloca %struct.fib_rt_info, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %4, i8 0, i32 124, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 17, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false)
  %9 = load i32, ptr %1, align 4
  %10 = icmp ult i32 %9, 28
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_valid_getroute_req.__msg) #22
  %12 = icmp eq ptr %2, null
  br i1 %12, label %420, label %13

13:                                               ; preds = %11
  store ptr @inet_rtm_valid_getroute_req.__msg, ptr %2, align 4
  br label %420

14:                                               ; preds = %3
  %15 = tail call zeroext i1 @netlink_strict_get_check(ptr noundef %0) #22
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %1, align 4
  %18 = icmp ult i32 %17, 28
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %20 = icmp eq ptr %2, null
  br i1 %20, label %420, label %21

21:                                               ; preds = %19
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %420

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %1, i32 28
  %24 = add i32 %17, -28
  %25 = call i32 @__nla_parse(ptr noundef nonnull %4, i32 noundef 30, ptr noundef %23, i32 noundef %24, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 0, ptr noundef %2) #22
  br label %92

26:                                               ; preds = %14
  %27 = getelementptr i8, ptr %1, i32 18
  %28 = load i8, ptr %27, align 2
  switch i8 %28, label %48 [
    i8 0, label %29
    i8 32, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr i8, ptr %1, i32 17
  %31 = load i8, ptr %30, align 1
  switch i8 %31, label %48 [
    i8 0, label %32
    i8 32, label %32
  ]

32:                                               ; preds = %29, %29
  %33 = getelementptr i8, ptr %1, i32 20
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %1, i32 21
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %1, i32 22
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %1, i32 23
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44, %40, %36, %32, %29, %26
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_valid_getroute_req.__msg.16) #22
  %49 = icmp eq ptr %2, null
  br i1 %49, label %420, label %50

50:                                               ; preds = %48
  store ptr @inet_rtm_valid_getroute_req.__msg.16, ptr %2, align 4
  br label %420

51:                                               ; preds = %44
  %52 = getelementptr i8, ptr %1, i32 24
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -12545
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_valid_getroute_req.__msg.17) #22
  %57 = icmp eq ptr %2, null
  br i1 %57, label %420, label %58

58:                                               ; preds = %56
  store ptr @inet_rtm_valid_getroute_req.__msg.17, ptr %2, align 4
  br label %420

59:                                               ; preds = %51
  %60 = call fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %2) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = getelementptr inbounds ptr, ptr %4, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i8, ptr %27, align 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66, %62
  %70 = getelementptr inbounds ptr, ptr %4, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %74, %69
  br label %80

74:                                               ; preds = %69
  %75 = load i8, ptr %30, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %74, %66
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_valid_getroute_req.__msg.18) #22
  %78 = icmp eq ptr %2, null
  br i1 %78, label %420, label %79

79:                                               ; preds = %77
  store ptr @inet_rtm_valid_getroute_req.__msg.18, ptr %2, align 4
  br label %420

80:                                               ; preds = %89, %73
  %81 = phi i32 [ %90, %89 ], [ 0, %73 ]
  %82 = getelementptr ptr, ptr %4, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  switch i32 %81, label %86 [
    i32 3, label %89
    i32 4, label %89
    i32 2, label %89
    i32 1, label %89
    i32 27, label %89
    i32 28, label %89
    i32 29, label %89
    i32 16, label %89
    i32 25, label %89
  ]

86:                                               ; preds = %85
  call void @do_trace_netlink_extack(ptr noundef nonnull @inet_rtm_valid_getroute_req.__msg.19) #22
  %87 = icmp eq ptr %2, null
  br i1 %87, label %420, label %88

88:                                               ; preds = %86
  store ptr @inet_rtm_valid_getroute_req.__msg.19, ptr %2, align 4
  br label %420

89:                                               ; preds = %85, %85, %85, %85, %85, %85, %85, %85, %85, %80
  %90 = add nuw nsw i32 %81, 1
  %91 = icmp eq i32 %90, 31
  br i1 %91, label %98, label %80

92:                                               ; preds = %59, %22
  %93 = phi i32 [ %60, %59 ], [ %25, %22 ]
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %420, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %89
  %99 = phi ptr [ %97, %95 ], [ %64, %89 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %99, i32 4
  %103 = load i32, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i32 [ %103, %101 ], [ 0, %98 ]
  %106 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %107, i32 4
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i32 [ %111, %109 ], [ 0, %104 ]
  %114 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = getelementptr i8, ptr %115, i32 4
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi i32 [ %119, %117 ], [ 0, %112 ]
  %122 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 16
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = getelementptr i8, ptr %123, i32 4
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = phi i32 [ %127, %125 ], [ 0, %120 ]
  %130 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 25
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = getelementptr i8, ptr %131, i32 4
  br label %142

135:                                              ; preds = %128
  %136 = icmp eq i32 %121, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %135
  %138 = tail call ptr @llvm.thread.pointer() #22
  %139 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 83
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.cred, ptr %140, i32 0, i32 1
  br label %142

142:                                              ; preds = %137, %133
  %143 = phi ptr [ %141, %137 ], [ %134, %133 ]
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %135
  %146 = phi i32 [ -1, %135 ], [ %144, %142 ]
  %147 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 27
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %145
  %151 = call i32 @rtm_getroute_parse_ip_proto(ptr noundef nonnull %148, ptr noundef nonnull %6, i8 noundef zeroext 2, ptr noundef %2) #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %420

153:                                              ; preds = %150, %145
  %154 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 28
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = getelementptr i8, ptr %155, i32 4
  %159 = load i16, ptr %158, align 2
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi i16 [ %159, %157 ], [ 0, %153 ]
  %162 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 29
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = getelementptr i8, ptr %163, i32 4
  %167 = load i16, ptr %166, align 2
  br label %168

168:                                              ; preds = %165, %160
  %169 = phi i16 [ %167, %165 ], [ 0, %160 ]
  %170 = load i8, ptr %6, align 1
  %171 = call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %172 = icmp eq ptr %171, null
  br i1 %172, label %420, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 17
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 16
  %177 = load ptr, ptr %176, align 8
  %178 = ptrtoint ptr %175 to i32
  %179 = ptrtoint ptr %177 to i32
  %180 = sub i32 %178, %179
  %181 = trunc i32 %180 to i16
  %182 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 19
  store i16 %181, ptr %182, align 2
  %183 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 18
  store i16 %181, ptr %183, align 4
  %184 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 16
  store i16 8, ptr %184, align 8
  %185 = call ptr @skb_put(ptr noundef nonnull %171, i32 noundef 20) #22
  %186 = getelementptr inbounds %struct.iphdr, ptr %185, i32 0, i32 6
  store i8 %170, ptr %186, align 1
  %187 = getelementptr inbounds %struct.iphdr, ptr %185, i32 0, i32 8
  store i32 %105, ptr %187, align 4
  %188 = getelementptr inbounds %struct.iphdr, ptr %185, i32 0, i32 9
  store i32 %113, ptr %188, align 4
  %189 = getelementptr inbounds %struct.iphdr, ptr %185, i32 0, i32 4
  store i16 0, ptr %189, align 2
  store i8 69, ptr %185, align 4
  %190 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 5
  %191 = load i32, ptr %190, align 8
  %192 = load ptr, ptr %174, align 4
  %193 = load ptr, ptr %176, align 8
  %194 = ptrtoint ptr %192 to i32
  %195 = ptrtoint ptr %193 to i32
  %196 = sub i32 %194, %195
  %197 = trunc i32 %196 to i16
  %198 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 17
  %199 = trunc i32 %191 to i16
  %200 = add i16 %197, %199
  store i16 %200, ptr %198, align 2
  %201 = load i8, ptr %186, align 1
  switch i8 %201, label %219 [
    i8 17, label %202
    i8 6, label %205
    i8 1, label %217
  ]

202:                                              ; preds = %173
  %203 = call ptr @skb_put(ptr noundef nonnull %171, i32 noundef 8) #22
  store i64 8796093022208, ptr %203, align 1
  store i16 %161, ptr %203, align 2
  %204 = getelementptr inbounds %struct.udphdr, ptr %203, i32 0, i32 1
  store i16 %169, ptr %204, align 2
  br label %219

205:                                              ; preds = %173
  %206 = call ptr @skb_put(ptr noundef nonnull %171, i32 noundef 20) #22
  %207 = getelementptr inbounds i8, ptr %206, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(20) %207, i8 0, i32 16, i1 false) #22
  store i16 %161, ptr %206, align 4
  %208 = getelementptr inbounds %struct.tcphdr, ptr %206, i32 0, i32 1
  store i16 %169, ptr %208, align 2
  %209 = getelementptr inbounds %struct.tcphdr, ptr %206, i32 0, i32 4
  store i16 1104, ptr %209, align 4
  %210 = call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3, ror #8\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %113, i32 %105, i32 26) #26, !srcloc !37
  %211 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %210) #26, !srcloc !38
  %212 = xor i32 %211, -1
  %213 = lshr i32 %212, 16
  %214 = trunc i32 %213 to i16
  %215 = xor i16 %214, -1
  %216 = getelementptr inbounds %struct.tcphdr, ptr %206, i32 0, i32 6
  store i16 %215, ptr %216, align 4
  br label %219

217:                                              ; preds = %173
  %218 = call ptr @skb_put(ptr noundef nonnull %171, i32 noundef 8) #22
  store i64 8, ptr %218, align 1
  br label %219

219:                                              ; preds = %217, %205, %202, %173
  %220 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 2
  store i32 %113, ptr %220, align 4
  %221 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 1
  store i32 %105, ptr %221, align 8
  %222 = getelementptr i8, ptr %1, i32 19
  %223 = load i8, ptr %222, align 1
  %224 = and i8 %223, 28
  %225 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 3
  store i8 %224, ptr %225, align 4
  %226 = getelementptr inbounds [31 x ptr], ptr %4, i32 0, i32 4
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %219
  %230 = getelementptr i8, ptr %227, i32 4
  %231 = load i32, ptr %230, align 4
  br label %232

232:                                              ; preds = %229, %219
  %233 = phi i32 [ %231, %229 ], [ 0, %219 ]
  store i32 %233, ptr %7, align 8
  %234 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 2
  store i32 %129, ptr %234, align 8
  %235 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 8
  store i32 %146, ptr %235, align 4
  %236 = icmp eq i16 %161, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 3
  %239 = getelementptr inbounds %struct.anon.140, ptr %238, i32 0, i32 1
  store i16 %161, ptr %239, align 2
  br label %240

240:                                              ; preds = %237, %232
  %241 = icmp eq i16 %169, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %240
  %243 = getelementptr inbounds %struct.flowi4, ptr %7, i32 0, i32 3
  store i16 %169, ptr %243, align 8
  br label %244

244:                                              ; preds = %242, %240
  %245 = load i8, ptr %6, align 1
  %246 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 5
  store i8 %245, ptr %246, align 2
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %247 = icmp eq i32 %121, 0
  br i1 %247, label %270, label %248

248:                                              ; preds = %244
  %249 = call ptr @dev_get_by_index_rcu(ptr noundef nonnull @init_net, i32 noundef %121) #22
  %250 = icmp eq ptr %249, null
  br i1 %250, label %418, label %251

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 1
  store i32 %121, ptr %252, align 4
  %253 = getelementptr inbounds %struct.anon.76, ptr %171, i32 0, i32 2
  store ptr %249, ptr %253, align 8
  %254 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 11
  store i32 %129, ptr %254, align 4
  %255 = load i8, ptr %222, align 1
  %256 = and i8 %255, 28
  %257 = call i32 @ip_route_input_rcu(ptr noundef nonnull %171, i32 noundef %113, i32 noundef %105, i8 noundef zeroext %256, ptr noundef nonnull %249, ptr noundef nonnull %5)
  %258 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 4
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, -2
  %261 = inttoptr i32 %260 to ptr
  %262 = icmp eq i32 %257, 0
  br i1 %262, label %263, label %418

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.dst_entry, ptr %261, i32 0, i32 15
  %265 = load i16, ptr %264, align 4
  %266 = icmp eq i16 %265, 0
  br i1 %266, label %297, label %267

267:                                              ; preds = %263
  %268 = sext i16 %265 to i32
  %269 = sub nsw i32 0, %268
  br label %293

270:                                              ; preds = %244
  %271 = getelementptr inbounds %struct.flowi_common, ptr %7, i32 0, i32 1
  store i32 1, ptr %271, align 4
  %272 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 64
  %273 = getelementptr inbounds %struct.anon.76, ptr %171, i32 0, i32 2
  store ptr %272, ptr %273, align 8
  %274 = call ptr @ip_route_output_key_hash_rcu(ptr noundef nonnull @init_net, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %171)
  %275 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = ptrtoint ptr %274 to i32
  br label %293

278:                                              ; preds = %270
  %279 = icmp ne ptr %274, null
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 13, i32 0, i32 3
  %282 = load i16, ptr %281, align 2
  %283 = lshr i16 %282, 14
  %284 = trunc i16 %283 to i8
  %285 = and i8 %284, 1
  %286 = or i8 %285, %280
  %287 = zext i8 %286 to i16
  %288 = shl nuw nsw i16 %287, 14
  %289 = and i16 %282, -16385
  %290 = or i16 %288, %289
  store i16 %290, ptr %281, align 2
  %291 = ptrtoint ptr %274 to i32
  %292 = getelementptr inbounds %struct.sk_buff, ptr %171, i32 0, i32 4
  store i32 %291, ptr %292, align 8
  br label %297

293:                                              ; preds = %276, %267
  %294 = phi i32 [ %277, %276 ], [ %269, %267 ]
  %295 = phi ptr [ %274, %276 ], [ %261, %267 ]
  %296 = icmp eq i32 %294, 0
  br i1 %296, label %297, label %418

297:                                              ; preds = %293, %278, %263
  %298 = phi ptr [ %274, %278 ], [ %295, %293 ], [ %261, %263 ]
  %299 = getelementptr i8, ptr %1, i32 24
  %300 = load i32, ptr %299, align 4
  %301 = and i32 %300, 256
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.rtable, ptr %298, i32 0, i32 2
  %305 = load i32, ptr %304, align 4
  %306 = or i32 %305, 65536
  store i32 %306, ptr %304, align 4
  %307 = load i32, ptr %299, align 4
  br label %308

308:                                              ; preds = %303, %297
  %309 = phi i32 [ %307, %303 ], [ %300, %297 ]
  %310 = and i32 %309, 4096
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %319, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 8
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.fib_table, ptr %314, i32 0, i32 1
  %318 = load i32, ptr %317, align 4
  br label %319

319:                                              ; preds = %316, %312, %308
  %320 = phi i32 [ 254, %308 ], [ %318, %316 ], [ 0, %312 ]
  call void @skb_trim(ptr noundef nonnull %171, i32 noundef 0) #22
  %321 = load ptr, ptr %174, align 4
  %322 = load ptr, ptr %176, align 8
  %323 = ptrtoint ptr %321 to i32
  %324 = ptrtoint ptr %322 to i32
  %325 = sub i32 %323, %324
  %326 = trunc i32 %325 to i16
  store i16 %326, ptr %183, align 4
  store i16 %326, ptr %198, align 2
  store i16 %326, ptr %182, align 2
  %327 = load i32, ptr %299, align 4
  %328 = and i32 %327, 8192
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %405, label %330

330:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #22
  %331 = getelementptr inbounds i8, ptr %8, i32 16
  store i32 0, ptr %331, align 4, !annotation !20
  %332 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 7
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, null
  br i1 %334, label %397, label %335

335:                                              ; preds = %330
  store ptr %333, ptr %8, align 4
  %336 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 1
  store i32 %320, ptr %336, align 4
  %337 = load i32, ptr %5, align 4
  %338 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 2
  store i32 %337, ptr %338, align 4
  %339 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 1
  %340 = load i8, ptr %339, align 4
  %341 = zext i8 %340 to i32
  %342 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 3
  store i32 %341, ptr %342, align 4
  %343 = load i8, ptr %225, align 4
  %344 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 4
  store i8 %343, ptr %344, align 4
  %345 = getelementptr inbounds %struct.rtable, ptr %298, i32 0, i32 3
  %346 = load i16, ptr %345, align 4
  %347 = trunc i16 %346 to i8
  %348 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 5
  store i8 %347, ptr %348, align 1
  %349 = getelementptr inbounds %struct.fib_rt_info, ptr %8, i32 0, i32 6
  %350 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 9
  %351 = load ptr, ptr %350, align 4
  %352 = icmp eq ptr %351, null
  br i1 %352, label %391, label %353

353:                                              ; preds = %335
  %354 = load volatile ptr, ptr %351, align 4
  %355 = icmp eq ptr %354, null
  br i1 %355, label %391, label %356

356:                                              ; preds = %353
  %357 = sub i8 32, %340
  br label %358

358:                                              ; preds = %388, %356
  %359 = phi ptr [ %354, %356 ], [ %389, %388 ]
  %360 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 5
  %361 = load i8, ptr %360, align 1
  %362 = icmp eq i8 %361, %357
  br i1 %362, label %363, label %388

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 6
  %365 = load i32, ptr %364, align 4
  %366 = icmp eq i32 %365, %320
  br i1 %366, label %367, label %388

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 2
  %369 = load i8, ptr %368, align 4
  %370 = icmp eq i8 %369, %343
  br i1 %370, label %371, label %388

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 1
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, %333
  br i1 %374, label %375, label %388

375:                                              ; preds = %371
  %376 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 3
  %377 = load i8, ptr %376, align 1
  %378 = icmp eq i8 %377, %347
  br i1 %378, label %379, label %388

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 8
  %381 = load volatile i8, ptr %380, align 2
  %382 = and i8 %381, 1
  %383 = getelementptr inbounds %struct.fib_alias, ptr %359, i32 0, i32 9
  %384 = load volatile i8, ptr %383, align 1
  %385 = shl i8 %384, 1
  %386 = and i8 %385, 2
  %387 = or i8 %386, %382
  store i8 %387, ptr %349, align 2
  br label %391

388:                                              ; preds = %375, %371, %367, %363, %358
  %389 = load volatile ptr, ptr %359, align 4
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %358

391:                                              ; preds = %388, %379, %353, %335
  %392 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %393 = load i32, ptr %392, align 4
  %394 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %395 = load i32, ptr %394, align 4
  %396 = call i32 @fib_dump_info(ptr noundef nonnull %171, i32 noundef %393, i32 noundef %395, i32 noundef 24, ptr noundef nonnull %8, i32 noundef 0) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #22
  br label %411

397:                                              ; preds = %330
  %398 = getelementptr inbounds %struct.fib_result, ptr %5, i32 0, i32 3
  %399 = load i8, ptr %398, align 2
  %400 = zext i8 %399 to i32
  %401 = getelementptr [12 x %struct.fib_prop], ptr @fib_props, i32 0, i32 %400
  %402 = load i32, ptr %401, align 4
  %403 = icmp eq i32 %402, 0
  %404 = select i1 %403, i32 -113, i32 %402
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #22
  br label %418

405:                                              ; preds = %319
  %406 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %407 = load i32, ptr %406, align 4
  %408 = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 3
  %409 = load i32, ptr %408, align 4
  %410 = call fastcc i32 @rt_fill_info(i32 noundef %113, i32 noundef %105, ptr noundef %298, i32 noundef %320, ptr noundef nonnull %7, ptr noundef nonnull %171, i32 noundef %407, i32 noundef %409, i32 noundef 0)
  br label %411

411:                                              ; preds = %405, %391
  %412 = phi i32 [ %410, %405 ], [ %396, %391 ]
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %411
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %415 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 12
  %416 = load i32, ptr %415, align 4
  %417 = call i32 @rtnl_unicast(ptr noundef nonnull %171, ptr noundef nonnull @init_net, i32 noundef %416) #22
  br label %420

418:                                              ; preds = %411, %397, %293, %251, %248
  %419 = phi i32 [ %294, %293 ], [ %404, %397 ], [ %412, %411 ], [ -19, %248 ], [ %257, %251 ]
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  call void @kfree_skb_reason(ptr noundef %171, i32 noundef 0) #22
  br label %420

420:                                              ; preds = %418, %414, %168, %150, %92, %88, %86, %79, %77, %58, %56, %50, %48, %21, %19, %13, %11
  %421 = phi i32 [ %93, %92 ], [ %151, %150 ], [ %419, %418 ], [ %417, %414 ], [ -105, %168 ], [ -22, %13 ], [ -22, %11 ], [ -22, %50 ], [ -22, %48 ], [ -22, %58 ], [ -22, %56 ], [ -22, %79 ], [ -22, %77 ], [ -22, %88 ], [ -22, %86 ], [ -22, %21 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %4) #22
  ret i32 %421
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ip_static_sysctl_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.5, ptr noundef nonnull @ipv4_route_table) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ipv4_mtu(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 1
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr i32, ptr %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 20
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %3, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, ptr %16, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30, !prof !31

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = icmp ne i8 %32, 0
  %34 = icmp ugt i32 %23, 576
  %35 = select i1 %33, i1 %34, i1 false
  %36 = select i1 %35, i32 576, i32 %23
  br label %37

37:                                               ; preds = %30, %26, %12, %5
  %38 = phi i32 [ %6, %5 ], [ %18, %12 ], [ %36, %30 ], [ %23, %26 ]
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 65535) #22
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @update_or_create_fnhe(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = zext i1 %4 to i8
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 6), align 8
  %10 = load volatile i32, ptr @fnhe_hashfun.___once_key, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %16, !prof !17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !20
  %13 = call zeroext i1 @__do_once_start(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull %7) #22
  br i1 %13, label %14, label %15, !prof !17

14:                                               ; preds = %12
  call void @get_random_bytes(ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key, i32 noundef 16) #22
  call void @__do_once_done(ptr noundef nonnull @fnhe_hashfun.___done, ptr noundef nonnull @fnhe_hashfun.___once_key, ptr noundef nonnull %7, ptr noundef null) #22
  br label %15

15:                                               ; preds = %14, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  br label %16

16:                                               ; preds = %15, %6
  %17 = call i64 @siphash_1u32(i32 noundef %1, ptr noundef nonnull @fnhe_hashfun.fnhe_hash_key) #22
  %18 = trunc i64 %17 to i32
  %19 = lshr i64 %17, 32
  %20 = trunc i64 %19 to i32
  %21 = mul i32 %20, 1640531527
  %22 = xor i32 %21, %18
  %23 = mul i32 %22, 1640531527
  %24 = lshr i32 %23, 21
  call void @_raw_spin_lock_bh(ptr noundef nonnull @fnhe_lock) #22
  %25 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 13
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %30 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 8192) #27
  %31 = icmp eq ptr %30, null
  br i1 %31, label %219, label %32

32:                                               ; preds = %28
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !39
  store volatile ptr %30, ptr %25, align 4
  br label %33

33:                                               ; preds = %32, %16
  %34 = phi ptr [ %26, %16 ], [ %30, %32 ]
  %35 = getelementptr %struct.fnhe_hash_bucket, ptr %34, i32 %24
  %36 = load volatile ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %123, label %38

38:                                               ; preds = %44, %33
  %39 = phi ptr [ %46, %44 ], [ %36, %33 ]
  %40 = phi i32 [ %45, %44 ], [ 0, %33 ]
  %41 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = add i32 %40, 1
  %46 = load volatile ptr, ptr %39, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %123, label %38

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %9
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 %9, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 5
  store i32 %2, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = icmp eq i32 %3, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 3
  store i32 %3, ptr %60, align 4
  %61 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 4
  store i8 %8, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %57
  %63 = icmp eq i32 %5, 0
  %64 = select i1 %63, i32 1, i32 %5
  %65 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 6
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 7
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.rtable, ptr %67, i32 0, i32 9
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %71, 1
  %75 = and i32 %73, 1
  %76 = or i32 %75, %74
  store i32 %76, ptr %72, align 4
  %77 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 4
  %78 = load i8, ptr %77, align 4, !range !36
  %79 = zext i8 %78 to i32
  %80 = or i32 %74, %79
  store i32 %80, ptr %72, align 4
  %81 = load i32, ptr %65, align 4
  %82 = getelementptr inbounds %struct.dst_entry, ptr %67, i32 0, i32 3
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct.rtable, ptr %67, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, 262144
  store i32 %89, ptr %87, align 4
  %90 = getelementptr inbounds %struct.rtable, ptr %67, i32 0, i32 5
  store i8 1, ptr %90, align 1
  %91 = getelementptr inbounds %struct.rtable, ptr %67, i32 0, i32 7
  store i8 2, ptr %91, align 4
  %92 = load i32, ptr %83, align 4
  %93 = getelementptr inbounds %struct.rtable, ptr %67, i32 0, i32 8
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %86, %69, %62
  %95 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 8
  %96 = load volatile ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %215, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.rtable, ptr %96, i32 0, i32 9
  %102 = load i32, ptr %101, align 4
  %103 = shl i32 %100, 1
  %104 = and i32 %102, 1
  %105 = or i32 %104, %103
  store i32 %105, ptr %101, align 4
  %106 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 4
  %107 = load i8, ptr %106, align 4, !range !36
  %108 = zext i8 %107 to i32
  %109 = or i32 %103, %108
  store i32 %109, ptr %101, align 4
  %110 = load i32, ptr %65, align 4
  %111 = getelementptr inbounds %struct.dst_entry, ptr %96, i32 0, i32 3
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.fib_nh_exception, ptr %39, i32 0, i32 5
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %215, label %115

115:                                              ; preds = %98
  %116 = getelementptr inbounds %struct.rtable, ptr %96, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = or i32 %117, 262144
  store i32 %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.rtable, ptr %96, i32 0, i32 5
  store i8 1, ptr %119, align 1
  %120 = getelementptr inbounds %struct.rtable, ptr %96, i32 0, i32 7
  store i8 2, ptr %120, align 4
  %121 = load i32, ptr %112, align 4
  %122 = getelementptr inbounds %struct.rtable, ptr %96, i32 0, i32 8
  store i32 %121, ptr %122, align 4
  br label %215

123:                                              ; preds = %44, %33
  %124 = phi i32 [ 0, %33 ], [ %45, %44 ]
  %125 = call i32 @prandom_u32() #22
  %126 = zext i32 %125 to i64
  %127 = mul nuw nsw i64 %126, 5
  %128 = lshr i64 %127, 32
  %129 = trunc i64 %128 to i32
  %130 = add nuw nsw i32 %129, 5
  %131 = icmp sgt i32 %124, %130
  br i1 %131, label %132, label %175

132:                                              ; preds = %172, %123
  %133 = phi i32 [ %173, %172 ], [ %124, %123 ]
  %134 = load ptr, ptr %35, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %155, label %136

136:                                              ; preds = %150, %132
  %137 = phi ptr [ %153, %150 ], [ %134, %132 ]
  %138 = phi ptr [ %137, %150 ], [ %35, %132 ]
  %139 = phi ptr [ %152, %150 ], [ null, %132 ]
  %140 = phi ptr [ %151, %150 ], [ null, %132 ]
  %141 = icmp eq ptr %139, null
  br i1 %141, label %149, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.fib_nh_exception, ptr %137, i32 0, i32 9
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fib_nh_exception, ptr %139, i32 0, i32 9
  %146 = load i32, ptr %145, align 4
  %147 = sub i32 %144, %146
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142, %136
  br label %150

150:                                              ; preds = %149, %142
  %151 = phi ptr [ %138, %149 ], [ %140, %142 ]
  %152 = phi ptr [ %137, %149 ], [ %139, %142 ]
  %153 = load ptr, ptr %137, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %136

155:                                              ; preds = %150, %132
  %156 = phi ptr [ null, %132 ], [ %151, %150 ]
  %157 = phi ptr [ null, %132 ], [ %152, %150 ]
  %158 = getelementptr inbounds %struct.fib_nh_exception, ptr %157, i32 0, i32 7
  %159 = load volatile ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %155
  store volatile ptr null, ptr %158, align 4
  call void @dst_dev_put(ptr noundef nonnull %159) #22
  call void @dst_release(ptr noundef nonnull %159) #22
  br label %162

162:                                              ; preds = %161, %155
  %163 = getelementptr inbounds %struct.fib_nh_exception, ptr %157, i32 0, i32 8
  %164 = load volatile ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  store volatile ptr null, ptr %163, align 4
  call void @dst_dev_put(ptr noundef nonnull %164) #22
  call void @dst_release(ptr noundef nonnull %164) #22
  br label %167

167:                                              ; preds = %166, %162
  %168 = load ptr, ptr %157, align 4
  store ptr %168, ptr %156, align 4
  %169 = icmp eq ptr %157, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.fib_nh_exception, ptr %157, i32 0, i32 10
  call void @kvfree_call_rcu(ptr noundef %171, ptr noundef nonnull inttoptr (i32 40 to ptr)) #22
  br label %172

172:                                              ; preds = %170, %167
  %173 = add nsw i32 %133, -1
  %174 = icmp sgt i32 %173, %130
  br i1 %174, label %132, label %175

175:                                              ; preds = %172, %123
  %176 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %177 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 2848, i32 noundef 48) #27
  %178 = icmp eq ptr %177, null
  br i1 %178, label %219, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %35, align 4
  store ptr %180, ptr %177, align 8
  %181 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 1
  store i32 %9, ptr %181, align 4
  %182 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 2
  store i32 %1, ptr %182, align 8
  %183 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 5
  store i32 %2, ptr %183, align 4
  %184 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 3
  store i32 %3, ptr %184, align 4
  %185 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 4
  store i8 %8, ptr %185, align 8
  %186 = icmp eq i32 %5, 0
  %187 = select i1 %186, i32 1, i32 %5
  %188 = getelementptr inbounds %struct.fib_nh_exception, ptr %177, i32 0, i32 6
  store i32 %187, ptr %188, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !40
  store volatile ptr %177, ptr %35, align 4
  %189 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 12
  %190 = load volatile ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %179
  %193 = getelementptr inbounds %struct.dst_entry, ptr %190, i32 0, i32 8
  store i16 -2, ptr %193, align 2
  br label %194

194:                                              ; preds = %192, %179
  %195 = load i32, ptr @nr_cpu_ids, align 4
  %196 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %197 = icmp ult i32 %196, %195
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 11
  br label %200

200:                                              ; preds = %212, %198
  %201 = phi i32 [ %196, %198 ], [ %213, %212 ]
  %202 = load ptr, ptr %199, align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %201
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, %203
  %207 = inttoptr i32 %206 to ptr
  %208 = load volatile ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.dst_entry, ptr %208, i32 0, i32 8
  store i16 -2, ptr %211, align 2
  br label %212

212:                                              ; preds = %210, %200
  %213 = call i32 @cpumask_next(i32 noundef %201, ptr noundef nonnull @__cpu_possible_mask) #23
  %214 = icmp ult i32 %213, %195
  br i1 %214, label %200, label %215

215:                                              ; preds = %212, %194, %115, %98, %94
  %216 = phi ptr [ %39, %94 ], [ %39, %98 ], [ %39, %115 ], [ %177, %194 ], [ %177, %212 ]
  %217 = load volatile i32, ptr @jiffies, align 64
  %218 = getelementptr inbounds %struct.fib_nh_exception, ptr %216, i32 0, i32 9
  store i32 %217, ptr %218, align 4
  br label %219

219:                                              ; preds = %215, %175, %28
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @fnhe_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @siphash_1u32(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_onlink(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_fib_check_default(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__ipv4_neigh_lookup(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call ptr @llvm.thread.pointer() #22
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, 512
  store volatile i32 %6, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %7 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 24
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 %1, i32 0
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %13 = getelementptr inbounds %struct.neigh_hash_table, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %0 to i32
  %15 = xor i32 %11, %14
  %16 = load i32, ptr %13, align 4
  %17 = mul i32 %15, %16
  %18 = getelementptr inbounds %struct.neigh_hash_table, ptr %12, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 32, %19
  %21 = lshr i32 %17, %20
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr ptr, ptr %22, i32 %21
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %63, label %26

26:                                               ; preds = %35, %2
  %27 = phi ptr [ %36, %35 ], [ %24, %2 ]
  %28 = getelementptr inbounds %struct.neighbour, ptr %27, i32 0, i32 26
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.neighbour, ptr %27, i32 0, i32 28
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, %11
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = load volatile ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %26

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.neighbour, ptr %27, i32 0, i32 6
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %52, %38
  %43 = phi i32 [ %50, %52 ], [ %40, %38 ]
  %44 = add i32 %43, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #22, !srcloc !9
  br label %45

45:                                               ; preds = %45, %42
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 %43, i32 %44, ptr elementtype(i32) %39) #22, !srcloc !42
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  %50 = extractvalue { i32, i32 } %46, 1
  %51 = icmp eq i32 %50, %43
  br i1 %51, label %54, label %52, !prof !31

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %52, %49, %38
  %55 = phi i32 [ 0, %38 ], [ 0, %52 ], [ %43, %49 ]
  %56 = add i32 %55, 1
  %57 = or i32 %56, %55
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %60, label %59, !prof !31

59:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 0) #22
  br label %60

60:                                               ; preds = %59, %54
  %61 = icmp eq i32 %55, 0
  %62 = select i1 %61, ptr null, ptr %27
  br label %63

63:                                               ; preds = %60, %35, %2
  %64 = phi ptr [ %62, %60 ], [ null, %2 ], [ null, %35 ]
  tail call fastcc void @local_bh_enable() #22
  ret ptr %64
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_event_send(ptr noundef %0) unnamed_addr #5 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 10
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %2
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store volatile i32 %2, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 @__neigh_event_send(ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #22
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netevent_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @neigh_release(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.neighbour, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #22, !srcloc !9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #22, !srcloc !44
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !31

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #22
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !45
  tail call void @neigh_destroy(ptr noundef %0) #22
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @ipv4_dst_check(ptr noundef readonly %0, i32 noundef %1) #15 {
  %3 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, -1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %10 = icmp eq i32 %8, %9
  %11 = select i1 %10, ptr %0, ptr null
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ipv4_default_advmss(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = lshr i32 %3, 1
  %7 = load volatile i32, ptr @jiffies, align 64
  %8 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = sub i32 %7, %9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr i32, ptr %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 20
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %3, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, ptr %16, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30, !prof !31

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 1
  %33 = icmp ne i8 %32, 0
  %34 = icmp ugt i32 %23, 576
  %35 = select i1 %33, i1 %34, i1 false
  %36 = select i1 %35, i32 576, i32 %23
  br label %37

37:                                               ; preds = %30, %26, %12, %5
  %38 = phi i32 [ %6, %5 ], [ %18, %12 ], [ %36, %30 ], [ %23, %26 ]
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 65535) #22
  %40 = add nsw i32 %39, -40
  %41 = load i32, ptr @ip_rt_min_advmss, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %40, i32 %41)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 65495)
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @ipv4_cow_metrics(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 146, i32 noundef 9, ptr noundef null) #22
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_dst_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq ptr %5, @dst_default_metrics
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dst_metrics, ptr %5, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #22, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #22, !srcloc !44
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !31

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #22
  br label %16

15:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !45
  tail call void @kfree(ptr noundef %5) #22
  br label %16

16:                                               ; preds = %15, %14, %12, %1
  %17 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %22) #22
  %23 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %22) #22
  br label %27

27:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv4_negative_advice(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 8
  %5 = load i16, ptr %4, align 2
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %7, %3
  tail call void @dst_release(ptr noundef nonnull %0) #22
  br label %17

17:                                               ; preds = %16, %12, %1
  %18 = phi ptr [ %0, %12 ], [ null, %1 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_link_failure(ptr noundef %0) #0 {
  %2 = alloca %struct.ip_options, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = getelementptr i8, ptr %4, i32 %7
  %9 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = add i32 %13, 20
  %15 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = icmp ugt i32 %14, %19
  br i1 %20, label %21, label %31, !prof !17

21:                                               ; preds = %1
  %22 = icmp ult i32 %16, %14
  br i1 %22, label %79, label %23, !prof !17

23:                                               ; preds = %21
  %24 = sub i32 %14, %19
  %25 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %24) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %79, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 8
  %29 = load i16, ptr %5, align 4
  %30 = zext i16 %29 to i32
  br label %31

31:                                               ; preds = %27, %1
  %32 = phi i32 [ %30, %27 ], [ %7, %1 ]
  %33 = phi ptr [ %28, %27 ], [ %4, %1 ]
  %34 = getelementptr i8, ptr %33, i32 %32
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, -16
  %37 = icmp ne i8 %36, 64
  %38 = and i8 %35, 15
  %39 = icmp ult i8 %38, 5
  %40 = or i1 %37, %39
  br i1 %40, label %79, label %41

41:                                               ; preds = %31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #22
  %42 = load i8, ptr %34, align 4
  %43 = and i8 %42, 14
  %44 = icmp ugt i8 %43, 5
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = shl i8 %42, 2
  %47 = and i8 %46, 60
  %48 = zext i8 %47 to i32
  %49 = load ptr, ptr %9, align 4
  %50 = ptrtoint ptr %34 to i32
  %51 = ptrtoint ptr %49 to i32
  %52 = sub i32 %50, %51
  %53 = add i32 %52, %48
  %54 = load i32, ptr %15, align 8
  %55 = load i32, ptr %17, align 4
  %56 = sub i32 %54, %55
  %57 = icmp ugt i32 %53, %56
  br i1 %57, label %58, label %72, !prof !17

58:                                               ; preds = %45
  %59 = icmp ult i32 %54, %53
  br i1 %59, label %79, label %60, !prof !17

60:                                               ; preds = %58
  %61 = sub i32 %53, %56
  %62 = tail call ptr @__pskb_pull_tail(ptr noundef %0, i32 noundef %61) #22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %3, align 8
  %66 = load i16, ptr %5, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr i8, ptr %65, i32 %67
  %69 = load i8, ptr %68, align 4
  %70 = shl i8 %69, 2
  %71 = and i8 %70, 60
  br label %72

72:                                               ; preds = %64, %45
  %73 = phi i8 [ %71, %64 ], [ %47, %45 ]
  %74 = add nsw i8 %73, -20
  %75 = getelementptr inbounds %struct.ip_options, ptr %2, i32 0, i32 2
  store i8 %74, ptr %75, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %76 = call i32 @__ip_options_compile(ptr noundef nonnull @init_net, ptr noundef nonnull %2, ptr noundef %0, ptr noundef null) #22
  call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %41
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %2) #22
  br label %79

79:                                               ; preds = %78, %72, %60, %58, %31, %23, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %80 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, -2
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = inttoptr i32 %82 to ptr
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 1, i32 %86
  %89 = getelementptr inbounds %struct.dst_entry, ptr %85, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = sub i32 %88, %90
  %93 = icmp slt i32 %92, 0
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  store i32 %88, ptr %89, align 4
  br label %96

96:                                               ; preds = %95, %84, %79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_rt_update_pmtu(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !20
  %7 = icmp eq ptr %2, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.anon.76, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 16
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 18
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 30
  %22 = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq ptr %1, null
  br i1 %26, label %111, label %27

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 30
  %35 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %36 = load volatile i32, ptr %35, align 4
  %37 = lshr i32 %36, 13
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = or i8 %39, %34
  %41 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %42 = load i16, ptr %41, align 8
  %43 = and i16 %42, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %47 = load i16, ptr %46, align 4
  %48 = trunc i16 %47 to i8
  br label %49

49:                                               ; preds = %45, %27
  %50 = phi i8 [ -1, %27 ], [ %48, %45 ]
  %51 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %52 = load i32, ptr %51, align 4
  br label %111

53:                                               ; preds = %5
  %54 = load i32, ptr %1, align 8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !18
  %55 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 5
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ip_options_rcu, ptr %56, i32 0, i32 1, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ip_options_rcu, ptr %56, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %58, %53
  %66 = phi i32 [ %64, %62 ], [ %54, %58 ], [ %54, %53 ]
  %67 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %72 = load i8, ptr %71, align 4
  %73 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %74 = load volatile i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %76 = load i16, ptr %75, align 8
  %77 = and i16 %76, 8
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %81 = load i16, ptr %80, align 4
  %82 = trunc i16 %81 to i8
  br label %83

83:                                               ; preds = %79, %65
  %84 = phi i8 [ %82, %79 ], [ -1, %65 ]
  %85 = and i8 %72, 30
  %86 = lshr i32 %74, 13
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = or i8 %88, %85
  %90 = and i16 %76, 40
  %91 = icmp ne i16 %90, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %96 = load i32, ptr %95, align 4
  store i32 %68, ptr %6, align 8
  %97 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 1
  store i32 1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %70, ptr %98, align 8
  %99 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  store i8 %89, ptr %99, align 4
  %100 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 4
  store i8 0, ptr %100, align 1
  %101 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %84, ptr %101, align 2
  %102 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 6
  store i8 %92, ptr %102, align 1
  %103 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 7
  store i32 0, ptr %103, align 8
  %104 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 9
  store i64 0, ptr %104, align 8
  %105 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 8
  store i32 %96, ptr %105, align 4
  %106 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  store i32 %66, ptr %106, align 4
  %107 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %94, ptr %107, align 8
  %108 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 3
  store i16 0, ptr %108, align 8
  %109 = getelementptr inbounds %struct.anon.140, ptr %108, i32 0, i32 1
  store i16 0, ptr %109, align 2
  %110 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 10
  store i32 0, ptr %110, align 8
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !19
  br label %140

111:                                              ; preds = %49, %8
  %112 = phi i32 [ %29, %49 ], [ %18, %8 ]
  %113 = phi i8 [ %40, %49 ], [ %21, %8 ]
  %114 = phi i8 [ %50, %49 ], [ %23, %8 ]
  %115 = phi i32 [ %31, %49 ], [ %25, %8 ]
  %116 = phi i32 [ %52, %49 ], [ 0, %8 ]
  %117 = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 9
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.iphdr, ptr %15, i32 0, i32 8
  %120 = load i32, ptr %119, align 4
  store i32 %112, ptr %6, align 8
  %121 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 1
  store i32 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 2
  store i32 %115, ptr %122, align 8
  %123 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 3
  store i8 %113, ptr %123, align 4
  %124 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 4
  store i8 0, ptr %124, align 1
  %125 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 5
  store i8 %114, ptr %125, align 2
  %126 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 6
  store i8 0, ptr %126, align 1
  %127 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 7
  store i32 0, ptr %127, align 8
  %128 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 9
  store i64 0, ptr %128, align 8
  %129 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 8
  store i32 %116, ptr %129, align 4
  %130 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 2
  store i32 %118, ptr %130, align 4
  %131 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 1
  store i32 %120, ptr %131, align 8
  %132 = getelementptr inbounds %struct.flowi4, ptr %6, i32 0, i32 3
  store i16 0, ptr %132, align 8
  %133 = getelementptr inbounds %struct.anon.140, ptr %132, i32 0, i32 1
  store i16 0, ptr %133, align 2
  %134 = getelementptr inbounds %struct.flowi_common, ptr %6, i32 0, i32 10
  store i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 15
  %136 = load i64, ptr %135, align 16
  %137 = and i64 %136, 1536
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %111
  store i32 0, ptr %6, align 8
  br label %140

140:                                              ; preds = %139, %111, %83
  call fastcc void @__ip_rt_update_pmtu(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %3)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_do_redirect(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.flowi4, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %5 = getelementptr inbounds i8, ptr %4, i32 32
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 24, i1 false), !annotation !20
  %6 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.76, ptr %2, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 17
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 30
  %15 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 13, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq ptr %1, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 34
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 8
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 30
  %28 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %29 = load volatile i32, ptr %28, align 4
  %30 = lshr i32 %29, 13
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = or i8 %32, %27
  %34 = getelementptr inbounds %struct.inet_sock, ptr %1, i32 0, i32 12
  %35 = load i16, ptr %34, align 8
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %40 = load i16, ptr %39, align 4
  %41 = trunc i16 %40 to i8
  br label %42

42:                                               ; preds = %38, %20
  %43 = phi i8 [ -1, %20 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 55
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %42, %3
  %47 = phi i32 [ %22, %42 ], [ %11, %3 ]
  %48 = phi i8 [ %33, %42 ], [ %14, %3 ]
  %49 = phi i8 [ %43, %42 ], [ %16, %3 ]
  %50 = phi i32 [ %24, %42 ], [ %18, %3 ]
  %51 = phi i32 [ %45, %42 ], [ 0, %3 ]
  %52 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 9
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 8
  %55 = load i32, ptr %54, align 4
  store i32 %47, ptr %4, align 8
  %56 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  store i32 1, ptr %56, align 4
  %57 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  store i32 %50, ptr %57, align 8
  %58 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  store i8 %48, ptr %58, align 4
  %59 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 4
  store i8 0, ptr %59, align 1
  %60 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 5
  store i8 %49, ptr %60, align 2
  %61 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 6
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 7
  store i32 0, ptr %62, align 8
  %63 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 9
  store i64 0, ptr %63, align 8
  %64 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  store i32 %51, ptr %64, align 4
  %65 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 2
  store i32 %53, ptr %65, align 4
  %66 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  store i32 %55, ptr %66, align 8
  %67 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 3
  store i16 0, ptr %67, align 8
  %68 = getelementptr inbounds %struct.anon.140, ptr %67, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 10
  store i32 0, ptr %69, align 8
  call fastcc void @__ip_do_redirect(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_local_out(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ipv4_neigh_lookup(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = tail call ptr @llvm.thread.pointer() #22
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, 512
  store volatile i32 %9, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %10 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %53 [
    i8 2, label %12
    i8 10, label %50
  ], !prof !46

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 24
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %14, i32 0
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %21 = getelementptr inbounds %struct.neigh_hash_table, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %5 to i32
  %23 = xor i32 %19, %22
  %24 = load i32, ptr %21, align 4
  %25 = mul i32 %23, %24
  %26 = getelementptr inbounds %struct.neigh_hash_table, ptr %20, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 32, %27
  %29 = lshr i32 %25, %28
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr ptr, ptr %30, i32 %29
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %43, %12
  %35 = phi ptr [ %44, %43 ], [ %32, %12 ]
  %36 = getelementptr inbounds %struct.neighbour, ptr %35, i32 0, i32 26
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %5
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.neighbour, ptr %35, i32 0, i32 28
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, %19
  br i1 %42, label %48, label %43

43:                                               ; preds = %39, %34
  %44 = load volatile ptr, ptr %35, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %34

46:                                               ; preds = %43, %12
  %47 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %4, ptr noundef %5, i1 noundef zeroext false) #22
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi ptr [ %47, %46 ], [ %35, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %67

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %52 = tail call fastcc ptr @ip_neigh_gw6(ptr noundef %5, ptr noundef %51)
  br label %67

53:                                               ; preds = %3
  %54 = icmp eq ptr %1, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 18
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  %61 = getelementptr i8, ptr %57, i32 %60
  %62 = getelementptr inbounds %struct.iphdr, ptr %61, i32 0, i32 9
  br label %63

63:                                               ; preds = %55, %53
  %64 = phi ptr [ %62, %55 ], [ %2, %53 ]
  %65 = load i32, ptr %64, align 4
  %66 = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %5, i32 noundef %65)
  br label %67

67:                                               ; preds = %63, %50, %48
  %68 = phi ptr [ %49, %48 ], [ %52, %50 ], [ %66, %63 ]
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %95, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.neighbour, ptr %68, i32 0, i32 6
  %72 = load volatile i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %84, %70
  %75 = phi i32 [ %82, %84 ], [ %72, %70 ]
  %76 = add i32 %75, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #22, !srcloc !9
  br label %77

77:                                               ; preds = %77, %74
  %78 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 %75, i32 %76, ptr elementtype(i32) %71) #22, !srcloc !42
  %79 = extractvalue { i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %77

81:                                               ; preds = %77
  %82 = extractvalue { i32, i32 } %78, 1
  %83 = icmp eq i32 %82, %75
  br i1 %83, label %86, label %84, !prof !31

84:                                               ; preds = %81
  %85 = icmp eq i32 %82, 0
  br i1 %85, label %86, label %74

86:                                               ; preds = %84, %81, %70
  %87 = phi i32 [ 0, %70 ], [ 0, %84 ], [ %75, %81 ]
  %88 = add i32 %87, 1
  %89 = or i32 %88, %87
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %92, label %91, !prof !31

91:                                               ; preds = %86
  call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 0) #22
  br label %92

92:                                               ; preds = %91, %86
  %93 = icmp eq i32 %87, 0
  %94 = select i1 %93, ptr null, ptr %68
  br label %95

95:                                               ; preds = %92, %67
  %96 = phi ptr [ %68, %67 ], [ %94, %92 ]
  call fastcc void @local_bh_enable() #22
  ret ptr %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_confirm_neigh(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4
  switch i8 %5, label %82 [
    i8 2, label %6
    i8 10, label %8
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  br label %89

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %10 = tail call ptr @llvm.thread.pointer() #22
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, 512
  store volatile i32 %13, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %14 = load ptr, ptr @ipv6_stub, align 4
  %15 = getelementptr inbounds %struct.ipv6_stub, ptr %14, i32 0, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.neigh_table, ptr %16, i32 0, i32 31
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.neigh_hash_table, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %9, align 4
  %21 = ptrtoint ptr %3 to i32
  %22 = xor i32 %20, %21
  %23 = load i32, ptr %19, align 4
  %24 = mul i32 %22, %23
  %25 = getelementptr %struct.rtable, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.neigh_hash_table, ptr %18, i32 0, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, %26
  %30 = add i32 %29, %24
  %31 = getelementptr %struct.rtable, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.neigh_hash_table, ptr %18, i32 0, i32 2, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, %32
  %36 = add i32 %30, %35
  %37 = getelementptr %struct.rtable, ptr %0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.neigh_hash_table, ptr %18, i32 0, i32 2, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = mul i32 %40, %38
  %42 = add i32 %36, %41
  %43 = getelementptr inbounds %struct.neigh_hash_table, ptr %18, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 32, %44
  %46 = lshr i32 %42, %45
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr ptr, ptr %47, i32 %46
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %133, label %51

51:                                               ; preds = %73, %8
  %52 = phi ptr [ %74, %73 ], [ %49, %8 ]
  %53 = getelementptr inbounds %struct.neighbour, ptr %52, i32 0, i32 26
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.neighbour, ptr %52, i32 0, i32 28
  %58 = load i32, ptr %57, align 4
  %59 = xor i32 %58, %20
  %60 = getelementptr %struct.neighbour, ptr %52, i32 1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %61, %26
  %63 = or i32 %62, %59
  %64 = getelementptr %struct.neighbour, ptr %52, i32 1, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %65, %32
  %67 = or i32 %63, %66
  %68 = getelementptr %struct.neighbour, ptr %52, i32 1, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %69, %38
  %71 = or i32 %67, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %56, %51
  %74 = load volatile ptr, ptr %52, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %133, label %51

76:                                               ; preds = %56
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = getelementptr inbounds %struct.neighbour, ptr %52, i32 0, i32 3
  %79 = load volatile i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %77
  br i1 %80, label %133, label %81

81:                                               ; preds = %76
  store volatile i32 %77, ptr %78, align 4
  br label %133

82:                                               ; preds = %2
  %83 = icmp eq ptr %1, null
  br i1 %83, label %134, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, -1342177280
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %84, %6
  %90 = phi ptr [ %7, %6 ], [ %1, %84 ]
  %91 = load i32, ptr %90, align 4
  %92 = tail call ptr @llvm.thread.pointer() #22
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %94 = load volatile i32, ptr %93, align 4
  %95 = add i32 %94, 512
  store volatile i32 %95, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %96 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %97 = load i32, ptr %96, align 8
  %98 = and i32 %97, 24
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 %91, i32 0
  %101 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %102 = getelementptr inbounds %struct.neigh_hash_table, ptr %101, i32 0, i32 2
  %103 = ptrtoint ptr %3 to i32
  %104 = xor i32 %100, %103
  %105 = load i32, ptr %102, align 4
  %106 = mul i32 %104, %105
  %107 = getelementptr inbounds %struct.neigh_hash_table, ptr %101, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 32, %108
  %110 = lshr i32 %106, %109
  %111 = load ptr, ptr %101, align 4
  %112 = getelementptr ptr, ptr %111, i32 %110
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %133, label %115

115:                                              ; preds = %124, %89
  %116 = phi ptr [ %125, %124 ], [ %113, %89 ]
  %117 = getelementptr inbounds %struct.neighbour, ptr %116, i32 0, i32 26
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, %3
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.neighbour, ptr %116, i32 0, i32 28
  %122 = load i32, ptr %121, align 8
  %123 = icmp eq i32 %122, %100
  br i1 %123, label %127, label %124

124:                                              ; preds = %120, %115
  %125 = load volatile ptr, ptr %116, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %115

127:                                              ; preds = %120
  %128 = load volatile i32, ptr @jiffies, align 64
  %129 = getelementptr inbounds %struct.neighbour, ptr %116, i32 0, i32 3
  %130 = load volatile i32, ptr %129, align 4
  %131 = icmp eq i32 %130, %128
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store volatile i32 %128, ptr %129, align 4
  br label %133

133:                                              ; preds = %132, %127, %124, %89, %81, %76, %73, %8
  tail call fastcc void @local_bh_enable() #22
  br label %134

134:                                              ; preds = %133, %84, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_compile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw4(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
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
  %36 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %3, ptr noundef %0, i1 noundef zeroext false) #22
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %36, %35 ], [ %24, %28 ]
  ret ptr %38
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw6(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
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
  %66 = tail call ptr @__neigh_create(ptr noundef %5, ptr noundef %1, ptr noundef %0, i1 noundef zeroext false) #22
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi ptr [ %66, %65 ], [ %41, %45 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_rt_bug(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  tail call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1246, i32 noundef 9, ptr noundef null) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip_mkroute_input(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4
  %11 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 68
  %12 = load volatile ptr, ptr %11, align 16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = tail call i32 @net_ratelimit() #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %174, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #25
  br label %174

19:                                               ; preds = %6
  %20 = trunc i32 %5 to i8
  %21 = getelementptr inbounds %struct.fib_nh_common, ptr %9, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = call i32 @fib_validate_source(ptr noundef %0, i32 noundef %4, i32 noundef %3, i8 noundef zeroext %20, i32 noundef %22, ptr noundef %23, ptr noundef %2, ptr noundef nonnull %7) #22
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = call i32 @llvm.read_register.i32(metadata !0) #22
  %28 = inttoptr i32 %27 to ptr
  %29 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #14, !srcloc !33
  %30 = add i32 %29, ptrtoint (ptr getelementptr inbounds (%struct.rt_cache_stat, ptr @rt_cache_stat, i32 0, i32 5) to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %174

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp ne ptr %36, null
  %38 = load i32, ptr %7, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %37, i1 %39, i1 false
  %41 = icmp eq ptr %12, %2
  %42 = icmp ne i32 %24, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %80

44:                                               ; preds = %34
  %45 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %46 = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr %struct.in_device, ptr %2, i32 0, i32 21, i32 1, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %49, %44
  %54 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %55 = load i16, ptr %54, align 8
  %56 = icmp eq i16 %55, 8
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.fib_nh_common, ptr %9, i32 0, i32 5
  %59 = load i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fib_nh_common, ptr %9, i32 0, i32 8
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32 [ %63, %61 ], [ 0, %57 ]
  %66 = getelementptr %struct.ipv4_devconf, ptr %45, i32 0, i32 1, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = getelementptr %struct.in_device, ptr %2, i32 0, i32 21, i32 1, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = call i32 @inet_addr_onlink(ptr noundef nonnull %2, i32 noundef %4, i32 noundef %65) #22
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73, %69, %64
  %77 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 20
  %78 = load i16, ptr %77, align 4
  %79 = or i16 %78, 32
  store i16 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %73, %53, %49, %34
  %81 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 16
  %82 = load i16, ptr %81, align 8
  %83 = icmp eq i16 %82, 8
  %84 = xor i1 %41, true
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %95, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %88 = getelementptr %struct.ipv4_devconf, ptr %87, i32 0, i32 1, i32 24
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = getelementptr %struct.in_device, ptr %2, i32 0, i32 21, i32 1, i32 24
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %174, label %95

95:                                               ; preds = %91, %86, %80
  %96 = call fastcc ptr @find_exception(ptr noundef %9, i32 noundef %3) #22
  br i1 %40, label %97, label %120

97:                                               ; preds = %95
  %98 = icmp eq ptr %96, null
  %99 = getelementptr inbounds %struct.fib_nh_exception, ptr %96, i32 0, i32 7
  %100 = getelementptr inbounds %struct.fib_nh_common, ptr %9, i32 0, i32 12
  %101 = select i1 %98, ptr %100, ptr %99
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %120, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.dst_entry, ptr %102, i32 0, i32 8
  %106 = load i16, ptr %105, align 2
  %107 = icmp eq i16 %106, -1
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtable, ptr %102, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %115 = load i16, ptr %114, align 2
  %116 = or i16 %115, 16384
  store i16 %116, ptr %114, align 2
  %117 = ptrtoint ptr %102 to i32
  %118 = or i32 %117, 1
  %119 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %118, ptr %119, align 8
  br label %174

120:                                              ; preds = %108, %104, %97, %95
  %121 = load ptr, ptr %12, align 4
  %122 = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 3
  %123 = load i8, ptr %122, align 2
  %124 = zext i8 %123 to i16
  %125 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 6), align 4
  %126 = getelementptr %struct.ipv4_devconf, ptr %125, i32 0, i32 1, i32 15
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = getelementptr %struct.in_device, ptr %2, i32 0, i32 21, i32 1, i32 15
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, i16 0, i16 4
  br label %134

134:                                              ; preds = %129, %120
  %135 = phi i16 [ 4, %120 ], [ %133, %129 ]
  %136 = getelementptr %struct.ipv4_devconf, ptr %125, i32 0, i32 1, i32 14
  %137 = load i32, ptr %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = getelementptr %struct.in_device, ptr %12, i32 0, i32 21, i32 1, i32 14
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139, %134
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i16 [ 2, %143 ], [ 0, %139 ]
  %146 = or i16 %145, %135
  %147 = call ptr @dst_alloc(ptr noundef nonnull @ipv4_dst_ops, ptr noundef %121, i32 noundef 1, i32 noundef -1, i16 noundef zeroext %146) #22
  %148 = icmp eq ptr %147, null
  br i1 %148, label %174, label %149

149:                                              ; preds = %144
  %150 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 122), align 4
  %151 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 1
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 2
  store i32 0, ptr %152, align 4
  %153 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 3
  store i16 %124, ptr %153, align 4
  %154 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 4
  %155 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 9
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 8
  store i32 0, ptr %156, align 4
  %157 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(7) %154, i8 0, i64 7, i1 false) #22
  store volatile ptr %157, ptr %157, align 4
  %158 = getelementptr inbounds %struct.rtable, ptr %147, i32 0, i32 10, i32 1
  store ptr %157, ptr %158, align 4
  %159 = getelementptr inbounds %struct.dst_entry, ptr %147, i32 0, i32 6
  store ptr @ip_output, ptr %159, align 4
  store i8 1, ptr %154, align 2
  %160 = call i32 @llvm.read_register.i32(metadata !0) #22
  %161 = inttoptr i32 %160 to ptr
  %162 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %161) #14, !srcloc !33
  %163 = add i32 %162, ptrtoint (ptr @rt_cache_stat to i32)
  %164 = inttoptr i32 %163 to ptr
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, 1
  store i32 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.dst_entry, ptr %147, i32 0, i32 5
  store ptr @ip_forward, ptr %167, align 4
  %168 = load ptr, ptr %35, align 4
  call fastcc void @rt_set_nexthop(ptr noundef nonnull %147, i32 noundef %3, ptr noundef %1, ptr noundef %96, ptr noundef %168, i1 noundef zeroext %40) #22
  %169 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 3
  %170 = load i16, ptr %169, align 2
  %171 = or i16 %170, 16384
  store i16 %171, ptr %169, align 2
  %172 = ptrtoint ptr %147 to i32
  %173 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  store i32 %172, ptr %173, align 8
  br label %174

174:                                              ; preds = %149, %144, %113, %91, %26, %17, %14
  %175 = phi i32 [ -22, %17 ], [ -22, %14 ], [ %24, %26 ], [ -22, %91 ], [ 0, %149 ], [ 0, %113 ], [ -105, %144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip_error(ptr noundef %0) #0 {
  %2 = alloca %struct.inetpeer_addr, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, -2
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.anon.76, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 15
  %10 = load i64, ptr %9, align 16
  %11 = and i64 %10, 262144
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = tail call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %15) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %126, label %18

18:                                               ; preds = %13, %1
  %19 = phi ptr [ %16, %13 ], [ %8, %1 ]
  %20 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 68
  %21 = load volatile ptr, ptr %20, align 16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %126, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.in_device, ptr %21, i32 0, i32 21, i32 1, i32 0
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.dst_entry, ptr %6, i32 0, i32 15
  %28 = load i16, ptr %27, align 4
  %29 = sext i16 %28 to i32
  br i1 %26, label %30, label %71

30:                                               ; preds = %23
  switch i32 %29, label %126 [
    i32 113, label %31
    i32 101, label %51
  ]

31:                                               ; preds = %30
  %32 = tail call ptr @llvm.thread.pointer() #22
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = add i32 %34, 512
  store volatile i32 %35, ptr %33, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %36 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #14, !srcloc !33
  %41 = add i32 %40, %37
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.ipstats_mib, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !47
  %46 = getelementptr [37 x i64], ptr %42, i32 0, i32 10
  %47 = load i64, ptr %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %46, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !48
  %49 = load i32, ptr %43, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %43, align 4
  tail call fastcc void @local_bh_enable()
  br label %126

51:                                               ; preds = %30
  %52 = tail call ptr @llvm.thread.pointer() #22
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = add i32 %54, 512
  store volatile i32 %55, ptr %53, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %56 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #14, !srcloc !33
  %61 = add i32 %60, %57
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.ipstats_mib, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !47
  %66 = getelementptr [37 x i64], ptr %62, i32 0, i32 9
  %67 = load i64, ptr %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, ptr %66, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !48
  %69 = load i32, ptr %63, align 4
  %70 = add i32 %69, 1
  store i32 %70, ptr %63, align 4
  tail call fastcc void @local_bh_enable()
  br label %126

71:                                               ; preds = %23
  switch i32 %29, label %126 [
    i32 13, label %92
    i32 113, label %93
    i32 101, label %72
  ]

72:                                               ; preds = %71
  %73 = tail call ptr @llvm.thread.pointer() #22
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %75 = load volatile i32, ptr %74, align 4
  %76 = add i32 %75, 512
  store volatile i32 %76, ptr %74, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !41
  %77 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 30), align 8
  %78 = ptrtoint ptr %77 to i32
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #14, !srcloc !33
  %82 = add i32 %81, %78
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.ipstats_mib, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !47
  %87 = getelementptr [37 x i64], ptr %83, i32 0, i32 9
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, ptr %87, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !48
  %90 = load i32, ptr %84, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %84, align 4
  tail call fastcc void @local_bh_enable()
  br label %93

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %72, %71
  %94 = phi i32 [ 0, %72 ], [ 13, %92 ], [ 1, %71 ]
  %95 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 35, i32 16), align 16
  %96 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %99 = load i16, ptr %98, align 4
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %97, i32 %100
  %102 = getelementptr inbounds %struct.iphdr, ptr %101, i32 0, i32 8
  %103 = load i32, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #22
  %104 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %104, i8 0, i32 12, i1 false) #22, !annotation !20
  store i32 %103, ptr %2, align 4
  %105 = getelementptr inbounds %struct.ipv4_addr_key, ptr %2, i32 0, i32 1
  store i32 0, ptr %105, align 4
  %106 = getelementptr inbounds %struct.inetpeer_addr, ptr %2, i32 0, i32 1
  store i16 2, ptr %106, align 4
  %107 = call ptr @inet_getpeer(ptr noundef %95, ptr noundef nonnull %2, i32 noundef 1) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #22
  %108 = icmp eq ptr %107, null
  br i1 %108, label %123, label %109

109:                                              ; preds = %93
  %110 = load volatile i32, ptr @jiffies, align 64
  %111 = getelementptr inbounds %struct.inet_peer, ptr %107, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = sub i32 %110, %112
  %114 = getelementptr inbounds %struct.inet_peer, ptr %107, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, %113
  %117 = load i32, ptr @ip_rt_error_burst, align 4
  %118 = call i32 @llvm.umin.i32(i32 %116, i32 %117)
  store i32 %118, ptr %114, align 4
  store i32 %110, ptr %111, align 4
  %119 = load i32, ptr @ip_rt_error_cost, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %109
  %122 = sub i32 %118, %119
  store i32 %122, ptr %114, align 4
  call void @inet_putpeer(ptr noundef nonnull %107) #22
  br label %123

123:                                              ; preds = %121, %93
  %124 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 3, i32 4
  call void @__icmp_send(ptr noundef %0, i32 noundef 3, i32 noundef %94, i32 noundef 0, ptr noundef %124) #22
  br label %126

125:                                              ; preds = %109
  call void @inet_putpeer(ptr noundef nonnull %107) #22
  br label %126

126:                                              ; preds = %125, %123, %71, %51, %31, %30, %18, %13
  call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rt_cache_route(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtable, ptr %1, i32 0, i32 4
  %4 = load i8, ptr %3, align 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 12
  br label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.fib_nh_common, ptr %0, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #14, !srcloc !33
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi ptr [ %7, %6 ], [ %16, %8 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #22, !srcloc !9
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 0, i32 1, ptr elementtype(i32) %20) #22, !srcloc !22
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  br label %26

25:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 231, i32 noundef 9, ptr noundef null) #22
  br label %26

26:                                               ; preds = %25, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !49
  %27 = ptrtoint ptr %19 to i32
  %28 = ptrtoint ptr %1 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #22, !srcloc !9
  br label %29

29:                                               ; preds = %29, %26
  %30 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %18, i32 %27, i32 %28) #22, !srcloc !12
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %29

33:                                               ; preds = %29
  %34 = extractvalue { i32, i32 } %30, 1
  %35 = inttoptr i32 %34 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !50
  %36 = icmp eq ptr %19, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = icmp eq ptr %19, null
  br i1 %38, label %52, label %39

39:                                               ; preds = %37
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #14, !srcloc !33
  %43 = add i32 %42, ptrtoint (ptr @rt_uncached_list to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.rtable, ptr %19, i32 0, i32 11
  store ptr %44, ptr %45, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %44) #22
  %46 = getelementptr inbounds %struct.rtable, ptr %19, i32 0, i32 10
  %47 = getelementptr inbounds %struct.uncached_list, ptr %44, i32 0, i32 1
  %48 = getelementptr inbounds %struct.uncached_list, ptr %44, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %46, ptr %48, align 4
  store ptr %47, ptr %46, align 4
  %50 = getelementptr inbounds %struct.rtable, ptr %19, i32 0, i32 10, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %46, ptr %49, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %44) #22
  tail call void @dst_release(ptr noundef nonnull %19) #22
  br label %52

51:                                               ; preds = %33
  tail call void @dst_release(ptr noundef %1) #22
  br label %52

52:                                               ; preds = %51, %39, %37
  ret i1 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_forward(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rt_set_nexthop(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef readonly %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = icmp eq ptr %4, null
  br i1 %7, label %78, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fib_result, ptr %2, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fib_nh_common, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.fib_nh_common, ptr %10, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, -3
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 5
  store i8 1, ptr %19, align 1
  %20 = load i8, ptr %11, align 2
  %21 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  store i8 %20, ptr %21, align 4
  %22 = load i8, ptr %11, align 2
  %23 = icmp eq i8 %22, 2
  br i1 %23, label %24, label %28, !prof !31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.fib_nh_common, ptr %10, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  store i32 %26, ptr %27, align 4
  br label %31

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %30 = getelementptr inbounds %struct.fib_nh_common, ptr %10, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %29, ptr noundef align 4 dereferenceable(16) %30, i32 16, i1 false)
  br label %31

31:                                               ; preds = %28, %24, %14, %8
  %32 = getelementptr inbounds %struct.fib_info, ptr %4, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = or i32 %34, 1
  %36 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = icmp eq ptr %33, @dst_default_metrics
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = or i32 %34, 3
  store i32 %39, ptr %36, align 4
  %40 = getelementptr inbounds %struct.dst_metrics, ptr %33, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #22, !srcloc !9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #22, !srcloc !51
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44, !prof !17

44:                                               ; preds = %38
  %45 = add i32 %42, 1
  %46 = or i32 %45, %42
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %50, label %48, !prof !31

48:                                               ; preds = %44, %38
  %49 = phi i32 [ 2, %38 ], [ 1, %44 ]
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef %49) #22
  br label %50

50:                                               ; preds = %48, %44, %31
  %51 = getelementptr inbounds %struct.fib_nh_common, ptr %10, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 13
  store ptr %52, ptr %53, align 4
  %54 = icmp eq ptr %3, null
  br i1 %54, label %57, label %55, !prof !31

55:                                               ; preds = %50
  %56 = tail call fastcc zeroext i1 @rt_bind_exception(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %1, i1 noundef zeroext %5)
  br i1 %56, label %92, label %60, !prof !31

57:                                               ; preds = %50
  br i1 %5, label %58, label %60

58:                                               ; preds = %57
  %59 = tail call fastcc zeroext i1 @rt_cache_route(ptr noundef %10, ptr noundef %0)
  br i1 %59, label %92, label %60, !prof !31

60:                                               ; preds = %58, %57, %55
  %61 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  store i8 2, ptr %65, align 4
  store i32 %1, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %68 = inttoptr i32 %67 to ptr
  %69 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %68) #14, !srcloc !33
  %70 = add i32 %69, ptrtoint (ptr @rt_uncached_list to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 11
  store ptr %71, ptr %72, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %71) #22
  %73 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10
  %74 = getelementptr inbounds %struct.uncached_list, ptr %71, i32 0, i32 1
  %75 = getelementptr inbounds %struct.uncached_list, ptr %71, i32 0, i32 1, i32 1
  %76 = load ptr, ptr %75, align 4
  store ptr %73, ptr %75, align 4
  store ptr %74, ptr %73, align 4
  %77 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %73, ptr %76, align 4
  br label %90

78:                                               ; preds = %6
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #14, !srcloc !33
  %82 = add i32 %81, ptrtoint (ptr @rt_uncached_list to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 11
  store ptr %83, ptr %84, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %83) #22
  %85 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10
  %86 = getelementptr inbounds %struct.uncached_list, ptr %83, i32 0, i32 1
  %87 = getelementptr inbounds %struct.uncached_list, ptr %83, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %85, ptr %87, align 4
  store ptr %86, ptr %85, align 4
  %89 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 10, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %85, ptr %88, align 4
  br label %90

90:                                               ; preds = %78, %66
  %91 = phi ptr [ %71, %66 ], [ %83, %78 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %90, %58, %55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rt_bind_exception(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @fnhe_lock) #22
  %5 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %8, label %82

8:                                                ; preds = %4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 6), align 8
  %10 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 7
  %14 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 8
  %15 = select i1 %12, ptr %14, ptr %13
  %16 = load volatile ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %32, label %20

20:                                               ; preds = %8
  store i32 %9, ptr %17, align 4
  %21 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 5
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 6
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 4
  store i8 0, ptr %24, align 4
  %25 = load volatile ptr, ptr %13, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store volatile ptr null, ptr %13, align 4
  tail call void @dst_dev_put(ptr noundef nonnull %25) #22
  tail call void @dst_release(ptr noundef nonnull %25) #22
  br label %28

28:                                               ; preds = %27, %20
  %29 = load volatile ptr, ptr %14, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store volatile ptr null, ptr %14, align 4
  tail call void @dst_dev_put(ptr noundef nonnull %29) #22
  tail call void @dst_release(ptr noundef nonnull %29) #22
  br label %32

32:                                               ; preds = %31, %28, %8
  %33 = phi ptr [ %16, %8 ], [ null, %28 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %35, 1
  %39 = and i32 %37, 1
  %40 = or i32 %39, %38
  store i32 %40, ptr %36, align 4
  %41 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 4
  %42 = load i8, ptr %41, align 4, !range !36
  %43 = zext i8 %42 to i32
  %44 = or i32 %38, %43
  store i32 %44, ptr %36, align 4
  %45 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  br label %62

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 262144
  store i32 %57, ptr %55, align 4
  %58 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 5
  store i8 1, ptr %58, align 1
  %59 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  store i8 2, ptr %59, align 4
  %60 = load i32, ptr %48, align 4
  %61 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %54, %51
  %63 = phi i32 [ %53, %51 ], [ %60, %54 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 8
  store i32 %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.rtable, ptr %0, i32 0, i32 7
  store i8 2, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br i1 %3, label %69, label %79

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.dst_entry, ptr %0, i32 0, i32 18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %70) #22, !srcloc !9
  %71 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %70, ptr %70, i32 0, i32 1, ptr elementtype(i32) %70) #22, !srcloc !22
  %72 = extractvalue { i32, i32, i32 } %71, 0
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  br label %76

75:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 231, i32 noundef 9, ptr noundef null) #22
  br label %76

76:                                               ; preds = %75, %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !52
  store volatile ptr %0, ptr %15, align 4
  %77 = icmp eq ptr %33, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void @dst_dev_put(ptr noundef nonnull %33) #22
  tail call void @dst_release(ptr noundef nonnull %33) #22
  br label %79

79:                                               ; preds = %78, %76, %68
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = getelementptr inbounds %struct.fib_nh_exception, ptr %1, i32 0, i32 9
  store i32 %80, ptr %81, align 4
  br label %82

82:                                               ; preds = %79, %4
  %83 = phi i1 [ %3, %79 ], [ false, %4 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @fnhe_lock) #22
  ret i1 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_mc_output(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_blackhole_check(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_blackhole_mtu(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dst_blackhole_cow_metrics(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_blackhole_update_pmtu(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_blackhole_redirect(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rt_fill_info(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [17 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %19) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %19, i8 0, i32 68, i1 false), !annotation !20
  %20 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %210

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 14
  %27 = load ptr, ptr %26, align 8
  %28 = ptrtoint ptr %25 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = icmp slt i32 %30, 28
  br i1 %31, label %210, label %32, !prof !17

32:                                               ; preds = %23
  %33 = tail call ptr @__nlmsg_put(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 24, i32 noundef 12, i32 noundef %8) #22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %210, label %35

35:                                               ; preds = %32
  %36 = getelementptr i8, ptr %33, i32 16
  store i8 2, ptr %36, align 4
  %37 = getelementptr i8, ptr %33, i32 17
  store i8 32, ptr %37, align 1
  %38 = getelementptr i8, ptr %33, i32 18
  store i8 0, ptr %38, align 2
  %39 = icmp eq ptr %4, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 3
  %42 = load i8, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i8 [ %42, %40 ], [ 0, %35 ]
  %45 = getelementptr i8, ptr %33, i32 19
  store i8 %44, ptr %45, align 1
  %46 = icmp ult i32 %3, 256
  %47 = trunc i32 %3 to i8
  %48 = select i1 %46, i8 %47, i8 -4
  %49 = getelementptr i8, ptr %33, i32 20
  store i8 %48, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #22
  store i32 %3, ptr %18, align 4
  %50 = call i32 @nla_put(ptr noundef %5, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %199

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 3
  %54 = load i16, ptr %53, align 4
  %55 = trunc i16 %54 to i8
  %56 = getelementptr i8, ptr %33, i32 23
  store i8 %55, ptr %56, align 1
  %57 = getelementptr i8, ptr %33, i32 22
  store i8 0, ptr %57, align 2
  %58 = getelementptr i8, ptr %33, i32 21
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -65536
  %62 = or i32 %61, 512
  %63 = getelementptr i8, ptr %33, i32 24
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %59, align 4
  %65 = and i32 %64, 65536
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %52
  %68 = or i32 %61, 768
  store i32 %68, ptr %63, align 4
  br label %69

69:                                               ; preds = %67, %52
  %70 = phi i32 [ %68, %67 ], [ %62, %52 ]
  %71 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 20
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, 32
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = or i32 %70, 16777216
  store i32 %76, ptr %63, align 4
  br label %77

77:                                               ; preds = %75, %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #22
  store i32 %0, ptr %17, align 4
  %78 = call i32 @nla_put(ptr noundef %5, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #22
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %199

80:                                               ; preds = %77
  %81 = icmp eq i32 %1, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %80
  store i8 32, ptr %38, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #22
  store i32 %1, ptr %16, align 4
  %83 = call i32 @nla_put(ptr noundef %5, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #22
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %199

85:                                               ; preds = %82, %80
  %86 = load ptr, ptr %2, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 17
  %90 = load i32, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #22
  store i32 %90, ptr %15, align 4
  %91 = call i32 @nla_put(ptr noundef %5, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #22
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %199

93:                                               ; preds = %88, %85
  br i1 %39, label %105, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 4
  %96 = load i8, ptr %95, align 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.flowi4, ptr %4, i32 0, i32 1
  %100 = load i32, ptr %99, align 8
  %101 = icmp eq i32 %100, %1
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #22
  store i32 %100, ptr %14, align 4
  %103 = call i32 @nla_put(ptr noundef %5, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %199

105:                                              ; preds = %102, %98, %94, %93
  %106 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 5
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 7
  %111 = load i8, ptr %110, align 4
  %112 = icmp eq i8 %111, 2
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 8
  %115 = load i32, ptr %114, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  store i32 %115, ptr %13, align 4
  %116 = call i32 @nla_put(ptr noundef %5, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %199

118:                                              ; preds = %113
  %119 = load i8, ptr %110, align 4
  br label %120

120:                                              ; preds = %118, %109
  %121 = phi i8 [ %119, %118 ], [ %111, %109 ]
  %122 = icmp eq i8 %121, 10
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = call ptr @nla_reserve(ptr noundef %5, i32 noundef 18, i32 noundef 18) #22
  %125 = icmp eq ptr %124, null
  br i1 %125, label %199, label %126

126:                                              ; preds = %123
  %127 = getelementptr i8, ptr %124, i32 4
  store i16 10, ptr %127, align 2
  %128 = getelementptr i8, ptr %124, i32 6
  %129 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(16) %128, ptr noundef align 4 dereferenceable(16) %129, i32 16, i1 false)
  br label %130

130:                                              ; preds = %126, %120, %105
  %131 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = sub i32 %135, %132
  %137 = icmp slt i32 %136, 0
  %138 = sub i32 %132, %135
  %139 = select i1 %137, i32 %138, i32 0
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi i32 [ %139, %134 ], [ 0, %130 ]
  %142 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = and i32 %143, -4
  %145 = inttoptr i32 %144 to ptr
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %19, ptr noundef align 4 dereferenceable(68) %145, i32 68, i1 false)
  %146 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 9
  %147 = load i32, ptr %146, align 4
  %148 = icmp ugt i32 %147, 1
  %149 = icmp ne i32 %141, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = lshr i32 %147, 1
  %153 = getelementptr inbounds [17 x i32], ptr %19, i32 0, i32 1
  store i32 %152, ptr %153, align 4
  br label %154

154:                                              ; preds = %151, %140
  %155 = and i32 %147, 1
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, i1 %149, i1 false
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  %159 = load i32, ptr %19, align 4
  %160 = or i32 %159, 4
  store i32 %160, ptr %19, align 4
  br label %161

161:                                              ; preds = %158, %154
  %162 = call i32 @rtnetlink_put_metrics(ptr noundef %5, ptr noundef nonnull %19) #22
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %199, label %164

164:                                              ; preds = %161
  br i1 %39, label %188, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  store i32 %167, ptr %12, align 4
  %170 = call i32 @nla_put(ptr noundef %5, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %199

172:                                              ; preds = %169, %165
  %173 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store i32 %174, ptr %11, align 4
  %177 = call i32 @nla_put(ptr noundef %5, i32 noundef 25, i32 noundef 4, ptr noundef nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176, %172
  %180 = getelementptr inbounds %struct.rtable, ptr %2, i32 0, i32 4
  %181 = load i8, ptr %180, align 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.flowi_common, ptr %4, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 %185, ptr %10, align 4
  %186 = call i32 @nla_put(ptr noundef %5, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %183, %179, %164
  %189 = getelementptr inbounds %struct.dst_entry, ptr %2, i32 0, i32 15
  %190 = load i16, ptr %189, align 4
  %191 = sext i16 %190 to i32
  %192 = call i32 @rtnl_put_cacheinfo(ptr noundef %5, ptr noundef %2, i32 noundef 0, i32 noundef %141, i32 noundef %191) #22
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %188
  %195 = load ptr, ptr %26, align 8
  %196 = ptrtoint ptr %195 to i32
  %197 = ptrtoint ptr %33 to i32
  %198 = sub i32 %196, %197
  store i32 %198, ptr %33, align 4
  br label %210

199:                                              ; preds = %188, %183, %176, %169, %161, %123, %113, %102, %88, %82, %77, %43
  %200 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 17
  %201 = load ptr, ptr %200, align 4
  %202 = icmp ugt ptr %201, %33
  br i1 %202, label %203, label %205, !prof !17

203:                                              ; preds = %199
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #22
  %204 = load ptr, ptr %200, align 4
  br label %205

205:                                              ; preds = %203, %199
  %206 = phi ptr [ %204, %203 ], [ %201, %199 ]
  %207 = ptrtoint ptr %33 to i32
  %208 = ptrtoint ptr %206 to i32
  %209 = sub i32 %207, %208
  call void @skb_trim(ptr noundef %5, i32 noundef %209) #22
  br label %210

210:                                              ; preds = %205, %194, %32, %23, %9
  %211 = phi i32 [ -90, %205 ], [ 0, %194 ], [ -90, %32 ], [ -90, %23 ], [ -90, %9 ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %19) #22
  ret i32 %211
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnetlink_put_metrics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_put_cacheinfo(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ip_rt_do_proc_init(ptr nocapture noundef readonly %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %3, ptr noundef nonnull @rt_cache_seq_ops, i32 noundef 0, ptr noundef null) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.11, i16 noundef zeroext 292, ptr noundef %8, ptr noundef nonnull @rt_cpu_seq_ops, i32 noundef 0, ptr noundef null) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %12) #22
  br label %13

13:                                               ; preds = %11, %6, %1
  %14 = phi i32 [ 0, %6 ], [ -12, %1 ], [ -12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip_rt_do_proc_exit(ptr nocapture noundef readonly %0) #16 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 18
  %3 = load ptr, ptr %2, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %5) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @rt_cache_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  %5 = select i1 %4, ptr inttoptr (i32 1 to ptr), ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rt_cache_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #18 {
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal noalias ptr @rt_cache_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #19 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt_cache_seq_show(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #22
  br label %5

5:                                                ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rt_cpu_seq_start(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #20 {
  %3 = load i64, ptr %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %26, %5
  %11 = phi i32 [ %19, %26 ], [ %7, %5 ]
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_possible_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  %19 = add nuw i32 %11, 1
  br i1 %18, label %26, label %20

20:                                               ; preds = %10
  %21 = sext i32 %19 to i64
  store i64 %21, ptr %1, align 8
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, ptrtoint (ptr @rt_cache_stat to i32)
  %25 = inttoptr i32 %24 to ptr
  br label %28

26:                                               ; preds = %10
  %27 = icmp eq i32 %19, %8
  br i1 %27, label %28, label %10

28:                                               ; preds = %26, %20, %5, %2
  %29 = phi ptr [ %25, %20 ], [ inttoptr (i32 1 to ptr), %2 ], [ null, %5 ], [ null, %26 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @rt_cpu_seq_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #18 {
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rt_cpu_seq_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #20 {
  %4 = load i64, ptr %2, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ugt i32 %6, %5
  br i1 %7, label %8, label %26

8:                                                ; preds = %24, %3
  %9 = phi i32 [ %17, %24 ], [ %5, %3 ]
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_possible_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp eq i32 %15, 0
  %17 = add i32 %9, 1
  br i1 %16, label %24, label %18

18:                                               ; preds = %8
  %19 = sext i32 %17 to i64
  store i64 %19, ptr %2, align 8
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @rt_cache_stat to i32)
  %23 = inttoptr i32 %22 to ptr
  br label %28

24:                                               ; preds = %8
  %25 = icmp eq i32 %17, %6
  br i1 %25, label %26, label %8

26:                                               ; preds = %24, %3
  %27 = add i64 %4, 1
  store i64 %27, ptr %2, align 8
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %23, %18 ], [ null, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rt_cpu_seq_show(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #22
  br label %24

5:                                                ; preds = %2
  %6 = tail call i64 @__percpu_counter_sum(ptr noundef getelementptr inbounds (%struct.dst_ops, ptr @ipv4_dst_ops, i32 0, i32 18)) #22
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0) #22
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %1, align 4
  %10 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rt_cache_stat, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %8, i32 noundef 0, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef %21, i32 noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #22
  br label %24

24:                                               ; preds = %5, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtm_getroute_parse_ip_proto(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_dump_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_strict_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsg_parse_deprecated_strict(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %4, 28
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #22
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  store ptr @__nlmsg_parse.__msg, ptr %2, align 4
  br label %13

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 28
  %11 = add i32 %4, -28
  %12 = tail call i32 @__nla_parse(ptr noundef %1, i32 noundef 30, ptr noundef %10, i32 noundef %11, ptr noundef nonnull @rtm_ipv4_policy, i32 noundef 3, ptr noundef %2) #22
  br label %13

13:                                               ; preds = %9, %8, %6
  %14 = phi i32 [ %12, %9 ], [ -22, %8 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sysctl_route_net_init(ptr noundef %0) #8 section ".init.text" {
  store ptr %0, ptr getelementptr inbounds ([4 x %struct.ctl_table], ptr @ipv4_route_netns_table, i32 0, i32 0, i32 7), align 4
  %2 = tail call ptr @register_net_sysctl(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @ipv4_route_netns_table) #22
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 4
  store ptr %2, ptr %3, align 4
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, i32 -12, i32 0
  ret i32 %5
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sysctl_route_net_exit(ptr nocapture noundef readonly %0) #16 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %3) #22
  %6 = icmp eq ptr %5, @ipv4_route_netns_table
  br i1 %6, label %7, label %8, !prof !17

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/route.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3619, 0\0A.popsection", ""() #22, !srcloc !53
  unreachable

8:                                                ; preds = %1
  tail call void @kfree(ptr noundef %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipv4_sysctl_rtcache_flush(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readnone %4) #0 {
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 122
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #22, !srcloc !9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #22, !srcloc !10
  %12 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #22, !srcloc !9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #22, !srcloc !10
  br label %14

14:                                               ; preds = %7, %5
  %15 = phi i32 [ 0, %7 ], [ -22, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @netns_ip_rt_init(ptr nocapture noundef writeonly %0) #21 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 26
  store i32 552, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 27
  store i32 60000, ptr %3, align 16
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rt_genid_init(ptr noundef %0) #8 section ".init.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 122
  store volatile i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 6
  store volatile i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 115
  %5 = tail call i32 @get_random_u32() #22
  store volatile i32 %5, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipv4_inetpeer_init(ptr nocapture noundef writeonly %0) #8 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 16) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @inet_peer_base_init(ptr noundef nonnull %3) #22
  %6 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 16
  store ptr %3, ptr %6, align 16
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipv4_inetpeer_exit(ptr nocapture noundef %0) #16 section ".ref.text" {
  %2 = getelementptr inbounds %struct.net, ptr %0, i32 0, i32 35, i32 16
  %3 = load ptr, ptr %2, align 16
  store ptr null, ptr %2, align 16
  tail call void @inetpeer_invalidate_tree(ptr noundef %3) #22
  tail call void @kfree(ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_peer_base_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inetpeer_invalidate_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind readnone }
attributes #27 = { nounwind allocsize(2) }

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
!9 = !{i64 636148, i64 2148126119, i64 2148126145, i64 2148126192, i64 2148126214, i64 2148126242, i64 2148126262}
!10 = !{i64 2148137534, i64 2148137560, i64 2148137589, i64 2148137623, i64 2148137654, i64 2148137677}
!11 = !{i64 2157669941}
!12 = !{i64 647522, i64 647543, i64 647566, i64 647585, i64 647604}
!13 = !{i64 2157670320}
!14 = !{i64 2148235380}
!15 = !{i64 2148138218, i64 2148138250, i64 2148138279, i64 2148138313, i64 2148138344, i64 2148138367}
!16 = !{i64 2148235583}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2149139028}
!19 = !{i64 2149139245}
!20 = !{!"auto-init"}
!21 = !{i64 2148137041}
!22 = !{i64 622717, i64 622742, i64 622764, i64 622780, i64 622792, i64 622812, i64 622836, i64 622852, i64 622864}
!23 = !{i64 2148137167}
!24 = !{i64 2155441366}
!25 = !{i64 644798, i64 644815, i64 644839, i64 644865, i64 644883}
!26 = !{i64 2155441685}
!27 = !{i64 2149020673}
!28 = !{i64 2149016497}
!29 = !{i64 2149016572, i64 2149016599, i64 2149016646, i64 2149016668, i64 2149016696, i64 2149016716}
!30 = !{i64 2149043676}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2157776047}
!33 = !{i64 560526}
!34 = !{i64 541826, i64 541887}
!35 = !{i64 544843}
!36 = !{i8 0, i8 2}
!37 = !{i64 5637517, i64 5637558, i64 5637644}
!38 = !{i64 5636415}
!39 = !{i64 2157706186}
!40 = !{i64 2157732205}
!41 = !{i64 2148952798}
!42 = !{i64 622211, i64 622235, i64 622256, i64 622273, i64 622290}
!43 = !{i64 2148239214}
!44 = !{i64 2148141349, i64 2148141381, i64 2148141410, i64 2148141444, i64 2148141475, i64 2148141498}
!45 = !{i64 2149088661}
!46 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!47 = !{i64 2149476548}
!48 = !{i64 2149476849}
!49 = !{i64 2157822241}
!50 = !{i64 2157822620}
!51 = !{i64 2148138992, i64 2148139024, i64 2148139053, i64 2148139087, i64 2148139118, i64 2148139141}
!52 = !{i64 2157818345}
!53 = !{i64 2157967600, i64 2157968082, i64 2157967637, i64 2157967693, i64 2157967727, i64 2157967751, i64 2157967792, i64 2157967813, i64 2157967841, i64 2157967875}
